import glob 
from collections import defaultdict
import numpy as np
from pathlib import Path
import re
import json
import os
import ast
from scipy.sparse import lil_matrix, csr_matrix,save_npz,load_npz
import random
from random import sample
# from tqdm import tqdm

# random.seed(4)

def get_API_calls(smali_file,app_name,meta):
    """
    Method to get the API information present in one smali file. 

    Params - 1. smali_file - file path of the .smali file
             2. app_name - app this .smali file belongs to 
             3. meta - data structure to store metadata about APIs
    """
    #boolean check to see if a line being checked is within a method
    method_open = False
    method_apis = []

    #regex to search for lines starting with '.method'
    method_open_regex = re.compile('\.method.*')
    #regex to search for lines with '.end method'
    close_method_regex = re.compile('\.end method.*')
    #regex to search for lines starting with 'invoke' 
    invoke_method_regex = re.compile('^invoke.*')
    #regex to get rid of obfuscated APIs ..../a/b/a/..
    obfuscated_regex = re.compile('\/.\/.\/')
    
    #looping through all lines in smali files
    for l in open(smali_file):
        
        #if lines starting with '.method'
        method_regex = method_open_regex.findall(l)
        if len(method_regex) > 0:
            method_open = True
            method_start = method_regex[0].split(' ')[1:]
            method_header = ' '.join(method_start)
            # method_name = method_header
        
        #if line starts with '.end method'
        method_end = close_method_regex.findall(l)
        if len(method_end) > 0:
            method_open = False
            #end of current method so we add the APIs seen into a list
            if method_apis:
                meta['code_blocks'].append(method_apis)
            method_apis = []
            
        
        #if we found an API being invoked
        API_call = invoke_method_regex.findall(l.strip())

        if len(API_call) > 0:
            API_call_array = API_call[0].split(' ')
            #type of invoke method
            invoke_method_type = API_call_array[0].split('-')[-1]
            api_call = API_call_array[-1].split('->')
            #removing input params
            api_call[1] = re.sub('\(.*\)','()',api_call[1])
            try:
                #package name 
                package = api_call[0]
                
                #api name
                api_name = '->'.join(api_call)
                api_name = re.sub('->\w\(\)', '->a()', api_name)
                #removing obfuscated APIs and constructor APIs
                if obfuscated_regex.findall(api_name) or 'init' in api_name:
                    continue
                    
                method_apis.append(api_name)
                meta['invoke_method'][invoke_method_type].add(api_name)
                meta['packages'][package].add(api_name)
                meta['app_apis'][api_name] += 1

            except e:
                print(e)
    return meta

def get_app_api_calls(app_name,outpath,malware = False):
    """
    Method to get the information required to compute the 
    A,B,I,P matrices for one app in the Hindroid paper

    Params - 1. app_name - file name of app for which we get the metadata
             2. outpath - location of directory containing apps
             3. malware - boolean if we are reading a malware app
    Returns - meta - metadata of given app
    """
    #initialises the meta data to be collected
    print(app_name)
    same_code_block = []
    packages = defaultdict(set)
    invoke_method = defaultdict(set)
    app_apis = defaultdict(int)
    meta = {'invoke_method':invoke_method, 'packages':packages, \
            'code_blocks':same_code_block, 'app_apis': app_apis}
    #iterates through all smali files of an app 
    if malware:
        pathlist = Path(outpath).glob('**/' + app_name + '/**/*.smali')
    else:
        pathlist = Path(outpath+'/APK').glob('**/' + app_name + '/**/*.smali')
    #remove inner class files
    smalli_lis = [i for i in pathlist if '$' not in str(i)]
    for path in (smalli_lis):
        path_in_str = str(path)
        #gets metadata for each .smali file
        meta = get_API_calls(path_in_str,app_name,meta)
    return meta

def set_default(obj):
    """
    Method to dump a set as a list in JSON
    """
    if isinstance(obj, set):
        return list(obj)
    raise TypeError


