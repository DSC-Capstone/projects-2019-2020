from sklearn.metrics import classification_report

def run_model(kernel,malware):
    y = [0] * len(kernel['a_at'].shape[0])
    for app_id in malware:
        y[app_id] = 1

    clf = svm.SVC()
    for k,x in kernels:
        print(k)
        clf.fit(x, y)
        preds = clf.predict(x)
        print(classification_report(y,preds))

    
    
import glob 
from collections import defaultdict
import networkx as nx
import matplotlib.pyplot as plt  
import numpy as np
import pandas as pd
from pathlib import Path
import re
import json


apis = defaultdict()

def get_API_calls(smali_file):
    invoke_method = defaultdict(list)
    method_open = False
    calls_in_file = defaultdict(list)

    
    method_open_regex = re.compile('\.method.*')
    close_method_regex = re.compile('\.end method.*')
    invoke_method_regex = re.compile('^invoke.*')
    for l in open(smali_file):
        method_regex = method_open_regex.findall(l)
        if len(method_regex) > 0:
            method_open = True
            method_start = method_regex[0].split(' ')[1:]
            method_header = ' '.join(method_start)
            method_name = method_header
        
        method_end = close_method_regex.findall(l)
        if len(method_end) > 0:
            method_open = False
        API_call = invoke_method_regex.findall(l.strip())

        if len(API_call) > 0:
            if (method_open):
                
                API_call_array = API_call[0].split(' ')
                invoke_method_type = API_call_array[0].split('-')[-1]
                api_call = API_call_array[-1].split('->')

                try:
                    package = api_call[0]
                    api_name = api_call[1]
                    if api_name not in apis.keys():
                        apis[api_name] = len(apis)
                    meta = {}
                    meta['API_name'] = apis[api_name]
                    meta['invoke_method'] = invoke_method_type
                    meta['package'] = package
                    meta['method_name'] = method_name
                    
                    invoke_method[invoke_method_type].append(api_name)
                    
                    fn = smali_file.split('/')[-1]
                    calls_in_file[fn].append(meta)
                    
                except:
                    print(l)
                
    return calls_in_file, invoke_method

def get_meta():
    pathlist = Path('../../data/APK').glob('**/*.smali')
    meta = defaultdict(lambda: defaultdict(list))
    for i,path in enumerate(pathlist):
        path_in_str = str(path)
        category = path_in_str.split('/')[4]
        app_name = path_in_str.split('/')[5]
        graph_data, invoke_method = get_API_calls(path_in_str)
        
        meta[category][app_name].append(graph_data)
    return meta

def extract_data(meta):
    cat_apis_by_app = defaultdict(lambda: defaultdict(list))
    cat_apis = defaultdict(list)
    invoke_type_by_app = defaultdict(lambda: defaultdict(list))
    for cat,v in meta.items():
        for app, w in v.items():  
            for smali_files in w:
                for smali_file, calls in smali_files.items():
                    for call in calls:
                        cat_apis_by_app[cat][app].append(call['method_name'])
                        cat_apis[cat].append(call['method_name'])
                        invoke_type_by_app[cat][app].append(call['invoke_method'])
    return cat_apis_by_app,cat_apis, invoke_type_by_app

def get_imp_apis(cat_apis):
    most_business = pd.DataFrame(cat_apis['business'], columns = ['Business'])['Business'].value_counts().to_frame()
    most_beauty = pd.DataFrame(cat_apis['beauty'], columns = ['Beauty'])['Beauty'].value_counts().to_frame()
    merged = most_beauty.merge(most_business, left_index = True, right_index = True)
    merged['abs_diff'] = abs(merged.Beauty - merged.Business)
    merged['smaller'] = merged.apply(lambda x: x['Beauty'] if x['Beauty'] < x['Business'] else x['Business'], axis = 1) 
    merged['perc_diff'] = merged['abs_diff'] / merged['smaller']
    imp_apis = list(merged.sort_values('perc_diff', ascending= False).head(10).index)
    return imp_apis

def get_feature_of_app(app_calls,imp_apis):
    feats = [0 for ap in imp_apis]
    for call in app_calls:
        if call in imp_apis:
            feats[imp_apis.index(call)] = 1
    return feats

def run_model():
    feats = []
    label = []
    meta = get_meta()
    cat_apis_by_app,cat_apis, invoke_type_by_app = extract_data(meta)
    # print(cat_apis)
    imp_apis = get_imp_apis(cat_apis)
    
    for cat,v in cat_apis_by_app.items():
        for app_name, calls in v.items():
            feats.append(get_feature_of_app(calls, imp_apis))
            if cat == 'beauty':
                label.append(0)
            else:
                label.append(1)
    from sklearn.ensemble import GradientBoostingClassifier, RandomForestClassifier
    clf = RandomForestClassifier()
    clf.fit(feats, label)
    preds = clf.predict(feats)
    print('0 = Beauty and 1 = Business')
    from sklearn.metrics import classification_report
    print(classification_report(label,preds))



    




    

