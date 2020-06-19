#!/usr/bin/env python

#imports
import sys
import json
import shutil


#import functions from files
sys.path.insert(0, 'src') # add library code to path
from data_ingestion import *
from viz import *


#get config file path names
data_ingest_params = 'config/test_data_params.json'
test_ingest_params = 'config/train_data_params.json'
visuals_params = 'config/visuals.json'

#function to load the config files into json
def load_params(fp):
    with open(fp) as fh:
        param = json.load(fh)

    return param


#main function to run
def main(targets):

    # make the clean target
    if 'clean' in targets:
        #shutil.rmtree('testData/', ignore_errors=True)
        shutil.rmtree('finalVisuals/', ignore_errors=True)
                
    #test full project; data ingestion process and visuals
    if 'test-project' in targets:
        cfg = load_params(test_ingest_params)
        collect_data(cfg["websites"], cfg["outdir"], "test")
        
        cfg = load_params(visuals_params)
        create_plots(cfg["indir"], cfg["outdir"])
       
    #test full project; data ingestion process and visuals 
    if 'run-project' in targets:
        cfg = load_params(data_ingest_params)
        collect_data(cfg["websites"], cfg["outdir"], "full")
        
        cfg = load_params(visuals_params)
        create_plots(cfg["indir"], cfg["outdir"])
        
    return

#first call to start data pipeline
if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)
