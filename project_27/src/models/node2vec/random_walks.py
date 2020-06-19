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

# APP1 ---> API1 ---> APP2
def APP_to_API_AA(API, APP, apk2idx, node2apk, A, BP, p, q):
    """
    A helper funtion for generating AA random walks.
    Given previous API and current APP, sample next API
    """
    APP_idx = apk2idx[node2apk[APP]]
    ser = pd.Series(A[APP_idx].toarray()[0])
    A_neibors = ser[ser == 1].index
    if len(A_neibors) == 0:
        return None
    probs = []
    col = BP[API].toarray()[0]
    probs = [1 if col[n] else 1/q for n in A_neibors]
    probs[list(A_neibors).index(API)] = 1/p
    p_sum = sum(probs)
    probs = [p/p_sum for p in probs]
    API = np.random.choice(A_neibors, 1, p = probs).item()
    return API

def API_to_APP_AA(APP, API, apk2idx, idx2apk, node2apk, apk2node, A, p, q):
    """
    A helper funtion for generating AA random walks.
    Given previous APP and current API, sample next APP
    """
    APP_idx = apk2idx[node2apk[APP]]
    ser = pd.Series(A.T[API].toarray()[0])
    A_neibors = ser[ser == 1].index
    if len(A_neibors) == 0:
        return None
    probs = [1/p if n == APP_idx else 1/q for n in A_neibors]
    p_sum = sum(probs)
    probs = [p/p_sum for p in probs]
    APP_idx = np.random.choice(A_neibors, 1, p = probs).item()
    return apk2node[idx2apk[APP_idx]]

def generate_AA_random_walks(APP_start, apk2idx, idx2apk, apk2node, node2apk, A, BP, p, q, length):
    """
    Given a starting node, generate AA random walks that have max length of 'length'
    """
    APP1 = apk2node[APP_start]
    APP_idx = apk2idx[APP_start]
    ser = pd.Series(A[APP_idx].toarray()[0])
    API1 = np.random.choice(ser[ser == 1].index, 1, replace = True).item()
    walk = [APP1, API1]
    while len(walk) < length:
        APP2 = API_to_APP_AA(APP1, API1, apk2idx, idx2apk, node2apk, apk2node, A, p, q)
        if not APP2:
            return walk
        walk.append(APP2)
        API1 = APP_to_API_AA(API1, APP2, apk2idx, node2apk, A, BP, p, q)
        if not API1:
            return walk
        walk.append(API1)
        APP1 = APP2
    return walk

# APP1 ---> API1 ---> API2 ---> APP2

def APP_to_API_ABA(API, APP, apk2idx, node2apk, A, B, BP, p, q):
    """
    A helper funtion for generating ABA random walks.
    Given previous API and current APP, sample next APP
    """
    APP_idx = apk2idx[node2apk[APP]]
    ser = pd.Series(A[APP_idx].toarray()[0])
    A_neibors = list(ser[ser == 1].index)
    if len(A_neibors) == 0:
        return None
    col = BP[API].toarray()[0]
    probs = [1 if col[n] else 1/q for n in A_neibors]
    probs[A_neibors.index(API)] = 1/p
    p_sum = sum(probs)
    probs = [p/p_sum for p in probs]
    API = np.random.choice(A_neibors, 1, p = probs).item()
    return API

def API_to_API_ABA(APP, API, apk2idx, node2apk, A, B, p, q):
    """
    A helper funtion for generating ABA random walks.
    Given previous APP and current API, sample next API
    """
    APP_idx = apk2idx[node2apk[APP]]
    # find neignbors of current API
    ser = pd.Series(B[API].toarray()[0])
    B_neibors = ser[ser == 1].index
    if len(B_neibors) == 0:
        return None
    # assign probabilities
    probs = [1 if A[APP_idx, n] else 1/q for n in B_neibors]
    p_sum = sum(probs)
    probs = [p/p_sum for p in probs]
    return np.random.choice(B_neibors, 1, p = probs).item()

def API_to_APP_ABA(API_pre, API, idx2apk, apk2node, A, p, q):
    """
    A helper funtion for generating ABA random walks.
    Given previous API and current API, sample next APP
    """
    # find neignbors of current API
    ser = pd.Series(A.T[API].toarray()[0])
    A_neibors = ser[ser == 1].index
    if len(A_neibors) == 0:
        return None
    probs = [1 if A[n, API_pre] else 1/q for n in A_neibors]
    p_sum = sum(probs)
    probs = [p/p_sum for p in probs]
    APP_idx = np.random.choice(A_neibors, 1, p = probs).item()
    return apk2node[idx2apk[APP_idx]]

