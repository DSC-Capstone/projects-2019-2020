import numpy as np
import pandas as pd
import requests
from bs4 import BeautifulSoup
import re
import gzip
import xml.etree.ElementTree as ET
from random import sample
import math
import subprocess
import random
from collections import defaultdict
import glob, os, sys
import networkx as nx
import scipy
import json
from sklearn import svm
from sklearn.model_selection import train_test_split
from sklearn.metrics import confusion_matrix
from sklearn.metrics import fbeta_score
from sklearn.preprocessing import OneHotEncoder
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier, GradientBoostingClassifier
from sklearn.pipeline import Pipeline
from sklearn.compose import ColumnTransformer

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

def get_code_blocks(data):
    """
    Returns all code blocks in the text
    """
    return re.findall(r'\.method.*?\.end method', data)

def get_API_calls(data):
    """
    Returns all API calls in the text
    """
    return [API_segmentation(line)[1] for line in re.findall(r'(invoke-.*?->.*?)\s', data)]

def API_segmentation(line):
    """
    Segments the text to invoke type and API call
    """
    idx = line.find('}') + 1
    call = line[idx+1:].strip()
    invoke_type = line[:line.find('{')].strip().split('/')[0]
    return (invoke_type, call)

def data_in_app(filepath):
    """
    Returns all API calls in the directory
    """
    code_blocks = []
    API_calls = []
    for root, dirs, files in os.walk(filepath):
        if 'smali' in root:
            for fp in [root + '/' + file for file in files if file.endswith('.smali')]:
                with open(fp) as f:
                    data = ' '.join(f.readlines()).replace('\n', '')
                    #code_blocks.extend(get_code_blocks(data))
                    API_calls.extend(get_API_calls(data))
#     return set(code_blocks), set(API_calls)
    return set(API_calls)


# For each decompiled apk, get the smali codes and call2invoke dicitionary
def apk_info(decompiled_apks):
    """
    Returns each apk's code blocks and API calls
    """
    apk2code_blocks = {}
    apk2call = {}
    counter = 0
    total = len(decompiled_apks)
    for apk in decompiled_apks:
        counter += 1
        print("{:.2f}%".format(counter / total * 100), apk)
        name = get_name(apk)
        code_blocks, API_calls = data_in_app(apk)
        apk2code_blocks[name] = code_blocks
        apk2call[name] = API_calls
    return apk2code_blocks, apk2call

def API_segmentation(line):
    """
    Splits a API line to invoke type and API call
    """
    idx = line.find('}') + 1
    call = line[idx+1:].strip()
    invoke_type = line[:line.find('{')].strip().split('/')[0]
    return (invoke_type, call)


def API_package(API):
    """
    Returns the package of API
    """
    return API.split('->')[0]

def get_all_APIs(decompiled_apks):
    """
    Returns a set of all APIs in these apks
    """
    APIs = []
    counter = 0
    total = len(decompiled_apks)
    for apk in decompiled_apks:
        counter += 1
        print("{:.2f}%".format(counter / total * 100), apk)
        name = get_name(apk)
#         code_blocks, API_calls = data_in_app(apk)
        API_calls = data_in_app(apk)
        APIs.extend(list(API_calls))
    return set(APIs)

def get_code_blocks_idx(data, API2idx, stage = 'train'):
    """
    Given API2idx mapping, returns a list of lists, where each list is API indices in a same code block
    """
    code_blocks = re.findall(r'\.method.*?\.end method', data)
    API_indices = [get_API_calls_idx(code, API2idx, stage) for code in code_blocks]
    return API_indices


def get_API_calls_idx(data, API2idx, stage = 'train'):
    """
    Given API2idx mapping, returns a list API indices in a the code (data)
    If in test stage, ignore APIs not in training data (API2idx)
    """
    if stage == 'train':
        return [API2idx[API_segmentation(line)[1]] for line in re.findall(r'(invoke-.*?->.*?)\s', data)]
    elif stage == 'test':
        result = []
        for line in re.findall(r'(invoke-.*?->.*?)\s', data):
            try:
                result.append(API2idx[API_segmentation(line)[1]])
            except:
                continue
        return result
    else:
        print('Invalid Arguments:', stage)


