import numpy as np
import pandas as pd
from scipy.sparse import lil_matrix, csr_matrix,save_npz,load_npz
from sklearn import svm
from scipy.sparse import hstack
from collections import defaultdict
import json 
from scipy import sparse
from scipy.sparse import rand
from scipy.sparse import csr_matrix
from scipy.sparse import coo_matrix, vstack
from tqdm import tqdm
import csv


def readCorCoef(filepath):
    '''
    A function that reads in correlation coefs
    
    @param filepath: The location of the JSON containing correlation coefs
    @returns: A dictionary of correlation coefs
    '''
    with open(filepath) as json_file:
        data = json.load(json_file)
    
    return data


def filterHighCoef(dictData, outname, threshold):
    '''
    A function that filters correlation coefs greater than a given threshold value 
    
    @param dictData: A dictionary of correlation coefs
    @param outname: The name of the file to be written 
    @param threshold: A value to filter correlation coefs by
    @returns: A new dictionary of correlation coefs greater than the specified threshold value
    '''
    highCoefs = {}
    for api in dictData:
        if dictData[api] > threshold:
            highCoefs[api] = dictData[api]
            
    with open(outname, 'w') as outfile:
        json.dump(highCoefs, outfile)
    
    return highCoefs

def filterLowCoef(dictData, outname, threshold):
    '''
    A function that filters correlation coefs less than a given threshold value 
    
    @param dictData: A dictionary of correlation coefs
    @param outname: The name of the file to be written 
    @param threshold: A value to filter correlation coefs by
    @returns: A new dictionary of correlation coefs less than the specified threshold value
    '''
    lowCoefs = {}
    for api in dictData:
        if dictData[api] < threshold:
            lowCoefs[api] = dictData[api]
            
    with open(outname, 'w') as outfile:
        json.dump(lowCoefs, outfile)
    
    return lowCoefs

def filterDimension(dictData, outname, threshold):
    '''
    A function that filters correlation coefs between a given threshold value (i.e. 0.02 and -0.02)
    
    @param dictData: A dictionary of correlation coefs
    @param outname: The name of the file to be written 
    @param threshold: A value to filter correlation coefs by
    @returns: A new dictionary of correlation coefs between a specified threshold value
    '''
    zeroCoefs = {}
    for api in dictData:
        if dictData[api] <= abs(threshold) and dictData[api] >= -1*abs(threshold):
            zeroCoefs[api] = dictData[api]
            
    with open(outname, 'w') as outfile:
        json.dump(zeroCoefs, outfile)
    
    return zeroCoefs

def filterHighCoefList(dictData, outname, threshold, apiDictPath):
    '''
    A function that filters correlation coefs greater than a given threshold value 
    
    @param dictData: A dictionary of correlation coefs
    @param outname: The name of the file to be written 
    @param threshold: A value to filter correlation coefs by
    @param apiDictPath: A dictionary to map APIs to their corresponding index in the matrix
    @returns: A list of correlation coefs indecies greater than the specified threshold value
    '''
    
    highCoefslist = []
    
    with open(apiDictPath) as json_file: 
        API_index = json.load(json_file) 
    
    for api in dictData:
        if dictData[api] > threshold:
            highCoefslist.append(API_index[api])
            
    with open(outname, 'w', newline='') as myfile:
        wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
        wr.writerow(highCoefslist)
    
    return highCoefslist

def filterLowCoefList(dictData, outname, threshold, apiDictPath):
    '''
    A function that filters correlation coefs less than a given threshold value 
    
    @param dictData: A dictionary of correlation coefs
    @param outname: The name of the file to be written 
    @param threshold: A value to filter correlation coefs by
    @param apiDictPath: A dictionary to map APIs to their corresponding index in the matrix
    @returns: A list of correlation coefs indecies less than the specified threshold value
    '''
    
    lowCoefslist = []
    
    with open(apiDictPath) as json_file: 
        API_index = json.load(json_file) 
        
    for api in dictData:
        if dictData[api] < threshold:
            lowCoefslist.append(API_index[api])
            
    with open(outname, 'w', newline='') as myfile:
        wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
        wr.writerow(lowCoefslist)
    
    return lowCoefslist

def filterDimensionList(dictData, outname, threshold, apiDictPath):
    '''
    A function that filters correlation coefs between a given threshold value (i.e. 0.02 and -0.02)
    
    @param dictData: A dictionary of correlation coefs
    @param outname: The name of the file to be written 
    @param threshold: A value to filter correlation coefs by
    @param apiDictPath: A dictionary to map APIs to their corresponding index in the matrix
    @returns: A list of correlation coefs indecies between a specified threshold value
    '''
    
    zeroCoefslist = []
    
    with open(apiDictPath) as json_file: 
        API_index = json.load(json_file) 
        
    for api in dictData:
        if dictData[api] <= abs(threshold) and dictData[api] >= -1*abs(threshold):
            zeroCoefslist.append(API_index[api])
            
    with open(outname, 'w', newline='') as myfile:
        wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
        wr.writerow(zeroCoefslist)
    
    return zeroCoefslist

def main(p):
    
    #Call functions needed here
    
    #NOTE* The first 3 functions will return a dict/json object of the APIs (keys) and their correlation coef (vals)
    #The last 3 functions will return a list of the indexes of the APIs that hava correlation coefs that fall within the 
    #threshold value
    
    
    #load in the data/json produced by corelateCoef in Correlation_Coef.py 
    
    dictData = readCorCoef(p+'/Corr_coef/ABA_Cor.json')
    
    #Get indexies of corr coef that are positive and above threshold val (Use the functions with list at the end to retrieve just the index)
    filterHighCoef(dictData, p+'/APIs/high_coef_apis.json', .5)
    filterHighCoefList(dictData, p+'/APIs/high_coef_apis.json', .5, p+'/APIs/apis.json')

    #Get indexies of corr coef that are negative and below threshold val (Note - you will not get any because its not possible for a single API to make malware not malware - I can explain why this is if needed @Karan)
#     filterLowCoef(dictData, p+'/APIs/Filtered_Data.json', -.5)
#     filterLowCoefList(dictData, p+'/APIs/Filtered_Data.json', -.5, '/APIs/apis.json')
    
    #Get indexies of corr coef that are close to zero and between threshold val and negative threshold val
    filterDimension(dictData, p+'/APIs/useless_apis.json', .0002)
    filterDimensionList(dictData, p+'/APIs/useless_apis.json', .0002, p+'/APIs/apis.json')
    
if __name__ == '__main__':
    main()
