import pandas as pd
from glob import glob
import os.path as osp
import os
import numpy as np
from sklearn.preprocessing import OrdinalEncoder
from sklearn.preprocessing import OneHotEncoder
import json
from scipy import sparse
import shutil
import scipy.io as io

COMM_DIR = osp.join('raw', 'comments', '*.csv')
LABL_DIR = osp.join('interim', 'label', '*.csv')
POST_DIR = osp.join('raw', 'posts', '*.csv')
OUT_DIR = osp.join('interim', 'graph', 'graph_1.mat')

#the subreddit defined as controversial
community = ["KotakuInAction",
    "TumblrInAction",
    "pussypassdenied",
    "conspiracy",
    "Drama",
    "aznidentity",
    "ShitPoliticsSays",
    "AgainstHateSubreddits",
    "TopMindsOfReddit",
    "MensRights",
    "TheBluePill",
    "PussyPass",
    "CringeAnarchy",
    "Imgoingtohellforthis",
    "UncensoredNewsSucks",
    "conspiracy",
    "politics",
    "The_Donald_CA",
    "DebateAltRight",
    "The_Donald",
    "TheRedPill",
    "MGTOW",
    "spacedicks",
    "AntiPOZi",
    "nsfl",
    "ferguson",
    "Ellenpaohate",
    "ChapoTrapHouse",
    "911truth",
    "AltRightChristian",
    "bruhfunny",
    "CoronavirusConspiracy",
    "darkmemes",
    "EDFood",
    "inbreeding",
    "incest",
    "incest_relationships",
    "FULLCOMMUNISM",
    "multiculturalcancer",
    "NationalistsUnited",
    "okbuddyanarchy",
    "PissEarth",
    "SargonofAkkad",
    "smuggies",
    "spacedicks",
    "TimeToGo",
    "Wuhan_Flu",
    "jokes",
    "unpopularopinion"]

