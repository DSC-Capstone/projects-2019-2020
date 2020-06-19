# Import libraries/modules
import pandas as pd
import numpy as np
import os
import json
from geospatial import *

# Global constants
def load_params(fp):
    """
    Reads a JSON configuration file and loads it as a dictionary.

        Parameters:
            fp: Filepath of JSON file.

        Returns:
            Dictionary of parameters.
    """
    
    with open(fp) as fh:
        param = json.load(fh)

    return param

DIV_MAP = load_params('references/divisions_mapper.json')
CRIME_CHARGES = load_params('references/crime_charges.json')
CRIME_TYPES = load_params('references/crime_types.json')
ARREST_TYPES = load_params('references/arrest_types.json')
ARREST_CHARGES = load_params('references/arrest_charges.json')
RACES = load_params('references/races.json')

# Main driver functions
def get_data(urls, outpath = 'data/raw', title = ['stops', 'arrests', 'crime'], **kwargs):
    """
    Extracts and saves raw data.

        Parameters:
            urls: List of urls to raw data.
            outpath: Directory to store output.
            title: List of titles for each dataset.

        Returns:
    """
    
    if not os.path.exists(outpath):
        os.mkdir(outpath)
    for j, i in enumerate(urls):    
        df = pd.read_csv(i)    
        name = './' + outpath + '/'+title[j] + '.csv'
        df.to_csv(name, index = False)
        print("Downloaded: ",name)
    return 'Files saved in ' + outpath

def process(paths, cols, outpath = 'data/cleaned' ,title = ['stops', 'arrests', 'crime'], **kwargs):
    """
    Cleans all datasets.

        Parameters:
            paths: List of paths of the raw datasets.
            cols: 2D list of column names for each dataset to retain after cleaning.
            outpath: Directory to store output.
            title: List of titles for each dataset.

        Returns:
    """
    
    if not os.path.exists(outpath):
        os.mkdir(outpath)
    for j,i in enumerate(paths):
        process_data(i, outpath, cols[j], title[j])     
    return 'Files saved in ' + outpath

def process_data(inpath, outpath, cols, title, **kwargs):
    """
    Reads raw data and runs its respective cleaning function.

        Parameters:
            inpath: Filepath of raw data.
            outpath: Filepath of cleaned data.
            cols: Columns to retain after cleaning.
            title: Title of cleaned dataset.

        Returns:
    """
    
    print('Processing {} data.'.format(title))
    if not os.path.exists(outpath):
        os.mkdir(outpath)
    print('Reading raw data.')
    # Check title and run each data's cleaning function
    if title == 'stops':
        cleaned = transform_stops(pd.read_csv(inpath), cols)
    elif title == 'crime':
        cleaned = transform_crimes(pd.read_csv(inpath, parse_dates=[1]), cols)
    else:
        try:
            cleaned = transform_arrests(pd.read_csv(inpath).drop(columns=['Unnamed: 0']), cols)
        except:
            cleaned = transform_arrests(pd.read_csv(inpath), cols)
    name = os.path.join(outpath, '{}-processed.csv'.format(title))
    print('Exporting as csv.')
    cleaned.to_csv(name, index=False)
    print('Downloaded: {}'.format(name))
    
# Functions that transform each unique dataset
def transform_stops(df, cols, **kwargs):
    """
    Stops-specific cleaning function.

        Parameters:
            df: Stops data as a Pandas DataFrame object.

        Returns:
            Cleaned stops data.
    """
    
    df = clean_divisions(df)
    df = add_year(df)
    df = df.loc[(df['Year'] != 1900)]
    df['Stop Date'] = pd.to_datetime(df['Stop Date'])
    df['Reporting District'] = impute_districts(df['Reporting District'])
    df['Officer 1 Serial Number'] = df['Officer 1 Serial Number'].fillna(0).astype(int)
    df = get_stop_div(df, get_gis())
    df['PredPol Deployed'] = df.apply(lambda x: get_predpol(x['Year'], x['Stop Division']), axis=1)
    df['LASER Deployed'] = df.apply(lambda x: get_LASER(x['Year'], x['Stop Division']), axis=1)
    return limit_cols(df.dropna(subset=['Stop Division','Stop Date', 'Reporting District', 'Post Stop Activity Indicator']), cols)

def transform_crimes(df, cols):
    """
    Crimes-specific cleaning function.

        Parameters:
            df: Crimes data as a Pandas DataFrame object.

        Returns:
            Cleaned crimes data.
    """
    
    df = add_year(df, date='Date Rptd')
    df['Arrested'] = df['Status Desc'].apply(arrest)
    df['Crime Type'] = df['Crm Cd Desc'].apply(classify_type)
    df['Crime Charge'] = df['Crm Cd Desc'].apply(classify_charge)
    df['PredPol Deployed'] = df.apply(lambda x: get_predpol(x['Year'], x['AREA NAME']), axis=1)
    df['LASER Deployed'] = df.apply(lambda x: get_LASER(x['Year'], x['AREA NAME']), axis=1)
    df.rename(columns={'AREA NAME': 'Area Name'}, inplace=True)
    return limit_cols(df, cols)

