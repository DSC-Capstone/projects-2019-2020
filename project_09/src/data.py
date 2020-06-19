import requests
from bs4 import BeautifulSoup
import time
import urllib.request
import pandas as pd
import json
import ast

def get_genre_jsons(genres,limit_per_genre):
    lst_jsons = []
    for i in range(len(genres)):
        genre = genres[i]
        subject_api_url = 'http://openlibrary.org/subjects/'+genre+'.json?details=True&limit='+str(limit_per_genre)
        genre_json = requests.get(subject_api_url).json()
        lst_jsons.append(genre_json)
    return lst_jsons

def get_metadata(genres,lst_jsons):
    lst_book_info = []
    for i in range(len(genres)):
        g_json = lst_jsons[i]
        g = genres[i]
        for book in g_json['works']:
            cover_id = str(book['cover_id'])
            title = book['title']
            author = book['authors']
            if author is None or len(author)==0: 
                author = None
            else:
                author = author[0]['name']
            year = book['first_publish_year']
            genre = g
            genre_alts = book['subject']
            book_info = [cover_id,title,author,year,genre,genre_alts]
            lst_book_info.append(book_info)

    df_metadata =  pd.DataFrame(lst_book_info)
    df_metadata.columns = ['cover_id','title','author','year','genre','genre_alts']

    return df_metadata

def write_df_to_csv(df):
    return df.to_csv('notebooks/metadata.csv')

