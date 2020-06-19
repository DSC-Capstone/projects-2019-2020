#!/usr/bin/env python

'''
FILE: viz.py

DESCRIPTION: This file creates the 5 visualizations for our project.
'''
import pandas as pd
import os
from collections import Counter
import matplotlib.pylab as plt
import gzip
import numpy as np
import warnings
warnings.filterwarnings("ignore") 


'''
FUNCTION: num_movies_per_genre(path)

INPUTS: path: path to folder containing each year's movies

OUTPUTS: dataframe: contains number of movies made per genre
'''
def num_movies_per_genre(path):
    year_genres = []
    most_pop_genres = ['Comedy', 'Drama', 'Western'] # top three most popular genres
    for file in os.listdir(path):
        if "ipynb" in file:
            continue
        yearly = []
        year = os.path.splitext(file)[0]
        year = int(year)
        filename = os.path.join( path, file)
        data = pd.read_csv(filename, header = None)
        num_movies = len(data)
        for genre in data[2]: # cleans the genre string
            cleaned = (genre.replace("'", '').replace("[", '').replace("]", '').replace("\\n", ''))
            cleaned = cleaned.split(', ')
            for elem in cleaned:
                if elem != '':
                    if elem.strip() in most_pop_genres:
                        yearly.append(elem.strip())
        yearly = Counter(yearly)
        for key in most_pop_genres: # if genre is empty, fills it with a 0
            if key not in yearly:
                yearly[key] = 0
        yearly = sorted(yearly.items())
        yearly.append(('placeholder', year))
        yearly.append(('num_movies', num_movies))
        counts = []
        for tup in yearly:
            counts.append(tup[1])
        year_genres.append(counts)
    df = pd.DataFrame(year_genres) # creates a dataframe of number of genres per year
    df.columns = ['Comedy', 'Drama', 'Western', 'year', 'num_movies']

    return df


'''
FUNCTION: plot_time_periods(df, fig_file_name, plot_title, most_pop_genres)
INPUTS: df: dataframe of number of movies per genre
        fig_file_name: outdir to save image
        plot_title: title of the graph
        most_pop_genres: list of most popular genres
OUTPUTS: Nothing: saves graph as image to outdir
'''
def plot_time_periods(df, fig_file_name, plot_title, most_pop_genres):
    bins = np.arange(1930, 2015, step = 5) # creates bins of every 5 years from 1930 to 2015
    df['time'] = pd.cut(df['year'], bins, include_lowest= True)
    grouped_years = df.groupby('time').sum() # groups movies in 5 year intervals
    grouped_years = grouped_years.reset_index()
    intervals = list(grouped_years['time'])
    start = [int(round(x.left)) for x in intervals]

    grouped_years['start'] = start
    
    for genre in most_pop_genres:
        grouped_years[genre] = grouped_years[genre]/grouped_years['num_movies'] # turns count of movies into proportions
    most_pop_genres.append('start')
    grouped_years = grouped_years[most_pop_genres]
    grouped_years = grouped_years.set_index('start')
    ax = grouped_years.plot.bar(figsize = (10, 10), title = plot_title) # plots movie percentages over time
    ax.set_xlabel('Start of Time Period')
    ax.set_ylabel('Percentage of All Movies')
    fig = ax.get_figure()
    fig.show()
    fig.savefig(fig_file_name)


