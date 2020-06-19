import numpy as np
import pandas as pd
import re
import gzip
from random import sample
import math
import random
from collections import defaultdict
import glob, os, sys
import networkx as nx
from sklearn import svm
from sklearn.model_selection import train_test_split
import scipy
import subprocess
import requests
import gzip
import xml.etree.ElementTree as ET
from random import sample
import json
from sklearn.metrics import confusion_matrix
from sklearn.metrics import fbeta_score
from sklearn.manifold import TSNE
import matplotlib.pyplot as plt
from sklearn import svm
from sklearn.ensemble import RandomForestClassifier, GradientBoostingClassifier
from sklearn.model_selection import train_test_split
from sklearn import metrics
import torch
from gensim.models import Word2Vec, KeyedVectors
from etl import get_data
# sys.path.insert(1, '/models')
# from models.metapath2vec_baseline import metapath2vec_pred
from models.node2vec.process import build_matrix_A, build_matrix_B, build_matrix_P, apk_info_idx, get_all_APIs
from models.node2vec.random_walks import generate_walks
from models.node2vec.testing import API_mean_embedding, API_mean_embedding_metapath, train_net

def get_class(file):
    """
    Return 1 if it is malware, 0 if benign
    """
    return int('dsc180a-wi20-public' in file)

def get_name(file):
    """
    Return name of the APP
    """
    return '-'.join(file.split('/')[-3:])

