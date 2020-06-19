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
import scipy.stats as stats
from tqdm import tqdm


def percentAPI(AmatrixPath, labelPath):
    '''
    A method that returns a dataframe that calculates the percentage of occurences of a given 
    API for a category. For example, if 400 out of 800 benign apps have API xyz then we would 
    populate the cell of the df with .5 or 50%. 
    
    :param AmatrixPath: A path to the A Matrix
    :param labelPath: A path to the lables/categories (i.e. benign, trojan, adware...)
    :returns: A dataframe containing the percentage of APIs in a category containing a specific API
    
    '''
    
    Amatrix = load_npz(AmatrixPath).todense()
    labels = pd.read_csv(labelPath, names=['Label'])
    
    df = pd.concat([pd.DataFrame(Amatrix), labels], axis=1)
    vals = df['Label'].value_counts()
    catagory = df.groupby(['Label']).sum().transpose()
    
    count = 0
    for i in catagory:
        catagory[i] = catagory[i].div(vals[count])
        count += 1

    return(catagory.transpose())



def perDiff(percentIn, thresholdBenign): 
    '''
    A method that obtains the APIs that have a percent difference in malware 
    categories that is greater than a threshold value
    
    :param percentIn: A dataframe containing the percentage an API occurs in each category
    :param thresholdBenign: A threshold value that determins if an API is significant 
    :returns: A dictionary of APIs that are of significance (having a occurance that
    is greather than a threshold value compaired to benign)
    
    '''
    
    difPer = defaultdict(list)
    
    for i in range(percentIn.shape[1]):
        
        #Make sure its possibly "malware" API
        diff1 = percentIn[i][1] - percentIn[i][0]
        diff2 = percentIn[i][2] - percentIn[i][0]
        diff3 = percentIn[i][3] - percentIn[i][0]
        diff4 = percentIn[i][4] - percentIn[i][0]
        
        #Make sure its definitly a malware API
        if (diff1 > thresholdBenign or diff2 > thresholdBenign or diff3 > thresholdBenign or diff4 > thresholdBenign):
            difPer['Malware_APIs'].append(i)
            
    return difPer


def perDiffBenign(percentIn, thresholdBenign): 
    '''
    A method that obtains the APIs that have a percent difference in the benign 
    category that is greater than a threshold value (Used to find APIs for hypothesis testing)
    
    :param percentIn: A dataframe containing the percentage an API occurs in each category
    :param thresholdBenign: A threshold value that determins if an API is significant 
    :returns: A dictionary of APIs that are of significance (having a occurance that
    is greather than a threshold value compaired to malwares)
    
    '''
    
    difPer = defaultdict(list)
    
    print("Getting the percentage each API appears in every app catagory...")
    for i in tqdm(range(percentIn.shape[1])):
        
        #Make sure its definintly malware
        diff1 = percentIn[i][0] - percentIn[i][1]
        diff2 = percentIn[i][0] - percentIn[i][2]
        diff3 = percentIn[i][0] - percentIn[i][3]
        diff4 = percentIn[i][0] - percentIn[i][4]
        
        if (diff1 > thresholdBenign and diff2 > thresholdBenign and diff3 > thresholdBenign and diff4 > thresholdBenign):
            difPer['Malware_APIs'].append(i)
            
    return difPer

def diffFinder(threshold, d1, d2, d3, d4):
    '''
    A method that determins if find if an API is significantly more frequent in a given category
    based on a threshold value
    
    :param threshold: A threshold value that determins if an API is significant 
    :param d1: A difference between two categories of apps (ex. Adware and Trojan)
    :param d2: A difference between two categories of apps (ex. Adware and Benign)
    :param d3: A difference between two categories of apps (ex. Adware and Randsomware)
    :param d4: A difference between two categories of apps (ex. Adware and Backdoor)
    :returns: True if the difference is greater than the given threshold value
    
    '''
    
    if (d1 > threshold and d2 > threshold and d3 > threshold and d4 > threshold):
        return True
    
    