def transform_arrests(df, cols):
    """
    Arrests-specific cleaning function.

        Parameters:
            df: Arrests data as a Pandas DataFrame object.

        Returns:
            Cleaned arrests data.
    """
    
    df['Arrest Date'] = pd.to_datetime(df['Arrest Date'])
    df = add_year(df, date='Arrest Date')
    df['Descent Code'] = df['Descent Code'].map(RACES)
    df['Charge Group Description'] = df['Charge Group Description'].apply(classify_arrest)
    df['Arrest Type Code'] = df['Arrest Type Code'].map(ARREST_CHARGES)
    df['PredPol Deployed'] = df.apply(lambda x: get_predpol(x['Year'], x['Area Name']), axis=1)
    df['LASER Deployed'] = df.apply(lambda x: get_LASER(x['Year'], x['Area Name']), axis=1)
    df['Total'] = pd.Series([1] * df.shape[0])
    return limit_cols(df, cols)

# Helper methods
def limit_cols(df, cols):
    """
    Retains specified columns of a DataFrame.

        Parameters:
            df: Pandas DataFrame object.

        Returns:
            DataFrame with relevant columns only.
    """
    
    return df[cols]

def add_year(df, date = 'Stop Date'):
    """
    Appends a year column to a DataFrame according to a DateTime column.

        Parameters:
            df: Pandas DataFrame object.
            date: Name of DateTime column to extract year from.

        Returns:
            DataFrame with 'Year' column.
    """
    
    df['Year'] = pd.to_datetime(df[date]).dt.year
    return df

def clean_divisions(df, make_dict = True, divs = ['Officer 1 Division Number', 'Officer 2 Division Number'], desc = ['Division Description 1', 'Division Description 2']):
    """
    Cleans and imputes Officer Division columns in Stops data.

        Parameters:
            df: Stops data as a Pandas DataFrame object.
            make_dict: Boolean indicating whether a dictionary of division number-description should be made.
            divs: List of column names for division numbers.
            desc: List of column names for division descriptions.

        Returns:
            DataFrame.
    """
    
    for j in desc:    
        if j == 'Division Description 1':
            df = df.dropna(subset = [j])
        df = df[~(df[j] =='**UNUSED PIU CODE**')]
    for i in divs:
        ser = df[i]
        ser = ser.astype(str)
        ser = ser.replace('0','00')
        ser = ser.str.replace('.0','', regex = False)
        ser = ser.str.lstrip('0')
        ser = ser.replace('', '0')
        ser = pd.to_numeric(df[i], errors = 'ignore')
        df[i] = ser
    if make_dict:
        df[['Officer 1 Division Number','Division Description 1']].drop_duplicates().sort_values('Officer 1 Division Number')
    return df

def is_int(x):
    """
    Checks if the object is an Integer.

        Parameters:
            x: String or Integer.

        Returns:
            True if x is an Integer, else returns False.
    """
    
    try:
        x = int(x)
        return True
    except:
        return False
    
def rand_prob(x, start_09):
    """
    Imputes a reporting district from a probability distribution that starts with '09'.

        Parameters:
            x: Reporting district.
            start_09: Probability distribution of reporting districts starting with '09'.

        Returns:
            Integer or null.
    """
    
    try:
        return int(x)
    except:
        if str(x).startswith('9'):
            return 9999
        elif str(x).startswith('09'):
            return np.random.choice(start_09.index, p=start_09.values)
        return np.nan
    
def impute_districts(col):
    """
    Imputes the reporting district column.

        Parameters:
            col: Name of reporting district column.

        Returns:
            Cleaned column.
    """
    
    clean = col.loc[col.apply(is_int)]
    start_09 = clean.loc[clean.astype(str).str.startswith('09')].value_counts(normalize=True)
    return col.apply(rand_prob, start_09=start_09)

def get_gis():
    """
    Gets GIS file for reporting districts and the divisions they belong in.

        Parameters:

        Returns:
            Spatially-enabled DataFrame.
    """
    
    df = read_gis()
    df = df[['REPDIST','APREC']].drop_duplicates()
    return df

def get_stop_div(df, gis):
    """
    Appends a 'Stop Division' column based on the 'Reporting District' column.

        Parameters:
            df: Stops data as a Pandas DataFrame object.
            gis: GIS data with Reporting District and Division.

        Returns:
            Stops data with 'Stop Division' column.
    """
    
    df['Stop Division'] = df[['Reporting District']].merge(gis, left_on='Reporting District', right_on='REPDIST')['APREC'].fillna('UNK')
    df['Stop Division'] = df['Stop Division'].replace(DIV_MAP)
    return df