def generate_ABA_random_walks(APP_start, apk2idx, idx2apk, apk2node, node2apk, A, B, BP, p, q, length):
    """
    Given a starting node, generate ABA random walks that have max length of 'length'
    """
    APP1 = apk2node[APP_start]
    APP_idx = apk2idx[APP_start]
    ser = pd.Series(A[APP_idx].toarray()[0])
    API1 = np.random.choice(ser[ser == 1].index, 1, replace = True).item()
    walk = [APP1, API1]
    while len(walk) < length:
        API2 = API_to_API_ABA(APP1, API1, apk2idx, node2apk, A, B, p, q)
        if not API2:
            return walk
        walk.append(API2)
        APP2 = API_to_APP_ABA(API1, API2, idx2apk, apk2node, A, p, q)
        if not APP2:
            return walk
        walk.append(APP2)
        API1 = APP_to_API_ABA(API2, APP2, apk2idx, node2apk, A, B, BP, p, q)
        if not API1:
            return walk
        walk.append(API1)
        APP1 = APP2
    return walk

# ABPBA
# APP1 ->(A)-> API1 ->(B)-> API2 ->(P)-> API3 ->(B)-> API4 ->(A)-> APP2
def APP_to_API_ABPBA(API, APP, apk2idx, node2apk, A, B, P, BP, p, q):
    """
    A helper funtion for generating ABPBA random walks.
    Given previous API and current APP, sample next API (first A edge)
    """
    APP_idx = apk2idx[node2apk[APP]]
    ser = pd.Series(A[APP_idx].toarray()[0])
    A_neibors = ser[ser == 1].index
    if len(A_neibors) == 0:
        return None
#     probs = [1 if B[n, API] or P[n, API] else 1/q for n in A_neibors]
    col = BP[API].toarray()[0]
    probs = [1 if col[n] else 1/q for n in A_neibors]
    # since API led to this APP, there must be API in A_neibors
    probs[list(A_neibors).index(API)] = 1/p
    p_sum = sum(probs)
    probs = [p/p_sum for p in probs]
    API = np.random.choice(A_neibors, 1, p = probs).item()
    return API

def API_to_API_B1_ABPBA(APP, API, apk2idx, node2apk, A, B, P, p, q):
    """
    A helper funtion for generating ABPBA random walks.
    Given previous APP and current API, sample next API (first B edge)
    """
    APP_idx = apk2idx[node2apk[APP]]
    ser = pd.Series(B[API].toarray()[0])
    B_neibors = ser[ser == 1].index
    if len(B_neibors) == 0:
        return None
    probs = [1 if A[APP_idx, n] else 1/q for n in B_neibors]
    p_sum = sum(probs)
    probs = [p/p_sum for p in probs]
    return np.random.choice(B_neibors, 1, p = probs).item()

def API_to_API_P_ABPBA(API_pre, API, apk2idx, node2apk, A, B, P, BP, p, q):
    """
    A helper funtion for generating ABPBA random walks.
    Given previous API and current API, sample next API (P edge)
    """
    # find neignbors of current API
    ser = pd.Series(P[API].toarray()[0])
    P_neibors = list(ser[ser == 1].index)
    if len(P_neibors) == 0:
        return None
#     probs = [1 if B[n, API_pre] or P[n, API_pre] else 1/q for n in P_neibors]
    col = BP[API_pre].toarray()[0]
    probs = [1 if col[n] else 1/q for n in P_neibors]
    if API_pre in P_neibors:
        probs[P_neibors.index(API_pre)] = 1/p
    p_sum = sum(probs)
    probs = [p/p_sum for p in probs]
    return np.random.choice(P_neibors, 1, p = probs).item()

def API_to_API_B2_ABPBA(API_pre, API, apk2idx, node2apk, A, B, P, BP, p, q):
    """
    A helper funtion for generating ABPBA random walks.
    Given previous API and current API, sample next API (second B edge)
    """
    # find neignbors of current API
    ser = pd.Series(B[API].toarray()[0])
    B_neibors = list(ser[ser == 1].index)
    if len(B_neibors) == 0:
        return None
#     probs = [1 if B[n, API_pre] or P[n, API_pre] else 1/q for n in B_neibors]
    col = BP[API_pre].toarray()[0]
    probs = [1 if col[n] else 1/q for n in B_neibors]

    if API_pre in B_neibors:
        probs[B_neibors.index(API_pre)] = 1/p
    p_sum = sum(probs)
    probs = [p/p_sum for p in probs]
    return np.random.choice(B_neibors, 1, p = probs).item()

