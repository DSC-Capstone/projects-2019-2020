import pandas as pd
import numpy as np
import os
import matplotlib.pyplot as plt
import seaborn as sns
from get_date_range_df import get_data_from_range

TOP_PATH = os.environ['PWD']
DATA_OUTPATH = TOP_PATH + '/eda_visualizations'


def month_race_count_viz(date_range, issue, save_fig = False):
    MONTH_DICTIONARY = {
    1 : 'Jan',
    2 : 'Feb',
    3 : 'Mar',
    4 : 'Apr',
    5 : 'May',
    6 : 'Jun',
    7 : 'Jul',
    8 : 'Aug',
    9 : 'Sep',
    10 : 'Oct',
    11 : 'Nov',
    12 : 'Dec'
    }
    COLOR_DICT = {
        'Asian' : '#FF7F50',
        'Black/African American' : '#CAE1FF',
        'Hispanic/Latino/a' : '#008000',
        'Middle Eastern or South Asian' : '#FFA07A',
        'Native American' : '#800080',
        'Other' : '#778899',
        'Pacific Islander' : '#FF0000',
        'White' : '#0000FF'
    }
    #Use get_data_from_range helper method to get a dataframe from given date range
    df_window = get_data_from_range(date_range)
    #Select out the columns that we are focused on in this project
    df_window = df_window[['stop_id', 'service_area', 'subject_race', 'date_stop']]
    #Make month column using string operations on the date
    df_window['Month-Year'] = df_window['date_stop'].str.slice(0,7)
    #Make a pivot table: gets counts of stops for each race for each month
    viz_df = df_window.pivot_table(values = 'stop_id', index = 'Month-Year', columns = 'subject_race', aggfunc = 'count').reset_index(drop = False)
    viz_df['Month-Year'] = pd.to_datetime(viz_df['Month-Year'], format = '%Y-%m')
    viz_df = viz_df.sort_values('Month-Year')
    viz_df['Month'] = viz_df['Month-Year'].dt.month
    viz_df = viz_df.fillna(0)
    viz_df = viz_df.astype({'Month' : int})
    viz_df['Month'] = viz_df['Month'].map(MONTH_DICTIONARY)
    viz_df.drop('Month-Year', axis = 1, inplace = True)
    viz_df = viz_df.set_index('Month', drop = True)
    #Create a stacked bar chart
    ax = viz_df.plot.bar(stacked = True, figsize = [12, 6.75], color=[COLOR_DICT.get(x) for x in viz_df.columns])
    ax.set(title = 'Counts of Race Stops in Window Around {iss} by Month'.format(iss = issue),
           ylabel = 'Individuals Stopped')
    fig = ax.figure
    #If save figure is passed, save the image to disk
    if save_fig:
        if not os.path.exists(DATA_OUTPATH):
            os.makedirs(DATA_OUTPATH, exist_ok = True)
        fig.savefig(DATA_OUTPATH + '/{iss}_RACE_BY_MONTH_DISTR.png'.format(iss = issue.replace(' ', '_')))
    return ax


