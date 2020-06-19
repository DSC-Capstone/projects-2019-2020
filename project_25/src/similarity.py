import sys, logging, numpy as np
from itertools import permutations
from API_comparison import *
from collections import defaultdict

def process(processed):
    '''
    Generated a similarity report from processed ASTs

    @param processed Array of processed ASTs

    @return object containing similarity report
    '''
    threshold = 1
    ret = {
        'overview': {
            'data': -np.eye(len(processed)),
            'rows': [],
            'columns': []
        },
        'detailed': defaultdict(dict),
        'errors': []
    }
    file_to_rows_idx = {}
    file_to_columns_idx = {}
    for comb in permutations(processed, 2):
        try:
            res = run_files(comb[0][1], comb[1][1], 'complex')

            if comb[0][0] not in ret['overview']['rows']:
                file_to_rows_idx[comb[0][0]] = len(ret['overview']['rows'])
                ret['overview']['rows'].append(comb[0][0])
            if comb[1][0] not in ret['overview']['rows']:
                file_to_rows_idx[comb[1][0]] = len(ret['overview']['rows'])
                ret['overview']['rows'].append(comb[1][0])
            if comb[0][0] not in ret['overview']['columns']:
                file_to_columns_idx[comb[0][0]] = len(ret['overview']['columns'])
                ret['overview']['columns'].append(comb[0][0])
            if comb[1][0] not in ret['overview']['columns']:
                file_to_columns_idx[comb[1][0]] = len(ret['overview']['columns'])
                ret['overview']['columns'].append(comb[1][0])

            ret['detailed'][comb[0][0]][comb[1][0]] = sorted(res['pairs'], key=lambda x: x[2], reverse=True)[:int(len(res['pairs']) * threshold)]

            ret['overview']['data'][file_to_rows_idx[comb[0][0]], file_to_columns_idx[comb[1][0]]] = res['overall'] if not np.isnan(res['overall']) else 0
        except ZeroDivisionError:
            ret['errors'].append('%s - %s' % (comb[0][0], comb[1][0]))

    ret['overview']['data'] = ret['overview']['data'].tolist()
    for key, val in file_to_rows_idx.items():
        ret['overview']['data'][val][file_to_columns_idx[key]] = ''
        ret['overview']['data'][val] = [key] + ret['overview']['data'][val]
    return ret
