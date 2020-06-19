import sys, json, shutil, subprocess, warnings
import os
from API_comparison import *
from Generate_output import *
from preprocess import process
from itertools import combinations
warnings.filterwarnings("ignore")
from model import run

def read_files(file):
    """
    read in files with json
    """
    with open(file) as f:
        full_lines = ''
        for i in f.readlines():
            full_lines+=i
    file_result = json.loads(json.dumps(process(full_lines)))
    return file_result

def generate_output (data_dir, output_mode, output_type, output_dir, output_file, thre):
    """
    read in all python files from data dir, compare them in pairs, and print out or
    save the pairwise similarity scores.
    """
    # read in all python files
    all_py = [f for f in os.listdir(data_dir) if os.path.isfile(os.path.join(data_dir, f)) if f[-3:] == '.py']
    fit_result = []
    max_ = 0
    max_info = ''
    file_1 = ''
    file_2 = ''

    # get combinations of all files
    comb = combinations(all_py, 2)
    list_ = list(comb)
    for i in range(len(list_)):
        f1 = list_[i][0]
        f2 = list_[i][1]
        # get the similarity score
        res = run_files(read_files(os.path.join(data_dir,f1)), read_files(os.path.join(data_dir,f2)), output_mode)
        pairs = res['pairs']
        overall = res['overall']
        str_ = ''
        # generate the output string
        for p in pairs:
            str_ = str_+' Method: ' + str(p[0]) + ' ------ ' + str(p[1]) + ' with similarity: ' + str(p[2])  + '\n '
        str_ = str_ + 'Overall Similarity Score: ' + str(overall) + '\n '
        # case for no API found
        if '-1.0' in str_:
            str_ = str_ + '-1 means no API found'
        fit_result = fit_result + [[list_[i][0], list_[i][1], str_]]

    string_ = fit_result

    # apply threshold
    top_k = []
    first_k = len(string_)*thre
    for i in range(len(string_)):
        if i <= first_k:
            top_k = top_k + [string_[i]]
        else:
            break
    # save or print out result
    if 'save' in output_type:
        try:
          os.mkdir(output_dir)
        except:
          pass
        f = open(os.path.join(output_dir, output_file), "w")
        for i in top_k:
            for j in i:
                f.write(str(j) + '\n')
        f.close()
        print("Result saved to folder: Result")
    if 'print' in output_type:
        for i in top_k:
            for j in i:
                print(j)