'''
FUNCTION: oscars_genres(oscars_file, path)
INPUTS: oscars_file: csv for oscars nominations/winners
        path: path to folder containing each year's movies
OUTPUTS: df: dataframe of number of movies per genre
'''
def oscars_genres(oscars_file, path):
    genre_list = []
    most_pop = ['Drama', 'Comedy', 'Biography']
    oscars_file = pd.read_csv(oscars_file)
    
    for i, row in oscars_file.iterrows(): # loops through all oscar nominated movies and finds its genre
        yearly = []
        num_movies = 0
        year = row['Year']
        file = str(year)+'.csv'
        if year not in [1999, 2000] and year < 2008: # years without genre data
            filename = os.path.join(path, file)
            data = pd.read_csv(filename, header = None)
            movie = row['Movie']
            genre = data[data[0] == movie][2].values
            num_movies += 1
            if len(genre) == 0:
                cleaned == None
            else:
                genre = genre[0]
                cleaned = (genre.replace("'", '').replace("[", '').replace("]", '').replace("\\n", '')) # cleans genre string
                cleaned = str(cleaned).split(', ')
                cleaned = cleaned[0]
        else:
            cleaned = None
        if cleaned in most_pop:
            yearly.append(cleaned)
        yearly = Counter(yearly)
        for key in most_pop:
            if key not in yearly:
                yearly[key] = 0
                
        yearly = sorted(yearly.items())
        yearly.append(('placeholder', year))
        yearly.append(('num_movies', num_movies))
        counts = []
        for tup in yearly:
            counts.append(tup[1])
        genre_list.append(counts)
    df = pd.DataFrame(genre_list)
    df.columns = ['Biography', 'Comedy', 'Drama', 'year', 'num_movies']
        
    return df


'''
FUNCTION: get_race(df)

INPUTS: df: dataframe with ethnicity info

OUTPUTS: df_eth: dataframe with race changed to a group ethnicity
'''
def get_race(df):
    df['race'] = df['ethnicity'].apply(create_race) # create a column for races using 'create_race' helper function
    onehot = pd.get_dummies(df['race'])
    df = df.join(onehot)
    df_eth = df[['year','Asian', 'Black', 'Hispanic/Latino', 'White']]
    df_eth['Non_White'] = df_eth['Asian'] + df_eth['Black'] + df_eth['Hispanic/Latino']
    df_eth['Total'] = df_eth['Non_White'] + df_eth['White']
    return df_eth


'''
FUNCTION: create_time_periods(df)

INPUTS: ethnicities: list of strings

OUTPUTS: grouped_years: dict
'''
def create_time_periods(df):
    bins = np.arange(1930, 2015, step = 5) # creates bins of every 5 years
    df['time'] = pd.cut(df['year'], bins, include_lowest= True)
    grouped_years = df.groupby('time').sum() # sums up number of movies per 5 year period
    grouped_years = grouped_years.reset_index()
    intervals = list(grouped_years['time'])
    start = [int(round(x.left)) for x in intervals]

    grouped_years['start'] = start
    grouped_years = grouped_years[['start','Asian', 'Black', 'Hispanic/Latino', 'White', 'Non_White', 'Total']]
    for race in ['Asian', 'Black', 'Hispanic/Latino', 'White', 'Non_White']:
        grouped_years[race] = grouped_years[race]/grouped_years['Total'] # calculates race distribution over all actors in time period
    return grouped_years


'''
FUNCTION: plot_compare(df, cols, outdir)

INPUTS: df: dataframe
        cols: columns
        outdir: directory

OUTPUTS: nothing: saves image
'''
def plot_compare(df, cols, outdir):
    styles=['b', 'b--', 'y', 'y--']
    labels = ['Oscars Non White Nom', 'GG Non White Nom', 'Oscars Black Nom', 'GG Black Nom']
    ax = df.plot(x = "start", y = cols, style = styles, figsize = (10, 10),\
                 title = 'Oscars and Golden Globes Race Distribution over Time')
    ax.legend(labels = labels)
    ax.set_xlabel('Start of Time Period')
    ax.set_ylabel('Number of Actors')
    fig = ax.get_figure()
    fig.show()
    fig.savefig(outdir + 'race_dist_over_time.png')
    

'''
FUNCTION: create_decade(year)

INPUTS: year: int

OUTPUTS: dict
'''
def create_decade(year):
    # helper function to get the decade a particular year belongs to
    v = str(year)[2]
    return decade_dict[int(v)]


