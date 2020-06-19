#!/usr/bin/env python

import sys
import json
import shutil
import warnings
warnings.filterwarnings('ignore')

sys.path.insert(0, 'src') 
from etl import get_data, clean_stops
from model import driver

DATA_PARAMS = 'config/data-params.json'
CLEAN_PARAMS = 'config/process-params.json'
TEST_DATA_PARAMS = 'config/test-data-params.json'
TEST_CLEAN_PARAMS = 'config/test-process-params.json'
TEST_MODEL_PARAMS = 'config/test-model.json'
MODEL_PARAMS = 'config/model.json'

def load_params(fp):
    with open(fp) as fh:
        param = json.load(fh)

    return param

def main(targets):
    
    if 'clean' in targets:
        shutil.rmtree('data/raw', ignore_errors=True)
        shutil.rmtree('data/cleaned', ignore_errors=True)
        shutil.rmtree('test/raw', ignore_errors=True)
        shutil.rmtree('test/cleaned', ignore_errors=True)
    
    if 'data' in targets:
        cfg = load_params(DATA_PARAMS)
        get_data(**cfg)
        
        cfg = load_params(CLEAN_PARAMS)
        clean_stops(**cfg)
        
    if 'test-project' in targets:
        cfg = load_params(TEST_DATA_PARAMS)
        get_data(**cfg)

        cfg = load_params(TEST_CLEAN_PARAMS)
        clean_stops(**cfg)

        cfg = load_params(TEST_MODEL_PARAMS)
        driver(**cfg)

    if 'model' in targets:
        cfg = load_params(MODEL_PARAMS)
        driver(**cfg)
     
    return 

if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)