def save_files(meta,p):
    """
    Saving meta data to files on disk

    Params - 1. meta - metadata being stored 
             2. p - path to save the files at 
    """
    with open(p + '/invoke_method.json', 'w') as im:
        json.dump(meta['invoke_method'], im, indent=4, default=set_default)
    with open(p + '/packages.json', 'w') as pack:
        json.dump(meta['packages'], pack, indent=4, default=set_default)
    with open(p + '/app_apis.json', 'w') as apis:
        json.dump(meta['app_apis'], apis, indent=4, default=set_default)
    with open(p + '/code_blocks.txt', 'w') as cb:
        for l in meta['code_blocks']:
            cb.write(str(l) + '\n')
            
def reduce_and_save_apps_apis(p,apps,apis,test_apps):
    """
    Remove APIs in less than 3 apps and saves the app and API information
    Params - 1. p - data directory path
             2. apps - {app_name: app_id}
             3. apis - {API_name: API_id}
             4. test_apps - {app_name: app_id}
    Return - reduced_apis - {API_name: API_id} for APIs in more than 3 apps
    """
    #gets APIs in more than 3 apps
    reduced_apis = {}
    for k,v in apis.items():
        if v > 3:
            reduced_apis[k] = len(reduced_apis)
    #saves app and api information as intermediate data structures
    with open(p + '/apps/apps.json', 'w') as a:
        json.dump(apps, a, indent=4, default=set_default)
    with open(p + '/APIs/apis.json', 'w') as api:
        json.dump(reduced_apis, api, indent=4, default=set_default)
    with open(p+'/apps/test_apps.json', 'w') as ta:
        json.dump(test_apps, ta)
    return reduced_apis
        
def save_data(category_data, test_info,outpath):
    """
    saves train and test data as data structures
    Params - 1. category_data - dictionary of all meta data for all training apps
             2. test_info - dictionary of all meta data for all test apps
             3. outpath - data directory path
    """
    #saves train and test data as intermediate data structures
    with open(outpath+'/data structures/test_info.json', 'w') as te:
        json.dump(test_info, te)
    with open(outpath+'/data structures/train_info.json', 'w') as tr:
        json.dump(category_data, tr)
        

def read_files(p,apis):
    """
    Load metdata from files on disk 

    Params - 1. p - path for given app
             2. apis - {API_name: API_id}
             
    Return - 1. meta - metadata for given app 
             2. apis - {API_name: API_id}
    """
    #loading in all APIs for the app with counts
    with open(p + '/app_apis.json', 'r') as a:
        app_apis = json.load(a)
    #generating primary key for unique APIs
    for k in app_apis.keys():
        if k not in apis.keys():
            apis[k] = 1
        else:
            apis[k] += 1
    #getting APIs that have the same invoke type
    with open(p + '/invoke_method.json', 'r') as im:
        invoke_method = json.load(im)
    #getting APIs that are called by the same packages
    with open(p + '/packages.json', 'r') as pack:
        packages = json.load(pack)
    #gettings APIs that occur in the same method
    code_blocks = []
    with open(p + '/code_blocks.txt', 'r') as cb:
        for line in cb:
            code_blocks.append(ast.literal_eval(line))
    
    meta = {'invoke_method':invoke_method, 'packages':packages, \
            'code_blocks':code_blocks, 'app_apis': app_apis}
    return meta, apis
    

