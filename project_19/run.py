import sys
import json
import argparse
sys.path.insert(0, 'src')
from etl import get_data, get_metal
from eda import filter_recode, pca, plot_pca, plot_eigenval
from analysis import logistic_regression, plot_manhattan, plot_regional_manhattan, qqplot, meta

DATA_PARAMS = 'config/data-params.json'
TEST_PARAMS = 'config/test-params.json'
FINAL_PARAMS = 'config/final-model-params.json'

def load_params(fp):
    with open(fp) as fh:
        param = json.load(fh)
    return param


if __name__ == "__main__": 

    parser = argparse.ArgumentParser(description='PCA and visualization with Plink2')
    parser.add_argument('process', type=str, nargs=1, help='the process to deal with')
    args = parser.parse_args()

    if args.process[0]=="get_data":
        cfg = load_params(DATA_PARAMS)
        get_data(cfg['files'], 'data/')
        get_metal(cfg['metal'])

    elif args.process[0]=="filter":
        cfg = load_params(FINAL_PARAMS)
        filter_recode(cfg['filename'], cfg['covar_file'], cfg['data_dir'], cfg['filter_output'], cfg['hwe'], cfg['maf'], cfg['geno'], cfg['mind'], cfg['chr'], cfg['min'])

    elif args.process[0]=='pca':
        cfg = load_params(FINAL_PARAMS)
        pca(cfg['data_dir'], cfg['filter_output'])
        
    elif args.process[0]=='plot_pca':
        cfg = load_params(FINAL_PARAMS)
        plot_pca(cfg['data_dir']+'pca.eigenvec', cfg['output_dir'])
        
    elif args.process[0]=='plot_eigenval':
        cfg = load_params(FINAL_PARAMS)
        plot_eigenval(cfg['data_dir']+'pca.eigenval', cfg['output_dir'])

    elif args.process[0]=='logistic':
        cfg = load_params(FINAL_PARAMS)
        logistic_regression(cfg['data_dir'])
        
    elif args.process[0]=='manhattan':
        cfg = load_params(FINAL_PARAMS)
        plot_manhattan(cfg['data_dir']+'pca1.assoc.logistic', cfg['output_dir'])
        
    elif args.process[0]=='regional':
        cfg = load_params(FINAL_PARAMS)
        plot_regional_manhattan(cfg['data_dir']+'pca1.assoc.logistic', cfg['data_dir']+cfg['gene_csv'], cfg['output_dir'])
        
    elif args.process[0]=='qqplot':
        cfg = load_params(FINAL_PARAMS)
        qqplot(cfg['data_dir']+'pca1.assoc.logistic', cfg['output_dir'])
    
    elif args.process[0]=='meta':
        cfg = load_params(FINAL_PARAMS)
        meta(cfg['metal_path'], cfg['metal_script'], cfg['output_dir'])

    elif args.process[0]=='test-project':
        cfg = load_params(DATA_PARAMS)
        get_data(cfg['files'], 'data/')
        get_metal(cfg['metal'])
        cfg = load_params(TEST_PARAMS)
        filter_recode(cfg['filename'], cfg['covar_file'], cfg['data_dir'], cfg['filter_output'], cfg['hwe'], cfg['maf'], cfg['geno'], cfg['mind'], cfg['chr'], cfg['min'])
        pca(cfg['data_dir'], cfg['filter_output'])
        plot_pca(cfg['data_dir']+'pca.eigenvec', cfg['output_dir'])
        plot_eigenval(cfg['data_dir']+'pca.eigenval', cfg['output_dir'])
        logistic_regression(cfg['data_dir'])
        plot_manhattan(cfg['data_dir']+'pca1.assoc.logistic', cfg['output_dir'])
        plot_regional_manhattan(cfg['data_dir']+'pca1.assoc.logistic', cfg['data_dir']+cfg['gene_csv'], cfg['output_dir'])
        qqplot(cfg['data_dir']+'pca1.assoc.logistic', cfg['output_dir'])
        meta(cfg['metal_path'], cfg['metal_script'], cfg['output_dir'])