
# imports
import math
import numpy as np
import pandas as pd
from tqdm import tqdm
from scipy.sparse import lil_matrix

import os

import sys
from pysclump import PathSim
import matplotlib.pylab as plt

# helper functions

# ---------------------------------------------------------------------
# A_matrix_func (WORKING)
# ---------------------------------------------------------------------    

def data_to_A_matrix(df):
    
    # Helper Function 
    def idx_dictionary(iterable):
        dictionary = {}
        idx = 0
        for element in set(iterable): 
            dictionary[element] = idx
            idx += 1 
        return dictionary
    
    # copy the input
    df = df.copy()
    # prepare our dataframe
    data = df[['Name', 'URL', 'Phone', 'Vertical', 'Yelp ID']].reset_index()
    
    # add a column that is the correct type of vertical instances LIST instead of STR
    unflattened = []
    for x in data.Vertical:
        split = x.split(', ')
        unflattened.append(split)
    
    data['unflattened'] = unflattened
    
    restaurants = data['Yelp ID']

    # Find out which restaurants share a vertical instance 
    update_tuples = []
    # For each restaurant
    for restaurant in restaurants:
        # Find the row corresponding to that restaurant 
        query_value = restaurant
        # Get the vertical associated with the restaurant 
        vertical_val = data.loc[data['Yelp ID'] == query_value]['Vertical'].values[0]
        vertical_idx = data.loc[data['Yelp ID'] == query_value]['Vertical'].index[0]
        
        # Divide the original string into a list with n elements
        cleaned_vert = vertical_val.split(', ')

        # Record indicies of restaurants with atleast one vertical similarity 
        for idx, lst in enumerate(unflattened):
            for element in cleaned_vert:
                if element in lst:
                    update_tuples.append((vertical_idx, idx))
                else:
                    continue

        
    final_tuples = set(update_tuples)
    return final_tuples


def A_matrix_func(df, update_tuples):
    """
    This function helps create the inital A matrix given its parameters.
    
    :param: 
    :param: 
    
    :return: matrix: The calculated A matrix (Restaurants x Restaurants)
    """
    i = df.shape[0]
    j = df.shape[0] 
    matrix = lil_matrix((i, j), dtype=np.int8)
    print(matrix.shape)

    for tup in tqdm(update_tuples):
        matrix[tup] = 1
    return matrix


# ---------------------------------------------------------------------
# P_matrix_func (WORKING)
# ---------------------------------------------------------------------    

def data_to_P_matrix(df):
    
    data = df['polarity']
    delta = 0.04
    all_tuples = []
    
    for restaurant, element in enumerate(data):
        upper_threshold = element + delta
        lower_threshold = element - delta
        lst_idx = np.where((data > lower_threshold) & (data < upper_threshold))[0]
        
        
        for match in lst_idx:
            all_tuples.append((restaurant, match))
    return all_tuples

def P_matrix_func(df, update_tuples):
    """
    This function helps create the S matrix given its parameters.
    
    :param: 
    :param: 
    
    :return: matrix: The calculated S matrix (Restaurants x Restaurants)
    """
    i = df.shape[0]
    j = df.shape[0] 
    matrix = lil_matrix((i, j), dtype=np.int8)
    print(matrix.shape)

    for tup in tqdm(update_tuples):
        matrix[tup] = 1
    return matrix

# ---------------------------------------------------------------------
# P_matrix_func (WORKING)
# ---------------------------------------------------------------------    

def data_to_S_matrix(df):
    
    data = df['subjectivity']
    delta = 0.03
    all_tuples = []
    
    for restaurant, element in enumerate(data):
        upper_threshold = element + delta
        lower_threshold = element - delta
        lst_idx = np.where((data > lower_threshold) & (data < upper_threshold))[0]
        
        
        for match in lst_idx:
            all_tuples.append((restaurant, match))
    return all_tuples