'''
FUNCTION: create_race(ethnicities)

INPUTS: ethnicities: list of strings

OUTPUTS: k: ethnicity that matched race
'''
def create_race(ethnicities):
    # create a dictionary that maps ethnicity to race
    race_dict = {'Black': ['AfricanAmerican', 'Ugandan', 'CubanAfricanCuban', 'AfricanTrinidadian', 'Nigerian'],
             'American Indian': ['Cherokee', 'Native'],
             'Asian': ['Indian', 'Chinese', 'Korean', 'Japanese', 'Taiwanese', 'Thai', 'Vietnamese'],
             'Hispanic/Latino': ['Mexican', 'Cuban', 'Venezuelan', 'Spanish', 'CubanAfricanCuban', \
                                 'Puerto', 'Rican', 'AfricanTrinidadian']
            }
    ethnicity_string = ''.join(str(elem) for elem in ethnicities)
    # map ethnicity to race
    for k in race_dict.keys():
        for e in race_dict[k]:
            if e in ethnicity_string:
                return k
    # return 'White' if ethnicity not found in non-white dict
    return 'White'


'''
FUNCTION: grab_race_counts(decade, indir)

INPUTS: decade: list of decades
        indir: path to data

OUTPUTS: all_race_counts: dict
'''
def grab_race_counts(decade, indir):
    # create empty dict for race counts
    all_race_counts = {'White': 0,
                       'Black': 0,
                       'American Indian': 0,
                       'Asian': 0,
                       'Hispanic/Latino': 0
                    }
    # for each file in directory, read each file into a DataFrame
    for year in os.listdir(indir):
        if year.endswith('.csv') and str(year)[2] == decade:
            sample = pd.read_csv(indir + "/" + year).dropna()
        else:
            continue
        # use helper function to count frequency of each race
        race_series = sample['Ethnicity'].apply(create_race).value_counts()
        for k in all_race_counts.keys():
            if k in list(race_series.index):
                all_race_counts[k] += race_series[k]
    return all_race_counts


'''
FUNCTION: make_barchart(outdir)

INPUTS: outdir: path to save image

OUTPUTS: nothing: writes image to file
'''
def make_barchart(outdir):
    #percent stacked bar chart
    plt.rcParams.update({'font.size': 10})
    # Data
    r = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    raw_data = {'whiteNoms': [28, 50, 49, 49, 49, 47, 46, 39, 44],
                'blackNoms': [0, 0, 0, 0, 1, 1, 4, 9, 6],
                'asianNoms': [0, 0, 0, 0, 0, 1, 0, 2, 0],
                'hispanicNoms': [0, 0, 1, 1, 0, 1, 0, 0, 0]
               }
    df = pd.DataFrame(raw_data)

    # From raw value to percentage
    totals = [i+j+k+l for i,j,k,l in zip(df['whiteNoms'], df['blackNoms'], df['asianNoms'], df['hispanicNoms'])]
    greenBars = [i / j * 100 for i,j in zip(df['whiteNoms'], totals)]
    orangeBars = [i / j * 100 for i,j in zip(df['blackNoms'], totals)]
    blueBars = [i / j * 100 for i,j in zip(df['asianNoms'], totals)]
    yellowBars = [i / j * 100 for i,j in zip(df['hispanicNoms'], totals)]

    # plot
    barWidth = 0.65
    names = ('1930s','1940s','1950s','1960s','1970s', '1980s', '1990s', '2000s', '2010s')

    # Create figure
    plt.figure(figsize=(10,5))
    # Create green Bars
    plt.bar(r, greenBars, color='#b5ffb9', edgecolor='white', width=barWidth, label = 'White')
    # Create orange Bars
    plt.bar(r, orangeBars, bottom=greenBars, color='#f9bc86', edgecolor='white', width=barWidth, label = 'Black')
    # Create blue Bars
    plt.bar(r, blueBars, bottom=[i+j for i,j in zip(greenBars, orangeBars)], color='#a3acff', edgecolor='white', \
            width=barWidth, label = 'Asian')
    # Create yellow Bars
    plt.bar(r, yellowBars, bottom=[i+j+k for i,j,k in zip(greenBars, orangeBars, blueBars)], color='#ffd1dc', \
            edgecolor='white', width=barWidth, label = 'Hispanic')

    # Custom x axis
    plt.xticks(r, names)
    plt.xlabel("Decade")
    plt.ylabel('Percentage of Actors(%)')
    plt.title('Distribution of Races of Actors Nominated for "Best Actor"')
    plt.legend(loc = 'lower left')
    plt.savefig(outdir + 'nominee_race_distribution.jpg')
    # Show graphic
    return