def main(targets):
    if 'data' in targets:
        with open('../config/data-params.json') as fh:
            data_cfg = json.load(fh)
        get_data(**data_cfg)
    if 'process' in targets:
        with open('../config/data-params.json') as fh:
            data_cfg = json.load(fh)
        with open('../config/env.json') as fh:
            env_cfg = json.load(fh)
        metapath, p, q = data_cfg['metapath'], data_cfg['p'], data_cfg['q']
        k, n = data_cfg['k'], data_cfg['n']
        algorithm = data_cfg['algorithm']
        malware_pos, benign_pos = data_cfg['malware_position'], data_cfg['apk_out_path'] + '/decompiled/*'
        model_out_path = data_cfg['model_out_path']
        if not os.path.exists(model_out_path):
            os.makedirs(model_out_path)
        malware_positions = glob.glob(malware_pos)
        benign_positions = glob.glob(benign_pos)
        decompiled_apks = benign_positions + malware_positions
        train = np.random.choice(benign_positions, int(len(benign_positions)*0.8), replace = False).tolist() + \
        np.random.choice(malware_positions, int(len(malware_positions)*0.8), replace = False).tolist()
        test = [apk for apk in decompiled_apks if apk not in train]
        apk_names_train = [get_name(file) for file in train]
        apk_classes_train = [get_class(file) for file in train]
        apk_names_test = [get_name(file) for file in test]
        apk_classes_test = [get_class(file) for file in test]
        apk2idx_train = dict(zip(apk_names_train, range(len(apk_names_train))))
        apk2idx_test = dict(zip(apk_names_test, range(len(apk_names_test))))
        apk2node_train = dict(zip(apk_names_train, range(-len(apk_names_train), 0)))
        node2apk_train = dict(zip(range(-len(apk_names_train), 0), apk_names_train))
        idx2apk_train = dict(zip(apk2idx_train.values(), apk2idx_train.keys()))

        print('Collecting All APIs in Training Data')
        APIs = list(get_all_APIs(train))
        API2idx = dict(zip(APIs, range(len(APIs))))
        idx2API = dict(zip(range(len(APIs)), APIs))
        print('Processing Training Data...')
        apk2code_blocks_train, apk2call_train = apk_info_idx(train, API2idx, 'train')
        print('Processing Test Data...')
        apk2code_blocks_test, apk2call_test = apk_info_idx(test, API2idx, 'test')
        print('Building matrix_A_train...')
        matrix_A_train = build_matrix_A(API2idx, apk2call_train, apk2idx_train)
        print('Building matrix_A_test...')
        matrix_A_test = build_matrix_A(API2idx, apk2call_test, apk2idx_test)
        print('Building matrix_B_train...')
        matrix_B_train = build_matrix_B(API2idx, apk2code_blocks_train, apk2idx_train)
        print('Building matrix_P_train...')
        matrix_P_train = build_matrix_P(idx2API, apk2call_train, apk2idx_train)
        print('Building matrix_P_test...')
        matrix_P_test = build_matrix_P(idx2API, apk2call_test, apk2idx_test)
        matrix_BP_train = matrix_B_train + matrix_P_train

        print('generating random walks')
        walks = generate_walks(metapath, apk_names_train, apk2idx_train, idx2apk_train, \
        apk2node_train, node2apk_train, matrix_A_train, matrix_B_train, matrix_P_train, matrix_BP_train, p, q, k, n)
        walks = [list(map(str, walk)) for walk in walks]
        print('word2vec model')
        model = Word2Vec(walks, size=128, window=10, min_count=0, sg=1, workers=8, iter=5)
        model.wv.save_word2vec_format(model_out_path + '/{}_len{}_k{}_w2v.model'.format(metapath, n, k))

        apk2class_train = dict(zip(apk_names_train, apk_classes_train))
        X_train = [model.wv[str(apk2node_train[apk])] for apk in apk2idx_train if str(apk2node_train[apk]) in model.wv]
        Y_train = [apk2class_train[apk] for apk in apk2idx_train if str(apk2node_train[apk]) in model.wv]
        clf = svm.SVC(kernel = 'rbf', gamma = 'scale')
        clf.fit(X_train, Y_train)

        if algorithm == 'node2vec':
            X = [API_mean_embedding(model, apk2idx_test[apk], matrix_A_test) for apk in apk2idx_test]
            targets = [API_mean_embedding(model, apk2idx_train[apk], matrix_A_train) for apk in apk2idx_train]
        elif algorithm == 'metapath2vec':
            # TODO: Add dic
            X = [API_mean_embedding_metapath(apk2idx_test[apk], dic, matrix_A_test) for apk in apk2idx_test]
            targets = [API_mean_embedding_metapath(apk2idx_train[apk], dic, matrix_A_train) for apk in apk2idx_train]
        print('neural network')
        train_net(clf, out_path = model_out_path, epochs = 20, inputs = X_train, \
        targets = targets, labels_train = Y_train, labels_test = apk_classes_test, batch_size = 1)
        net = torch.load(model_out_path + '/net.model')


        device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
        X_test = net(torch.tensor(X).type(torch.DoubleTensor).to(device)).cpu().detach()
        Y_test = apk_classes_test
        acc = clf.score(X_test, Y_test)
        print('test accuracy: ', acc)


    if 'test' in targets:
        with open('../config/test-params.json') as fh:
            data_cfg = json.load(fh)
        with open('../config/env.json') as fh:
            env_cfg = json.load(fh)
        # malware_pos, benign_pos = data_cfg['malware_position'], data_cfg['benign_position']
        # malware_positions = glob.glob(malware_pos)
        # benign_positions = glob.glob(benign_pos)
        # benign_positions = get_data(**data_cfg)
        # malware_positions = glob.glob('/datasets/dsc180a-wi20-public/Malware/amd_data_smali/*/*/*')
        # malware_positions = list(np.random.choice(malware_positions, 5, replace = False))
        # decompiled_apks = benign_positions + malware_positions
        # decompiled_positions = get_data(**data_cfg)
        metapath, p, q = data_cfg['metapath'], data_cfg['p'], data_cfg['q']
        k, n = data_cfg['k'], data_cfg['n']
        algorithm = data_cfg['algorithm']
        model_out_path = data_cfg['model_out_path']
        if not os.path.exists(model_out_path):
            os.makedirs(model_out_path)
        benign_positions = glob.glob('../Data/benign/*')
        malware_positions = glob.glob('../Data/malwares/*')
        decompiled_apks = benign_positions + malware_positions
        # train = np.random.choice(benign_positions, int(len(benign_positions)*0.8), replace = False).tolist() + \
        # np.random.choice(malware_positions, int(len(malware_positions)*0.8), replace = False).tolist()
        train = benign_positions[:4] + malware_positions[:4]
        test = [apk for apk in decompiled_apks if apk not in train]
        apk_names_train = [get_name(file) for file in train]
        # apk_classes_train = [get_class(file) for file in train]
        apk_names_test = [get_name(file) for file in test]
        # apk_classes_test = [get_class(file) for file in test]
        apk_classes_train = [1] * int(len(benign_positions)*0.8) + [0] * int(len(malware_positions)*0.8)
        apk_classes_test = [1] * (len(benign_positions) - int(len(benign_positions)*0.8)) \
        + [0] * (len(malware_positions) - int(len(malware_positions)*0.8))
        apk2idx_train = dict(zip(apk_names_train, range(len(apk_names_train))))
        apk2idx_test = dict(zip(apk_names_test, range(len(apk_names_test))))
        apk2node_train = dict(zip(apk_names_train, range(-len(apk_names_train), 0)))
        node2apk_train = dict(zip(range(-len(apk_names_train), 0), apk_names_train))
        idx2apk_train = dict(zip(apk2idx_train.values(), apk2idx_train.keys()))

        print('Collecting All APIs in Training Data')
        APIs = list(get_all_APIs(train))
        API2idx = dict(zip(APIs, range(len(APIs))))
        idx2API = dict(zip(range(len(APIs)), APIs))
        print('Processing Training Data...')
        apk2code_blocks_train, apk2call_train = apk_info_idx(train, API2idx, 'train')
        print('Processing Test Data...')
        apk2code_blocks_test, apk2call_test = apk_info_idx(test, API2idx, 'test')
        print('Building matrix_A_train...')
        matrix_A_train = build_matrix_A(API2idx, apk2call_train, apk2idx_train)
        print('Building matrix_A_test...')
        matrix_A_test = build_matrix_A(API2idx, apk2call_test, apk2idx_test)
        print('Building matrix_B_train...')
        matrix_B_train = build_matrix_B(API2idx, apk2code_blocks_train, apk2idx_train)
        print('Building matrix_P_train...')
        matrix_P_train = build_matrix_P(idx2API, apk2call_train, apk2idx_train)
        print('Building matrix_P_test...')
        matrix_P_test = build_matrix_P(idx2API, apk2call_test, apk2idx_test)
        matrix_BP_train = matrix_B_train + matrix_P_train

        print('generating random walks')
        walks = generate_walks(metapath, apk_names_train, apk2idx_train, idx2apk_train, \
        apk2node_train, node2apk_train, matrix_A_train, matrix_B_train, matrix_P_train, matrix_BP_train, p, q, k, n)
        walks = [list(map(str, walk)) for walk in walks]
        print('word2vec model')
        model = Word2Vec(walks, size=128, window=10, min_count=0, sg=1, workers=8, iter=5)
        model.wv.save_word2vec_format(model_out_path + '/{}_len{}_k{}_w2v.model'.format(metapath, n, k))

        apk2class_train = dict(zip(apk_names_train, apk_classes_train))
        X_train = [model.wv[str(apk2node_train[apk])] for apk in apk2idx_train if str(apk2node_train[apk]) in model.wv]
        Y_train = [apk2class_train[apk] for apk in apk2idx_train if str(apk2node_train[apk]) in model.wv]
        clf = svm.SVC(kernel = 'rbf', gamma = 'scale')
        clf.fit(X_train, Y_train)

        if algorithm == 'node2vec':
            X = [API_mean_embedding(model, apk2idx_test[apk], matrix_A_test) for apk in apk2idx_test]
            targets = [API_mean_embedding(model, apk2idx_train[apk], matrix_A_train) for apk in apk2idx_train]
        elif algorithm == 'metapath2vec':
            # TODO: Add dic
            X = [API_mean_embedding_metapath(apk2idx_test[apk], dic, matrix_A_test) for apk in apk2idx_test]
            targets = [API_mean_embedding_metapath(apk2idx_train[apk], dic, matrix_A_train) for apk in apk2idx_train]
        print('neural network')
        train_net(clf, out_path = model_out_path, epochs = 20, inputs = X_train, \
        targets = targets, labels_train = Y_train, labels_test = apk_classes_test, batch_size = 1)
        net = torch.load(model_out_path + '/net.model')


        device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
        X_test = net(torch.tensor(X).type(torch.DoubleTensor).to(device)).cpu().detach()
        Y_test = apk_classes_test
        acc = clf.score(X_test, Y_test)
        print('test accuracy: ', acc)


        # metapath2vec_pred()

if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)
