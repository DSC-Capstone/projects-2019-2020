import sys
import shutil
import os
import pandas as pd

sys.path.insert(0, 'src') # add library code to path

from ETL import ftp_server_authen, download_file #add download functions

from Clean_EDA import read_gz, clean_df

from Analyze import create_histogram, manhattan_plot, combine, qq_plot

#load json config files
config = 'config/data-param.json'

def load_params(config_file):
    """
    Load the parameters from json files
    """
    with open(config_file) as fh:
        param = json.load(fh)
    return param

def main(targets):
    """
    The main function where we run the src code.
    """

    # make the fastq target
    if 'test' in targets:
        cfg = load_params(config)
        #recursively downloading all the test files
        for study in cfg['study']:
            #grab the authenticated server
            ftp = ftp_server_authen()
            #download the data accordingly
            download_file(ftp, cfg['outpath'], study)
    if 'clean' in targets:
        #read the data in 
        data = read_gz(T2D_data)
        #clean it
        clean_data = clean_df(data)
        #create histogram plot
        histogram = create_histograms(clean_data,10)
        #create manhattan plot
        manhattan = manhattan_plot(clean_data, 10)
    if 'test-project' in targets:
        #read in data
        source = pd.read_csv('source_testdata1.csv', sep='\t')
        source1 = pd.read_csv('source_testdata2.csv', sep='\t')
        source2 = pd.read_csv('source_testdata3.csv', sep='\t')
        source3 = pd.read_csv('source_testdata4.csv', sep='\t')
        source4 = pd.read_csv('source_testdata5.csv', sep='\t')
        #create histogram
        create_histogram(source,50)
        #read in data and combine them
        metal = pd.read_csv('metal_testdata.csv', sep='\t')
        metal = combine(source,source1,source2,source3,source4,metal)
        #create manhattan plot
        manhattan_plot(metal, 50)
        #create qqplot
        qq_plot(metal)
        
        
        
        
    return

if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)