def get_category_api_calls(category, apps,apis,outpath,re_read,test_apps):
    """
    Get all API calls for a given category of apps.

    Params - 1. category - the category whose API calls we want
             2. apps - {app_name: app_id} for training apps
             3. apis - {API_name: API_id}
             4. outpath - path to data directory
             5. re_read - boolean if data structures should be recreated
             6. test_apps - {app_name: app_id} for testing apps
             
    Return - 1. cat_info - metadata for training apps 
             2. apps - {app_name: app_id} for training apps
             3. apis - {API_name: API_id}
             4. test_info - metadata for testing apps
             5. test_apps - {app_name: app_id} for testing apps
    """
    
    cat_info = {}
    #check if apk files exist for given category
    cat_outpath = outpath+'/APK/'+category
    if not os.path.exists(cat_outpath):
        print('Please scrape apps in ' + category + ' first.')
        return None,0

    pathlist = os.listdir(cat_outpath+'/')
    
    
    #create directory for each app's metadata
    meta_data_path = outpath+'/apk_data/'
    if not os.path.exists(meta_data_path):
        os.mkdir(meta_data_path)
    cat_data_path = meta_data_path + category +'/'
    if not os.path.exists(cat_data_path):
        os.mkdir(cat_data_path)

    
    #create directory for each app's metadata
    meta_data_path = outpath+'/apk_data/'
    if not os.path.exists(meta_data_path):
        os.mkdir(meta_data_path)
    cat_data_path = meta_data_path + category +'/'
    if not os.path.exists(cat_data_path):
        os.mkdir(cat_data_path)
        
    test_info = {}


    for i,p in enumerate(pathlist):
        #get just apk files
        if not p.startswith('.') and not p.endswith('.apk'):

            app_meta_path = cat_data_path + p
            #save meta-data files if they dont already exist
            if not os.path.exists(app_meta_path):
                os.mkdir(app_meta_path)
            #recreates data structres of given app
            if re_read:
                meta = get_app_api_calls(p,outpath,False)
                save_files(meta,app_meta_path)
            #performing a train test split such that every 4th app is in training set   
            if i % 4 != 0:
                #add metadata to train set
                meta,apis = read_files(app_meta_path,apis)
                cat_info[p] = meta
                if p not in apps:
                    apps[p] = len(apps)
            else:
                #add metadata to test set
                meta,_ = read_files(app_meta_path,{})
                test_info[p] = meta
                if p not in apps and p not in test_apps:
                    test_apps[p] = len(test_apps)
                
    
    return cat_info, apps, apis, test_info, test_apps

def get_metadata(cats,outpath,read_files):
    """
    Method that gets .smali files for an entire category of apps
    Params - 1. cats - Categories for which we want to get API information
             2. outpath - path to save the API information
             3. read_files - boolean if data structures should be recreated
             
    Return - 1. categories - metadata for training apps 
             2. apps - {app_name: app_id} for training apps
             3. apis - {API_name: API_id}
             4. test_cats - metadata for testing apps
             5. test_apps - {app_name: app_id} for testing apps
    """
    categories = {}
    test_cats = {}
    apps = defaultdict(int)
    apis = {}
    malware = []
    
    test_apps = {}
    #looping through all categories and getting API information
    for cat in cats:
        print(cat)
        categories[cat], apps, apis,test_cats[cat], test_apps =get_category_api_calls(cat,apps,apis,outpath,read_files,test_apps)
        print(len(categories[cat]))
        print(len(test_cats[cat]))
    return categories, apps,apis,test_cats, test_apps


def create_A_matrix(meta,app_id,mat,apis):
    """
    Method to create the A matrix 
    A(i,j) = if app(i) contains api(j)

    Params - 1. meta - dictionary of all meta data for all apps
             2. app_id -{app_name: app_id}
             3. mat - matrix to which we will encode A(i,j)
             4. apis - {API_name: API_id}
    Return - mat - A matrix             
    """
    #encoding all apis present in given app
    for api_id in meta.keys():
        if api_id in apis :
            mat[(app_id,apis[api_id])] = 1
    return mat

def create_B_matrix(meta,mat,apis):
    """
    Method to create the B matrix 
    B(i,j) = if api(i) and api(j) in the same code block

    Params - 1. meta - dictionary of all meta data for all apps
             2. mat - matrix to which we will encode B(i,j)
             3. apis - {API_name: API_id}
    Return - mat - B matrix
    """
    #encodes all apis in same code block
    for v in meta:
        for i,api_id1 in enumerate(v):
            for j in range(i):
                api_id2 = v[j]
                if api_id1 in apis and api_id2 in apis:
                    mat[(apis[api_id2] , apis[api_id1])] = 1
                    mat[(apis[api_id1] , apis[api_id2])] = 1
    return mat

