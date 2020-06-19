import numpy as np
import random
import time
import tqdm
import dgl
import sys
import os

num_walks_per_node = 200
walk_length = 100
path = "../results"

def construct_graph():
    api_ids = []
    api_names = []
    app_ids = []
    app_names = []
    
    f_3 = open(os.path.join(path, "id_api_320.txt"), encoding='utf-8')
    f_4 = open(os.path.join(path, "id_app_320.txt"), encoding='utf-8')
    while True:
        z = f_3.readline()
        if not z:
            break
        z = z.strip().split()
        identity = int(z[0])
        api_ids.append(identity)
        api_names.append(z[1])
    while True:
        w = f_4.readline()
        if not w:
            break;
        w = w.strip().split()
        identity = int(w[0])
        app_ids.append(identity)
        app_names.append(w[1])

    f_3.close()
    f_4.close()


    api_ids_invmap = {x: i for i, x in enumerate(api_ids)}
    app_ids_invmap = {x: i for i, x in enumerate(app_ids)}

    api_api_B_src = []
    api_api_B_dst = []

    api_api_P_src = []
    api_api_P_dst = []

    api_app_src = []
    api_app_dst = []
    f_1 = open(os.path.join(path, "same_block_api_320.txt"), "r") # B matrix
    f_2 = open(os.path.join(path, "api_app_320.txt"), "r") # A matrix
    f_5 = open(os.path.join(path, "same_package_api_320.txt"), "r") # P matrix

    # B
    for x in f_1:
        x = x.split()
        x[0] = int(x[0])
        x[1] = int(x[1].strip('\n'))
        api_api_B_src.append(api_ids_invmap[x[0]])
        api_api_B_dst.append(api_ids_invmap[x[1]])

    # A
    for y in f_2:
        y = y.split()
        y[0] = int(y[0])
        y[1] = int(y[1].strip('\n'))
        api_app_src.append(api_ids_invmap[y[0]])
        api_app_dst.append(app_ids_invmap[y[1]])

    # P
    for z in f_5:
        z = z.split()
        z[0] = int(z[0])
        z[1] = int(z[1].strip('\n'))
        api_api_P_src.append(api_ids_invmap[z[0]])
        api_api_P_dst.append(api_ids_invmap[z[1]])

    f_1.close()
    f_2.close()
    f_5.close()

    app_api = dgl.bipartite((api_app_dst, api_app_src), 'app', 'app_api', 'api1')
    api_api_B = dgl.bipartite((api_api_B_src, api_api_B_dst), 'api1', 'api_api_B', 'api2')
    api_api_P = dgl.bipartite((api_api_P_src, api_api_P_dst), 'api2', 'api_api_P', 'api3')
    api_api_B_T = dgl.bipartite((api_api_B_dst, api_api_B_src), 'api3', 'api_api_B_T', 'api1') # B transpose
    api_app = dgl.bipartite((api_app_src, api_app_dst), 'api1', 'api_app', 'app') # A transpose

    hg = dgl.hetero_from_relations([app_api, api_api_B, api_api_P, api_api_B_T, api_app])
    return hg, api_names, app_names

def generate_metapath():

    with open(os.path.join(path, "metapath_320_ABPBA.txt"), "w", encoding = 'utf-8') as output_path:
        count = 0

        hg, api_names, app_names = construct_graph()

        for app_idx in tqdm.trange(hg.number_of_nodes('app')):
            traces, _ = dgl.sampling.random_walk(
                    hg, [app_idx] * num_walks_per_node, metapath=['app_api', 'api_api_B', 'api_api_P', 'api_api_B_T', 'api_app'] * walk_length)
            for tr in traces:
                outline = ' '.join(
                        (app_names if i % 5 == 0 else api_names)[tr[i]] # the length of a full walk is 5
                        for i in range(0, len(tr)))
                output_path.write(outline + "\n")
        print(output_path)
    output_path.close()


if __name__ == "__main__":
    generate_metapath()