def data_in_app_idx(filepath, API2idx, stage = 'train'):
    """
    Given apk filepath and API2idx mapping, returns
    1) a list of lists, where each list is API indices in a same code block
    2) a set of API indices in the apk
    If in test stage, ignore APIs not in training data (API2idx)
    """
    code_blocks = []
    #API_calls = []
    for root, dirs, files in os.walk(filepath):
        if 'smali' in root:
            for fp in [root + '/' + file for file in files if file.endswith('.smali')]:
                with open(fp) as f:
                    data = ' '.join(f.readlines()).replace('\n', '')
                    code_blocks.extend(get_code_blocks_idx(data, API2idx, stage))
                    #API_calls.extend(get_API_calls_idx(data, API2idx, stage, API_list))
    return code_blocks, set([item for sublist in code_blocks for item in sublist])

def apk_info_idx(decompiled_apks, API2idx, stage = 'train'):
    """
    Given a list of apk filepaths and API2idx mapping, returns
    1) a dictionary with key = name of apk and value = the first output of data_in_app_idx
    2) a dictionary with key = name of apk and value = the second output of data_in_app_idx
    If in test stage, ignore APIs not in training data (API2idx)
    """
    apk2code_blocks = {}
    apk2call = {}
    counter = 0
    total = len(decompiled_apks)
    for apk in decompiled_apks:
        counter += 1
        print("{:.2f}%".format(counter / total * 100), apk)
        name = get_name(apk)
        code_blocks, API_calls = data_in_app_idx(apk, API2idx, stage)
        apk2code_blocks[name] = code_blocks
        apk2call[name] = API_calls
    return apk2code_blocks, apk2call

def build_matrix_A(API2idx, apk2call, apk2idx):
    """
    Builds matrix A, where A[i,j] is whether APP_i has API_j
    """
#     matrix_A = np.zeros((len(apk2idx), len(API2idx)))
    matrix_A = scipy.sparse.lil_matrix((len(apk2idx), len(API2idx)))
    total = len(apk2idx)
    for apk in apk2idx:
        apk_idx = apk2idx[apk]
        API_indices = apk2call[apk]
        for API_idx in API_indices:
            matrix_A[apk_idx, API_idx] = 1
    return matrix_A

def build_matrix_B(API2idx, apk2code_blocks, apk2idx):
    '''
    Build matrix B, where B[i,j] is whether API_i and API_j occur in the same code block (method).
    '''
    matrix_B = scipy.sparse.lil_matrix((len(API2idx), len(API2idx)))
    total = len(apk2idx)
    for apk in apk2idx:
        code_blocks = apk2code_blocks[apk]
        for block in code_blocks:
            for i in range(len(block)):
                API_i = block[i]
                for j in range(i+1, len(block)):
                    API_j = block[j]
                    matrix_B[API_i, API_j] = 1
                    matrix_B[API_j, API_i] = 1
    return matrix_B

def build_matrix_P(idx2API, apk2call, apk2idx):
    '''
    Build matrix P, where P[i,j] is whether API_i and API_j have the same package.
    '''
    matrix_P = scipy.sparse.lil_matrix((len(idx2API), len(idx2API)))
    total = len(apk2idx)
    package2call = defaultdict(set)
    for apk in apk2idx:
        for API_idx in apk2call[apk]:
            package2call[API_package(idx2API[API_idx])].add(API_idx)
    total = len(package2call)
    one_perc = total // 100
    for package in package2call:
        APIs = list(package2call[package])
        for i in range(len(APIs)):
            API_i_idx = APIs[i]
            for j in range(i+1, len(APIs)):
                API_j_idx = APIs[j]
                matrix_P[API_i_idx, API_j_idx] = 1
                matrix_P[API_j_idx, API_i_idx] = 1
    return matrix_P

def model_AA(matrix_A_train, matrix_A_test, apk_classes_train, apk_classes_test):
    clf = svm.SVC(kernel='precomputed')
    gram = (matrix_A_train * matrix_A_train.T).toarray()
    clf.fit(gram, apk_classes_train)
    train_acc = clf.score(gram, apk_classes_train)
    gram_test = (matrix_A_test * matrix_A_train.T).toarray()
    test_acc = clf.score(gram_test, apk_classes_test)
    tn, fp, fn, tp = confusion_matrix(apk_classes_test, clf.predict(gram_test)).ravel()
    f1 = fbeta_score(apk_classes_test, clf.predict(gram_test), beta=0.1069)
    return {'train_acc': train_acc, 'test_acc': test_acc, 'tn': tn, 'fp': fp, 'fn': fn, 'tp': tp, 'f1': f1}

