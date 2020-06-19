#!/usr/bin/env python

import os
import sys
import json
import shutil

sys.path.insert(0, 'src')
from etl import *
from model import *

TEST_PARAMS = 'config/test-params.json'
DATA_PARAMS = 'config/data-params.json'
TRAIN_NAME = 'simulated_train'
TEST_NAME = 'simulated_test'


def load_params(fp):
    with open(fp) as fh:
        param = json.load(fh)
    return param

def create_fp(fp, fname):
    if '/' in fname:
        efo = extract_efo(fname)
        return f'{fp}/{efo}.csv'
    else:
        return f'{fp}/{fname}.csv'

def extract_efo(fname):
    return fname.split('/')[-1][:-4]


def main(targets):

    # make the clean target
    if 'clean' in targets:
        shutil.rmtree('data/', ignore_errors=True)
        

    # make the data target
    if 'data' in targets:
        cfg = load_params(DATA_PARAMS)
        if not os.path.exists(cfg['outpath']):
            os.makedirs(cfg['outpath'])
        for disease, params in cfg['diseases'].items():
            # Create folder for disease inside outfolder
            diseasepath = cfg['outpath'] + f'/{disease}'
            path_exists = os.path.exists(diseasepath) 
            if not path_exists:
                os.makedirs(diseasepath)
            # Download data, or copy from local filepath
            if params['train_data'][:3] == 'EFO':
                get_gwas_trait(params['train_data'], params['test_data'], cfg['max_p_value'], diseasepath)
            else:
                train_efo = extract_efo(params['train_data'])
                test_efo = extract_efo(params['test_data'])
                shutil.copyfile(params['train_data'], f'{diseasepath}/{train_efo}.csv')
                shutil.copyfile(params['test_data'], f'{diseasepath}/{test_efo}.csv')
        
        
    # make the simulate target
    if 'simulate-one' in targets:
        cfg = load_params(DATA_PARAMS)
        outpath = cfg['outpath']
        n_samples = cfg['n_samples']
        for disease, params in cfg['diseases'].items():
            diseasepath = cfg['outpath'] + f'/{disease}'
            train_fp = create_fp(diseasepath, params['train_data'])
            simulate_data(diseasepath, TRAIN_NAME, train_fp, n_samples)


    # make the simulate-both target
    if 'simulate-both' in targets:
        cfg = load_params(DATA_PARAMS)
        outpath = cfg['outpath']
        n_samples = cfg['n_samples']
        for disease, params in cfg['diseases'].items():
            diseasepath = cfg['outpath'] + f'/{disease}'
            # Pass in GWAS CSVs to simulation
            train_fp = create_fp(diseasepath, params['train_data'])
            test_fp = create_fp(diseasepath, params['test_data'])
            # Simulate training data
            train_sim = simulate_data(diseasepath, TRAIN_NAME, train_fp, n_samples, use_beta=True)
            # Simulate testing data
            test_sim = simulate_data(diseasepath, TEST_NAME, test_fp, n_samples, use_beta=True)


    # make the model target
    if 'model' in targets:
        cfg = load_params(DATA_PARAMS)
        outpath = cfg['outpath']
        for disease, params in cfg['diseases'].items():
            print('-' * 80)
            print(disease)
            print('-' * 80)
            diseasepath = cfg['outpath'] + f'/{disease}'
            # Get filepaths for training GWAS simulated data and test GWAS summary data
            train_sim_fp = create_fp(diseasepath, TRAIN_NAME)
            test_gwas_fp = create_fp(diseasepath, params['test_data'])
            # If we simulated test data as well, then test model using that
            test_sim_fp = create_fp(diseasepath, TEST_NAME)
            if not os.path.exists(test_sim_fp):
                test_sim_fp = None
            build_model(train_sim_fp, test_gwas_fp, diseasepath, test_sim_fp)


    # make the test-project target
    if 'test-project' in targets:
        cfg = load_params(TEST_PARAMS)
        if not os.path.exists(cfg['outpath']):
            os.makedirs(cfg['outpath'])
        for disease, params in cfg['diseases'].items():
            print('-' * 80)
            print(disease)
            print('-' * 80)
            diseasepath = cfg['outpath'] + f'/{disease}'
            fps = get_data(params['train_data'], params['test_data'], diseasepath,
                           cfg['max_p_value'], cfg['n_samples'])
            build_model(fps[0], fps[1], diseasepath)


    # make the run-project target
    if 'run-project' in targets:
        cfg = load_params(DATA_PARAMS)
        if not os.path.exists(cfg['outpath']):
            os.makedirs(cfg['outpath'])
        for disease, params in cfg['diseases'].items():
            print('-' * 80)
            print(disease)
            print('-' * 80)
            diseasepath = cfg['outpath'] + f'/{disease}'
            fps = get_data(params['train_data'], params['test_data'], diseasepath,
                           cfg['max_p_value'], cfg['n_samples'])
            build_model(fps[0], fps[1], diseasepath)

    return


if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)