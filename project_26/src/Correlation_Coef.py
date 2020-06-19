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
import gc
import os



def trainMetapath(Amatrix, OtherMatrix):
    '''
    A method creates the metapath based on the training data
    
    :param Amatrix: The A matrix in the training data
    :param OtherMatrix: The B or P matrix in the training data
    :returns: A matrix that represents a metapath
    
    '''
    metapath = OtherMatrix*Amatrix.T
    return metapath



def TrainModel(labelPath, metapath, Amatrix):
    '''
    A method that trains and fits a model based on a specified kernel 
    
    :param labelPath: a path containing the label data of the training dataset
    :param metapath: The metapath obtained from trainMetapath
    :param Amatrix: The A matrix in the training data
    :returns: A dictionary containing APIs and there corrleation coef as the value
    
    '''
    df = pd.read_csv(labelPath, header=None)
    clf = svm.LinearSVC(C=0.1, multi_class = 'ovr', dual = False)
    ker = Amatrix*metapath
    clf.fit(ker, df[0])
    return clf



#get size of training data
def syntheticSize(BAtrans):
    '''
    A method that returns the total number of unique APIs in the training data (i.e. 400k or 1mill)
    
    :param BAtrans: The metapath used to get the length of each apps APIs in the A matrix. This 
    should be the same size regardless of the metapath as long as the same training data was used 
    :returns: The total number of unique APIs in the training data
    
    '''
    return BAtrans.shape[0]



def createSyn(APIsize, appNum, dense):
    '''
    A method that creates synthetic apps to find the corrleation between an API and the prediction made
    by the kernel
    
    :param APIsize: The total number of APIs in training data obtained from syntheticSize
    :param appNum: The number of synthetic apps to create
    :param dense: The density of the synthetic apps
    :returns: A sparse matrix of synthetic apps that is of the dimensions APIsize x appNum
    
    '''
    SynA = rand(int(APIsize), appNum, density=dense, format='csr')
    SynA.data[:] = 1
    return SynA.T



def makeTestA(Amatrix_test, SynA, path):
    '''
    A method that makes the test matrix to find the correlation coefs by using a combination of 
    both synthetic and real apps 
    
    :param Amatrix_test: The location/path to 
    :returns: A dictionary containing APIs and there corrleation coef as the value
    
    '''
    testData = vstack([Amatrix_test,SynA])
    #write syn to json so we can use same syn and real apps accross all kernels
    save_npz(path, testData)
    return testData


def testKernel(testData, metapath, trained):
    '''
    A method that makes predicitons based on the entered metapath on the synthetic apps
    
    :param testData: The matrix produced from makeTestA
    :param metapath: The metapath obtained from trainMetapath
    :param trained: the trained model produced from TrainModel
    :returns: The predictions for each synthetic app
    
    '''
    testKer = testData*metapath
    preds = trained.predict(testKer)
    return preds
   
    
def getAPIs(path):
    '''
    A method that is used to find the API based on its index in the matrix 
    
    :param path: The location of the JSON containing the indicies to APIs
    :returns: A dictionary containing API string values instead of their index 
    
    '''
    with open(path) as json_file: 
        API_index = json.load(json_file) 

    API_index_swap = dict([(value, key) for key, value in API_index.items()]) 
    return API_index_swap


def corelateCoef(testData, APIdict, preds, outname):
    '''
    A method that reads the data from a JSON into a dictionary
    
    :param APIdict: A dictionary containing the index and coresponding API value
    :param testData: The matrix produced from makeTestA
    :param preds: The predicitons of the synthetic apps found from testKernel
    :param outname: The name and location of the JSON file
    :returns: A dictionary containing the correlation coefficient of each API on the given kernel
    
    '''
    API_corelate = defaultdict(list)
    APIli = []
    predli = []
    denSynA = testData.todense()
    print("Getting app and API info....")
    for i in tqdm(range(testData.shape[1])):
        for j in range(len(denSynA)):
            API_corelate[APIdict[i]].append(denSynA.item(j, i))
    corelate = {}
    print("Getting correlation coef....")
    for api in tqdm(range(testData.shape[1])):
        var1 = API_corelate[APIdict[api]]
        corelate[APIdict[api]] = np.corrcoef(var1, preds)[0][1]
    with open(outname, 'w') as outfile:
        json.dump(corelate, outfile) 

    
def main(p):
    
    #Load in the data
    print("Loading in the Data...")
    Amatrix = load_npz(p+'/Matrix_data/a_matrix_train.npz')
    Bmatrix = load_npz(p+'/Matrix_data/b_matrix_train.npz')
    Pmatrix = load_npz(p+'/Matrix_data/p_matrix_train.npz')
    Amatrix_realTest = load_npz(p+'/Matrix_data/a_matrix_test.npz')
    
    #Create the metapaths
    
    print("Creating the metapath on training data...")
    BAmeta = trainMetapath(Amatrix, Bmatrix)
    
    #Use the same SynA and testData on all Kernels so once created dont run this line again for other kernels
    
    #--------------------------------------------------------------#
    print("Creating the Synth Apps...")
    SynA = createSyn(syntheticSize(BAmeta), 4000, 0.01)
    testData = makeTestA(Amatrix_realTest, SynA, p+'/Matrix_data/A_Train_Syn_Real.npz') #<---Destination path for file and name
    #--------------------------------------------------------------#
    
    
    #IMPORTANT -> if you have already created the synthetic apps dont bother running the 2 lines of code above again. 
    #Instead just load in the file already created so we use the same test data of synthetic apps accross all kernels for 
    #consistency. Uncomment the lines of code below in the dashes to load in the testdata that was already created. 
    
    #----------------------------------------------------------------#
    #print("Loading in the Synth Apps...")
    #testData = load_npz(p+'/Matrix_Data/A_Train_Syn_Real.npz')
    #----------------------------------------------------------------#
    
    #Get the predictions for the test/synth apps
    corr_coef_path = os.path.join(p, 'Corr_coef')
    if not os.path.exists(corr_coef_path):
        os.mkdir(corr_coef_path)
    
    print("Making the predicitions on the test data...")
    preds = testKernel(testData, BAmeta, TrainModel(p+'/Matrix_data/training_labels.csv', BAmeta, Amatrix))
    del BAmeta
    corelateCoef(testData, getAPIs(p+'/APIs/apis.json'), preds, corr_coef_path+'/ABA_Cor.json')
    del preds
    gc.collect()
    
    PAmeta = trainMetapath(Amatrix, Pmatrix)
    preds = testKernel(testData, PAmeta, TrainModel(p+'/Matrix_data/training_labels.csv', PAmeta, Amatrix))
    del PAmeta
    corelateCoef(testData, getAPIs(p+'/APIs/apis.json'), preds, corr_coef_path+'/APA_Cor.json')
    del preds
    gc.collect()
    
    Ameta = Amatrix.T
    preds = testKernel(testData, Ameta, TrainModel(p+'/Matrix_data/training_labels.csv', Ameta, Amatrix))
    del Ameta
    corelateCoef(testData, getAPIs(p+'/APIs/apis.json'), preds, corr_coef_path+'/AA_Cor.json')
    gc.collect()
    
if __name__ == '__main__':
    main()
