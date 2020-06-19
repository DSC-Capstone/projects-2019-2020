#!/usr/bin/env python

import sys
import json
import os

sys.path.insert(0, 'src') # add library code to path
from src.etl import get_data, extract_data, get_wiki_category_articles,\
        remove_dir
from src.media_etl import get_media_data, process_media_data
from src.sankey import create_sankey_figure

EDIT_HISTORY_DATA_PARAMS = 'config/edit-history-data-params.json'
PAGEVIEWS_DATA_PARAMS = 'config/pageviews-data-params.json'
COVID_ARTICLES_DATA_PARAMS = 'config/covid-article-data-params.json'
COVID_ARTICLES_COMP_PARAMS = 'config/covid-article-complete-data-params.json'
PAGEVIEWS_EXTRACT_PARAMS = 'config/pageviews-extract-params.json'
EDIT_HISTORY_EXTRACT_PARAMS = 'config/edit-history-extract-params.json'
MEDIA_DATA_PARAMS = 'config/media-data-params.json'
MEDIA_PROCESS_PARAMS = 'config/media-process-params.json'
SANKEY_PARAMS = 'config/sankey.json'


def load_params(fp):
    with open(fp) as fh:
        param = json.load(fh)

    return param


def main(targets):

    # make the clean target
    if 'clean' in targets:
        remove_dir('data/raw')
        remove_dir('data/temp')
        remove_dir('data/out')
        remove_dir('data/out_m_stat')

    # get all edit history zip files
    if 'edit-history-data' in targets:
        cfg = load_params(EDIT_HISTORY_DATA_PARAMS)
        get_data(**cfg)

    # get all pageviews zip files
    if 'pageviews-data' in targets:
        cfg = load_params(PAGEVIEWS_DATA_PARAMS)
        get_data(**cfg)

    # get all articles related to COVID-19
    if 'covid-data' in targets:
        cfg = load_params(COVID_ARTICLES_DATA_PARAMS)
        get_wiki_category_articles(**cfg)

    # get complete article graph to COVID-19
    if 'covid-complete' in targets:
        cfg = load_params(COVID_ARTICLES_COMP_PARAMS)
        get_wiki_category_articles(**cfg)

    # extract covid articles from pageviews data
    if 'pageviews-extract' in targets:
        cfg = load_params(PAGEVIEWS_EXTRACT_PARAMS)
        extract_data(**cfg)

    # extract covid articles from edit history data
    if 'edit-history-extract' in targets:
        cfg = load_params(EDIT_HISTORY_EXTRACT_PARAMS)
        extract_data(**cfg)

    # make the media data target
    if 'media-data' in targets:
        cfg = load_params(MEDIA_DATA_PARAMS)
        get_media_data(**cfg)

    # cleans and prepares the media data for analysis
    if 'process-media' in targets:
        cfg = load_params(MEDIA_PROCESS_PARAMS)
        process_media_data(**cfg)

    # create Sankey diagram from pageview data
    if 'sankey' in targets:
        cfg = load_params(SANKEY_PARAMS)
        create_sankey_figure(**cfg)

    return


if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)
