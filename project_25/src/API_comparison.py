import zss, numpy as np, logging, re, traceback
from zss import Node, distance
from helpers import *
from multiprocessing import Pool, Queue, Process
import pandas as pd

#costumed zss.distance()
def insert_cost(a):
    # cost for inserting a node is 1
    return 1
def remove_cost(a):
    #cost for removing a node is 1
    return 1
def update_cost(a, b):
    
    a_type = get_node_type(a.label)
    b_type = get_node_type(b.label)
    #if two nodes are completed the same, including the node type and variable/arguments' names,
    #no need fot update and the cost is 0
    if a == b:
        return 0
    #if two nodes' types are the same but the nodes' names are different,
    #the cost for updating is 0.6
    elif a_type == b_type:
        return 0.6
    #if two nodes' types and the nodes' names are different,
    #the cost for updating is 0.8
    return 0.8

#only get the subtrees representing APIs
def get_smaller(ls):
    data = {}
    N = ls.keys()
    for l in N:
        length = []
        APIs = []
        subs = []
        d = []
        for i in ls[l]:
            try:
                N, API, sub = get_info(i)
                detail = (N, API, sub)
                d.append(detail)
            except:
                continue
        d.sort(key = lambda tup: tup[1])
        length = [x[0] for x in d]
        APIs = [x[1] for x in d]
        subs = [x[2] for x in d]
        result = [length, APIs, subs]
        data[l] = result
    return data

#get length, API names and subtree itself from subtree
def get_info(sub):
    s = "%d:%s" % (len(sub.children), sub.label)
    s = '\n'.join([s]+[str(c) for c in sub.children])
    API = re.search('func (.+)', s).group(1).split(' ')[-1].lower()
    N = len(s.split('\n'))
    return N, API, sub

#get the type of the node
#the method is used in update_cost()
def get_node_type(node):
    ntype = re.search('(\w+)', node).group(1)
    return ntype

#get API_similarity_matrix
def get_sim_matrix(data_1, data_2):
    queue = Queue()
    methods_1 = data_1.keys()
    methods_2 = data_2.keys()
    ls = []
    temp = {}
    new = {}
    processes = [Process(target=compare_methods, args=(methods_1, methods_2, data_1, data_2, i, queue)) for i in methods_1]
    logging.info('# of processes: %i' % len(processes))
    done = 0
    for p in processes:
        p.start()
    for _ in processes:
        item = queue.get()
        done += 1
        logging.info('done: %i' % done)
        temp[item[0]] = item[1]
        new[item[0]] = item[2]
    for p in processes:
        p.join()
    return temp, new

def compare_methods(methods_1, methods_2, data_1, data_2, i, queue):
    info_1 = data_1[i]
    temp_i = []
    new_i = []
    for n in methods_2:
        info_2 = data_2[n]
        N1 = len(info_1[0])
        N2 = len(info_2[0])
        matrix = np.full((N1, N2), np.nan)
        for k in range(N1):
            API_1 = info_1[1][k]
            max_edit = 10000
            for j in range(N2):
                API_2 = info_2[1][j]
                if API_1 == API_2:
                    dist = zss.distance(info_1[2][k], info_2[2][j], Node.get_children, insert_cost, remove_cost, update_cost)
                    max_len = max(info_1[0][k], info_2[0][j])
                    sim = (max_len - dist)/max_len
                    matrix[k, j] = sim
                        #print(i,n,info_1[1][k], info_2[1][j], sim, dist, info_1[0][k], info_2[0][j])

        new_i.append(matrix)
        df = df = pd.DataFrame(matrix, columns = info_2[1], index = info_1[1])
        result_df = process_df(df, info_1[1], info_2[1])
        temp_i.append(result_df.values)


    queue.put((i, temp_i, new_i))

#get function-function similarity from API_similarity_matrix
def get_score(matrix):
    '''
    get the function - function similarity scores based on a API-API similiarity matrix
    '''
    # check matrix validation
    if len(matrix) == 0 or len(matrix[0]) == 0:
        return 0
    mth_1_len = len(matrix)
    mth_2_len = len(matrix[0])
    sum_ = 0
    # find the max values and then return the average among all max values
    for i in matrix:
        temp_ = [j for j in i if j > 0]
        if len(temp_) != 0:
            temp_ = max(temp_)
            sum_ = sum_ + temp_
    return sum_ / mth_1_len

def find_peak_matrix(mini_df, df):

    if any(mini_df.count(axis = 1).values >= 1):
        index = np.unravel_index(mini_df.values.argmax(), mini_df.shape)
        rows = list(mini_df.index)
        columns = list(mini_df.columns)
        row, col = rows[index[0]], columns[index[1]]
        df.loc[row, col] = mini_df.loc[row, col]
        mini_df = mini_df.drop(columns = [col], index = [row])
        return find_peak_matrix(mini_df, df)
    else:
        return df

