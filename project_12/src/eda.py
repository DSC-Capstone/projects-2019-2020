# Import libraries/modules
import sys
import json
import shutil
import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from geospatial import *

# Global constants

# Main driver functions
def generate_viz(rawpaths, inpaths, outpaths, **kwargs):
    """
    Creates visualizations for each dataset.

        Parameters:
            rawpaths: List of paths to raw datasets.
            inpaths: List of paths to cleaned datasets.
            outpaths: List of paths for visualizations for each dataset.

        Returns:
    """
    
    for rawpath, inpath, outpath in zip(rawpaths, inpaths, outpaths):
        if not os.path.exists(outpath):
            os.mkdir(outpath)
            
        df = pd.read_csv(inpath)
        describe_null(outpath, rawpath, inpath)
        if 'stops' in rawpath:
            plot_graph(group_df(df, ['PredPol Deployed','Year'], 'size'), outpath, 'bar', 'Number of Stops by Year', 'Year', 'Number of Stops')
            plot_graph(group_df(df, ['PredPol Deployed','Stop Division'], 'size', normalized=True), outpath, 'barh', 'Proportion of Stops per Division 2010-2019', 'Proportion', 'Stop Division')
            plot_graph(group_df(df, ['Year','Stop Division'], 'size', 'PredPol Deployed', True, normalized=True), outpath, 'heat', 'Proportion of Stops per Division in PredPol Divisions', 'Year', 'Stop Division')
            plot_graph(group_df(df, ['Year','Stop Division'], 'size', 'PredPol Deployed', False, normalized=True), outpath, 'heat', 'Proportion of Stops per Division in Non-PredPol Divisions', 'Year', 'Stop Division')
            plot_graph(group_df(df, None, 'value', 'PredPol Deployed', True, normalized=True, valuecol='Descent Description'), outpath, 'pie', 'Racial Distribution of Stops in PredPol Divisions', None, None)
            plot_graph(group_df(df, None, 'value', 'PredPol Deployed', False, normalized=True, valuecol='Descent Description'), outpath, 'pie', 'Racial Distribution of Stops in Non-PredPol Divisions', None, None)
            plot_graph(group_df(df, 'PredPol Deployed', 'value', valuecol='Post Stop Activity Indicator'), outpath, 'bar', 'Distribution of Stops with Further Actions (2010-2019)', 'Post Stop Activity Indicator', 'Proportion')
        elif 'crime' in rawpath:
            plot_graph(group_df(df, ['PredPol Deployed','Year'], 'size'), outpath, 'bar', 'Number of Crimes by Year', 'Year', 'Number of Crimes')
            plot_graph(group_df(df, ['Year','Area Name'], 'size'), outpath, 'heat', 'Number of crimes per Division (2010-2019)', 'Year', 'Stop Division')
            plot_graph(group_df(df, ['PredPol Deployed','Year'], 'mean', valuecol='Arrested'), outpath, 'bar', 'Proportion of Crimes Resulting in Arrests (2010-2019)', 'Year', 'Proportion')
            plot_graph(group_df(df, ['Year','Area Name'], 'mean', valuecol='Arrested'), outpath, 'heat', 'Proportion of Crimes Resulting in Arrests per Division', 'Year', 'Stop Division')
            plot_graph(group_df(df, 'PredPol Deployed', 'value', valuecol='Crime Charge'), outpath, 'barh', 'Distribution of Crime Charge (2010-2019)', 'Proportion', 'Year')
            plot_graph(group_df(df, 'PredPol Deployed', 'value', valuecol='Crime Type'), outpath, 'barh', 'Distribution of Crime Type (2010-2019)', 'Proportion', 'Year')
        elif 'arrests' in rawpath:
            census = get_census(read_gis())
            plot_graph(pivot_df(df, ['Year'], 'Descent Code', 'Total', sum, census), outpath, 'line', 'Arrest Rates by Race', 'Year', 'Rate')
            plot_graph(pivot_df(df, ['Year'], 'Descent Code', 'Total', sum, census), outpath, 'line', 'Arrest Rates by Race', 'Year', 'Rate')
            plot_graph(group_df_census(df, census, 'Arrest Type Code', 'Total Arrests by Type'), outpath, 'barh', 'Arrest Rates by Crime Type', 'Rate', 'Arrest Type')
            plot_graph(group_df_census(df, census, 'Charge Group Description', 'Total Arrests by Charge Group Description'), outpath, 'barh', 'Arrest Rates by Charge', 'Rate', 'Charge')
            plot_graph(pivot_df_census(df, census, 'Descent Code'), outpath, 'barh', 'Arrest Rates by Race in PredPol vs non-PredPol Areas', 'Rate', 'Race')
            plot_graph(pivot_df_census(df, census, 'Arrest Type Code'), outpath, 'barh', 'Arrest Rates by Crime Type in PredPol vs non-PredPol Areas', 'Rate', 'Type')
            plot_graph(pivot_df_census(df, census, 'Charge Group Description'), outpath, 'barh', 'Arrest Rates by Charge in PredPol vs non-PredPol Areas', 'Rate', 'Charge')