def create_P_matrix(meta,mat,apis):
    """
    Method to create the P matrix 
    P(i,j) = if api(i) and api(j) are called using the same package

    Params - 1. meta - dictionary of all meta data for all apps
             2. mat - matrix to which we will encode P(i,j)
             3. apis - {API_name: API_id}
    Return - mat - P matrix
    """
    #encodes all APIs called by the same package
    for k,v in meta.items():
        for i,api_id1 in enumerate(v):
            for j in range(i):
                api_id2 = v[j]
                if api_id1 in apis and api_id2 in apis:
                    mat[(apis[api_id2] , apis[api_id1])] = 1
                    mat[(apis[api_id1], apis[api_id2])] = 1
    return mat

def create_matrices(category_data,app_dict,apis,outpath):   
    """
    Method to compute the A,B,P matrices
    Params - 1. category_data - dictionary of all meta data for all apps
             2. app_dict - {app_name: app_id}
             3. apis - {API_name: API_id}
             4. outpath - path of data directory 
             
    Return - 1. A - A matrix (bag of api encoding for each app)
             2. B - B matrix (APIs in same code blocks)
             3. P - P matrix (APIs called by the same package)
    """
    #creating empty matrices
    l_api = len(apis)
    l_app = len(app_dict)
    A = lil_matrix((l_app, l_api),dtype = int) 
    B = lil_matrix((l_api, l_api),dtype = int)
    P = lil_matrix((l_api, l_api),dtype = int)
    
    #looping through each app and adding API relations for each matric
    for apps in category_data.items():
        if not apps[1]: continue
        for app,meta in apps[1].items():
            if app in app_dict:
                A = create_A_matrix(meta['app_apis'],app_dict[app],A,apis)
            B = create_B_matrix(meta['code_blocks'],B,apis)
            P = create_P_matrix(meta['packages'],P,apis)
    #casting matrix to csr to speed up multiplication 
    A = csr_matrix(A)
    B = csr_matrix(B)
    P = csr_matrix(P)
    print('done with matrices')
    matrix_path = os.path.join(outpath, 'Matrix_data')
    if not os.path.exists(matrix_path):
        os.mkdir(matrix_path)
    #saving sparse matrices as interim data structures
    save_npz(matrix_path + "/a_matrix_train.npz", A)
    save_npz(matrix_path + "/b_matrix_train.npz", B)
    save_npz(matrix_path + "/p_matrix_train.npz", P)
    return A,B,P

def create_test_matrix(category_data,app_dict,apis,outpath):
    """
    Creating A matrix for the test set
    Params - 1. category_data - metadata for test apps
             2. app_dict - {app_name: app_id} for testing set 
             3. outpath - path of data directory 
             
    Return - A - A test matrix 
    """
    #creating empty matrices
    l_api = len(apis)
    l_app = len(app_dict)
    A = lil_matrix((l_app, l_api),dtype = int) 
    #create a matrix for test data
    for apps in category_data.items():
        if not apps[1]: continue
        for app,meta in apps[1].items():
            if app in app_dict:
                A = create_A_matrix(meta['app_apis'],app_dict[app],A,apis)
    #casting matrix to csr to speed up multiplication 
    A = csr_matrix(A)
    #saving sparse matrices as interim data structures
    matrix_path = os.path.join(outpath, 'Matrix_data')
    if not os.path.exists(matrix_path):
        os.mkdir(matrix_path)
    save_npz(matrix_path +"/a_matrix_test.npz", A)
    return A

def create_kernels(A,B,P):
    """
    Method to get kernels that we will be training the SVM with 
    Params - 1. A matrix - A(i,j) = if app(i) contains api(j)
             2. B matrix - B(i,j) = if api(i) and api(j) in the same code block
             3. P matrix - P(i,j) = if api(i) and api(j) are called using the same package
    Return - kernels - {kernel_name: kernel}
    """
    kernels = {}
    kernels['a_at'] = A*A.T
    kernels['ab_at'] = A*B*A.T
    kernels['ap_at'] = A*P*A.T
    return kernels