def create_graph(fp):
    """[create the graph]

    Args:
        fp ([string]): [the file path of the root of the data]
    """
    print('start preprocessing: (filtering)')
    try:
        os.remove(osp.join(fp, OUT_DIR))
    except FileNotFoundError:
        pass
    comm = osp.join(fp, COMM_DIR)
    post = osp.join(fp, POST_DIR)
    labl = osp.join(fp, LABL_DIR)
    comm = pd.concat([pd.read_csv(i, usecols = ['id', 'author', 'parent_id', 'link_id']
                        ) for i in glob(comm)])
    post = pd.concat([pd.read_csv(i, usecols = ['id', 'author', 'subreddit']
                        ) for i in glob(post)])
    labl = pd.concat([pd.read_csv(i) for i in glob(labl)])
    labl = labl[labl.label != -1]
    post.author = post.author.str.lower()
    post.subreddit = post.subreddit.str.lower()
    post = post[(post.author != '[deleted]')&(post.author != 'automoderator')& (post.author != 'snapshillbot')]
    comm['parent_id'] = comm.parent_id.str[3:]
    comm['link_id'] = comm.link_id.str[3:]
    comm = comm[['id','author', 'parent_id', 'link_id']]
    comm.author = comm.author.str.lower()
    comm = comm[(comm.author != '[deleted]')&(comm.author != 'automoderator') & (comm.author != 'snapshillbot')]
    comm = comm.dropna()
    post = post[(post.id.isin(labl.post_id)) & (post.id.isin(comm.link_id))]
    comm = comm[comm.link_id.isin(post.id)]
    comm = comm[(comm.parent_id.isin(post.id)) | (comm.parent_id.isin(comm.id)) | (comm.link_id.isin(post.id))]
    comm_root = comm[comm.parent_id.str.len() == 6]
    comm_nest = comm[comm.parent_id.str.len() == 7]
    print('start preprocessing: (edges)')
    post_pauthor = post[['id', 'author']]
    post_pauthor.columns = ['who', 'whom']
    pauthor_post = post[['id', 'author']]
    pauthor_post.columns = ['whom', 'who']
    post_author_edges = pd.concat([post_pauthor, pauthor_post], ignore_index = True)
    post_comment_edges_root = comm_root[['parent_id', 'author']]
    post_comment_edges_root.columns = ['who', 'whom']
    post_comment_edges_nest = comm_nest[['link_id', 'author']]
    post_comment_edges_nest.columns = ['who', 'whom']
    user_user_edges = pd.merge(comm_nest[['author', 'parent_id']], comm_nest[['author', 'id']], \
    how='left', left_on='parent_id', right_on='id').dropna()[['author_x', 'author_y']]
    user_user_edges.columns = ['whom', 'who']
    edges = pd.concat([post_author_edges, post_comment_edges_root, post_comment_edges_nest, user_user_edges], \
                        ignore_index=True)
    edges = edges[~((edges.who.isin(post.id))&(edges.whom.isin(post.id)))]
    print('start preprocessing: (nodes)')
    post_names = post.id.unique()
    node_names = np.unique(np.append(edges.who.dropna().values, edges.whom.dropna().values))
    node_maps = pd.DataFrame(
                {
                    'id': np.arange(len(node_names)),
                    'name': node_names
                }
    )
    edge_pairs = edges.dropna().who + edges.dropna().whom
    edge_pair = edges.copy()
    pair_counts = edge_pairs.value_counts()
    edge_pair['pairs'] = edge_pairs
    pair_counts = pair_counts.astype(int).to_frame()
    edges = pd.merge(edge_pair, pair_counts, left_on = 'pairs', right_index = True)[['who', 'whom', 0]]
    edge_idx = edges.drop_duplicates()
    edge_idx = pd.merge(edge_idx, node_maps, left_on='who', right_on='name', how='left')[['id', 'whom', 0]]
    edge_idx.columns = ['who_id', 'whom', 'weight']
    edge_idx = pd.merge(edge_idx, node_maps, left_on='whom', right_on='name', how='left')[['who_id', 'id', 'weight']]
    edge_idx.columns = ['who_id', 'whom_id', 'weight']
    edge_weight = edge_idx[['weight']].values
    edge_idx = edge_idx.sort_values(['who_id', 'whom_id'])
    edge_idx_ = edge_idx[['who_id', 'whom_id']].values
    N = sparse.csr_matrix((edge_weight.reshape(-1,), (edge_idx_[:, 0], edge_idx_[:, 1])), \
                                    shape = (node_maps.shape[0], node_maps.shape[0]))
    post_mask = node_maps.name.isin(post_names)
    post_indx = node_maps[post_mask].id.values
    user_indx = node_maps[~post_mask].id.values
    U = N[user_indx, :][:, user_indx]
    A = N[user_indx, :][:, post_indx]
    P = N[post_indx, :][:, user_indx]
    subreddit = pd.merge(node_maps[post_mask][['name']], post[['id', 'subreddit']].drop_duplicates(), \
                            left_on = 'name', right_on='id', how='left').subreddit.values
    big_com = np.isin(subreddit, community).astype(int).reshape(-1, 1)
    heter_feature = OneHotEncoder().fit_transform(subreddit.reshape(-1, 1)).toarray()
    heter_label = pd.merge(node_maps[post_mask][['name']], 
            labl, left_on='name', right_on='post_id', how='left').label.values
    print('start writing matrices')
    res = {}
    res['N'] = N
    res['U'] = U
    res['A'] = A
    res['P'] = P
    res['post_label'] = heter_label.reshape(-1,)
    res['post_cate'] = np.hstack([heter_feature,big_com])
    res['post_indx'] = post_indx.reshape(-1,)
    res['user_indx'] = user_indx.reshape(-1,)
    io.savemat(osp.join(fp, OUT_DIR), res)
    print('graph constructed, with N shape: {}'.format(N.shape))