def API_to_APP_ABPBA(API_pre, API, idx2apk, apk2node, A, B, P, p, q):
    """
    A helper funtion for generating ABPBA random walks.
    Given previous API and current API, sample next APP (second A edge)
    """
    # find neignbors of current API
    ser = pd.Series(A.T[API].toarray()[0])
    A_neibors = ser[ser == 1].index
    if len(A_neibors) == 0:
        return None
    probs = [1 if A[n, API_pre] else 1/q for n in A_neibors]
    p_sum = sum(probs)
    probs = [p/p_sum for p in probs]
    APP_idx = np.random.choice(A_neibors, 1, p = probs).item()
    return apk2node[idx2apk[APP_idx]]

def generate_ABPBA_random_walks(APP_start, apk2idx, idx2apk, apk2node, node2apk, A, B, P, BP, p, q, length):
    """
    Given a starting node, generate ABPBA random walks that have max length of 'length'
    """
    APP1 = apk2node[APP_start]
    APP_idx = apk2idx[APP_start]
    ser = pd.Series(A[APP_idx].toarray()[0])
    API1 = np.random.choice(ser[ser == 1].index, 1, replace = True).item()
    walk = [APP1, API1]
    while len(walk) < length:
        API2 = API_to_API_B1_ABPBA(APP1, API1, apk2idx, node2apk, A, B, P, p, q)
        if not API2:
            return walk
        walk.append(API2)
        API3 = API_to_API_P_ABPBA(API1, API2, apk2idx, node2apk, A, B, P, BP, p, q)
        if not API3:
            return walk
        walk.append(API3)

        API4 = API_to_API_B2_ABPBA(API2, API3, apk2idx, node2apk, A, B, P, BP, p, q)
        if not API4:
            return walk
        walk.append(API4)

        APP2 = API_to_APP_ABPBA(API3, API4, idx2apk, apk2node, A, B, P, p, q)
        if not APP2:
            return walk
        walk.append(APP2)

        API1 = APP_to_API_ABPBA(API4, APP2, apk2idx, node2apk, A, B, P, BP, p, q)
        if not API1:
            return walk
        walk.append(API1)
        APP1 = APP2
    return walk

def generate_walks(metapath, apk_names_train, apk2idx_train, idx2apk_train, apk2node_train, node2apk_train, matrix_A_train, matrix_B_train, matrix_P_train, matrix_BP_train, p, q, k, n):
    """
    Generate k random walks of length n for each APP
    """
    walks = []
    counter = 0
    total = len(apk_names_train)
    for APP_start in apk_names_train:
        print(counter)
        counter += 1
        print("{:.2f}% completed...".format(counter / total * 100))
        for i in range(k):
            if metapath == 'AA':
                walk = generate_AA_random_walks(APP_start, apk2idx_train, idx2apk_train, apk2node_train, \
                                             node2apk_train, matrix_A_train, matrix_BP_train, p, q, n)

            elif metapath == 'ABA':
                walk = generate_ABA_random_walks(APP_start, apk2idx_train, idx2apk_train, apk2node_train, \
                                     node2apk_train, matrix_A_train, matrix_B_train, matrix_BP_train, p, q, n)
            elif metapath == 'ABPBA':
                walk = generate_ABPBA_random_walks(APP_start, apk2idx_train, idx2apk_train, apk2node_train, \
                                    node2apk_train, matrix_A_train, matrix_B_train, matrix_P_train, matrix_BP_train, p, q, n)
            walks.append(walk)
    return walks

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

def plot_tSNE(X, Y, metapath, k, n):
    """
    Plot the tSNE dimension reduction plots
    """
    tsne = TSNE(n_components=2, verbose=1, perplexity=40, n_iter=300)
    tsne_results = tsne.fit_transform(X)
    indices_neg1 = (np.array(Y) == 0).nonzero()[0]
    indices_pos1 = (np.array(Y) == 1).nonzero()[0]
    plt.scatter(tsne_results[:,0][indices_neg1], tsne_results[:,1][indices_neg1], s = 5, c='blue', label='benign')
    plt.scatter(tsne_results[:,0][indices_pos1], tsne_results[:,1][indices_pos1], s = 5, c='red', label='malware')
    plt.legend()
    plt.xlabel("tsne-2d-one")
    plt.ylabel("tsne-2d-two")
    plt.title('Metapath {}, k = {}, n = {}'.format(metapath, k, n))