'''
FUNCTION: make_lineplot(indir, outdir)

INPUTS: indir: path to data
        outdir: path to save image to

OUTPUTS: none: sames image to file
'''
def make_lineplot(indir, outdir):
    x = [0, 1, 2, 3, 4, 5, 6, 7]
    all_race_counts = {'White': [],
                   'Black': [],
                   'Asian': [],
                   'Hispanic/Latino': [],
                   'American Indian': []
                   }
    
    raw_data = {'whiteNoms': [28, 50, 49, 49, 49, 47, 46, 39, 44],
                'blackNoms': [0, 0, 0, 0, 1, 1, 4, 9, 6],
                'asianNoms': [0, 0, 0, 0, 0, 1, 0, 2, 0],
                'hispanicNoms': [0, 0, 1, 1, 0, 1, 0, 0, 0]
               }
    df = pd.DataFrame(raw_data)

    # From raw value to percentage
    totals = [i+j+k+l for i,j,k,l in zip(df['whiteNoms'], df['blackNoms'], df['asianNoms'], df['hispanicNoms'])]
    greenBars = [i / j * 100 for i,j in zip(df['whiteNoms'], totals)]
    orangeBars = [i / j * 100 for i,j in zip(df['blackNoms'], totals)]
    blueBars = [i / j * 100 for i,j in zip(df['asianNoms'], totals)]
    yellowBars = [i / j * 100 for i,j in zip(df['hispanicNoms'], totals)]
    
    for d in ['3', '4', '5', '6', '7', '8', '9', '0']:
        all_actors = grab_race_counts(d, indir)
        for r in list(all_actors.keys()):
            all_race_counts[r].append(all_actors[r])

    actorTotals = [i+j+k+l+m for i,j,k,l,m in zip(all_race_counts['White'],
                                              all_race_counts['Black'],
                                              all_race_counts['Asian'],
                                              all_race_counts['Hispanic/Latino'],
                                              all_race_counts['American Indian']
                                             )]
    whiteActors = [i / j * 100 for i,j in zip(all_race_counts['White'], actorTotals)]
    blackActors = [i / j * 100 for i,j in zip(all_race_counts['Black'], actorTotals)]
    asianActors = [i / j * 100 for i,j in zip(all_race_counts['Asian'], actorTotals)]
    hispanicActors = [i / j * 100 for i,j in zip(all_race_counts['Hispanic/Latino'], actorTotals)]
    amIndianActors = [i / j * 100 for i,j in zip(all_race_counts['American Indian'], actorTotals)]
    
    # Create figure
    plt.figure(figsize=(10,10))

    # All Native American Actors
    plt.plot(x, amIndianActors, marker='o',  markerfacecolor='blue', color='lightblue', \
             label="American Indian Actors", linewidth = 4)

    # All White Actors
    plt.plot(x, whiteActors, marker='o', markerfacecolor='green', color='#b5ffb9', \
             label="White Actors", linewidth = 4)
    
    # White Actors Nominated
    plt.plot(x, greenBars[:-1], marker='o', markerfacecolor='green', color='#b5ffb9', \
             linestyle='dashed', label="White Nominees", linewidth = 4)

    # All Black Actors
    plt.plot(x, blackActors, marker='o', markerfacecolor='orange', color='#f9bc86', \
             label="Black Actors", linewidth = 4)
    
    # Black Actors Nominated
    plt.plot(x, orangeBars[:-1], marker='o', markerfacecolor='orange', color='#f9bc86', \
             linestyle='dashed', label="Black Nominees", linewidth = 4)

    # All Asian Actors
    plt.plot(x, asianActors, marker='o', markerfacecolor='purple', color='#a3acff', \
             label="Asian Actors", linewidth = 4)
    
    # Asian Actors Nominated
    plt.plot(x, blueBars[:-1], marker='o', markerfacecolor='purple', color='#a3acff', \
             linestyle='dashed', label="Asian Nominees", linewidth = 4)

    # All Hispanic Actors
    plt.plot(x, hispanicActors, marker='o',  markerfacecolor='red', color='#ffd1dc', 
             label="Hispanic Actors", linewidth = 4)
    
    # Hispanic Actors Nominated
    plt.plot(x, yellowBars[:-1], marker='o',  markerfacecolor='red', color='#ffd1dc', \
             linestyle='dashed', label="Hispanic Nominees", linewidth = 4)

    names = ('1930s','1940s','1950s','1960s','1970s', '1980s', '1990s', '2000s')
    plt.ylabel('Percentage of Actors')
    plt.xlabel('Decade')
    plt.xticks(x, names)
    plt.title('Percentange of All Actors versus Oscar Nominated Actors')
    plt.legend()
    plt.savefig(outdir + 'actorsRaceVSnomineesRace.jpg')
    
    return

    