def getMin(d0, d1, d2, d3, d4, cat):
    '''
    A method that obtains the category that has the closest percentage of API xyz occurences
    as the supplied category and returns the difference between them. (ex. API xyz occures in 
    4% of Benign apps, 79% of Trojan, 12% of Adware, 18% of Backdoor, and 9% of 
    Ransomeware - category passed in is Trojan (Category_2). We would return .79-.18 = .87
    
    :param d0: Percentage of occurences in Benign
    :param d1: Percentage of occurences in Category_1
    :param d2: Percentage of occurences in Category_2
    :param d3: Percentage of occurences in Category_3
    :param d4: Percentage of occurences in Category_4
    :param cat: The category of app
    :returns: The minimum difference between the categpry an most "similar" (in terms of frequency)
    distance. This can be used to examine how special or unique an API is to a category based on 
    frequency
    
    '''
    if cat == 'Benign':
        return min(d0-d1, d0-d2, d0-d3, d0-d4)
    elif cat == 'Category_1':
        return min(d1-d0, d1-d2, d1-d3, d1-d4)
    elif cat == 'Category_2':
        return min(d2-d0, d2-d1, d2-d3, d2-d4)
    elif cat == 'Category_3':
        return min(d3-d0, d3-d1, d3-d2, d3-d4)
    elif cat == 'Category_4':
        return min(d4-d0, d4-d1, d4-d2, d4-d3)


def perDiffAll(percentIn, threshold): 
    '''
    A method that obtains the APIs that have a percent difference between all categories. 
    This method will be used to find APIs unique to each category and to later construct
    viz
    
    :param percentIn: A dataframe containing the percentage an API occurs in each category
    :param threshold: A threshold value that determins if an API is significant 
    :returns: A dictionary of APIs that are of significance (having a occurance that
    is greather than a threshold value compaired to all other categories)
    
    '''
    
    difPer = defaultdict(list)
    
    print("Getting the percentage each API appears in every app catagory...")
    for i in tqdm(range(percentIn.shape[1])):
        
        # Benign
        diff1 = percentIn[i][0] - percentIn[i][1]
        diff2 = percentIn[i][0] - percentIn[i][2]
        diff3 = percentIn[i][0] - percentIn[i][3]
        diff4 = percentIn[i][0] - percentIn[i][4]
        
        # Catagory 1
        diff5 = percentIn[i][1] - percentIn[i][0]
        diff6 = percentIn[i][1] - percentIn[i][2]
        diff7 = percentIn[i][1] - percentIn[i][3]
        diff8 = percentIn[i][1] - percentIn[i][4]
        
        # Catagory 2
        diff9 = percentIn[i][2] - percentIn[i][0]
        diff10 = percentIn[i][2] - percentIn[i][1]
        diff11 = percentIn[i][2] - percentIn[i][3]
        diff12 = percentIn[i][2] - percentIn[i][4]
        
        # Catagory 3
        diff13 = percentIn[i][3] - percentIn[i][0]
        diff14 = percentIn[i][3] - percentIn[i][1]
        diff15 = percentIn[i][3] - percentIn[i][2]
        diff16 = percentIn[i][3] - percentIn[i][4]
        
        # Catagory 4
        diff17 = percentIn[i][4] - percentIn[i][0]
        diff18 = percentIn[i][4] - percentIn[i][1]
        diff19 = percentIn[i][4] - percentIn[i][2]
        diff20 = percentIn[i][4] - percentIn[i][3]
        
        
        if (diffFinder(threshold, diff1, diff2, diff3, diff4)):
            difPer['Benign'].append(i)
            
        elif (diffFinder(threshold, diff5, diff6, diff7, diff8)):
            difPer['Category_1'].append(i)
        
        elif (diffFinder(threshold, diff9, diff10, diff11, diff12)):
            difPer['Category_2'].append(i)
        
        elif (diffFinder(threshold, diff13, diff14, diff15, diff16)):
            difPer['Category_3'].append(i)
        
        elif (diffFinder(threshold, diff17, diff18, diff19, diff20)):
            difPer['Category_4'].append(i)
            
    return difPer


def getAPIs(path):
    '''
    A method that converts the indicies obtained and converts them to API strings
    
    :param path: the path of a json file containing indicies and API strings
    :returns: A dictionary of API strings based on the indecies 
    
    '''
    
    # Opening JSON file 
    with open(path) as json_file: 
        API_index = json.load(json_file) 

    API_index_swap = dict([(value, key) for key, value in API_index.items()]) 
    return API_index_swap