def model_ABA(matrix_A_train, matrix_A_test, matrix_B_train, apk_classes_train, apk_classes_test):
    clf = svm.SVC(kernel='precomputed')
    gram = (matrix_A_train * matrix_B_train * matrix_A_train.T).toarray()
    clf.fit(gram, apk_classes_train)
    train_acc = clf.score(gram, apk_classes_train)
    gram_test = (matrix_A_test * matrix_B_train * matrix_A_train.T).toarray()
    test_acc = clf.score(gram_test, apk_classes_test)
    tn, fp, fn, tp = confusion_matrix(apk_classes_test, clf.predict(gram_test)).ravel()
    f1 = fbeta_score(apk_classes_test, clf.predict(gram_test), beta=0.09)
    return {'train_acc': train_acc, 'test_acc': test_acc, 'tn': tn, 'fp': fp, 'fn': fn, 'tp': tp, 'f1': f1}

def model_APA(matrix_A_train, matrix_A_test, matrix_P_train, apk_classes_train, apk_classes_test):
    clf = svm.SVC(kernel='precomputed')
    gram = (matrix_A_train * matrix_P_train * matrix_A_train.T).toarray()
    clf.fit(gram, apk_classes_train)
    train_acc = clf.score(gram, apk_classes_train)
    gram_test = (matrix_A_test * matrix_P_train * matrix_A_train.T).toarray()
    test_acc = clf.score(gram_test, apk_classes_test)
    tn, fp, fn, tp = confusion_matrix(apk_classes_test, clf.predict(gram_test)).ravel()
    f1 = fbeta_score(apk_classes_test, clf.predict(gram_test), beta=0.0858)
    return {'train_acc': train_acc, 'test_acc': test_acc, 'tn': tn, 'fp': fp, 'fn': fn, 'tp': tp, 'f1': f1}

def model_APBPA(matrix_A_train, matrix_A_test, matrix_P_train, matrix_P_test, matrix_B_train, apk_classes_train, apk_classes_test):
    clf = svm.SVC(kernel='precomputed')
    gram = (matrix_A_train * matrix_P_train * matrix_B_train * matrix_P_train.T * matrix_A_train.T).toarray()
    clf.fit(gram, apk_classes_train)
    train_acc = clf.score(gram, apk_classes_train)
    gram_test = (matrix_A_test * matrix_P_test * matrix_B_train * matrix_P_train.T * matrix_A_train.T).toarray()
    test_acc = clf.score(gram_test, apk_classes_test)
    tn, fp, fn, tp = confusion_matrix(apk_classes_test, clf.predict(gram_test)).ravel()
    f1 = fbeta_score(apk_classes_test, clf.predict(gram_test), beta=0.0565)
    return {'train_acc': train_acc, 'test_acc': test_acc, 'tn': tn, 'fp': fp, 'fn': fn, 'tp': tp, 'f1': f1}

def most_common_API(apk, apk2code_block, idx2API):
    APIs = [item for sublist in apk2code_block[apk] for item in sublist]
    idx = pd.Series(APIs).value_counts().index[0]
    return idx2API[idx]

def get_features(apk, apk2call, apk2code_blocks, idx2API):
    num_nodes = len(apk2call[apk])
    block_dict = {}
    for API in apk2call[apk]:
        block_dict[API] = []
    num_edges_B = 0
    for l in apk2code_blocks[apk]:
        length_l = len(l)
        if length_l < 2:
            continue
        else:
            num_edges_B += length_l * (length_l - 1) / 2
            for API in l:
                block_dict[API].extend(l)
    for API in block_dict:
        block_dict[API] = len(set(block_dict[API]).difference([API]))

    package2call = defaultdict(set)
    for API_idx in apk2call[apk]:
        package2call[API_package(idx2API[API_idx])].add(API_idx)

    package_dict = {}
    for API in apk2call[apk]:
        package_dict[API] = 0
    for package in package2call:
        length_package = len(package2call[package])
        for API in package2call[package]:
            package_dict[API] += length_package - 1
    num_edges_P = sum(package_dict.values()) / 2
    node_degrees_dict = package_dict
    for API in node_degrees_dict:
        node_degrees_dict[API] += block_dict[API]
    stats = pd.Series(node_degrees_dict).describe()
    try:
        API = most_common_API(apk, apk2code_blocks, idx2API)
    except:
        API = 'None'
    return [num_nodes, num_edges_B, num_edges_P, stats['min'], stats['max'], stats['mean'], stats['50%'], stats['std'], API]
