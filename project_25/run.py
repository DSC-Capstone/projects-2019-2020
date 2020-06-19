import sys, json, shutil, subprocess, warnings
import os
sys.path.insert(0, './src')
from API_comparison import *
from Generate_output import *
from preprocess import process
from itertools import combinations
warnings.filterwarnings("ignore")
from model import run
TEST_DATA_PARAMS = 'config/test-data-params.json'
TRAIN_DATA_PARAMS = 'config/data-params.json'
TEST_PROJECT_PARAMS = "config/test-project-params.json"

def load_params(fp):
    with open(fp) as fh:
        param = json.load(fh)
    return param

def main(targets):
    '''
    running the CodeHonestly project locally
    '''
    # clean all present output
    if 'clean' in targets:
        shutil.rmtree('result', ignore_errors=True)
    
    # test project with all python files in data dir
    if 'test-project' in targets:
        cfg = load_params(TEST_PROJECT_PARAMS)
        output_file = cfg['output_file']
        data_dir = cfg['data_dir']
        output_dir = cfg['output_dir']
        thre = cfg['threshold']
        output_type = cfg['output_type'] # save or print out or [save and print out]
        output_mode = cfg['output_mode'] # simple or complex
        # generate output
        generate_output(data_dir, output_mode, output_type, output_dir, output_file, thre)

if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)