# Helper methods
def describe_null(outpath, rawpath, cleanpath, **kwargs):
    """
    Generates two DataFrames indicating the proportion of null values of each column in the raw and cleaned datasets.

        Parameters:
            outpath: Path to store DataFrames.
            rawpath: Path of raw dataset.
            cleanpath: Path of clean dataset.

        Returns:
    """
    
    try:
        raw_data = pd.read_csv(rawpath).drop(columns=['Unnamed: 0'])
    except KeyError:
        raw_data = pd.read_csv(rawpath)
    clean_data = pd.read_csv(cleanpath)
    print('Generating null proportions.')
    raw_data.isna().mean().round(5).to_frame().reset_index().rename(columns={0:'Proportion of Null Values', 'index':'Column Name'}).to_csv(os.path.join(outpath, 'nulls_arrests_raw.csv'), index=False)
    clean_data.isna().mean().round(5).to_frame().reset_index().rename(columns={0:'Proportion of Null Values', 'index':'Column Name'}).to_csv(os.path.join(outpath, 'nulls_arrests_clean.csv'), index=False)
    print('Complete')

def group_df(df, group, how, ppcol=None, ppbool=None, normalized=False, valuecol=None):
    """
    Performs groupby aggregation on a DataFrame before plotting.

        Parameters:
            df: DataFrame Object.
            group: Column to groupby on.
            how: Aggregation method.
            ppcol: Column inidicating treatment/control group.
            ppbool: Boolean indicating whether to seggregate by treatment and control groups.
            normalized: Boolean indicating whether or not to normalize value counts.
            valuecol: Column to get value counts or distribution.

        Returns:
            DataFrame that has been grouped and aggregated.
    """
    
    if ppcol is not None:
        if ppbool is True:
            df = df.loc[(df.Year != 2020)&(df[ppcol]=='PredPol')&(df.Year>=2013)]
        else:
            df = df.loc[(df.Year != 2020)&(df[ppcol]=='No PredPol')&(df.Year>=2013)]
    else:
        df = df.loc[df.Year!=2020]
    if how == 'size':
        result =  df.groupby(group).size().unstack().T
    elif how == 'value' and group is not None:
        result = df.groupby(group)[valuecol].value_counts(normalize=True).unstack().T
    elif how == 'value' and group is None:
        result = df[valuecol].value_counts(normalize=True)
    elif how == 'mean':
        result = df.groupby(group)[valuecol].mean().unstack().T
    if normalized:
        return result/result.sum()
    return result

def group_df_census(df, census, group, col):
    """
    Performs groupby aggregation that requires census information to compute rates.

        Parameters:
            df: DataFrame object.
            census: Census DataFrame.
            group: Column to group on.
            col: Column to return.

        Returns:
            Pandas Series of rates wrt Census total.
    """
    
    types = pd.DataFrame(df.groupby(group).apply(lambda x: len(x)), columns=[col])
    types[col] = types[col].apply(lambda x: x / census['Total'])
    return types.sort_values(by=[col], ascending=True)[col]

def pivot_df(df, index, columns, values, aggfunc, census=None):
    """
    Pivots a DataFrame with the option to compute rates of different races using the census data.

        Parameters:
            df: DataFrame object.
            index: Column to use as index.
            columns: Column to use as columns.
            values: Column to use to compute values.
            aggfunc: Method to compute values.
            census: Census data (optional).

        Returns:
            Transformed DataFrame.
    """
    
    if census is not None:
        rates = df.loc[df.Year!=2020].pivot_table(index=index, columns=columns, values=values, aggfunc=aggfunc)
        for col in rates:
            rates[col] /= census[col]
        return rates
    return df.loc[df.Year!=2020].pivot_table(index=index, columns=columns, values=values, aggfunc=aggfunc)

def pivot_df_census(df, census, col):
    """
    Pivots a DataFrame and computes rates using total population.

        Parameters:
            df: DataFrame object.
            census: Census data (optional).
            col: Column to use as index.

        Returns:
            Transformed DataFrame.
    """
    
    def arrest_rates():
        return lambda x: sum(x) / census['Total']

    return pivot_df(df, values='Total', index=[col],
                    columns=['PredPol Deployed'], aggfunc=arrest_rates())

def plot_graph(df, outpath, how, title, xlabel, ylabel):
    """
    Plots the specified graph with the given DataFrame.

        Parameters:
            df: DataFrame object.
            outpath: Path of output.
            how: Type of graph to plot.
            title: Title of plot.
            xlabel: Label of x-axis.
            ylabel: Label of y-axis.

        Returns:
    """
    
    print('Plotting {}'.format(title))
    fig = plt.figure(figsize=(10, 6))
    ax = fig.add_subplot(1,1,1)
    if how == 'bar' or how == 'barh':
        df.plot(kind=how, ax=ax)
    elif how == 'line':
        df.plot(ax=ax)
    elif how == 'heat':
        sns.heatmap(df, annot=False, xticklabels=True, yticklabels=True, ax=ax)
    elif how == 'pie':
        patches, texts = plt.pie(df)
        labels = ['{0} - {1:1.2f} %'.format(i,j) for i,j in zip(df.index, df)]
        patches, labels, dummy =  zip(*sorted(zip(patches, labels, df), key=lambda x: x[2], reverse=True))
        plt.legend(patches, labels, loc='best', fontsize=8)
        ax.axis('equal')
    plt.title(title, fontsize=25)
    if xlabel is not None:
        plt.xlabel(xlabel)
        plt.ylabel(ylabel)
    plt.savefig(os.path.join(outpath, '{}.png'.format(title)), bbox_inches='tight')
    print('Complete.')
