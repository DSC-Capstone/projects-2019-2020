import re
import pandas as pd
import numpy as np
import os
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
import seaborn as sns


TOP_PATH = os.environ['PWD']
DATA_INPUT_PATH = TOP_PATH + '/data/cleaned/'

#helper function to get all of the data required for a given date range
def get_data_from_range(date_range):
    NY_2018 = pd.to_datetime('01-01-2018') 
    START_OF_2018_DATA = pd.to_datetime('07-01-2018')
    #Check that date_range is in the format that this code is designed to run it
    assert(len(date_range) == 2 and isinstance(date_range, tuple)), "Incorrect parameter format, should be a tuple of two dates"
    assert(re.match(r"^[0-9]{2}-[0-9]{2}-[0-9]{4}$", date_range[0])), "Incorrect date pattern ('MM-DD-YYYY')"
    assert(re.match(r"^[0-9]{2}-[0-9]{2}-[0-9]{4}$", date_range[1])), "Incorrect date pattern ('MM-DD-YYYY')"

    #Mark the earlier date as the start date
    if pd.to_datetime(date_range[0]) <= pd.to_datetime(date_range[1]):
        start_date = date_range[0]
        end_date = date_range[1]
    else:
        start_date = date_range[1]
        end_date = date_range[0]

    #Use string slicing to find the year of each date
    start_year = int(start_date[-4:])
    end_year = int(end_date[-4:])

    #Because of the way the stop files are made (2018 data being split between the 2017 file and the joint 2018-2019 file),
    #it was required to do some slight altering of the years
    if pd.to_datetime(start_date) >= NY_2018 and pd.to_datetime(start_date) <= START_OF_2018_DATA:
        start_year = 2017
    if pd.to_datetime(end_date) >=  START_OF_2018_DATA:
        end_year = 2018
    elif end_year == 2018:
        end_year = 2017
    
    #Make the dataframe to return and loop through the years to concat dataframes
    df = pd.DataFrame()
    for yr in range(start_year, end_year + 1):
        if yr == 2018:
            df = pd.concat([df, pd.read_csv(TOP_PATH + '/data/cleaned/2018-2019_cleaned.csv').drop('beat', axis = 1)])
        else:
            df = pd.concat([df, pd.read_csv(TOP_PATH + '/data/cleaned/' + str(yr) + '_cleaned.csv')])

    df = df[[pd.to_datetime(start_date) <= pd.to_datetime(x) and pd.to_datetime(end_date) >= pd.to_datetime(x) for x in df['date_stop']]]
    return df