def create_test_kernels(A,B,P,A_t):
    """
    Method to get kernels that we will be testing the SVM with
    Params - 1. A matrix - A(i,j) = if app(i) contains api(j)
             2. B matrix - B(i,j) = if api(i) and api(j) in the same code block
             3. P matrix - P(i,j) = if api(i) and api(j) are called using the same package
    Return - kernels - {kernel_name: kernel}
    """
    kernels = {}
    kernels['a_at'] = A_t*A.T
    kernels['ab_at'] = A_t*B*A.T
    kernels['ap_at'] = A_t*P*A.T
    return kernels

def load_kernels(path, num_apis = None):
    """
    Loads test and train kernels
    Params - 1. path - path of data directory 
             2. num_apis - number of apis to infuse test matrix with
             
    Return - 1. train_kernels - {kernel_name: kernel}
             2. test_kernels - {kernel_name: kernel}
    """
    #load A,B,P matrices
    A = load_npz(path+'/Matrix_data/a_matrix_train.npz')
    B = load_npz(path+"/Matrix_data/b_matrix_train.npz")
    P = load_npz(path+"/Matrix_data/p_matrix_train.npz")
    a_test = load_npz(path+"/Matrix_data/a_matrix_test.npz")
    #infuse APIs with num_apis and returns test kernels
    if num_apis:
        new_a_test = infuse_benign_apis(a_test,num_apis,path)
        test_kernels = create_test_kernels(A,B,P,new_a_test)
    else:
        test_kernels = create_test_kernels(A,B,P,a_test)
    #create train kernels
    train_kernels = create_kernels(A,B,P)
    return train_kernels, test_kernels
    
def infuse_benign_apis(a_test,num_apis,p):
    """
    Method to encode benign apis present in malware apps
    Params - 1. a_test - A matrix used to test SVM
             2. num_apis - number of apis to infuse into test matrix 
             3. p - path of data directory 

    Return - a_test - A test matrix with benign APIs infused
    """
    #load in benign apis and full list of apis 
    benign_apis = json.load(open(p+'/APIs/Heat_Percent.json'))
    apis = json.load(open(p+'/APIs/apis.json'))
    api_ids = []
    print('BENIGN APIS')
    #gets corresponding api id of the benign apis
    for x in list(benign_apis.keys())[:num_apis]:
        api_ids.append(apis[x])
        
    #load in testing labels 
    f=open(p+'/Matrix_data/testing_labels.csv','r')
    labels = []
    for ele in f:
        labels.append(int(ele.strip()))
    #encode benign api as present in malware app
    for i,x in enumerate(labels):
        if x != 0:
            for api_id in api_ids:
                a_test[i,api_id] = 1
    save_npz(p +"/Matrix_data/a_matrix_infused.npz", a_test)
    return a_test
        
    
    
    
    

def get_kernels(category_data,apps,apis,test_info,test_apps,outpath):
    """
    Method to create matrices and get the kernels for SVM training

    Params - 1. category_data - metadata of all training apps for all categories 
             2. apps - {app_name: app_id} for training set 
             3. apis - {api_name: api_id} for training data
             4. test_info - metadata of all testing data for all categories 
             5. test_apps - {app_name: app_id} for testing set 
             6. outpath - path of data directory 
             
    Return - 1. train_kernels - {kernel_name: kernel}
             2. test_kernels - {kernel_name: kernel}
    """
    #create matrices
    A,B,P = create_matrices(category_data,apps,apis,outpath)
    a_test = create_test_matrix(test_info, test_apps, apis,outpath)
    #create kernels 
    train_kernels = create_kernels(A,B,P)
    test_kernels = create_test_kernels(A,B,P,a_test)
    return train_kernels, test_kernels



