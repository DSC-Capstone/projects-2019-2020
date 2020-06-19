# Import modules/libraries
import sys
import json
import shutil
import os

sys.path.insert(0, 'src') # add library code to path
from etl import get_data, process
from eda import generate_viz
from analyze import analyze

# Global constants
DATA_PARAMS = 'config/data-params.json'
PROCESS_PARAMS = 'config/process-params.json'
TEST_PROCESS_PARAMS = 'config/test-process-params.json'
EDA_PARAMS = 'config/eda-params.json'
TEST_EDA_PARAMS = 'config/test-eda-params.json'
ANALYZE_PARAMS = 'config/analyze-params.json'
TEST_ANALYZE_PARAMS = 'config/test-analyze-params.json'
ANALYZE_STOPS_PARAMS = 'config/analyze-stops-params.json'

def load_params(fp):
    with open(fp) as fh:
        param = json.load(fh)
    return param

# Main driver
def main(targets):
    if not os.path.exists('data/'):
        os.mkdir('data/')
    if not os.path.exists('viz/'):
        os.mkdir('viz/')
        
    # make the clean target
    if 'clean' in targets:
        shutil.rmtree('data/raw', ignore_errors=True)
        shutil.rmtree('data/cleaned', ignore_errors=True)
        shutil.rmtree('viz', ignore_errors=True)
        
    # make the clean test target
    if 'clean-test' in targets:
        shutil.rmtree('test_data/cleaned', ignore_errors=True)
        shutil.rmtree('viz', ignore_errors=True)

    # make the data target
    if 'data' in targets:
        cfg = load_params(DATA_PARAMS)
        get_data(**cfg)
        
    if 'process' in targets:
        cfg = load_params(PROCESS_PARAMS)
        process(**cfg)        

    if 'eda' in targets:
        if not os.path.exists('viz/EDA'):
            os.mkdir('viz/EDA')
        
        cfg = load_params(EDA_PARAMS)       
        generate_viz(**cfg)
        
    if 'analyze' in targets:
        if not os.path.exists('viz/Analysis'):
            os.mkdir('viz/Analysis')
            
        cfg = load_params(ANALYZE_PARAMS)
        analyze(**cfg)
    
    if 'test-project' in targets:
        process_cfg = load_params(TEST_PROCESS_PARAMS)
        process(**process_cfg)
        if not os.path.exists('viz/EDA'):
            os.mkdir('viz/EDA')
            
        if not os.path.exists('viz/Analysis'):
            os.mkdir('viz/Analysis')
        
        eda_cfg = load_params(TEST_EDA_PARAMS)    
        
        generate_viz(**eda_cfg)
        
        analyze_cfg = load_params(TEST_ANALYZE_PARAMS)
        analyze(**analyze_cfg)
    
    return


if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)
