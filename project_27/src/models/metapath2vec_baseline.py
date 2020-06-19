import numpy as np
import pandas as pd
import requests
# from bs4 import BeautifulSoup
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
from sklearn import svm
from sklearn.model_selection import train_test_split
import scipy
import json
from sklearn.metrics import confusion_matrix
from sklearn.metrics import fbeta_score
from sklearn.manifold import TSNE
import seaborn as sns
import matplotlib.pyplot as plt
from sklearn.svm import SVC
from node_pairs_generation import generate_graph_pairs

import os
import sys
# insert at 1, 0 is the script path (or '' in REPL)
sys.path.insert(1, '/metapath2vec')

import sampler_AA
import sampler_ABA
import sampler_ABPBA



import metapath2vec

def generate_embedding_dict(raw_embeddings_text, Malware_set, Benign_set):
    """
    Generate a dictionary containing APP/API node as the key and its vector embedding as the value.
    Args:
        raw_embeddings_text: the raw embedding text gerated by the metapath2vec.
    """
    toReturn = dict()
    toReturn["Malwares"] = dict()
    toReturn["Benign"] = dict()
    toReturn["API"] = dict()
    for i in range(1,len(raw_embeddings_text)):
        raw_node_name = raw_embeddings_text[i].split()[0]
        node_embedding = raw_embeddings_text[i].split()[1:]

        ## This is the case of an Malware
        if raw_node_name in Malware_set:
            toReturn["Malwares"][raw_node_name] = list(map(float, node_embedding))
        ## This is the case of an Benignware
        elif raw_node_name in Benign_set:
            toReturn["Benign"][raw_node_name] = list(map(float, node_embedding))
        ## This is the case of API
        else:
            toReturn["API"][raw_node_name] = list(map(float, node_embedding))
    return toReturn

def pred(embed_dict, num_mal, num_benign):
    """
    Take in embed_dict and give a testing acc with SVM.
    """
    X = list(embed_dict['Malwares'].values()) + list(embed_dict['Benign'].values())
    Y = [1]*num_mal + [0]*num_benign
    X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size=0.33, random_state=42)
    clf = SVC(gamma="scale", kernel = 'rbf')
    clf.fit(X_train, y_train)
    return clf.score(X_train, y_train)

def metapath2vec_pred():
    sampler_AA.generate_metapath() # create metapath_320_AA.txt
    sampler_ABA.generate_metapath() # create metapath_320_ABA.txt
    sampler_ABPBA.generate_metapath() # create metapath_320_ABPBA.txt

    # run metapath2vec on the sampled random walk to generate embedding results.
    os.system('python3 ./metapath2vec/metapath2vec.py --download ../results/metapath_320_AA.txt --output_file AA_embedding.txt --num_workers 0')
    os.system('python3 ./metapath2vec/metapath2vec.py --download ../results/metapath_320_ABA.txt --output_file ABA_embedding.txt --num_workers 0')
    os.system('python3 ./metapath2vec/metapath2vec.py --download ../results/metapath_320_ABPBA.txt --output_file ABPBA_embedding.txt --num_workers 0')
    AA_embedding_result = open("./metapath2vec/AA_embedding.txt", "r").readlines()
    ABA_embedding_result = open("./metapath2vec/ABA_embedding.txt", "r").readlines()
    ABPBA_embedding_result = open("./metapath2vec/ABPBA_embedding.txt", "r").readlines()

    apk_classes_dict = dict(zip(apk_names_train, apk_classes_train))
    malwares = set([k for (k,v) in apk_classes_dict.items() if v==1])
    benigns = set([k for (k,v) in apk_classes_dict.items() if v==0])

    num_malwares = len(malwares)
    num_benigns = len(benigns)
    AA_embedding_dict = generate_embedding_dict(AA_embedding_result, malwares, benigns)
    ABA_embedding_dict = generate_embedding_dict(ABA_embedding_result, malwares, benigns)
    ABPBA_embedding_dict = generate_embedding_dict(ABPBA_embedding_result, malwares, benigns)

    X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size=0.33, random_state=42)
    AA_test_acc = pred(AA_embedding_dict, num_malwares, num_benigns)
    ABA_test_acc = pred(ABA_embedding_dict, num_malwares, num_benigns)
    ABPBA_test_acc = pred(ABPBA_embedding_dict, num_malwares, num_benigns)

    result_dict = {'AA': [AA_test_acc], 'ABA': [ABA_test_acc], 'ABPBA': [ABPBA_test_acc]}
    result_df = pd.DataFrame(data=result_dict)
    result_df.to_csv("metapath2vec_test_acc.csv")