def classify_charge(x):
    """
    Classifies a crime by its charge.

        Parameters:
            x: Crime description as a String.

        Returns:
            Crime charge as a String.
    """
    
    lowered = x.lower()
    if any(substring in lowered for substring in CRIME_CHARGES['Petty']):
        return 'Infraction'
    elif any(substring in lowered for substring in CRIME_CHARGES['Misdemeanor']):
        return 'Misdemeanor'
    elif any(substring in lowered for substring in CRIME_CHARGES['Felony']):
        return 'Felony'
    elif any(substring in lowered for substring in CRIME_CHARGES['Dependent']):
        return 'Dependent'
    else:
        return 'Others'
    
def classify_type(x):
    """
    Classifies a crime by its type.

        Parameters:
            x: Crime description as a String.

        Returns:
            Crime type as a String.
    """
    
    lowered = x.lower()
    if any(substring in lowered for substring in CRIME_TYPES['Inchoate']):
        return 'Inchoate'
    elif any(substring in lowered for substring in CRIME_TYPES['Property']):
        return 'Property'
    elif any(substring in lowered for substring in CRIME_TYPES['Personal']):
        return 'Personal'
    elif any(substring in lowered for substring in CRIME_TYPES['Statutory']):
        return 'Statutory'
    return 'Financial/Other'

def classify_arrest(x):
    """
    Classifies an arrest by its charge.

        Parameters:
            x: Arrest description as a String.

        Returns:
            Arrest charge as a String.
    """
    
    try:
        if any(substring in x for substring in ARREST_TYPES['Inchoate']):
            return 'Inchoate'
        elif any(substring in x for substring in ARREST_TYPES['Property']):
            return 'Property'
        elif any(substring in x for substring in ARREST_TYPES['Personal']):
            return 'Personal'
        elif any(substring in x for substring in ARREST_TYPES['Statutory']):
            return 'Statutory'
        return 'Financial/Other'
    except TypeError:
        return 'Financial/Other'

def arrest(x):
    """
    Checks if a crime resulted in an arrest.

        Parameters:
            x: Crime description as a String.

        Returns:
            1 if arrest is in description else 0.
    """
    
    if 'arrest' in x.lower():
        return 1
    return 0

def get_predpol(year, area):
    """
    Classifies an observation as treatment or control according to division and year.

        Parameters:
            year: Year the instance was observed.
            area: Division where the isntance occurred.

        Returns:
            'PredPol' if it belongs in the treatment else 'No PredPol'.
    """
    
    if year < 2013:
        return 'No PredPol'
    elif year >= 2015:
        return 'PredPol'
    else:
        if area in ['N Hollywood', 'Southwest', 'Foothill','NORTH HOLLYWOOD', 'SOUTH WEST', 'FOOTHILL']:
            return 'PredPol'
        else:
            return 'No PredPol'
    
def get_LASER(year, area):
    """
    Classifies an observation as treatment or control according to division and year.

        Parameters:
            year: Year the instance was observed.
            area: Division where the isntance occurred.

        Returns:
            'PredPol' if it belongs in the treatment else 'No PredPol'.
    """
    yes = 'LASER'
    no = 'No LASER'
    if year < 2011:
        return no
    elif (year >= 2011) and (year < 2015):
        if area in ['NEWTON', 'Newton']:
            return yes
        else:
            return no
    elif year == 2015:
        if area in ['NEWTON', 'Newton','77th Street', 'SEVENTY-SEVENTH', 'SOUTH EAST', 'SOUTH WEST', 'Southwest', 'Southeast']:
            return yes
        else:
            return no      
    elif year == 2016:
        if area in ['NEWTON', 'Newton','77th Street', 'SEVENTY-SEVENTH', 'SOUTH EAST', 'SOUTH WEST', 'Southwest', 'Southeast', 'RAMPART', 'Rampart', 'NORTH EAST', 'HARBOR', 'Northeast', 'Harbor']:
            return yes
        else:
            return no       
    elif year == 2017:
        if area in ['NEWTON', 'Newton','77th Street', 'SEVENTY-SEVENTH', 'SOUTH EAST', 'SOUTH WEST', 'Southwest', 'Southeast', 'RAMPART', 'Rampart', 'NORTH EAST', 'HARBOR', 'Northeast', 'Harbor', 'FOOTHILL', 'HOLLYWOOD', 'MISSION', 'OLYMPIC', 'Olympic', 'Foothill', 'Mission', 'Hollywood']:
            return yes
        else:
            return no       
    elif year == 2018:
        if area in ['NEWTON', 'Newton','77th Street', 'SEVENTY-SEVENTH', 'SOUTH EAST', 'SOUTH WEST', 'Southwest', 'Southeast', 'RAMPART', 'Rampart', 'NORTH EAST', 'HARBOR', 'Northeast', 'Harbor', 'FOOTHILL', 'HOLLYWOOD', 'MISSION', 'OLYMPIC', 'Olympic', 'Foothill', 'Mission', 'Hollywood', 'WEST LA', 'PACIFIC', 'WILSHIRE', 'CENTRAL''West LA', 'Pacific', 'Wilshire', 'Central']:
            return yes
        else:
            return no          
    else:
        return no   
