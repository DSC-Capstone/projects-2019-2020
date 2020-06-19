import os
import random
import ast

# This function is only used to demonstrate the format of results
# The result is fixed and it's not backed by our algorithm

def find_function_names(path):
    '''
    get the function names from file
    '''
    function_list =[]
    with open(path) as f:
        code_ast = ast.parse(f.read())
    function_def_nodes = [node for node in ast.walk(code_ast)
                      if isinstance(node, ast.FunctionDef)]
    for i in function_def_nodes:
        function_list.append(i.name)
    return function_list

def run(p_thresh_hold,boilder_plate,data_folder):
    '''
    get all pythong files, find function names, and get the min value
    '''
    file_list = []
    for root, dirs, files in os.walk(data_folder):
        for file in files:
            if file.endswith(".py"):
                 file_list.append(os.path.join(root, file))
    function_set = set()
    all_function_list = []
    file_name_list = []
    for i in file_list:
        file_name_list.append(i.split('/')[-1])
        all_function_list.append(find_function_names(i))

    valid_function = min(all_function_list, key=len)
    
    def compare_two_files(f1,f2,function_list):
        '''
        compare the similarity of two files
        '''
        result = 'similarity for '+f1+' and '+f2+':\n'
        #some opeartions
        for i in function_list:
            #compute similarity
            result = result + i +": "+ str(round(random.uniform(0,1),2))+'\n'
        return result
    result = ''
    for i in range(len(file_name_list)):
        for j in range(i+1,len(file_name_list)):
            result+=compare_two_files(file_name_list[i], file_name_list[j],valid_function)
    print(result[:-1]) #use index -1 to remove trailing newline