def S_matrix_func(df, update_tuples):
    """
    This function helps create the S matrix given its parameters.
    
    :param: 
    :param: 
    
    :return: matrix: The calculated S matrix (Restaurants x Restaurants)
    """
    i = df.shape[0]
    j = df.shape[0] 
    matrix = lil_matrix((i, j), dtype=np.int8)
    print(matrix.shape)

    for tup in tqdm(update_tuples):
        matrix[tup] = 1
    return matrix

# ---------------------------------------------------------------------
# D_matrix_func (WORKING)
# --------------------------------------------------------------------- 


def distance_from_coordinates(origin, destination):
    """
    Calculate the Haversine distance.

    Parameters
    ----------
    origin : tuple of float (lat, long)
    destination : tuple of float (lat, long)

    Returns
    -------
    distance_in_mi : float

    Examples
    --------
    >>> origin = (48.1372, 11.5756)  # Munich
    >>> destination = (52.5186, 13.4083)  # Berlin
    >>> round(distance(origin, destination), 1)
    504.2
    """
    lat1, lon1 = origin
    lat2, lon2 = destination
    radius = 6371  # km

    dlat = math.radians(lat2 - lat1)
    dlon = math.radians(lon2 - lon1)
    a = (math.sin(dlat / 2) * math.sin(dlat / 2) +
         math.cos(math.radians(lat1)) * math.cos(math.radians(lat2)) *
         math.sin(dlon / 2) * math.sin(dlon / 2))
    c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))
    km = radius * c
    
    # 1 Kilometre = 0.621371 Mile
    ratio = 0.621371

    # Converting km to mi.
    mi = km * ratio


    return mi

def data_to_D_matrix(df):
    coordinate_tuples = list(zip(df['Latitude'],df['Longitude']))
    threshold_distance = 3.5 # Miles

    update_tuples = []
    
    for origin in range(len(df)):
        for idx, destination in enumerate(coordinate_tuples):
        # Calculate distance between origin and destination
            distance = distance_from_coordinates(coordinate_tuples[origin], destination)
            if distance <= threshold_distance:
                update_tuples.append((origin, idx))
                
                
    return update_tuples  

def D_matrix_func(df, update_tuples):
    """
    This function helps create the D matrix given its parameters.
    
    :param: 
    :param: 
    
    :return: matrix: The calculated D matrix (Restaurants x Restaurants)
    """
    i = df.shape[0]
    j = df.shape[0] 
    matrix = lil_matrix((i, j), dtype=np.int8)

    for tup in tqdm(update_tuples):
        matrix[tup] = 1
    return matrix

# ---------------------------------------------------------------------
# R_matrix_func (WORKING)
# --------------------------------------------------------------------- 


def data_to_R_matrix(df):
    data = df['Review Count']
    delta = 25
    update_tuples = []
    
    for restaurant, element in enumerate(data):
        upper_threshold = element + delta
        lower_threshold = element - delta
        lst_idx = np.where((data > lower_threshold) & (data < upper_threshold))[0]
         
        for match in lst_idx:
            update_tuples.append((restaurant, match))
            
    return update_tuples

def R_matrix_func(df, update_tuples):
    """
    This function helps create the R matrix given its parameters.
    
    :param: 
    :param: 
    
    :return: matrix: The calculated R matrix (Restaurants x Restaurants)
    """
    i = df.shape[0]
    j = df.shape[0] 
    matrix = lil_matrix((i, j), dtype=np.int8)

    for tup in tqdm(update_tuples):
        matrix[tup] = 1
    return matrix

# ---------------------------------------------------------------------
# W_matrix_func (WORKING)
# ---------------------------------------------------------------------    

