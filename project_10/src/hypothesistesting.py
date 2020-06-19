import os
import sys
import json
import pandas as pd
import numpy as np
import glob
from scipy.stats import ttest_ind
from scipy import stats

TOP_PATH = os.environ['PWD']
os.chdir(TOP_PATH + '/data/cleaned')


fourteen = pd.read_csv('2014_cleaned.csv')
fifteen =  pd.read_csv('2015_cleaned.csv')
sixteen =  pd.read_csv('2016_cleaned.csv')
seventeen =  pd.read_csv('2017_cleaned.csv')

ftos = pd.concat([fourteen, fifteen, sixteen, seventeen]).reset_index(drop = True)
ftos = ftos[['stop_id' , 'subject_race', 'date_stop']]

eighteen = pd.read_csv('2018-2019_cleaned.csv')
eighteen = eighteen[['stop_id', 'subject_race', 'date_stop']]
allyears = pd.concat([ftos, eighteen]).reset_index(drop = True)

def time_period(df, start, end):
    period = df[(df['date_stop'] >= start) & (df['date_stop'] <=end)] 
    return period

def get_ttest(alldata, race, eventcsv, startdate, enddate):
    allstops = time_period(alldata, startdate, enddate)
    racialstops = allstops[allstops['subject_race'] == race]
    val = racialstops.groupby('date_stop')['stop_id'].count().values
    ind = racialstops.groupby('date_stop')['stop_id'].count().index
    total = allstops.groupby('date_stop')['stop_id'].count().values
    newdf1 = pd.DataFrame()
    newdf1['date_stop'] = ind
    newdf1['Stop_Counts'] = val
    newdf1['date_stop'] = pd.to_datetime(newdf1.date_stop, format= '%Y-%m-%d')
    allstops['date_stop'] = pd.to_datetime(allstops.date_stop, format= '%Y-%m-%d')
    allstops = pd.DataFrame(allstops.groupby('date_stop')['stop_id'].count())
    
    combo = newdf1.merge(allstops,how='outer', on='date_stop')
    combo.stop_id = total
    combo.Stop_Counts[np.isnan(combo.Stop_Counts)] = 0
    combo['date'] = combo['date_stop']
    combo = combo[['date', 'Stop_Counts', 'stop_id']]
    preevent = combo[:(len(combo)//2)]
    postevent = combo[(len(combo)//2):]
    preevent['Stop_Rate'] = (preevent.Stop_Counts/preevent.stop_id)
    postevent['Stop_Rate'] = (postevent.Stop_Counts/postevent.stop_id)
    
    ev = pd.read_csv(eventcsv)
    ev = ev[['date', 'value']]
    ev.date =  pd.to_datetime(ev.date, format= '%Y-%m-%d')
    
    merged = combo.merge(ev, on='date')
#     merged.value = pd.to_numeric(merged.value, errors='coerce')
#     merged.value[np.isnan(merged.value)] = 0
    
    merged1 = merged.copy()
    return ttest_ind(preevent.Stop_Rate, postevent.Stop_Rate, equal_var=False), merged1



def comparison(alldata, race, startdate, enddate, otheryearstart, otheryearend):
    allstops = time_period(alldata, startdate, enddate)
    racialstops = allstops[allstops['subject_race'] == race]
    val = racialstops.groupby('date_stop')['stop_id'].count().values
    ind = racialstops.groupby('date_stop')['stop_id'].count().index
    total = allstops.groupby('date_stop')['stop_id'].count().values
    newdf1 = pd.DataFrame()
    newdf1['date_stop'] = ind
    newdf1['Stop_Counts'] = val
    newdf1['date_stop'] = pd.to_datetime(newdf1.date_stop, format= '%Y-%m-%d')
    allstops['date_stop'] = pd.to_datetime(allstops.date_stop, format= '%Y-%m-%d')
    allstops = pd.DataFrame(allstops.groupby('date_stop')['stop_id'].count())
    
    combo = newdf1.merge(allstops,how='outer', on='date_stop')
    combo.stop_id = total
    combo.Stop_Counts[np.isnan(combo.Stop_Counts)] = 0
    combo['date'] = combo['date_stop']
    combo = combo[['date', 'Stop_Counts', 'stop_id']]

    
    combo.Stop_Counts = (combo.Stop_Counts/combo.stop_id)
    
    otheryear = time_period(alldata, otheryearstart, otheryearend)
    yr = otheryear[otheryear['subject_race'] == race]
    val = yr.groupby('date_stop')['stop_id'].count().values
    ind = yr.groupby('date_stop')['stop_id'].count().index
    total = otheryear.groupby('date_stop')['stop_id'].count().values
    df = pd.DataFrame()
    df['date_stop'] = ind
    df['Stop_Counts'] = val
    df['date_stop'] = pd.to_datetime(df.date_stop, format= '%Y-%m-%d')
    otheryear['date_stop'] = pd.to_datetime(otheryear.date_stop, format= '%Y-%m-%d')
    otheryear = pd.DataFrame(otheryear.groupby('date_stop')['stop_id'].count())
    
    yrs = df.merge(otheryear,how='outer', on='date_stop')
    yrs.stop_id = total
    yrs.Stop_Counts[np.isnan(yrs.Stop_Counts)] = 0
    yrs['date'] = yrs['date_stop']
    yrs = yrs[['date', 'Stop_Counts', 'stop_id']]

    
    yrs.Stop_Counts = (yrs.Stop_Counts/yrs.stop_id)
    
    return ttest_ind(combo.Stop_Counts, yrs.Stop_Counts, equal_var=False)
