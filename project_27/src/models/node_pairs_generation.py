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

def generate_id(start_index, data_list, name_of_file, result_dir):
    """
    generate unique id for each element in the list and write into txt file. And the index starts from the specified
    start_index.
    """
    indexes = start_index + np.arange(len(data_list))
    with open(result_dir + name_of_file + '.txt', 'w', encoding = 'utf-8') as myfile:
        for i in indexes:
            myfile.write(str(i) + " " + data_list[i-start_index] + "\n")
    myfile.close()
    return indexes[-1]

def mapping(matrix, rows, columns, file_name):
    """
    Map the matrix into the sample txt file from net_dbis.zip
    """
    # Get row and col indexes of non zero elements in the sparse matrix
    row_col_indexes = matrix.nonzero()
    
    with open(file_name + ".txt", 'w', encoding = 'utf-8') as myfile:
        for i in range(len(row_col_indexes[0])):
            row_num = row_col_indexes[0][i]
            col_num = row_col_indexes[1][i]
            myfile.write(rows[row_num]+" "+columns[col_num]+"\n")
    myfile.close()

def generate_graph_pairs():
    result_dir = "./node_pairs_result/"
    app_ids = [x.split(' ')[0] for x in open(result_dir+"id_app_320.txt", encoding = 'utf-8').readlines()]
    api_ids = [x.split(' ')[0] for x in open(result_dir+"id_api_320.txt", encoding = 'utf-8').readlines()]
    mapping(matrix_A_train.transpose(), api_ids, app_ids, result_dir+"api_app_320")
    mapping(matrix_B_train, api_ids, api_ids, result_dir+"same_block_api_320")
    mapping(matrix_P_train, api_ids, api_ids, result_dir+"same_package_api_320")

if __name__ == "__main__":
    with open('../../config/data-params.json') as fh:
        data_cfg = json.load(fh)
    matrix_A_train = scipy.sparse.load_npz('../' + data_cfg['matrix_A_position'])
    matrix_B_train = scipy.sparse.load_npz('../' + data_cfg['matrix_B_position'])
    matrix_P_train = scipy.sparse.load_npz('../' + data_cfg['matrix_P_position'])
    generate_graph_pairs()