import numpy as np
import pandas as pd
import requests
from bs4 import BeautifulSoup
import re
import scipy.sparse
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
import seaborn as sns


class malware_type:
    def __init__(self, malware_location, benign_location, number_app):
        self.malware_location = malware_location
        self.benign_location = benign_location
        self.number_app = number_app

    
    #build A, P, B matrix
    '''
    malware_type_str: include the types of the malware,
    number_app: number of app from malwares and benign apps
    seed: seed used to choose malwares, default to be 5, -1 if no seed wanted

    '''
    def build_all_matrix(self, malware_type_str, seed=5):

        if seed != -1:
            np.random.seed(seed)

        malware_positions = list(np.random.choice(self.malware_location, self.number_app, replace = False))
        benign_positions = list(np.random.choice(self.benign_location, self.number_app, replace = False))
        decompiled_apks = benign_positions + malware_positions
        train = np.random.choice(decompiled_apks, int(len(decompiled_apks)*0.8), replace = False)
        test = [apk for apk in decompiled_apks if apk not in train]


        #create labels for the apps
        apk_names_train = [get_name(app) for app in train]
        self.apk_classes_train = [build_type_lst(app) for app in train]

        apk_names_test = [get_name(app) for app in test]
        self.apk_classes_test = [build_type_lst(app) for app in test]


        apk2idx_train = dict(zip(apk_names_train, range(len(apk_names_train))))
        apk2idx_test = dict(zip(apk_names_test, range(len(apk_names_test))))
        APIs = list(get_all_APIs(train))

        self.API2idx = dict(zip(APIs, range(len(APIs))))
        self.idx2API = dict(zip(range(len(APIs)), APIs))

        apk2code_blocks_test, apk2call_test = apk_info_idx(test, API2idx, 'test')

        apk2code_blocks_train, apk2call_train = apk_info_idx(train, API2idx, 'train')

        matrix_A_train = build_matrix_A(API2idx, apk2call_train, apk2idx_train)

        scipy.sparse.save_npz(malware_type+"_matrix_A_train.npz", matrix_A_train.tocsr())

        matrix_A_test = build_matrix_A(API2idx, apk2call_test, apk2idx_test)

        scipy.sparse.save_npz(malware_type+"_matrix_A_test.npz", matrix_A_test.tocsr())

        matrix_B_train = build_matrix_B(API2idx, apk2code_blocks_train, apk2idx_train)

        scipy.sparse.save_npz(malware_type+"_matrix_B_train.npz", matrix_B_train.tocsr())

        matrix_B_test = build_matrix_B(API2idx, apk2code_blocks_test, apk2idx_test)

        scipy.sparse.save_npz(malware_type+"_matrix_B_test.npz", matrix_B_test.tocsr())

        matrix_P_train = build_matrix_P(idx2API, apk2call_train, apk2idx_train)

        scipy.sparse.save_npz(malware_type+"_matrix_P_train.npz", matrix_P_train.tocsr())

        matrix_P_test = build_matrix_P(idx2API, apk2call_test, apk2idx_test)

        scipy.sparse.save_npz(malware_type+"_matrix_P_test.npz", matrix_P_test.tocsr())

        self.matrix_A_train = matrix_A_train
        self.matrix_A_test = matrix_A_test
        self.matrix_B_train = matrix_B_train
        self.matrix_B_test = matrix_B_test
        self.matrix_P_train = matrix_P_train
        self.matrix_P_test = matrix_P_test
        


    def read_matrix(self, malware_location):
        """
        Build the matrix from pre-built sparse matrix
        """
        matrix_A_train = scipy.sparse.load_npz(malware_location+'_matrix_A_train.npz')
        matrix_A_test = scipy.sparse.load_npz(malware_location+'_matrix_A_test.npz')
        matrix_B_train = scipy.sparse.load_npz(malware_location+ '_matrix_B_train.npz')
        matrix_B_test = scipy.sparse.load_npz(malware_location+'_matrix_B_test.npz')
        matrix_P_train = scipy.sparse.load_npz(malware_location+'_matrix_P_train.npz')
        matrix_P_test = scipy.sparse.load_npz(malware_location+'_matrix_P_test.npz')

        print('Successfully Loaded!')
        
        self.matrix_A_train = matrix_A_train
        self.matrix_A_test = matrix_A_test
        self.matrix_B_train = matrix_B_train
        self.matrix_B_test = matrix_B_test
        self.matrix_P_train = matrix_P_train
        self.matrix_P_test = matrix_P_test

    

    #train accuracy and f1 score
    def score_on_metapath_AA(self, matrix_A_train, matrix_A_test):

        clf = svm.SVC(kernel='precomputed')

        lst = []

        gram = (matrix_A_train * matrix_A_train.T).toarray()

        clf.fit(gram, self.apk_classes_train)
    
        
        gram_test = (matrix_A_test * matrix_A_train.T).toarray()
        lst.append(clf.score(gram_test, self.apk_classes_test))
        lst.append(fbeta_score(self.apk_classes_test, clf.predict(gram_test), beta= 0.0565))

        return lst



    #train accuracy and f1 score
    def score_on_metapath_ABA(self, matrix_A_train, matrix_A_test, matrix_B_train, matrix_B_test):

        clf = svm.SVC(kernel='precomputed')

        lst = []
        gram = (matrix_A_train * matrix_B_train * matrix_A_train.T).toarray()
        clf.fit(gram, self.apk_classes_train)
        
        gram_test = (matrix_A_test * matrix_B_train * matrix_A_train.T).toarray()

        lst.append(clf.score(gram_test, self.apk_classes_test))
        lst.append(fbeta_score(apk_classes_test, clf.predict(gram_test), beta=0.09))

        return lst


    #train accuracy and f1 score
    def score_on_metapath_APA(self, matrix_A_train, matrix_A_test, matrix_P_train, matrix_P_test):
        
        clf = svm.SVC(kernel='precomputed')

        lst = []
        gram = (matrix_A_train * matrix_P_train * matrix_A_train.T).toarray()
        clf.fit(gram, self.apk_classes_train)
        
        gram_test = (matrix_A_test * matrix_P_train * matrix_A_train.T).toarray()

        lst.append(clf.score(gram_test, self.apk_classes_test))
        lst.append(fbeta_score(apk_classes_test, clf.predict(gram_test), beta=0.09))

        return lst

    #train accuracy and f1 score
    def score_on_metapath_APBPA(self, matrix_A_train, matrix_A_test, matrix_P_train, matrix_P_test, matrix_B_train, matrix_B_test):
        
        clf = svm.SVC(kernel='precomputed')

        lst = []
        gram = (matrix_A_train * matrix_P_train * matrix_B_train * matrix_P_train.T * matrix_A_train.T).toarray()
        clf.fit(gram, self.apk_classes_train)
        
        gram_test = (matrix_A_test * matrix_P_test * matrix_B_train * matrix_P_train.T * matrix_A_train.T).toarray()

        lst.append(clf.score(gram_test, self.apk_classes_test))
        lst.append(fbeta_score(apk_classes_test, clf.predict(gram_test), beta=0.09))

        return lst


    

    """
    times: times to retrain the model and calculate average accuracy
    """
    def retrain_accuray_AA(self, malware_type_str, times):

        #accuracy, F1 score
        statistics = []
        for i in np.arange(times):
            malware_positions = list(np.random.choice(self.malware_location, self.number_app, replace = False))
            benign_positions = list(np.random.choice(self.benign_location, self.number_app, replace = False))
            decompiled_apks = benign_positions + malware_positions
            train = np.random.choice(decompiled_apks, int(len(decompiled_apks)*0.8), replace = False)
            test = [apk for apk in decompiled_apks if apk not in train]

            #create labels for the apps
            apk_names_train = [get_name(app) for app in train]
            self.apk_classes_train = [build_type_lst(app) for app in train]

            apk_names_test = [get_name(app) for app in test]
            self.apk_classes_test = [build_type_lst(app) for app in test]


            apk2idx_train = dict(zip(apk_names_train, range(len(apk_names_train))))
            apk2idx_test = dict(zip(apk_names_test, range(len(apk_names_test))))
            APIs = list(get_all_APIs(train))

            self.API2idx = dict(zip(APIs, range(len(APIs))))
            self.idx2API = dict(zip(range(len(APIs)), APIs))

            apk2code_blocks_test, apk2call_test = apk_info_idx(test, API2idx, 'test')

            apk2code_blocks_train, apk2call_train = apk_info_idx(train, API2idx, 'train')

            matrix_A_train = build_matrix_A(API2idx, apk2call_train, apk2idx_train)

            matrix_A_test = build_matrix_A(API2idx, apk2call_test, apk2idx_test)

            lst = score_on_metapath_AA(matrix_A_train, matrix_A_test)
            if i == 0:
                statistics = lst
            else:
                statistics[0] = (statistics[0]+lst[0])/2
                statistics[1] = (statistics[1]+lst[1])/2

        return statistics


    """
    times: times to retrain the model and calculate average accuracy
    """
    def retrain_accuray_ABA(self, malware_type_str, times, matrix_A_train, matrix_A_test, matrix_B_train, matrix_B_test):

        #accuracy, F1 score
        statistics = []
        for i in np.arange(times):

            malware_positions = list(np.random.choice(self.malware_location, self.number_app, replace = False))
            benign_positions = list(np.random.choice(self.benign_location, self.number_app, replace = False))
            decompiled_apks = benign_positions + malware_positions
            train = np.random.choice(decompiled_apks, int(len(decompiled_apks)*0.8), replace = False)
            test = [apk for apk in decompiled_apks if apk not in train]

            #create labels for the apps
            apk_names_train = [get_name(app) for app in train]
            self.apk_classes_train = [build_type_lst(app) for app in train]

            apk_names_test = [get_name(app) for app in test]
            self.apk_classes_test = [build_type_lst(app) for app in test]


            apk2idx_train = dict(zip(apk_names_train, range(len(apk_names_train))))
            apk2idx_test = dict(zip(apk_names_test, range(len(apk_names_test))))
            APIs = list(get_all_APIs(train))

            self.API2idx = dict(zip(APIs, range(len(APIs))))
            self.idx2API = dict(zip(range(len(APIs)), APIs))

            apk2code_blocks_test, apk2call_test = apk_info_idx(test, API2idx, 'test')

            apk2code_blocks_train, apk2call_train = apk_info_idx(train, API2idx, 'train')

            matrix_A_train = build_matrix_A(API2idx, apk2call_train, apk2idx_train)

            matrix_A_test = build_matrix_A(API2idx, apk2call_test, apk2idx_test)

            matrix_B_train = build_matrix_B(API2idx, apk2code_blocks_train, apk2idx_train)

            matrix_B_test = build_matrix_B(API2idx, apk2code_blocks_test, apk2idx_test)


            lst = score_on_metapath_ABA(matrix_A_train, matrix_A_test, matrix_B_train, matrix_B_test)
            if i == 0:
                statistics = lst
            else:
                statistics[0] = (statistics[0]+lst[0])/2
                statistics[1] = (statistics[1]+lst[1])/2

        return statistics


    def retrain_accuray_APA(self, malware_type_str, times, matrix_A_train, matrix_A_test, matrix_B_train, matrix_B_test):

            #accuracy, F1 score
            statistics = []
            for i in np.arange(times):
                malware_positions = list(np.random.choice(self.malware_location, self.number_app, replace = False))
                benign_positions = list(np.random.choice(self.benign_location, self.number_app, replace = False))
                decompiled_apks = benign_positions + malware_positions
                train = np.random.choice(decompiled_apks, int(len(decompiled_apks)*0.8), replace = False)
                test = [apk for apk in decompiled_apks if apk not in train]

                #create labels for the apps
                apk_names_train = [get_name(app) for app in train]
                self.apk_classes_train = [build_type_lst(app) for app in train]

                apk_names_test = [get_name(app) for app in test]
                self.apk_classes_test = [build_type_lst(app) for app in test]


                apk2idx_train = dict(zip(apk_names_train, range(len(apk_names_train))))
                apk2idx_test = dict(zip(apk_names_test, range(len(apk_names_test))))
                APIs = list(get_all_APIs(train))

                self.API2idx = dict(zip(APIs, range(len(APIs))))
                self.idx2API = dict(zip(range(len(APIs)), APIs))

                apk2code_blocks_test, apk2call_test = apk_info_idx(test, API2idx, 'test')

                apk2code_blocks_train, apk2call_train = apk_info_idx(train, API2idx, 'train')

                matrix_A_train = build_matrix_A(API2idx, apk2call_train, apk2idx_train)

                matrix_A_test = build_matrix_A(API2idx, apk2call_test, apk2idx_test)

                matrix_P_train = build_matrix_P(API2idx, apk2code_blocks_train, apk2idx_train)

                matrix_P_test = build_matrix_P(API2idx, apk2code_blocks_test, apk2idx_test)


                lst = score_on_metapath_APA(matrix_A_train, matrix_A_test, matrix_P_train, matrix_P_test)
                if i == 0:
                    statistics = lst
                else:
                    statistics[0] = (statistics[0]+lst[0])/2
                    statistics[1] = (statistics[1]+lst[1])/2

            return statistics

    def retrain_accuray_APBPA(self, malware_type_str, times, matrix_A_train, matrix_A_test, matrix_P_train, matrix_P_test, matrix_B_train, matrix_B_test):

            #accuracy, F1 score
            statistics = []
            for i in np.arange(times):
                malware_positions = list(np.random.choice(self.malware_location, self.number_app, replace = False))
                benign_positions = list(np.random.choice(self.benign_location, self.number_app, replace = False))
                decompiled_apks = benign_positions + malware_positions
                train = np.random.choice(decompiled_apks, int(len(decompiled_apks)*0.8), replace = False)
                test = [apk for apk in decompiled_apks if apk not in train]

                #create labels for the apps
                apk_names_train = [get_name(app) for app in train]
                self.apk_classes_train = [build_type_lst(app) for app in train]

                apk_names_test = [get_name(app) for app in test]
                self.apk_classes_test = [build_type_lst(app) for app in test]


                apk2idx_train = dict(zip(apk_names_train, range(len(apk_names_train))))
                apk2idx_test = dict(zip(apk_names_test, range(len(apk_names_test))))
                APIs = list(get_all_APIs(train))

                self.API2idx = dict(zip(APIs, range(len(APIs))))
                self.idx2API = dict(zip(range(len(APIs)), APIs))

                apk2code_blocks_test, apk2call_test = apk_info_idx(test, API2idx, 'test')

                apk2code_blocks_train, apk2call_train = apk_info_idx(train, API2idx, 'train')

                matrix_A_train = build_matrix_A(API2idx, apk2call_train, apk2idx_train)

                matrix_A_test = build_matrix_A(API2idx, apk2call_test, apk2idx_test)

                matrix_B_train = build_matrix_B(API2idx, apk2code_blocks_train, apk2idx_train)

                matrix_B_test = build_matrix_B(API2idx, apk2code_blocks_test, apk2idx_test)

                matrix_P_train = build_matrix_P(API2idx, apk2code_blocks_train, apk2idx_train)

                matrix_P_test = build_matrix_P(API2idx, apk2code_blocks_test, apk2idx_test)


                lst = score_on_metapath_APBPA(matrix_A_train, matrix_A_test, matrix_P_train, matrix_P_test, matrix_B_train, matrix_B_test)
                if i == 0:
                    statistics = lst
                else:
                    statistics[0] = (statistics[0]+lst[0])/2
                    statistics[1] = (statistics[1]+lst[1])/2

            return statistics


    def build_type_lst(self, app_name):
        """
        Return 1 if it is malware, 0 if benign
        """
        return int(app_name in self.malware_location)



    def get_name(self, file):
        """
        Return name of the APP
        """
        return '-'.join(file.split('/')[-3:])


    def get_code_blocks(self, data):
        return re.findall(r'\.method.*?\.end method', data)

    def get_API_calls(self, data):
        return [API_segmentation(line)[1] for line in re.findall(r'(invoke-.*?->.*?)\s', data)]

    def API_segmentation(self, line):
        idx = line.find('}') + 1
        call = line[idx+1:].strip()
        invoke_type = line[:line.find('{')].strip().split('/')[0]
        return (invoke_type, call)

    def data_in_app(self, filepath):
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
    def apk_info(self, decompiled_apks):
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

    def API_segmentation(self, line):
        """
        Splits a API line to invoke type and API call
        """
        idx = line.find('}') + 1
        call = line[idx+1:].strip()
        invoke_type = line[:line.find('{')].strip().split('/')[0]
        return (invoke_type, call)


    def API_package(self, API):
        """
        Returns the package of API 
        """
        return API.split('->')[0]


    def get_all_APIs(self, decompiled_apks):
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

    def get_code_blocks_idx(self, data, API2idx, stage = 'train'):
        """
        Given API2idx mapping, returns a list of lists, where each list is API indices in a same code block
        """
        code_blocks = re.findall(r'\.method.*?\.end method', data)
        API_indices = [get_API_calls_idx(code, API2idx, stage) for code in code_blocks]
        return API_indices

        
    def get_API_calls_idx(self, data, API2idx, stage = 'train'):
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
                    
        
    def data_in_app_idx(self, filepath, API2idx, stage = 'train'):
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

    def apk_info_idx(self, decompiled_apks, API2idx, stage = 'train'):
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


    def build_matrix_A(self, API2idx, apk2call, apk2idx):
        """
        Builds matrix A, where A[i,j] is whether APP_i has API_j
        """
    #     matrix_A = np.zeros((len(apk2idx), len(API2idx)))
        matrix_A = scipy.sparse.lil_matrix((len(apk2idx), len(API2idx)))
        total = len(apk2idx)
        counter = 0
        for apk in apk2idx:
            counter += 1
            print("{:.2f}%".format(counter / total * 100), apk)
            apk_idx = apk2idx[apk]
            API_indices = apk2call[apk]
            for API_idx in API_indices:
                matrix_A[apk_idx, API_idx] = 1
        return matrix_A

    def build_matrix_B(self, API2idx, apk2code_blocks, apk2idx):
        '''
        Build matrix B, where B[i,j] is whether API_i and API_j occur in the same code block (method).
        '''
        matrix_B = scipy.sparse.lil_matrix((len(API2idx), len(API2idx)))
        total = len(apk2idx)
        counter = 0
        for apk in apk2idx:
            counter += 1
            print("{:.2f}%".format(counter / total * 100), apk)
            code_blocks = apk2code_blocks[apk]
            for block in code_blocks:
                for i in range(len(block)):
                    API_i = block[i]
                    for j in range(i+1, len(block)):
                        API_j = block[j]
                        matrix_B[API_i, API_j] = 1
                        matrix_B[API_j, API_i] = 1
        return matrix_B

    def build_matrix_P(self, idx2API, apk2call, apk2idx):
        '''
        Build matrix P, where P[i,j] is whether API_i and API_j have the same package.
        '''         
        matrix_P = scipy.sparse.lil_matrix((len(API2idx), len(API2idx)))
        total = len(apk2idx)
        counter = 0
        package2call = defaultdict(set)
        for apk in apk2idx:
            counter += 1
            print("{:.2f}%".format(counter / total * 100), apk)
            for API_idx in apk2call[apk]:
                package2call[API_package(idx2API[API_idx])].add(API_idx)
        total = len(package2call)
        counter = 0
        one_perc = total // 100
        for package in package2call:
            counter += 1
            if counter % one_perc == 0:
                print("{:.2f}%".format(counter / total * 100), package)
            APIs = list(package2call[package])
            for i in range(len(APIs)):
                API_i_idx = APIs[i]
                for j in range(i+1, len(APIs)):
                    API_j_idx = APIs[j]
                    matrix_P[API_i_idx, API_j_idx] = 1
                    matrix_P[API_j_idx, API_i_idx] = 1
        return matrix_P

