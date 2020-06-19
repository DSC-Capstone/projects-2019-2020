import sys
import os
sys.path.insert(0,'../src')
sys.path.insert(0,'../data')
sys.path.insert(0,'../upload_data')
sys.path.insert(0,'../config')
sys.path.insert(0,'..')
import geopandas as gpd
import pandas as pd
import geoplot as gplt
import geoplot.crs as gcrs
import matplotlib.pyplot as plt
import etl
import json
import cleaning
import datetime
from dateutil.relativedelta import relativedelta
import matplotlib.colors as colors

TOP_PATH = os.environ['PWD']
DATA_OUTPATH = TOP_PATH + '/heatmap_visualizations'

def make_areas():
    areas = gpd.read_file('../upload_data/pd_beats_datasd.shp')
    areas = areas.drop(['objectid', 'name', 'beat', 'div'],axis = 1)
    return areas

def make_denominator(census, race):
    table = pd.pivot_table(census,index = 'serv', values = [race, 'Total'], aggfunc = sum)
    table = table.div(table.iloc[:,-1],axis = 0).drop('Total', axis = 1)
    table = table.rename(columns={race:'denominator'})
    return table

def make_numerator(df,race,start_date,end_date):
    numer = df[(df['date_stop'] >= start_date) & (df['date_stop'] <= end_date)]
    numer = pd.pivot_table(numer, index = 'service_area', columns = 'subject_race', values = 'stop_id', aggfunc = 'count',fill_value=0)
    numer['Total'] = numer.apply(sum, axis = 1)
    numer = numer.div(numer.iloc[:,-1],axis = 0)
    try:
        numer.index = numer.index.astype('int64')
    except:
        numer = numer.drop('Unknown')
        numer.index = numer.index.astype('int64')
    numer = pd.DataFrame(numer[race])
    return numer.rename(columns={race:'numerator'})

def make_proportions(df,race,start_date,end_date):
    census_fp = '../upload_data/sd_population.csv'
    census =  pd.read_csv(census_fp)
    numers = make_numerator(df,race,start_date,end_date)
    denoms = make_denominator(census, race)
    merger = numers.merge(denoms, left_index=True,right_index=True)
    return pd.DataFrame(merger.numerator/merger.denominator, columns=['prop'])

def make_heat(df,race,event,start_date,end_date,save_fig=False):
    areas = make_areas()
    props = make_proportions(df,race,start_date,end_date)
    heat = areas.merge(props, left_on='serv',right_index=True, how='outer')
    heat = heat.dissolve(by='serv',aggfunc='first').fillna(0).drop(0)
    event_y = (datetime.date.fromisoformat(start_date) + relativedelta(months = 2)).year
    fig, ax = plt.subplots(1, figsize=(10,10))
    ax.axis('off')
    ax.set_title(f'Proportion of {race} Drivers Stopped By Service Area\n Event: {event} ({event_y})'.format(race,event,event_y), fontdict={'fontsize':'15','fontweight' : '3'})
    heat_diff.plot(column='prop', cmap='Blues', linewidth=0.8, ax=ax,
                   edgecolor='0.8', vmin=-1, vmax=1, legend=True)
    if save_fig:
        if not os.path.exists(DATA_OUTPATH):
            os.makedirs(DATA_OUTPATH, exist_ok = True)
        fig.savefig(DATA_OUTPATH + '/{r}_{e}_({e_y})'.format(r = race.replace('/', '_'),e = event,e_y = event_y))

def make_difference_heatmap(df_current,df_prior,race,event,start_date,end_date,save_fig=False):
    
    areas = make_areas()
    if datetime.date.fromisoformat(start_date).year ==2014:
        prior_start_date = (datetime.date.fromisoformat(start_date)+relativedelta(years=1)).isoformat()
        prior_end_date = (datetime.date.fromisoformat(end_date)+relativedelta(years=1)).isoformat()
    else:
        prior_start_date = (datetime.date.fromisoformat(start_date)-relativedelta(years=1)).isoformat()
        prior_end_date = (datetime.date.fromisoformat(end_date)-relativedelta(years=1)).isoformat()
    props_post = make_proportions(df_current,race,start_date,end_date)
    props_pre = make_proportions(df_prior,race,prior_start_date,prior_end_date)
    differences = props_post.subtract(props_pre)
    heat_diff = areas.merge(differences, left_on='serv',right_index=True, how='outer')
    heat_diff = heat_diff.dissolve(by='serv',aggfunc='first').fillna(0).drop(0)
    event_y = (datetime.date.fromisoformat(start_date) + relativedelta(months = 2)).year
    
    cdict = {'green':  ((0.0, 0.0, 0.0),   # no red at 0
                  (0.5, 1.0, 1.0),   # all channels set to 1.0 at 0.5 to create white
                  (1.0, 0.8, 0.8)),  # set to 0.8 so its not too bright at 1

        'red': ((0.0, 0.8, 0.8),   # set to 0.8 so its not too bright at 0
                  (0.5, 1.0, 1.0),   # all channels set to 1.0 at 0.5 to create white
                  (1.0, 0.0, 0.0)),  # no green at 1

        'blue':  ((0.0, 0.0, 0.0),   # no blue at 0
                  (0.5, 1.0, 1.0),   # all channels set to 1.0 at 0.5 to create white
                  (1.0, 0.0, 0.0))   # no blue at 1
       }

# Create the colormap using the dictionary
    GnRd = colors.LinearSegmentedColormap('GnRd', cdict)

    fig, ax = plt.subplots(1, figsize=(10,10))
    ax.axis('off')
    ax.set_title(f'Change in Proportion of {race} Drivers Stopped By Service Area\n Event: {event} ({event_y})'.format(race,event,event_y), fontdict={'fontsize':'15','fontweight' : '3'})
    heat_diff.plot(column='prop', cmap=GnRd, linewidth=0.8, ax=ax, edgecolor='0.8', vmin=-.5, vmax=.5, legend=True)
    if save_fig:
        if not os.path.exists(DATA_OUTPATH):
            os.makedirs(DATA_OUTPATH, exist_ok = True)
        fig.savefig(DATA_OUTPATH + '/{r}_{e}_({e_y})'.format(r = race.replace('/', '_'),e = event,e_y = event_y))
    return heat_diff