#helper methods for getting API_similarity_matrix
def process_df(df, APIs_1, APIs_2):
    '''
    
    '''
    result_df = df.copy()
    co = df.count(axis = 1)
    APIs = co.keys()
    count = co.tolist()
    APIs = np.unique([APIs[i] for i in range(len(count)) if count[i] > 0])
    for i in APIs:
        left_upper = APIs_1.index(i)
        left_lower = left_upper + APIs_1.count(i)
        right_upper = APIs_2.index(i)
        right_lower = right_upper + APIs_2.count(i)
        mini_df = df.iloc[left_upper : left_lower, right_upper : right_lower].reset_index(drop = True)
        mini_df.columns = range(APIs_2.count(i))
        new_df = pd.DataFrame(np.full(mini_df.shape, np.nan))
        update_df = find_peak_matrix(mini_df, new_df)
        result_df.iloc[left_upper : left_lower, right_upper : right_lower] = np.array(update_df.values)
    result_df.loc[result_df.isnull().all(axis = 1)] = 0
    return result_df

def find_peak(mat):
    '''

    '''
    x = 0
    y = 0
    max_ = -1000
    for i in range(len(mat)):
        for j in range(len(mat[0])):
            if mat[i][j]>max_:
                x = i
                y = j
                max_ = mat[i][j]
    return max_, x, y



def run_files(data_1, data_2, type_):
    '''
    take in two files, compare them, and then return function wide similarity scores matrix and
    an overall file similarity score
    '''
    # preprocess data
    body_2 = get_body(data_2)
    result_2 = create_func_dict(body_2,{})
    body_1 = get_body(data_1)
    result_1 = create_func_dict(body_1,{})
    data_1 = get_smaller(result_1)
    data_2 = get_smaller(result_2)
    
    # get the similarty matrix
    temp, new = get_sim_matrix(data_1, data_2)
    methods_1 = data_1.keys()
    methods_2 = data_2.keys()
    
    # form the output matrix. Methods from smaller file are listed as rows.
    if min(len(methods_1), len(methods_2)) == len(methods_1):
        matrix = np.full((len(methods_1), len(methods_2)), np.nan)
        swap = 0
    else:
        matrix = np.full((len(methods_2), len(methods_1)), np.nan)
        swap = 1
        data_1, data_2 = data_2, data_1

    # generate similarity socres with all methods pairs
    for i in range(len(matrix)):
        for j in range(len(matrix[i])):
            try:
                size_1 = data_1[list(data_1.keys())[i]][0]
                size_2 = data_2[list(data_2.keys())[j]][0]
                if sum(size_1)==0 or sum(size_2) == 0:
                    score = -1
                else:
                    if swap == 1: 
                        score = get_score(temp[list(data_2.keys())[i]][j])
                    else:
                        score = get_score(temp[list(data_1.keys())[i]][j])
                matrix[i][j] = score
            except IndexError:
                matrix[i][j] = 0
    
    # align methods from two files with their similarities
    final_pair = []
    for method_A in range(len(matrix)):
        curr_peak, x, y = find_peak(matrix)
        for i in range(len( matrix)):
            if i == x:
                for j in range(len(matrix[i])):
                    matrix[i][j] = -1000
            matrix[i][y] = -1000
        final_pair = final_pair + [[curr_peak, (x, y)]]
    
    # format the output structure
    res = {
        'pairs': []
    }
    str_ = 'Similarity result: ' + '\n '
    if type_ == 'complex':
        for i in final_pair:
            str_ = str_ + 'Method: ' + str(list(data_1.keys())[i[1][0]]) +  ' ------ ' + \
                  str(list(data_2.keys())[i[1][1]]) + ' with similarity: ' + str(i[0]) + '\n '
            res['pairs'].append((str(list(data_1.keys())[i[1][0]]), str(list(data_2.keys())[i[1][1]]), i[0]))
    score_list = []
    all_APIs = 0
    all_API_file_2 = 0
    # weight methods with their size (number of total nodes)
    for i in range(len(final_pair)):
        score_list = score_list + [final_pair[i][0]*(len(data_1[list(data_1.keys())[i]][0]))]
        all_APIs += len(data_1[list(data_1.keys())[i]][0])
        all_API_file_2 += len(data_2[list(data_2.keys())[i]][0])
    if all_APIs == 0 or all_API_file_2 == 0:
        score_ = -1
    else:
        valid_score = [s for s in score_list if s > -1]
        score_ = sum(valid_score)/all_APIs
    str_ = str_ + 'Overall Similarity Score: ' + str(score_) + '\n ' 
    if '-1.0' in str_:
        str_ = str_ + '-1 means no API found'
    res['overall'] = score_
    return res
