import pandas as pd
import os

def get_stops_url(location, all_cols, sc_cols, fl_cols, pa_cols):
    '''
    return a downloadable file of traffic
    stops for a given year before RIPA.
    
    :param: given year to fetch
    '''
    
    if location is "pa":
        url = 'https://stacks.stanford.edu/file/druid:yg821jf8611/yg821jf8611_pa_pittsburgh_2020_04_01.csv.zip'
        cols = all_cols + pa_cols
        table = pd.read_csv(url, nrows=50000).loc[:, cols].dropna()
    else:
        url = 'https://stacks.stanford.edu/file/druid:kx738rc7407/kx738rc7407_%s_statewide_2019_12_17.csv.zip' % (location)
        if location is "sc":  
            cols = all_cols + sc_cols
            table = pd.read_csv(url, nrows=50000).loc[:, cols]
            cols.remove("violation")
            table = table.dropna(subset=cols)
        if location is "fl":
            cols = all_cols + fl_cols
            table = pd.read_csv(url, nrows=50000).loc[:, cols].dropna()

    return table

def get_stops_local(inpath):
    '''
    return a table of traffic stops for a given 
    state, from a location on local disk.
    '''

    df = pd.read_csv(inpath)

    return df

def get_stops(location, all_cols, sc_cols, fl_cols, pa_cols, inpath='data/raw'):
    '''
    return a table of season statistics for a
    given team and year.
    '''

    if not inpath:
        return get_stops_url(location, all_cols, sc_cols, fl_cols, pa_cols)
    else:
        return get_stops_local(inpath)

def get_clean_stops(pth, df):

    if "sc" in pth:
        return clean_sc(pth, df)
    elif "fl" in pth:
        return clean_fl(pth, df)
    else:
        return clean_pa(pth, df)
        
    # state = pth.split('_')[0].upper()

    # df = clean_races(df)
    # df = convert_date(df)
    # df["county_name"] = df["county_name"].apply(clean_county, args=[state])

    # return df

# ---------------------------------------------------------------------
# New Stuff 
# ---------------------------------------------------------------------

def clean_sc(pth, df):

    sc_func_dict = {'subject_race'     : (lambda race: clean_subject_race(race, is_sc=True)), 
                    'officer_race'     : clean_officer_race,
                    'subject_sex'      : clean_sex,
                    'violation'        : sc_violation,
                    'arrest_made'      : clean_bool,
                    'citation_issued'  : clean_bool, 
                    'search_conducted' : clean_bool}

    for row, func in sc_func_dict.items():
        df[row] = df[row].apply(func)
    
    #df = clean_races(df)

    return df

def clean_fl(pth, df):

    fl_func_dict = {'subject_race'     : clean_subject_race,
                    'officer_race'     : clean_officer_race,
                    'subject_sex'      : clean_sex, 
                    'violation'        : fl_violation,
                    'arrest_made'      : clean_bool,
                    'citation_issued'  : clean_bool, 
                    'search_conducted' : clean_bool,
                    'officer_sex'      : clean_sex}

    for row, func in fl_func_dict.items():
        df[row] = df[row].apply(func)

    #df = clean_races(df)
    
    return df

def clean_pa(pth, df):

    pa_func_dict = {'subject_race'     : clean_subject_race, 
                    'officer_race'     : (lambda race: clean_officer_race(race,is_pa=True)),
                    'subject_sex'      : clean_sex, 
                    'violation'        : pa_violation,
                    'arrest_made'      : clean_bool,
                    'citation_issued'  : clean_bool, 
                    'search_conducted' : clean_bool,
                    'officer_sex'      : clean_sex,
                    'contraband_found' : clean_bool,
                    'lat'              : (lambda x: round(x,2)),
                    'lng'              : (lambda x: round(x,2))}

    for row, func in pa_func_dict.items():
        df[row] = df[row].apply(func)
    
    #df = clean_races(df)

    return df

# def subject_race_filter(race,is_sc=False):
def clean_subject_race(race, is_sc=False):
    if (race is 'asian/pacific islander') or (race is 'other' and is_sc):
        return 'asian'
    else:
        return race

def clean_officer_race(race, is_pa=False):
    if race is 'asian/pacific islander':
        return 'asian'
    elif race is 'other' and is_pits:
        return 'hispanic'
    else:
        return race

