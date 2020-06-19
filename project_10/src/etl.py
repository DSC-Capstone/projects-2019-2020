import pandas as pd
import os
import json
import glob
import numpy as np
import doctest
import datetime as dt
from trends import *
#http://seshat.datasd.org/pd/vehicle_stops_final_datasd_v1.csv
OLD_FORMAT_URL_FIRST_HALF = 'http://seshat.datasd.org/pd/vehicle_stops_'
OLD_FORMAT_URL_SECOND_HALF = '_datasd_v1.csv'
NEW_FORMAT_URL_FIRST_HALF = 'http://seshat.datasd.org/pd/ripa_'

TOP_PATH = os.environ['PWD']

def get_stops_table(year, ripa_suffixes = None, ripa_columns = None):
    if year < 2017:
        url = OLD_FORMAT_URL_FIRST_HALF + str(year) + OLD_FORMAT_URL_SECOND_HALF
        df = pd.read_csv(url)
        df = df.drop(['sd_resident', 'date_time'], axis = 1)
    elif year == 2017:
        #2017 data is split into two sets, one old formatted and one new formatted,
        #but both with the same URL prefix and suffix
        url_old_version = OLD_FORMAT_URL_FIRST_HALF + str(year) + OLD_FORMAT_URL_SECOND_HALF
        url_new_version = OLD_FORMAT_URL_FIRST_HALF + 'final' + OLD_FORMAT_URL_SECOND_HALF
        df_old = pd.read_csv(url_old_version)
        df_new = pd.read_csv(url_new_version)
        df = pd.concat([df_old, df_new], ignore_index = True).reset_index(drop = True)
    else:
        df = pd.read_csv(NEW_FORMAT_URL_FIRST_HALF + ripa_suffixes[0])[ripa_columns[0]]
        for i in range(1, len(ripa_suffixes)):
            temp_df = pd.read_csv(NEW_FORMAT_URL_FIRST_HALF + ripa_suffixes[i])[ripa_columns[i]]
            df = pd.merge(df, temp_df, on = 'stop_id')
            df = df.drop_duplicates(['stop_id'])
    return df

def parse_csv(csv_contents):
    lines = csv_contents.split('\n')
    df = pd.DataFrame(columns = ['date','value'])
    dates = []
    values = []
    # Delete top 3 lines
    for line in lines[3:-1]:
        try:
            dates.append(line.split(',')[0].replace(' ',''))
            values.append(line.split(',')[1].replace(' ',''))
        except:
            pass
    df['date'] = dates
    df['value'] = values
    return df 

def get_data(start_date, end_date, keyword, years, ripa_suffixes, ripa_columns, outpath):
    trends = pytrends()
    if not os.path.exists(TOP_PATH + outpath):
        os.makedirs(TOP_PATH + outpath, exist_ok = True)
    for i in range(len(keyword)):
        time = (start_date[i], end_date[i])
        rep = trends.download_report(keyword[i], time = time)
        file = parse_csv(rep)
        file.to_csv("%s/%s.csv"%(TOP_PATH + outpath, keyword[i][0].replace(' ', '_')), index = False)
    for y in years:
        if y == 2018:
            get_stops_table(y, ripa_suffixes, ripa_columns).to_csv(TOP_PATH + outpath + '/STOPS_2018-2019.csv', index = False)
        else:
            get_stops_table(y).to_csv(TOP_PATH + outpath + '/STOPS_' + str(y) + '.csv', index = False)
    return










