import json
import sys
from src.etl import *
from src.embedding import *
from src.utils import evaluate
from src.models import *
import os
from joblib import Parallel, delayed
from tqdm import tqdm
import pandas as pd
from p_tqdm import p_map

#==============================define configuration and file path================================#
TESTPARAMS = json.load(open('config/test-params.json'))
EDAPARAMS = json.load(open('config/eda-params.json'))
DATAPARAMS = json.load(open('config/data-params.json'))
TESTDIR = TESTPARAMS['META_ARGS']['filepath']
EDADIR = EDAPARAMS['META_ARGS']['filepath']
DATADIR = DATAPARAMS['META_ARGS']['filepath']
MODELDIR = 'config/nlp_model.zip'
G1_NODE2VEC = json.load(open('config/embedding/graph_1/node2vec.json'))
G2_NODE2VEC = json.load(open('config/embedding/graph_2/node2vec.json'))
G1_TEST_NODE2VEC = json.load(open('config/embedding/graph_1/test-node2vec.json'))
G2_TEST_NODE2VEC = json.load(open('config/embedding/graph_2/test-node2vec.json'))
G1_INFOMAX = json.load(open('config/embedding/graph_1/infomax.json'))
G2_INFOMAX = json.load(open('config/embedding/graph_2/infomax.json'))
G1_TEST_INFOMAX = json.load(open('config/embedding/graph_1/test-infomax.json'))
G2_TEST_INFOMAX = json.load(open('config/embedding/graph_2/test-infomax.json'))
G1_METAPATH = json.load(open('config/embedding/graph_1/metapath2vec.json'))
G2_METAPATH = json.load(open('config/embedding/graph_2/metapath2vec.json'))
G1_TEST_METAPATH = json.load(open('config/embedding/graph_1/test-metapath2vec.json'))
G2_TEST_METAPATH = json.load(open('config/embedding/graph_2/test-metapath2vec.json'))
#=================================================================================================#
def env(fp):
    """[create work space]

    Args:
        fp ([string]): [the file path of the root of the data]
    """
    os.makedirs(os.path.join(fp, 'raw', 'posts'), exist_ok=True)
    os.makedirs(os.path.join(fp, 'raw', 'posts_detail'), exist_ok=True)
    os.makedirs(os.path.join(fp, 'raw', 'comments'), exist_ok=True)
    os.makedirs(os.path.join(fp, 'interim', 'label', 'post'), exist_ok=True)
    os.makedirs(os.path.join(fp, 'interim', 'label', 'comment'), exist_ok=True)
    os.makedirs(os.path.join(fp, 'interim', 'graph'), exist_ok=True)
    os.makedirs(os.path.join(fp, 'interim', 'graph'), exist_ok=True)
    os.makedirs(os.path.join(fp, 'processed'), exist_ok=True)
    return

def main(targets):
    """[args to generate embeddings]

    Args:
        targets ([string]): [the args to command the modules]
    """
    if any(['test'in i for i in targets]):
        env(TESTDIR)
    else:
        env(DATADIR)
    if 'data' in targets:
    #==============raw================================#
        fetch_submissions(**DATAPARAMS)
        submissions_detail(DATADIR)
        comments_detail(DATADIR)
    #==============label==============================#
        model, tokenizer = load_nlp('config/nlp_model.zip', DATADIR)
        label_comments(DATADIR, model, tokenizer)
        label_posts(DATADIR, model, tokenizer)
        labeling(DATADIR)
    #==============baseline===========================#
        posts = extract_feat(DATADIR)
        baseline_model(posts)
    if 'graph' in targets:
        g1(DATADIR)
        g2(DATADIR)
    if 'node2vec' in targets:
        node2vec(DATADIR, G1_NODE2VEC)
        node2vec(DATADIR, G2_NODE2VEC)
    if 'infomax' in targets:
        feature = get_baseline_feature(DATADIR)
        infomax(DATADIR, G1_INFOMAX, feature)
        infomax(DATADIR, G2_INFOMAX, feature)
    if 'metapath2vec' in targets:
        metapath2vec(DATADIR, G1_METAPATH)
        metapath2vec(DATADIR, G2_METAPATH)
#=================================For test=======================================#
    if 'data-test' in targets:
    #==============raw================================#
        fetch_submissions(**TESTPARAMS)
        submissions_detail(TESTDIR)
        comments_detail(TESTDIR)
    #==============label==============================#
        model, tokenizer = load_nlp('config/nlp_model.zip', TESTDIR)
        label_comments(TESTDIR, model, tokenizer)
        label_posts(TESTDIR, model, tokenizer)
        labeling(TESTDIR)
    #==============baseline===========================#
        posts = extract_feat(TESTDIR)
        baseline_model(posts)
    if 'graph-test' in targets:
        g1(TESTDIR)
        g2(TESTDIR)
    if 'node2vec-test' in targets:
        node2vec(TESTDIR, G1_TEST_NODE2VEC)
        node2vec(TESTDIR, G2_TEST_NODE2VEC)
    if 'infomax-test' in targets:
        feature = get_baseline_feature(TESTDIR)
        infomax(TESTDIR, G1_TEST_INFOMAX, feature)
        infomax(TESTDIR, G2_TEST_INFOMAX, feature)
    if 'test-project' in targets:
        fetch_submissions(**TESTPARAMS)
        submissions_detail(TESTDIR)
        comments_detail(TESTDIR)
        model, tokenizer = load_nlp('config/nlp_model.zip', TESTDIR)
        label_comments(TESTDIR, model, tokenizer)
        label_posts(TESTDIR, model, tokenizer)
        labeling(TESTDIR)
        g1(TESTDIR)
        g2(TESTDIR)
        feature = get_baseline_feature(TESTDIR)
        node2vec(TESTDIR, G1_TEST_NODE2VEC)
        node2vec(TESTDIR, G2_TEST_NODE2VEC)
        infomax(TESTDIR, G1_TEST_INFOMAX, feature)
        infomax(TESTDIR, G2_TEST_INFOMAX, feature)
        metapath2vec(TESTDIR, G1_TEST_METAPATH)
        metapath2vec(TESTDIR, G2_TEST_METAPATH)




if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)