def clean_sex(sex):
    if sex is 'female':
        return 0 # female
    else:
        return 1 # male

def fl_violation(violation):
    driving_violations = ['DRIVING',
                          'DUI',
                          'FOLLOWING',
                          'IMPROPER',
                          'OTHER MOVING VIOLATIONS',
                          'SPEED',
                          'VIOLATIONS OF RIGHT OF WAY',
                          'MOVE OVER LAW']

    equiptment_violations = ['ATTACHING TAG NOT ASSIGNED',
                             'BUMPER HEIGHTS',
                             'DRIVING WITHOUT HEADLIGHTS',
                             'EXHAUST SYSTEM',
                             'FAULTY EQUIPMENT',
                             'LOADS ON VEHICLE',
                             'MAXIMUM WIDTH, HEIGHT AND LENGTH',
                             'MOTOR VEHICLE NOISE',
                             'WEIGHT VIOLATION',
                             'WINDOW TINT']

    # if pd.isnull(violation):
    #     return 'None'
                             
    for dv in driving_violations:
        if dv in violation:
            return 'Driving Violation'

    for ev in equiptment_violations:
        if ev in violation:
            return 'Equiptment Violation'

    return 'Other Violation'
    
def sc_violation(violation):
    driving_violations = ['speeding',
                          'driving under the influence',
                          'right of way',
                          'shifting lanes',
                          'reckless',
                          'disregarding sign',
                          'following',
                          'backing',
                          'passing',
                          'turning',
                          'wrong side of road']

    equiptment_violations = ['excess weight',
                             'equiptment']

    if pd.isnull(violation):
        return 'None'

    for dv in driving_violations:
        if dv in violation.lower():
            return 'Driving Violation'
    for ev in equiptment_violations:
        if ev in violation.lower():
            return 'Equiptment Violation'

    return 'Other Violation'

def pa_violation(violation):
    moving_violations = ['Obedience to Traffic-Control Devices',
                         'Traffic-Control Signals',
                         'Turning Movements and Required Signals',
                         'Careless Driving ',
                         'Speed Limits',
                         'Turning',
                         'Speed Limitations']

    equiptment_violations = ['Vehicle Equipment Standards',
                             'General Lighting Requirements',
                             'Windshield',
                             'Lighted Lamps',
                             'Registration Plate']

    # if pd.isnull(violation):
    #     return 'None'

    for mv in moving_violations:
        if mv in violation:
            return 'Moving Violation'

    for ev in equiptment_violations:
        if ev in violation:
            return 'Equiptment Violation'

    return 'Other Violation'

def clean_bool(bool_):
    if bool_:
        return 1
    else:
        return 0
# ---------------------------------------------------------------------
# New Stuff 
# ---------------------------------------------------------------------

def clean_races(df):

    race_map = {"white" : "White",
                "black" : "Black",
                "hispanic" : "Hispanic",
                "asian/pacific islander" : "Asian"}

    df["subject_race"] = df["subject_race"].map(race_map)
    df["officer_race"] = df["officer_race"].map(race_map)
    
    return df

# def clean_county(county, state):

#     county = str(county) + ", " + state
    
#     return county

# def convert_date(df):
    
#     df['date'] = pd.to_datetime(df['date'], format="%Y-%m-%d", errors='coerce')
    
#     return df

# def create_county_state(row):
#     county_state = row['COUNTY'] + ', '
#     if row['STATE'] == 'Florida':
#         county_state += 'FL'
#     elif row['STATE'] == 'South Carolina':
#         county_state += 'SC'
#     else:
#         county_state += 'WA'
#     return county_state


# def create_population_dataset(fname):

#     final_cols = ['County_State','White','Black','Asian','Hispanic']

#     national_pop = pd.read_csv(fname,encoding="ISO-8859-1")
#     states_pop = national_pop[national_pop['STATE'].isin(['Washington','Florida','South Carolina'])]
#     states_pop['County_State'] = states_pop.apply(create_county_state,axis=1)
#     col_rename_mapper = {'H7Z003':'White','H7Z004':'Black','H7Z006':'Asian'}
#     states_pop.rename(col_rename_mapper,axis=1,inplace=True)
#     states_pop['Hispanic'] = states_pop['H7Z010'] - states_pop['H7Z017']

