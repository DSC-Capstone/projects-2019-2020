""" Data Ingestion & Wrangling

etl.py: Library code to ingest data from the GWAS Catalog 
(https://www.ebi.ac.uk/gwas/), creates simulated populations 
and prepares for model building.

"""


# Importing libraries
import pandas as pd
import numpy as np
import os
import re
import gzip
from scipy.stats import percentileofscore
import shutil
import subprocess as sp
import requests
import json



def get_gwas_trait(train_id, test_id, max_p_value, outpath):
    """
    Gets the gwas data for the given trait ID
    
    :param train_id: EFO ID of trait to use for training data
    :param test_id: EFO ID of trait to use for test data
    :param outpath: Path to save data
    """
    print('Collecting GWAS data..')
    
    def add_snps_to_dfdict(snps, dfdict):
        """Function to add each SNP data to dfdict"""
        for snp in snps.values():
            for col in dfdict.keys():
                dfdict[col].append(snp[col])
                
    # Check whether the specified path exists or not
    path_exists = os.path.exists(outpath) 
    if not path_exists:
        os.makedirs(outpath)
    fps = []
    for ID in [train_id, test_id]:
        
        # dictionary to contain data and build DataFrame
        dfdict = {'variant_id': [], 'beta': [], 
                  'p_value': [], 'effect_allele_frequency': [], 
                  'effect_allele': [], 'other_allele': []}

        # Counters
        offset, page = 1000, 0

        # First page
        try:
            req = requests.get(f'https://www.ebi.ac.uk/gwas/summary-statistics/api/traits/{ID}' +
                               f'/associations?start={page}&size={offset}&p_upper={max_p_value}').content
            snps = json.loads(req)['_embedded']['associations']
            add_snps_to_dfdict(snps, dfdict)
        
        # If GWAS study does not have available summary statistics
        except:
            raise Exception(f'GWAS Study with ID {ID} is not available on summary statistics API.\
                              Try manually downloading the Catalog Data.')

        # Continually query pages from the API until last page is reached
        while len(snps) == offset:
            page += offset
            req = requests.get(f'https://www.ebi.ac.uk/gwas/summary-statistics/api/traits/{ID}' +
                               f'/associations?start={page}&size={offset}&p_upper={max_p_value}').content
            try:
                snps = json.loads(req)['_embedded']['associations']
                add_snps_to_dfdict(snps, dfdict)
            except:
                break

        # Saving data
        snp_df = pd.DataFrame(dfdict)
        snp_df.to_csv(outpath+f'/{ID}.csv', index=False)
        fps.append(outpath+f'/{ID}.csv')
        print(f'- {ID} collected.')
    return fps



def simulate_data(outpath, outname, gwas_fp, n_samples, use_beta=False):
    """
    Simulates a data set of individuals at different disease 
    risk levels
    
    :param outpath: File path to save simulated data
    :param gwas_fp: Filepath to GWAS TSV/CSV file
    :param n_samples: Number of individuals to simulate
    :returns: Simulated data filepath
    """
    print('Simulating population..')
    # Reading and cleaning GWAS data
    gwas = pd.read_csv(gwas_fp)
    gwas = gwas.dropna(subset=['beta', 'effect_allele_frequency'], axis=0)

    # Creating labels that will be associated with disease risk
    # 0=Low   1=Mid   2=High
    risk_labels = [0, 1, 2]

    # Defining the probability of being a label
    risk_prob = [.6, .3, .1]

    # Defining values to scale probability of having SNP
    low_risk_bias = np.arange(.1, .5, .01)
    medium_risk_bias = np.arange(.5, .75, .01)
    high_risk_bias = np.arange(.75, 1, .01)
    risk_bias = [low_risk_bias, medium_risk_bias, high_risk_bias]

    # Simulating
    indiv_rows_bias = []
    indiv_class = []
    N = n_samples
    for _ in range(N):
        label = np.random.choice(a=risk_labels, p=risk_prob)
        bias = np.random.choice(risk_bias[label])
        has_snps = (gwas['effect_allele_frequency']
                    .apply(lambda x: 
                           np.random.choice(a=[0,1], p=[1-(x*bias), (x*bias)])))
        indiv_rows_bias.append(has_snps.values)
        if not use_beta:
            indiv_class.append(label)
    
    # Creating dataframe
    simulated_df = pd.DataFrame(indiv_rows_bias, columns=gwas['variant_id'])
    simulated_df.columns.name = ''
    
    # Calculating polygenic risk score
    beta_dict = gwas.set_index('variant_id')['beta'].to_dict()
    beta_values = np.array([beta_dict.get(x) for x in simulated_df.columns])
    prs = simulated_df.apply(lambda x: (x*beta_values).sum(), axis=1)
    simulated_df['PRS'] = prs

    # Calculate risk class from risk score percentile
    def perc_to_risk(entry):
        if entry <= risk_prob[0] * 100:
            return risk_labels[0]
        elif entry <= risk_prob[0] * 100 + risk_prob[1] * 100:
            return risk_labels[1]
        else:
            return risk_labels[2]

    # Get percentiles of PRS and conver to risk class
    if use_beta:
        percs = pd.Series([percentileofscore(prs, a, 'strict') for a in prs])
        indiv_class = percs.apply(perc_to_risk)

    
    # Creating label
    simulated_df['Class'] = indiv_class
    
    # Saving simulated data to outpath
    sim_fp = outpath+f'/{outname}.csv'
    simulated_df.to_csv(sim_fp, index=False)
    
    return sim_fp

    
    
# ---------------------------------------------------------------------
# Driver Function
# ---------------------------------------------------------------------

def get_data(train_data, test_data, outpath, max_p_value, n_samples, test=False):
    """
    Reads in the desired data in test-params.json 
    and uses the configuration to download 
    the various file types and corresponding CSV files.

    :param train_data: EFO ID of trait inside GWAS to download
                          summary statistics to build simulation
                          for model building, or path to GWAS TSV
    :param test_data: EFO ID of trait inside GWAS to download
                       summary statistics to build simulation
                       for model evaluation, or path to GWAS TSV
    :outpath: Path to save simulated data for training and testing
    :max_p_value: p value threshold value for SNPs to be included
    :n_samples: Number of samples to produce
    :param test: Whether function call is for testing
    
    :returns: File paths to simulated data and model GWAS data
    """
    
    # Check whether the specified path exists or not
    path_exists = os.path.exists(outpath) 
    if not path_exists:
        os.makedirs(outpath)
    
    # If EFO ids are passed in to function, first get CSV files for the traits
    if train_data[:3] == 'EFO':
        # Collecting GWAS data
        train_data, test_data = get_gwas_trait(train_data, test_data, max_p_value, outpath)
    
    # Creating simulated data
    outname = train_data.split('/')[-1][:-4] + '_simulated'
    sim_fp = simulate_data(outpath, outname, train_data, n_samples)
    
    return sim_fp, test_data