def filterSame(dic):
    '''
    A method that filters out repeate indecies/APIs
    
    :param dic: A dictionary containing all the APIs by category
    :returns: A dictionary without duplicates
    
    '''
    
    setDict = defaultdict(list)
    for val in dic:
        setDict[val].append(list(set(dic[val])))
    return setDict
    
    
def getAPIuseIdx(setDict, APIDict, outpath, percentIn):
    '''
    A method that orders the APIs based on the minimum difference obtained in getMin method.
    This method is used to order the heatMap viz in a more readable and interpritable way
    
    :param setDict: A dictionary without duplicate APIs
    :param APIDict: A dictionary containing APIs in string form
    :param outpath: Path to output JSON file
    :param percentIn: A dataframe containing the percentage an API occurs in each category
    :returns: A dictionary of APIs by category in sorted order based off results from getMin 
    
    '''
    realAPIs = defaultdict(list)
    minDiffIdx = 6 
    
    for key in setDict:
        for i in setDict[key]:
            d0 = percentIn[i][0]
            d1 = percentIn[i][1]
            d2 = percentIn[i][2]
            d3 = percentIn[i][3]
            d4 = percentIn[i][4]
            minDiff = getMin(d0, d1, d2, d3, d4, str(key))

            realAPIs[key].append([APIDict[i], d0, d1, d2, d3, d4, minDiff])

    for key in realAPIs:
        realAPIs[key].sort(key = lambda x: x[minDiffIdx], reverse = True)  
            
    # realAPIs = sorted(realAPIs.items(), key=lambda x: x[1][0], reverse=True)
    
    with open(outpath, 'w') as fp:
        json.dump(realAPIs, fp)
    
    return realAPIs


def buildHeatMap(realAPIs, outpath, size):
    '''
    A method that formats the data to be used for the heatmap (changes datas form and structure)
    
    :param realAPIs: A dictionary of APIs by category in sorted order based off results from getMin
    :param outpath: Path to output JSON file
    :param size: The maximum number fo important APIs by category. If set to 20 then the 20 most 
    "significant" APIs from each category will be present
    :returns: A dictionary of APIs by category in sorted order based off results from getMin that 
    is formated for the heatmap
    
    '''
    
    data = defaultdict(list)
    keys = list(realAPIs.keys())
    for key in keys:
        length = len(realAPIs[key])
        if length >= size:
            length = size
            
        for val in range(length):
            data[str(realAPIs[key][val][0])].append([realAPIs[key][val][1], realAPIs[key][val][2], realAPIs[key][val][3], realAPIs[key][val][4], realAPIs[key][val][5]])
            
    with open(outpath, 'w') as fp:
        json.dump(data, fp)

    return data

def main(p):
    
    print("Getting training A-Matrix Percentages...")
    percentIn = percentAPI(p+'/Matrix_data/a_matrix_train.npz', p+'/Matrix_data/training_labels.csv')   
    
    print("Filtering APIs based on threshold value...")
    #dicMal = perDiff(percentIn, .40)
    #dicBen = perDiffBenign(percentIn, .60)
    allDic = perDiffAll(percentIn, .01)
    

    #MalAPIs = getAPIuseIdx(filterSame(dicMal), getAPIs('Matrix_Data/apis.json'), 'Matrix_Data/Malware_APIs.json', percentIn)   
    #benAPIs = getAPIuseIdx(filterSame(dicBen), getAPIs('Matrix_Data/apis.json'), 'Matrix_Data/Benign_APIs.json', percentIn)  
    #benAPIs = getAPIuseIdx(filterSame(dicBen), getAPIs('Matrix_Data/apis.json'), 'Matrix_Data/Benign_APIs.json', percentIn)
    AllAPIs = getAPIuseIdx(allDic, getAPIs(p+'/APIs/apis.json'), p+'/APIs/All_APIs.json', percentIn)
    dt = buildHeatMap(AllAPIs, p+'/APIs/Heat_Percent.json', 250)
    
    
    #-----------------@Karan------------------ Use the first 250 from Heat_percent.json for benign
    print("benign: " + str(len(AllAPIs['Benign'])))
    print("Category_1: " + str(len(AllAPIs['Category_1'])))
    print("Category_2: " + str(len(AllAPIs['Category_2'])))
    print("Category_3: " + str(len(AllAPIs['Category_3'])))
    print("Category_4: " + str(len(AllAPIs['Category_4'])))
    print('Dt: ' + str(len(dt.keys())))
    