def get_malware(path, num_apps,category_data,apps,apis,categories,test_info,test_apps,outpath):
    """
    Create data structure for malware apps 
    Params - 1. path - path to malware apps
             2. num_apps - number of malware apps per family
             3. category_data - meta data for training set 
             4. apps - {app_name: app_id} for training set 
             5. apis - {api_name: api_id} for training data
             6. categories - malware families to get meta data for
             7. test_info - meta data for testing set
             8. test_apps - {app_name: app_id} for testing set 
             9. outpath - path for data directory 
             
    Return - 1. category_data - meta data for training set 
             2. apps - {app_name: app_id} for training set 
             3. apis - {api_name: api_id} for training data
             4. malware - {malware_family: [app_ids]} for training apps
             5. test_info -meta data for testing set
             6. test_apps - {app_name: app_id} for testing set 
             7. malware_test - {malware_family: [app_ids]} for testing apps
    """
    sampled = []
    malware = defaultdict(list)
    malware_test = defaultdict(list)
    #iterating through all malware families
    for family in os.listdir(path):
        #getting just required malware families
        if family not in categories:
            continue
        #creating data structure for given malware family 
        family_data = {}
        family_data_test = {}
        #creating directory to store meta data 
        base_path = os.path.join(outpath,'apk_data',family)
        if not os.path.exists(base_path):
            os.mkdir(base_path)

        #sampling apps from given family
        malware_apps = []
        for variety in os.listdir(os.path.join(path,family)):
            for app in os.listdir(os.path.join(path,family,variety)):
                malware_apps.append(os.path.join(path,family,variety,app))

        sampled_apps = sample(malware_apps, min(num_apps, len(malware_apps)))
        
        #iterating throuhg sampled apps
        for i,malware_path in enumerate(sampled_apps):
            #creating directory for given app
            app = malware_path.split('/')[-1]
                
            app_path = os.path.join(base_path, app)
            if not os.path.exists(app_path):
                os.mkdir(app_path)
            #getting metadata for given app
            meta = get_app_api_calls(app,path,True)
            save_files(meta,app_path)
            #performing train test split 
            if i % 4 != 0:
                #adding meta data to training set
                if app not in apps:
                    apps[app] = len(apps)
                    malware[family].append(apps[app])
            
                meta,apis = read_files(app_path,apis)
                family_data[app] = meta
            else:
                #adding meta data to testing set
                if app not in test_apps and app not in apps:
                    test_apps[app] = len(test_apps)
                    malware_test[family].append(test_apps[app])
                meta,_ = read_files(app_path, {})
                family_data_test[app] = meta

        category_data[family] = family_data
        test_info[family] = family_data_test
    return category_data,apps,apis, malware,test_info, test_apps, malware_test

def read_malware(cats, path,category_data,apps,apis,test_info,test_apps):
    """
    Read in data structure for malware apps 
    Params - 1. cats - meta data for training set 
             2. path - path for data directory 
             3. category_data - meta data for training set 
             4. apps - {app_name: app_id} for training set 
             5. apis - {api_name: api_id} for training data
             6. test_info - meta data for testing set
             7. test_apps - {app_name: app_id} for testing set 
             
    Return - 1. category_data - meta data for training set 
             2. apps - {app_name: app_id} for training set 
             3. apis - {api_name: api_id} for training data
             4. malware - {malware_family: [app_ids]} for training apps
             5. test_info -meta data for testing set
             6. test_apps - {app_name: app_id} for testing set 
             7. malware_test - {malware_family: [app_ids]} for testing apps
    """
    malware = defaultdict(list)
    malware_test = defaultdict(list)
    #iterating through all malware families
    for cat in cats:
        print(cat)

        #data structure to store metadata for given category
        family_data = {}
        family_data_test = {}
        base_path = os.path.join(path, 'apk_data', cat)
        for i,app in enumerate(os.listdir(base_path)):
            #ensuring we dont consider any hidden files in directory 
            if app.startswith("."):
                continue
            app_path = os.path.join(base_path, app)
            #performing train test split
            if i % 4 != 0:
                #adding data to train set
                if app not in apps:
                    apps[app] = len(apps)
                    malware[cat].append(apps[app])
                meta,apis = read_files(app_path,apis)
                family_data[app] = meta
            else:
                #adding data to test set
                if app not in test_apps and app not in apps:
                    test_apps[app] = len(test_apps)
                    malware_test[cat].append(test_apps[app])

                meta,_ = read_files(app_path, {})
                family_data_test[app] = meta
                
        category_data[cat] = family_data
        test_info[cat] = family_data_test
        print(len(category_data[cat]))
        print(len(test_info[cat]))
    return category_data,apps,apis, malware,test_info, test_apps, malware_test

    
    
    

