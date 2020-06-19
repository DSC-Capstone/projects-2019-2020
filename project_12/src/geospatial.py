import pandas as pd
from arcgis import *
import arcgis
from arcgis import GIS

# Global constants
CENSUS_MAP = {
    "H7Z001": "Total",
    "H7Z003": "White",
    "H7Z004": "Black or African American",
    "H7Z005": "American Indian and Alaska Native",
    "H7Z006": "Asian",
    "H7Z007": "Native Hawaiian and Other Pacific Islander",
    "H7Z008": "Other",
    "H7Z009": "Others",
    "H7Z010": "Hispanic or Latino"
}

# Main driver functions
def read_gis(item_id = '96c4fb36182f409a9b141f3bbaad6ab1', user = None, passw = None):
    """
    Extracts a spatially-enabled DataFrame from ArcGIS Online containg census and LAPD divisions data.

        Parameters:
            item_id: ID of FeatureLayer.
            user: ArcGIS username.
            passw: ArcGIS password.

        Returns:
            Spatially-enabled DataFrame.
    """
    
    print('Reading GIS data.')
    gis = GIS(username=user, password=passw)
    flayer = gis.content.get(item_id)
    df = pd.DataFrame.spatial.from_layer(flayer.layers[0])
    print('Complete.')
    return df

def pop_by_div(df, group = "PREC"):
    """
    Generates a DataFrame containing population in each LAPD division.

        Parameters:
            df: Census DataFrame.
            group: Division column.

        Returns:
            Transformed DataFrame.
    """
    
    pop = df.groupby([group]) ['H7Z001','H7Z002','H7Z003','H7Z004','H7Z005','H7Z006','H7Z007','H7Z008','H7Z009','H7Z010'].sum().sort_index().reset_index()#.sort_values(ascending = False)
    pop['white_pop'] = pop['H7Z003']/ pop['H7Z001']
    pop['minority_pop'] = pop.drop([group,'H7Z001','H7Z002','H7Z003' ], axis = 1).sum(axis =1)/ pop['H7Z001']
    return pop

def get_census(df):
    """
    Generates a DataFrame containing population in each LAPD division.

        Parameters:
            df: Census DataFrame.

        Returns:
            Transformed DataFrame.
    """
    print('Generating census data by division.')
    df = df.rename(columns=CENSUS_MAP)
    for col in df:
        if col.startswith('H7'):
            df.drop(col, axis=1, inplace=True)
    df['Other'] += df['Others']
    df = df[['Total', 'White', 'Black or African American',
           'American Indian and Alaska Native', 'Asian',
           'Native Hawaiian and Other Pacific Islander', 'Other',
           'Hispanic or Latino']].sum()
    print('Complete.')
    return df