'''
FUNCTION: create_plot_oscar_genre_dist_over_time(indir, outdir)

INPUTS: indir: path to data
        outdir: path to save image to

OUTPUTS: none: sames image to file
'''
def create_plot_oscar_genre_dist_over_time(indir, outdir):
    year_genres = num_movies_per_genre(indir)

    fig_file_name = "genre_dist_over_time.png"
    plot_title = 'Genre Distribution of All Movies over Time'
    most_pop_genres = ['Comedy', 'Drama', 'Western']
    plot_time_periods(year_genres, outdir + fig_file_name, plot_title, most_pop_genres)

    
'''
FUNCTION: create_plot_oscar_nominated_genre_dist_over_time(indir_oscars, indir_movie_data, outdir)

INPUTS: indir_oscars: path to data
        indir_movie_data: path to data
        outdir: path to save image to

OUTPUTS: none: sames image to file
'''
def create_plot_oscar_nominated_genre_dist_over_time(indir_oscars, indir_movie_data, outdir):
    genre_list = oscars_genres(indir_oscars, indir_movie_data)
    
    fig_file_name = "genre_dist_nominated_over_time.png"
    plot_title = 'Genre Distribution of Oscar Nominated Movies over Time'
    most_pop_genres = ['Comedy', 'Drama', 'Biography']
    plot_time_periods(genre_list, outdir + fig_file_name, plot_title, most_pop_genres)
    

'''
FUNCTION: create_comparison_oscars_gg(indir, outdir)

INPUTS: indir: path to data
        outdir: path to save image to

OUTPUTS: none: sames image to file
'''
def create_comparison_oscars_gg(indir, outdir):
    golden = pd.read_csv(indir[2])
    golden.head()
    
    golden_eth = get_race(golden)
    golden_eth['year'] = golden_eth['year'].str.replace("\[1\]", '')
    golden_eth['year'] = pd.to_numeric(golden_eth['year'])
   
    oscars = pd.read_csv(indir[1])
    oscars.columns = map(str.lower, oscars.columns)
    oscars_eth = get_race(oscars)

    oscars_grouped = create_time_periods(oscars_eth)
    golden_grouped = create_time_periods(golden_eth)
    combined = pd.merge(oscars_grouped, golden_grouped, on = 'start', suffixes = ('_osc', '_gold'))
    
    plot_compare(combined, ['Non_White_osc', 'Non_White_gold', 'Black_osc', 'Black_gold'], outdir)