def data_to_W_matrix(df):
    
    def common(lst1, lst2): 
        return len(list(set(lst1) & set(lst2)))

    word_tuples = list(zip(df['Word1'],df['Word2'],df['Word3'],df['Word4'], df['Word5']))
    update_tuples = []
    
    for idx, restaurant in enumerate(word_tuples):
        for idx_c, compare in enumerate(word_tuples):
            num_common = common(restaurant, compare)
            #print(num_common)
            if num_common >= 2:
                update_tuples.append((idx, idx_c))
    
    return update_tuples

def W_matrix_func(df, update_tuples):
    """
    This function helps create the W matrix given its parameters.
    
    :param: 
    :param: 
    
    :return: matrix: The calculated W matrix (Restaurants x Restaurants)
    """
    i = df.shape[0]
    j = df.shape[0] 
    matrix = lil_matrix((i, j), dtype=np.int8)

    for tup in tqdm(update_tuples):
        matrix[tup] = 1
    return matrix

# ---------------------------------------------------------------------
# ---------------------------------------------------------------------  

def get_recommendations(ps, df, input_restaurant, metapath, N, top_n):
    #get_recommendations(ps, df, input_restaurant, metapath, N, top_n)
    results = {}

    for restaurant in df['Yelp ID']:
        results[restaurant] = ps.pathsim(input_restaurant, restaurant, metapath= metapath)

    sorted_results = {k: v for k, v in sorted(results.items(), key=lambda item: item[1], reverse = True)}

    out = dict(list(sorted_results.items())[0: N])

    # Now display which restaurants were the most similar to the input restaurant by 
    # returning a dataframe 
    top_ten = list(sorted_results.keys())[1:top_n+1] # TODO - make sure input is not in here
    recommendations_df = df[['Name', 'URL', 'Rating', 'Review Count']][df['Yelp ID'].isin(top_ten)]

    return recommendations_df

# ---------------------------------------------------------------------
# Driver Functions
# ---------------------------------------------------------------------

def driver(**cfg):

    # get Yelp ID of input restaurant
    input_restaurant = cfg['listing_id']
   
    # get metapath to use
    metapath = cfg['metapath']

    # number of recommendations to give
    N = cfg['N']
    top_n = cfg['top_n']

    # read in data 
    fp = cfg['indir'] # 'data/raw/raw.csv'
    df = pd.read_csv(fp)

    # Create Matrices
    A_tuples = data_to_A_matrix(df)
    A_matrix = A_matrix_func(df, A_tuples)

    P_matrix = data_to_P_matrix(df)
    P_matrix = P_matrix_func(df, P_matrix)

    S_matrix = data_to_S_matrix(df)
    S_matrix = S_matrix_func(df, S_matrix)

    D_matrix = data_to_D_matrix(df)
    D_matrix = D_matrix_func(df, D_matrix)

    R_matrix = data_to_R_matrix(df)
    R_matrix = R_matrix_func(df, R_matrix)

    W_matrix = data_to_W_matrix(df)
    W_matrix = W_matrix_func(df, W_matrix)

    # PathSim
    labels = (df[['Yelp ID']].values).tolist()
    flat_labels = [y for x in labels for y in x]

    type_lists = {
    'C': flat_labels
    }

    incidence_matrices = {
        'AC': A_matrix.toarray(),
        'RC': R_matrix.toarray(),
        'PC': P_matrix.toarray(),
        'SC': S_matrix.toarray(),
        'DC': D_matrix.toarray(),
        'RC': R_matrix.toarray(),
        'WC': W_matrix.toarray()
    }

    # Create PathSim instance
    ps = PathSim(type_lists, incidence_matrices)

    # get metapath to use
    metapath = cfg['metapath']
    # Generate recommendations
    recommendations_df = get_recommendations(ps, df, input_restaurant, metapath, N, top_n)
    
    # write recommendations to csv:
    outdir = cfg['outdir'] # 'data/out/'

    if outdir and not os.path.exists(outdir):
        os.makedirs(outdir)

    out_fp = os.path.join(outdir, 'recommendations.csv') # 'data/out/recommendations.csv'
    recommendations_df.to_csv(out_fp)

    return
