#!/usr/bin/env python

import sys
import json
import shutil
import pandas as pd
import os

import warnings
warnings.filterwarnings("ignore")

sys.path.insert(0, 'src') # add library code to path

from wikiparser import gunzip_shutil
from wikiparser import download_metadata_zips
from wikiparser import parse_metadata_to_lightdump

from engagement_score import content_engagement_score
from engagement_score import editor_engagement_score
from engagement_score import get_page_views
from engagement_score import selectArticlesDB
from engagement_score import lightdump_to_db
from engagement_score import joint_engagement


DATA_PARAMS = 'config/data-params.json'
TEST_PARAMS = 'config/test-params.json'

def load_params(fp):
    with open(fp) as fh:
        param = json.load(fh)
    return param

def main(targets):
    # make the clean target
    if 'clean' in targets:
        print("Cleaning data")
        shutil.rmtree('data/temp', ignore_errors=True)
        shutil.rmtree('data/out', ignore_errors=True)

    if "test-project" in targets:
        test_params = load_params(TEST_PARAMS)

        data_dir = test_params['data_dir']

        #Download Metedata EN Wiki Raw
        num_files_to_download = test_params["num_files_download"]
        zip_outdir = data_dir + "/raw/zips"
        
        meta_date = test_params['metadate'] #20200401, date of wikimedia dump
        overwrite_current = False

        download_metadata_zips(num_files_to_download, zip_outdir , meta_date, overwrite=overwrite_current)

        zips = os.listdir(zip_outdir)

        #extract enwiki files
        extract_outdir = data_dir + "/raw/extracted"

        for gzip_file in os.listdir(zip_outdir ):
            if gzip_file[-2:] == "gz":
                gunzip_shutil(zip_outdir + "/" + gzip_file, extract_outdir)

        # Parse the Wikimedia Metadata XML File into Lightdump Format
        file_to_parse = extract_outdir + "/metadata-20200401-1.xml"
        lightdump_filename = "popularity_lightdump.txt"
        temp_dir = data_dir + "/temp"
        num_articles_to_process = test_params['num_articles_to_process']
        min_revisions = test_params['min_revisions']
        
        print("Parsing Wikidump to Lightdump for {} articles".format(num_articles_to_process))
        
        articles = test_params['articles']
        
        parse_metadata_to_lightdump(file_to_parse, 
                                    lightdump_filename, 
                                    temp_dir, 
                                    articles, 
                                    num_articles_to_process, 
                                    min_revisions)
                
        print("Clean Lightdump into SQL DB Averaged Data")

        db_outfile = temp_dir + "/articles.db"

        lightdump_to_db(temp_dir + "/" + lightdump_filename, 
                        db_outfile, 
                        num_articles_to_process) # num_articles_to_process = 1500
                
        output_dir = data_dir + "/out"
        output_file = output_dir + "/editor_score.csv"
        
        df = selectArticlesDB(db_outfile, [])
        
        print("Calculating Editor Scores for {} articles".format(num_articles_to_process))
        
        if not os.path.exists(output_dir):
            os.makedirs(output_dir, exist_ok=True) 

        editor_scores = editor_engagement_score(df, output_file)
                
        # Get the article names of all the articles in the lightdump file
        article_titles = []
        lightdump_article_titles = temp_dir + "/article_titles.txt"

        with open(lightdump_article_titles) as file:
            for line in file:
                article_titles.append(line.strip())
                
        print("Grabbing Page Views for {} articles using MWVIEWS API".format(len(article_titles)))
        
        pageviews_outfile = temp_dir + "/pageviews.csv"
    
        views_df = get_page_views(article_titles, pageviews_outfile)
        
        print("Calculating the Content Score")
            
        content_scores = content_engagement_score(pageviews_outfile, db_outfile, output_dir + "/content_engagement.csv")
        
        print("Finished Calculating the Content Score for {} articles".format(content_scores['article_title'].nunique()))
        
        print("Calculating the joint Engagement Score")
        
        engagement_score_outfile = output_dir + "/engagement-score.csv"

        engagement_df = joint_engagement(content_scores, editor_scores, engagement_score_outfile)

        print("Finished. Outputs are available in {}".format(output_dir))
    return


if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)
