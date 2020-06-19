from src.HinDroid import update_with_new_app, align_key_order, sample_malwares
import glob
import random
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MultiLabelBinarizer
import os
import json
import scipy.sparse
import pandas as pd
import numpy as np

def get_matrices(num_malwares, num_benign):
    benignware_dirs = glob.glob("./smali_files/*", recursive = True)
    malware_dirs = sample_malwares(num_malwares)
    benignware_dirs = random.sample(benignware_dirs, num_benign)
    X_data = benignware_dirs + malware_dirs
    ## 0 indicate not malware while 1 indicate malware.
    y_data = [0]*len(benignware_dirs)+[1]*len(malware_dirs)
    


    X_train, X_test, y_train, y_test = train_test_split(X_data, y_data, test_size=0.33, random_state=42)
    
    ## Train Matrix Preparation
    A = dict()
    B = dict()
    P = dict()

    i = 0
    for app in X_train:
        print(i)
        update_with_new_app(app, A, B, P)
        i+=1

    for app in X_test:
        print(i)
        update_with_new_app(app, A, B, P)
        i+=1
    
    app_seq = list(A.keys())
    mlb = MultiLabelBinarizer(sparse_output=True)
    A_matrix = mlb.fit_transform(list(A.values()))
    api_seq = mlb.classes_.tolist()
    
    aligned_B = align_key_order(B, api_seq)

    mlb_2 = MultiLabelBinarizer(sparse_output=True, classes = api_seq)
    B_matrix = mlb.fit_transform(list(aligned_B.values()))
    aligned_P = align_key_order(P, api_seq)
    P_matrix = mlb.fit_transform(list(aligned_P.values()))
    
    result_dir = json.load(open('./config/env.json'))['output-path']
    if not os.path.exists(result_dir): os.mkdir(result_dir)
        
    pd.DataFrame(api_seq).to_csv(result_dir + "/api_seq.csv")
    pd.DataFrame(X_train).to_csv(result_dir + "/X_train.csv")
    pd.DataFrame(X_test).to_csv(result_dir + "/X_test.csv")
    pd.DataFrame(y_train).to_csv(result_dir + "/y_train.csv")
    pd.DataFrame(y_test).to_csv(result_dir + "/y_test.csv")

    scipy.sparse.save_npz(result_dir + '/A.npz', A_matrix)
    scipy.sparse.save_npz(result_dir + '/B.npz', B_matrix)
    scipy.sparse.save_npz(result_dir + '/P.npz', P_matrix)
    
    return X_train, X_test, y_train, y_test

def generate_id(start_index, data_list, name_of_file, result_dir):
    """
    generate unique id for each element in the list and write into txt file. And the index starts from the specified
    start_index.
    """
    df = pd.DataFrame(data_list)
    df.index = list(start_index + np.array(df.index))
    df.to_csv(result_dir+"/"+name_of_file + ".txt", sep = " ", index = True, header=None)
    return df.index[-1]

def mapping(matrix, rows, columns, file_name):
    """
    Map the matrix into the sample txt file from net_dbis.zip
    """
    # Get row and col indexes of non zero elements in the sparse matrix
    row_col_indexes = matrix.nonzero()
    
    with open(file_name + ".txt", 'w') as myfile:
        for i in range(len(row_col_indexes[0])):
            row_num = row_col_indexes[0][i]
            col_num = row_col_indexes[1][i]
            myfile.write(rows[row_num]+" "+columns[col_num]+"\n")
    myfile.close()

if __name__ == "__main__":
    X_train, X_test, y_train, y_test = get_matrices(25,25)

    result_dir = json.load(open('./config/env.json'))['output-path']
    X_train = pd.read_csv(result_dir +"/X_train.csv")
    X_test = pd.read_csv(result_dir +"/X_test.csv")
    y_train = pd.read_csv(result_dir +"/y_train.csv")
    y_test = pd.read_csv(result_dir +"/y_test.csv")
    A_sparse = scipy.sparse.load_npz(result_dir + '/A.npz')
    B_sparse = scipy.sparse.load_npz(result_dir + '/B.npz')
    P_sparse = scipy.sparse.load_npz(result_dir + '/P.npz')
    api_seq = pd.read_csv(result_dir +"/api_seq.csv")

    last_index_app = generate_id(0, X_train.iloc[:,1].tolist()+X_test.iloc[:,1].tolist(), 'id_app', result_dir)
    last_index_api = generate_id(last_index_app+1, api_seq.iloc[:,1].tolist(), 'id_api', result_dir)

    app_ids = [x.split(' ')[0] for x in open(result_dir+"id_app.txt").readlines()]
    api_ids = [x.split(' ')[0] for x in open(result_dir+"id_api.txt").readlines()]

    mapping(A_sparse.transpose(), api_ids, app_ids, result_dir+"api_app")
    mapping(B_sparse, api_ids, api_ids, result_dir+"same_block_api")
    mapping(P_sparse, api_ids, api_ids, result_dir+"same_package_api")