'''
FUNCTION: make_difference_graph(outdir)

INPUTS: outdir: path to save image to

OUTPUTS: none: sames images to file
'''
def make_difference_graph(indir, outdir):
    all_race_counts = {'White': [],
                   'Black': [],
                   'Asian': [],
                   'Hispanic/Latino': [],
                   'American Indian': []
                   }
    
    raw_data = {'whiteNoms': [28, 50, 49, 49, 49, 47, 46, 39, 44],
                'blackNoms': [0, 0, 0, 0, 1, 1, 4, 9, 6],
                'asianNoms': [0, 0, 0, 0, 0, 1, 0, 2, 0],
                'hispanicNoms': [0, 0, 1, 1, 0, 1, 0, 0, 0]
               }
    df = pd.DataFrame(raw_data)

    # From raw value to percentage
    totals = [i+j+k+l for i,j,k,l in zip(df['whiteNoms'], df['blackNoms'], df['asianNoms'], df['hispanicNoms'])]
    greenBars = [i / j * 100 for i,j in zip(df['whiteNoms'], totals)]
    orangeBars = [i / j * 100 for i,j in zip(df['blackNoms'], totals)]
    blueBars = [i / j * 100 for i,j in zip(df['asianNoms'], totals)]
    pinkBars = [i / j * 100 for i,j in zip(df['hispanicNoms'], totals)]
    
    for d in ['3', '4', '5', '6', '7', '8', '9', '0']:
        all_actors = grab_race_counts(d, indir)
        for r in list(all_actors.keys()):
            all_race_counts[r].append(all_actors[r])

    actorTotals = [i+j+k+l+m for i,j,k,l,m in zip(all_race_counts['White'],
                                              all_race_counts['Black'],
                                              all_race_counts['Asian'],
                                              all_race_counts['Hispanic/Latino'],
                                              all_race_counts['American Indian']
                                             )]
    whiteActors = [i / j * 100 for i,j in zip(all_race_counts['White'], actorTotals)]
    blackActors = [i / j * 100 for i,j in zip(all_race_counts['Black'], actorTotals)]
    asianActors = [i / j * 100 for i,j in zip(all_race_counts['Asian'], actorTotals)]
    hispanicActors = [i / j * 100 for i,j in zip(all_race_counts['Hispanic/Latino'], actorTotals)]
    amIndianActors = [i / j * 100 for i,j in zip(all_race_counts['American Indian'], actorTotals)]
    
    x = [0, 1, 2, 3, 4, 5, 6, 7]
    plt.figure(figsize=(20,10))
    greenLine = [i - j for i,j in zip(greenBars, whiteActors)]
    orangeLine = [i - j for i,j in zip(orangeBars, blackActors)]
    blueLine = [i - j for i,j in zip(blueBars, asianActors)]
    pinkLine = [i - j for i,j in zip(pinkBars, hispanicActors)]
    amIndianActors = [0, 0, 0, 0, 0, 0, 0, 0]

    # All Native American Actors
    plt.plot(x, amIndianActors, marker='o',  markerfacecolor='blue', color='lightblue', label="American Indian Actors", linewidth = 4)

    # All White Actors
    plt.plot(x, greenLine, marker='o', markerfacecolor='green', color='#b5ffb9', label="White Actors", linewidth = 4)

    # All Black Actors
    plt.plot(x, orangeLine, marker='o', markerfacecolor='orange', color='#f9bc86', label="Black Actors", linewidth = 4)

    # All Asian Actors
    plt.plot(x, blueLine, marker='o', markerfacecolor='purple', color='#a3acff', label="Asian Actors", linewidth = 4)

    # All Hispanic Actors
    plt.plot(x, pinkLine, marker='o',  markerfacecolor='red', color='#ffd1dc', label="Hispanic Actors", linewidth = 4)

    names = ('1930s','1940s','1950s','1960s','1970s', '1980s', '1990s', '2000s')
    plt.ylabel('Difference')
    plt.xlabel('Decade')
    plt.xticks(x, names)
    plt.title('Percentage Nominated Actors MINUS Percentage of All Actors Per Race')
    plt.legend()
    plt.savefig(outdir + 'difference.jpg')

'''
FUNCTION: create_plots(indir, outdir):

INPUTS: indir: path to data
        outdir: path to save image to

OUTPUTS: none: sames images to file
'''
def create_plots(indir, outdir):
    print("Part 10/10: Creating Visuals")
    if outdir and not os.path.exists(outdir[0]):
        os.makedirs(outdir[0])
        
    create_plot_oscar_genre_dist_over_time(indir[0], outdir[0])
    create_plot_oscar_nominated_genre_dist_over_time(indir[1], indir[0], outdir[0])
    create_comparison_oscars_gg(indir, outdir[0])
    make_barchart(outdir[0])
    make_lineplot(indir[3], outdir[0])
    make_difference_graph(indir[3], outdir[0])
    
    
    
    