#     pop_df = states_pop[final_cols]
#     return pop_df

# def pitsburg(state, columns, pit_columns, inpath):
    
#     url = 'https://stacks.stanford.edu/file/druid:yg821jf8611/yg821jf8611_pa_pittsburgh_2020_04_01.csv.zip'
    
#     pits = pd.read_csv(url, nrows=500).loc[:, pit_columns]
#     pits = pits.dropna()
#     pits = pits[(pits.subject_race.isin(['white','black','asian/pacific islander','hispanic']))&(pits.officer_race != 'unknown')].reset_index(drop=True)

#     def group_time(time):
#         hour = int(time.split(':')[0])
#         if hour >= 6 and hour <= 11:
#             return 'Morning'
#         elif hour >= 12 and hour <=4:
#             return 'Afternoon'
#         elif hour >= 5 and hour <=8:
#             return 'Evening'
#         else:
#             return 'Night'

#     def officer_race_rename(race):
#         if race == 'asian/pacific islander':
#             return 'asian'
#         elif race == 'other':
#             return 'hispanic'
#         else:
#             return race


#     def bool_col(bool_):
#         if bool_:
#             return 1 
#         else:
#             return 0

#     def violation_filtering(violation):
#         moving_violations = ['Obedience to Traffic-Control Devices','Traffic-Control Signals',
#                              'Turning Movements and Required Signals','Careless Driving ','Speed Limits',
#                             'Turning','Speed Limitations']
#         equiptment_violations = ['Vehicle Equipment Standards','General Lighting Requirements',
#                                  'Windshield','Lighted Lamps','Registration Plate']
#         for mv in moving_violations:
#             if mv in violation:
#                 return 'Moving Violation'
#         for mv in equiptment_violations:
#             if mv in violation:
#                 return 'Equiptment Violation'
#         else:
#             return 'Other Violation'

#     filter_dict = {'time':group_time,'lat':(lambda x: round(x,2)),'lng':(lambda x: round(x,2)),'subject_race':
#                    (lambda race: 'asian' if race == 'asian/pacific islander' else race),
#                   'officer_race': officer_race_rename, 'subject_sex':(lambda sex: 1 if 'male' else 0),
#                    'officer_sex': (lambda sex: 1 if 'male' else 0),'arrest_made':bool_col,
#                    'citation_issued':bool_col,'contraband_found':bool_col,'search_conducted':bool_col,
#                   'violation':violation_filtering}

#     for row, func in filter_dict.items():
#         pits[row] = pits[row].apply(func)
        
#     return pits

# ---------------------------------------------------------------------
# Driver Function(s)
# ---------------------------------------------------------------------
    
# def get_data(states, columns, outpath=None, inpath=None):
def get_data(locations, all_cols, sc_cols, fl_cols, pa_cols, outpath=None, inpath=None):
    '''
    downloads and saves traffic stops tables 
    at the specified output directory for the
    given year.
    
    :param: states: a list of states from which to collect data.
    :param: columns: list of columns to keep from ingested data.
    :param: outpath: the directory to which to save the data.
    '''

    print('Ingesting data...')
    if not os.path.exists(outpath):
        os.makedirs(outpath)
        
    for location in locations:

        if inpath:
            localpath = os.path.join(inpath, '%s_stops.csv' % (location))
        else:
            localpath = None

        table = get_stops(location, all_cols, sc_cols, fl_cols, pa_cols, localpath)

        file_name = '%s_stops.csv' % (location)
        table.to_csv(os.path.join(outpath, file_name))
            
    print('...done!')

    return

def clean_stops(df_iter=(), outpath=None, inpath=None):
    
    print('Cleaning data...')
    
    if outpath and not os.path.exists(outpath):
        os.makedirs(outpath)

    if not df_iter:
        df_iter = ((p, pd.read_csv(os.path.join(inpath, p))) for p in os.listdir(inpath))
    
    for pth, df in df_iter:
        cleaned = get_clean_stops(pth, df)
        if outpath:
            cleaned.to_csv(os.path.join(outpath, pth))
            
    print('...done!')
            
    return 