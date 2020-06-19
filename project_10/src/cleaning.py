import pandas as pd
import numpy as np 
import geopandas as gpd
import os
import json
import sys

TOP_PATH = os.environ['PWD']
OUTPATH = '/data/cleaned'

race_mapping = {
	'A' : 'Asian',
	'B' : 'Black/African American',
	'C' : 'Asian', 
	'D' : 'Asian',
	'F' : 'Asian',
	'G' : 'Pacific Islander',
	'H' : 'Hispanic/Latino/a',
	'I' : 'Native American',
	'J' : 'Asian',
	'K' : 'Asian',
	'L' : 'Asian',
	'O' : 'Other',
	'P' : 'Pacific Islander',
	'S' : 'Pacific Islander',
	'U' : 'Pacific Islander',
	'V' : 'Asian',
	'W' : 'White',
	'Z' : 'Middle Eastern or South Asian',
	'X' : None
}
sex_mapping = {
	'M' : 'Male',
	'F' : 'Female',
	'X' : 'Other'
}
reg_binary_mapping = {
	'Y' : 'Y',
	'N' : 'N',
	'n' : 'N',
	'y' : 'Y',
	' ' : np.nan,
	'b' : np.nan,
	'M' : np.nan
}

#Helper function for cleaning years 2014-2017
def fix_age(age):
		try:
			mod_age = int(age)
			if mod_age > 113:
				return np.nan
			else:
				return mod_age
		except ValueError:
			return np.nan

#Helper function for cleaning years 2014-2017
def arr_search_convert(val):
		if isinstance(val, float) or val == 'N':
			return 'N'
		else:
			return 'Y'


def clean_2014_2016(df_csv):
	#Decrease granularity of race to conform to 2018-2019 races
	df = pd.read_csv(df_csv)
	df['subject_race'] = df['subject_race'].map(race_mapping)
	#Map Sex to full word
	df['subject_sex'] = df['subject_sex'].map(sex_mapping)
	df['subject_age'] = df['subject_age'].apply(lambda x: fix_age(x))
	df['arrested'] = df['arrested'].apply(lambda x: arr_search_convert(x))
	df['searched'] = df['searched'].apply(lambda x: arr_search_convert(x))
	df['obtained_consent'] = df['obtained_consent'].map(reg_binary_mapping)
	df['contraband_found'] = df['contraband_found'].apply(lambda x: arr_search_convert(x))
	df['property_seized'] = df['property_seized'].apply(lambda x: arr_search_convert(x))
	if not os.path.exists(TOP_PATH + OUTPATH):
		os.makedirs(TOP_PATH + OUTPATH, exist_ok = True)
	df.to_csv(TOP_PATH  + OUTPATH + '/' + df_csv[-8 : -4] + '_cleaned.csv', index = False)
	return df


def clean_2017(df_csv):
	df = pd.read_csv(df_csv)
	#Drop unnecessary columns
	df.drop(['action', 'search_basis', 'search_type'], axis = 1, inplace = True)
	df['date_stop'] = df.date_time.str.slice(0,10)
	df['time_stop'] = df.date_time.str.slice(10,)
	df = df.sort_values('date_stop').reset_index(drop = True)[['stop_id', 'stop_cause', 'service_area', 
								'subject_race', 'subject_sex', 'subject_age', 'date_time', 'date_stop', 
								'time_stop', 'sd_resident', 'arrested', 'searched', 'obtained_consent', 
								'contraband_found', 'property_seized']]
	#Decrease granularity of race to conform to 2018-2019 races
	df['subject_race'] = df['subject_race'].map(race_mapping)
	#Map Sex to full word
	df['subject_sex'] = df['subject_sex'].map(sex_mapping)
	df['subject_age'] = df['subject_age'].apply(lambda x: fix_age(x))
	#Map binary entries
	df['arrested'] = df['arrested'].apply(lambda x: arr_search_convert(x))
	df['searched'] = df['searched'].apply(lambda x: arr_search_convert(x))
	df['obtained_consent'] = df['obtained_consent'].map(reg_binary_mapping)
	df['contraband_found'] = df['contraband_found'].apply(lambda x: arr_search_convert(x))
	df['property_seized'] = df['property_seized'].apply(lambda x: arr_search_convert(x))
	df.drop(['sd_resident', 'date_time'], axis = 1, inplace = True)
	if not os.path.exists(TOP_PATH + OUTPATH):
		os.makedirs(TOP_PATH + OUTPATH, exist_ok = True)
	df.to_csv(TOP_PATH  + OUTPATH + '/2017_cleaned.csv', index = False)
	return df




def clean_2018_2019(df_csv):
	df = pd.read_csv(df_csv)
	beats_and_serv_areas = areas = gpd.read_file('http://seshat.datasd.org/sde/pd/pd_beats_datasd.zip')
	beats_serv_dict = beats_and_serv_areas[['beat', 'serv']].set_index('beat', drop = True).serv.to_dict()
	df['stop_cause'] = df['reason_for_stop']
	df['subject_race'] = df['race']
	df['subject_age'] = df['perceived_age']
	df['subject_sex'] = df['perceived_gender']
	df['service_area'] = df['beat'].map(beats_serv_dict)
	df = df.dropna(subset = ['service_area'])
	df['service_area'] = [str(int(x)) for x in df.service_area]
	arrested_2018 = ['Y' if 'arrest' in x or 'Arrest' in x or 'hold' in x else 'N' for x in df.result]
	df['arrested'] = arrested_2018
	searched_2018 = ['N' if x is np.nan else 'Y' for x in df.basis_for_search]
	df['searched'] = searched_2018
	df['obtained_consent'] = df['consented']
	contraband_2018 = ['Y' if x != 'None' else 'N' for x in df.contraband]
	df['contraband_found'] = contraband_2018
	property_2018 = ['N' if x is np.nan else 'Y' for x in df.type_of_property_seized]
	df['property_seized'] = property_2018
	df = df[['stop_id', 'stop_cause', 'beat', 'service_area', 'subject_race', 'subject_sex', 'subject_age', 
				'date_stop', 'time_stop', 'arrested', 'searched', 'obtained_consent', 'contraband_found',
				'property_seized']]
	if not os.path.exists(TOP_PATH + OUTPATH):
		os.makedirs(TOP_PATH + OUTPATH, exist_ok = True)
	df.to_csv(TOP_PATH + OUTPATH + '/' + df_csv[-13 : -4] + '_cleaned.csv', index = False)
	return df


def clean_trends(df_csv):
	df = pd.read_csv(df_csv)
	df.drop('Unnamed: 0', axis = 1, inplace = True, errors = 'ignore')
	df['value'] = pd.to_numeric(df['value'], errors = 'coerce')
	df['value'] = df['value'].fillna(0)
	if not os.path.exists(TOP_PATH + OUTPATH):
		os.makedirs(TOP_PATH + OUTPATH, exist_ok = True)
	index = df_csv.rfind('/') + 1
	df.to_csv(TOP_PATH + OUTPATH + '/' + df_csv[index:-4] + '_cleaned.csv', index = False)
	return df

	










