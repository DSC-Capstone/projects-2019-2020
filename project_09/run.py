import pandas as pd
import urllib.request
import os
from skimage.color import rgb2hsv
from skimage.color import rgb2gray
from skimage import io
import numpy as np
import random
import json

import sys
sys.path.insert(0, f"{sys.path[0]}/src")
from etl import *
from data import *
from process import *

def main(targets):
    cfg = json.load(open('config/params.json'))
    limit_per_genre = cfg['limit_per_genre']
    genres = cfg['genres']
    if 'test' in targets:
        books_5_genres = pd.read_csv('notebooks/2500_books_5_genres.csv')
        metadata = sample_genres(cfg['genres'],cfg['sample_size'],books_5_genres,cfg['image_folder'])
        # metadata = pd.read_csv('src/metadata.csv')
        lst_rgb_hist = get_rgb_hist(metadata,cfg['image_folder'])
        lst_img_corr = get_hist_corr(lst_rgb_hist)
        lst_max_corr_idx = get_max_corr(lst_img_corr)
        metadata = add_sim_book_col(metadata,lst_max_corr_idx)
        umap_df = create_umap_rgb_hist(lst_rgb_hist,metadata)
        lst_thumbnails = create_img_thumbnails(metadata,cfg['image_folder'],cfg['tb_folder'])
        umap_df['thumnail_path'] = lst_thumbnails
        create_umap_rgb_hist_with_tn(umap_df)
        create_example_rgb_hist()
        lst_desc,lst_kd = get_keypoints_and_desc(metadata,cfg['image_folder'])
        lst_best_match = get_best_matches(lst_desc,lst_kd)
        metadata = add_best_match_col(metadata,lst_best_match)
        create_orb_acc_hist(metadata)
        print('Done!')

    if 'data' in targets:
        lst_jsons = get_genre_jsons(genres,limit_per_genre)
        df_metadata = get_metadata(genres,lst_jsons)
        write_df_to_csv(df_metadata)

    if 'eda' in targets:

        books_5_genres = pd.read_csv('notebooks/metadata.csv')
        metadata = sample_genres(genres,cfg['sample_size'],books_5_genres,cfg['image_folder'],cfg['meta_folder'])

        lst_rgb_hist = get_rgb_hist(metadata,cfg['image_folder'])
        lst_img_corr = get_hist_corr(lst_rgb_hist)
        lst_max_corr_idx = get_max_corr(lst_img_corr)
        metadata = add_sim_book_col(metadata,lst_max_corr_idx)
        umap_df = create_umap_rgb_hist(lst_rgb_hist,metadata)
        lst_thumbnails = create_img_thumbnails(metadata,cfg['image_folder'],cfg['tb_folder'])
        umap_df['thumnail_path'] = lst_thumbnails
        create_umap_rgb_hist_with_tn(umap_df)

        lst_desc,lst_kd = get_keypoints_and_desc(metadata,image_path)
        lst_best_match = get_best_matches(lst_desc,lst_kd)
        metadata = add_best_match_col(metadata,lst_best_match)
        create_orb_acc_hist(metadata)


if __name__ == '__main__':
    targets = sys.argv[1]
    main(targets)
