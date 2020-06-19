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

    api_app_src = []
    api_app_dst = []
    f_2 = open(os.path.join(path, "api_app_320.txt"), "r") # A matrix
    
    for y in f_2:
        y = y.split()
        y[0] = int(y[0])
        y[1] = int(y[1].strip('\n'))
        api_app_src.append(api_ids_invmap[y[0]])
        api_app_dst.append(app_ids_invmap[y[1]])
    f_2.close()

    app_api = dgl.bipartite((api_app_dst, api_app_src), 'app', 'app_api', 'api')
    api_app = dgl.bipartite((api_app_src, api_app_dst), 'api', 'api_app', 'app')
    hg = dgl.hetero_from_relations([app_api, api_app])
    return hg, api_names, app_names

#"conference - paper - Author - paper - conference" metapath sampling
def generate_metapath():

    with open(os.path.join(path, "metapath_320_AA.txt"), "w", encoding = 'utf-8') as output_path:
        count = 0

        hg, api_names, app_names = construct_graph()

        for app_idx in tqdm.trange(hg.number_of_nodes('app')):
            traces, _ = dgl.sampling.random_walk(
                    hg, [app_idx] * num_walks_per_node, metapath=['app_api', 'api_app'] * walk_length)
            for tr in traces:
                outline = ' '.join(
                        (app_names if i % 2 == 0 else api_names)[tr[i]] # the length of a full walk is 2
                        for i in range(0, len(tr)))
                output_path.write(outline + "\n")
        print(output_path)
    output_path.close()


if __name__ == "__main__":
    generate_metapath()
