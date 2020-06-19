#!/usr/bin/env python

'''
FILE: data_ingestion.py

DESCRIPTION: This file collects the data needed for this project. It does only
    for a subset of the full data just to gather a "test" set. 
'''

import requests
from bs4 import BeautifulSoup
import re
import json
import csv
import os
from pathlib import Path
import pandas as pd
import re
from tqdm import tqdm
import os


'''
FUNCTION: get_table(website)

INPUTS: website: url for wiki page with list of nominees and winners

OUTPUTS: returns the Wikipedia html table that needs to be scraped 

DESCRIPTION: This function takes the wikipedia link and finds the table that 
    contains all the winners and nominees for the Best Actor Oscar award on that webpage
    and returns the table.
'''
def get_table(website):
    #webpage url
    url = website
    page = requests.get(url)
    
    #creates beautiful soup object
    soup = BeautifulSoup(page.content, 'html.parser')
    table = soup.find_all('table')[2]
    
    #return the correct table
    return table


'''
FUNCTION: create_csv_of_actors(website, outdir)

INPUTS: website: url for wiki page with list of nominees and winners
        outdir: directory to write csv files to

OUTPUTS: None (writes csv to file)

DESCRIPTION: This function parses through the table of the Best Actor Oscar award 
    winners and nomineed writes the table to a csv file.
'''
def create_csv_of_actors(website ,outdir): 
    #gets the correct table to parse
    table = get_table(website)
    
    #loops through all the rows in the table
    for row in table.find_all('tr'):
        td_tags = row.find_all('td')
        th_tags = row.find_all('th')

         #initialize fields to be scraped
        count = 1
        actor = ''
        role = ''
        movie = ''
        link = None
        winner = False

        #if the row in the table is not a full row then skip
        if len(td_tags) == 1:
            continue

        #loop through each column in the row and get the winners
        for th in th_tags:
            year = th.text.strip("\n")
            year = year[0: year.find("(")]
            winner = True
            
        #loop through each column in the row
        for col in td_tags:  
          
            #collect the actor name
            if count == 1:
                actor = col.text.strip("\n")
                actor = actor[0: actor.find("[")]

            #collect the character name
            elif count == 2:
                role = col.text.strip("\n")
            
            #collect the movie name
            elif count == 3:
                movie = col.text.strip("\n")
            count = count + 1

        #get the link for the wikipedia page about the movie
        for a in row.findAll('a'):
            if movie in a.text:
                link = "https://en.wikipedia.org/" + a.get('href')
                break

        #create a row to write to the csv file
        if winner == True:
            lst = [year, actor, role, movie, link, True]
            winner = False
        else:
            lst = [year, actor, role, movie, link, False]
            
        #write row to csv file
        with open(outdir + "actorsTemp.csv",'a+', newline='') as outF:
                writer = csv.writer(outF, dialect='excel')
                writer.writerow(lst)
                

'''
FUNCTION: add_ethnicity_to_nominees_and_winners()

INPUTS: outdir: directory to write csv files to

OUTPUTS: None (writes changes to csv file)

DESCRIPTION: This function takes the created actors csv file and add the actor's ethnicity to it.
'''
def add_ethnicity_to_nominees_and_winners(outdir):
     #loads the actors csv file
    table = pd.read_csv(outdir + "actors.csv", )

    #get a list of the actors and reformat it to be used in url
    actors = table["Actor"]
    actors = actors.values
    actors_cleaned = [x.replace(" ", "-") for x in actors]

    #initialize list to store ethnicities of actors
    ethnicity = []
    
    #loop through all actors in the file
    for actor in tqdm(actors_cleaned):
      
        #find the webpage with ethnicity info on the actor
        url = 'https://ethnicelebs.com/{}'.format(actor)
        page = requests.get(url)
        soup = BeautifulSoup(page.content, 'html.parser')
       
        #initialize variables to help collect data
        found = False
        lst = []
        
        #loop through all the text in the html of the webpage
        for p in soup.findAll('p'):
            
            #find the one about the ethnicity
            if "Ethnicity:" in p.text:
                
                #clean the string with info about ethnicity
                lst = p.text.split(" ")[1:]

                lst = [re.sub(r'\W+', '', x) for x in lst]

                lst = [x.replace("mother", "") for x in lst]
                lst = [x.replace("father", "") for x in lst]

                lst = [x for x in lst if x != ""]
                lst = [x for x in lst if ord(x[0]) > 64]
                lst = [x for x in lst if ord(x[0]) < 91]
                
                #append to master list of lists
                ethnicity.append(lst)
                found = True
                
                #do not coninute looking
                break   
                
        #if webpage or info not found then append empty list
        if found == False:
            ethnicity.append(lst)
            
    #add ethnicity to table and write to csv file
    table["Ethnicity"] = ethnicity
    
    table.to_csv(outdir + 'actorsWithEthnicity.csv', index = False)
    
    
'''
FUNCTION: create_csv_per_year(tableNum, year, outdir)

INPUTS: tableNum: which table on the html page to scrape
        year: which year of movies to scrape
        outfir: diectory to write csv files to

OUTPUTS: None (writes to csv file)

DESCRIPTION: This function takes a Wikipedia page of all the movies created in the USA for a particular
    year and scrapes the information on the movie and the list of main characters' actors and writes
    the table to a csv file. 
'''
def create_csv_per_year(tabNum, year, outdir):
    #find the correct url for that year and create a beautiful soup object
    url = 'https://en.wikipedia.org/wiki/List_of_American_films_of_{}'.format(year)
    page = requests.get(url)
    soup = BeautifulSoup(page.content, 'html.parser')

    #scrape every table from the first one of movies starting with ("A" - "B")
    #till the last table of movies starting with ("Z")
    for tab in soup.find_all('table')[tabNum:]:
        td_tags = tab.find_all('td')
        
        #intialize variables to help parse the file
        count = 0
        title = ""
        actors = []
        
        #loop through the tables on the webpage
        for i in td_tags:
            
            #if the table is not a table containing movie info
            if len(td_tags) < 50 :
                continue

            #scrape the title
            if count == 0:
                title = i.text

            #scrape the actors info
            elif count == 2:
                actors = i.text.split(",")

            count = count + 1
            
            #reset counter and fields every row and write row to csv file
            if count == 5:
                lst = [title, actors]
                with open(outdir + 'ListOfMovPerYear' + "/{}.csv".format(year),'a+', newline='') as outF:
                    writer = csv.writer(outF, dialect='excel')
                    writer.writerow(lst)
                
                count = 0
                title = ""
                actors = []
                               
                
'''
FUNCTION: create_csv_per_year_with_genre(tabNum, year, outdir)

INPUTS: tableNum: which table on the html page to scrape
        year: which year of movies to scrape
        outfir: diectory to write csv files to

OUTPUTS: None (writes to csv file)

DESCRIPTION: This function takes a Wikipedia page of all the movies created in the USA for a particular
    year and scrapes the information on the movie and the list of main characters' actors and writes
    the table to a csv file. 
''' 
def create_csv_per_year_with_genre(tabNum, year, outdir):
    #find the correct url for that year and create a beautiful soup object
    url = 'https://en.wikipedia.org/wiki/List_of_American_films_of_{}'.format(year)
    page = requests.get(url)
    soup = BeautifulSoup(page.content, 'html.parser')

    #scrape every table from the first one of movies starting with ("A" - "B")
    #till the last table of movies starting with ("Z")
    for tab in soup.find_all('table')[tabNum:]:
        tr_tags = tab.find_all('tr')
        
        #intialize variables to help parse the file
        title = ""
        actors = []
        genre = []
        
        #loop through the tables on the webpage
        for i in tr_tags:
            
            #if the table is not a table containing movie info
            if len(tr_tags) < 35:
                continue
            count = 0
            td_tags = i.find_all('td')
            
            if len(td_tags) == 6:
                for j in td_tags:
                    
                    #scrape the title
                    if count == 1:
                        title = j.text
                    
                    #scrape the actor
                    elif count == 3:
                        actors = j.text[j.text.rfind(";") + 1:]
                        actors = actors.split(",")
                        
                    #scrape the genre
                    elif count == 4:
                        genre = j.text.split(",")

                    #reset counter and fields every row and write row to csv file
                    count = count + 1
                    if count > 3:
                        lst = [title, actors, genre]

                        with open(outdir + 'ListOfMovPerYearWithGenre' + "/{}.csv".format(year),'a+', newline='') as outF:
                            writer = csv.writer(outF, dialect='excel')
                            writer.writerow(lst)

                        count = 0
                        title = ""
                        actors = []
                        genre = []
                        break
                        
            elif len(td_tags) == 5:
                for j in td_tags:
                    
                    #scrape the title
                    if count == 0:
                        title = j.text

                    #scrape the actor
                    elif count == 2:
                        actors = j.text[j.text.rfind(";") + 1 :]
                        actors = actors.split(",")
                     
                    #scrape the genre
                    elif count == 3:
                        genre = j.text.split(",")

                    #reset counter and fields every row and write row to csv file
                    count = count + 1
                    if count > 3:
                        lst = [title, actors, genre]

                        with open(outdir + 'ListOfMovPerYearWithGenre' + "/{}.csv".format(year),'a+', newline='') as outF:
                            writer = csv.writer(outF, dialect='excel')
                            writer.writerow(lst)

                        count = 0
                        title = ""
                        actors = []
                        genre = []
                        break
                        
'''
FUNCTION: all_movies_per_year(outdir)

INPUTS: outdir: directory to write csv files to

OUTPUTS: None (writes to csv file)

DESCRIPTION: This function calls on other functions to create the csv
    files for the all the movies made each year between 1934 and 2019
'''
def all_movies_per_year(outdir, flag):
    #path to write outpit files to
    path = outdir + 'ListOfMovPerYear'
    
    #create output folder
    if path and not os.path.exists(path):
        os.makedirs(path)
        
    if flag == "full": 
        #gather info per year from 1934-1935
        for year in range(1934, 1993):
            create_csv_per_year(1,year, outdir)

        for year in range(1993, 2004):
            create_csv_per_year(2,year, outdir)

        for year in range(2004, 2009):
            create_csv_per_year(2,year, outdir)
            
    elif flag == "test" :
        #gather info per year from 1934-1935
        for year in range(1934, 1936):
            create_csv_per_year(1, year, outdir)

'''
FUNCTION: all_movies_per_year_with_genre(outdir)

INPUTS: outdir: directory to write csv files to

OUTPUTS: None (writes to csv file)

DESCRIPTION: This function calls on other functions to create the csv
    files for the all the movies made each year between 1934 and 2019
'''
def all_movies_per_year_with_genre(outdir, flag):
    #path to read input files from
    path = outdir + 'ListOfMovPerYearWithGenre'
    
    #create output folder
    if path and not os.path.exists(path):
        os.makedirs(path)
    
    if flag == "full":
        #gather info per year from 1934-1935
        for year in range(1934, 1993):
            create_csv_per_year_with_genre(1,year, outdir)

        for year in range(1993, 2004):
            create_csv_per_year_with_genre(2,year, outdir)

        for year in range(2004, 2009):
            create_csv_per_year_with_genre(2,year, outdir)
            
    elif flag == "test":
        #gather info per year from 1934-1935
        for year in range(1934, 1936):
            create_csv_per_year_with_genre(1, year, outdir)
        

'''
FUNCTION: add_ethnicity_to_all_males(actor)

INPUTS: actor: name of actor to find ethnicity of 

OUTPUTS: None (returns list of ethnicities)

DESCRIPTION: This function finds the ethnicities of a given
    actor and returns it
'''
def add_ethnicity_to_all_males(actor):
    #formats name for url
    actors_cleaned = actor.replace(" ", "-")

    #gets webpage that contains actor's ehtnicity
    url = 'https://ethnicelebs.com/{}'.format(actors_cleaned)
    page = requests.get(url)
    soup = BeautifulSoup(page.content, 'html.parser')
    
    #initialize variables to parse webpage
    found = False
    lst = []
    
    #loops through all paragraphs in html
    for p in soup.findAll('p'):
        
        #once it finds ethnicity
        if "Ethnicity:" in p.text:
            
            #formats ethnicity sentence to a list 
            lst = p.text.split(" ")[1:]

            lst = [re.sub(r'\W+', '', x) for x in lst]

            lst = [x.replace("mother", "") for x in lst]
            lst = [x.replace("father", "") for x in lst]

            lst = [x for x in lst if x != ""]
            lst = [x for x in lst if ord(x[0]) > 64]
            lst = [x for x in lst if ord(x[0]) < 91]
            
            #returns the list
            return lst
        
    #if webpage does not exist or no ethnicity was found then return empty list          
    if found == False:
        return None     

    
'''
FUNCTION: get_ethnicity_for_all_years(outdir)

INPUTS: outdir: directory to write csv files to 

OUTPUTS: None (writes files to directory)

DESCRIPTION: This fucntion creates csv files for every year with 
    the male actor and their ethnicity
'''
def get_ethnicity_for_all_years(outdir):
    #path for output files
    path = outdir + 'ListOfMovPerYearWithEthnicity'
    
    #creates output directory
    if path and not os.path.exists(path):
        os.makedirs(path)
    
    #directory with input files
    directory = outdir + 'ListOfMovPerYearMales'

    #loops through all files from each year
    for file in os.listdir(directory):
        #creates a pandas df
        tab = pd.read_csv(directory + '/' + file)

        actors = tab["Males"]

        temp = []
        #loops though all actors to get ethnicity
        for i in tqdm(actors.values):
            i = i.replace("[", "")
            i = i.replace("]", "")
            temp.append(add_ethnicity_to_all_males(i))
        
        #adds columns to df
        tab["Ethnicity"] = temp  
        
        #writes csv file with ethnicity to folder
        tab.to_csv(path + '/{}'.format(file), index = False)    
        
'''
FUNCTION: only_males(outdir)

INPUTS: outdir: directory to write csv files to

OUTPUTS: None (writes to csv file)

DESCRIPTION: This function gets the gender of the people who acted in each movie
'''
def only_males(outdir):
    #path for output files to go
    path = outdir + 'ListOfMovPerYearMales'
    
    #create output directory
    if path and not os.path.exists(path):
        os.makedirs(path)

    #path for input files
    directory = outdir + 'ListOfMovPerYear'

    #loop through every file for each year
    for file in os.listdir(directory):
        
        #create a pd df of csv file
        tab = pd.read_csv(directory + '/' + file, header = None)

        lists = tab[1]
        Males = []
        #loop through list of actors/ actresses
        for lst in tqdm(lists):
            
            #format name for url
            lst = lst.replace('[', "")
            lst = lst.replace(']', "")
            lst = lst.replace('\'', "")
            lst = lst.split(',')
            lst = [x.lstrip() for x in lst]
            tempLst = lst
            lst = [x[0:x.find(" ")] for x in lst]

            males = []
            count = 0
            
            #for each actors and actress in each row
            for name in lst:
                
                #get wenpage containing gender
                url = 'http://www.namegenderpro.com/search-result/?gender_name={}'.format(name)
                page = requests.get(url)
                soup = BeautifulSoup(page.content, 'html.parser')

                #determine if males or female
                if "Female" in soup.findAll("div", {"class": "searchresult_top_heading"})[0].text:
                    count = count + 1
                    continue
   
                #if males then add to temp column and break to next row
                elif "Male" in soup.findAll("div", {"class": "searchresult_top_heading"})[0].text:
                    males.append(tempLst[count])
                    break

                count = count + 1

            Males.append(males)
        
        #add column of males to pd df and write to output directory
        tab["Males"] = Males
        tab.to_csv(outdir + 'ListOfMovPerYearMales/{}'.format(file), index = False)
        
        
'''
FUNCTION: clean_actorsTemp(fp, outdir)

INPUTS: fp: file path of temp actors file to be cleaned
        outdir: directory to write csv files to

OUTPUTS: None (writes to csv file)

DESCRIPTION: This function only gets ncessary years from the inital scrape 
'''
def clean_actorsTemp(fp, outdir):
    #read in only needed lines
    tab = pd.read_csv(fp, skiprows = 25)
    
    #add columns
    tab.columns = ['Year', 'Actor', 'Role', 'Movie', 'Movie Link', 'Winner']
    
    #write to directory
    tab.to_csv(outdir + 'actors.csv', index = False)
    
    #remove temp file
    os.remove(outdir + "actorsTemp.csv")

    
'''
FUNCTION: get_table_gg(num)

INPUTS: num: table num in html to scrape

OUTPUTS: None (writes to csv file)

DESCRIPTION: This function gets the html table to scrape
'''
def get_table_gg(num): 
    url = "https://en.wikipedia.org/wiki/Golden_Globe_Award_for_Best_Actor_%E2%80%93_Motion_Picture_Drama"
    page = requests.get(url)
    soup = BeautifulSoup(page.content, 'html.parser')
    table = soup.find_all('table')[num]
    return table


'''
FUNCTION: create_csv_of_gg()

INPUTS: outdir: directory to write csv files to

OUTPUTS: None (writes to csv file)

DESCRIPTION: This function parses through the table of the Best Actor Golden
    Globe award winners and nominees and writes the table to a csv file.
'''
def create_csv_of_gg(outdir):
    for num in range(1,9):
        table = get_table_gg(num)

        year = ""
        actor = ''
        movie = ''
        done = False
        for row in table.find_all('tr'):
            td_tags = row.find_all('td')
            th_tags = row.find_all('th')

            count = 0
            for td in td_tags:
                if len(td_tags) == 4:
                    winner = True
                    if count == 0:
                        year = td.text
                        #print("YEAR: ", year)

                    if count == 1:
                        actor = td.text.strip('\n')
                        #print("ACTOR: ", actor)

                    if count == 3:
                        movie = td.text.strip('\n')
                        #print("MOVIE: ", movie)
                        done = True

                    count = count + 1


                elif len(td_tags) == 3:
                    winner = False
                    count = count + 1

                    if count == 1:
                        #print("YEAR: ", year)

                        actor = td.text.strip('\n')
                        #print("ACTOR: ", actor)

                    if count == 3:
                        movie = td.text.strip('\n')
                        #print("MOVIE: ", movie)
                        done = True

            if done == True:
                lst = [year, actor, movie, winner]
                with open(outdir + "/golden_globes_drama.csv",'a+', newline='') as outF:
                    writer = csv.writer(outF, dialect='excel')
                    writer.writerow(lst)
                   
             
'''
FUNCTION: get_ethnicities_gg(outdir)

INPUTS: outdir: directory to write csv files to

OUTPUTS: None (writes to csv file)

DESCRIPTION: This function addss ethnicities to Golden Globe winners and nominees
'''
def get_ethnicities_gg(outdir):
    table = pd.read_csv(outdir + "/golden_globes_drama.csv", header = None)
    table.columns = ["year", "actor", "movie", "winner"]

    actors = table["actor"]
    actors = actors.values
    actors_cleaned = [x.replace(" ", "-") for x in actors]
    
    ethnicity = []
    for actor in tqdm(actors_cleaned):
        url = 'https://ethnicelebs.com/{}'.format(actor)
        page = requests.get(url)
        soup = BeautifulSoup(page.content, 'html.parser')

        found = False
        lst = []
        for p in soup.findAll('p'):
            if "Ethnicity:" in p.text:
                lst = p.text.split(" ")[1:]

                lst = [re.sub(r'\W+', '', x) for x in lst]

                lst = [x.replace("mother", "") for x in lst]
                lst = [x.replace("father", "") for x in lst]

                lst = [x for x in lst if x != ""]
                lst = [x for x in lst if ord(x[0]) > 64]
                lst = [x for x in lst if ord(x[0]) < 91]
                ethnicity.append(lst)
                found = True
                break   
        if found == False:
            ethnicity.append(lst)
    
    table["ethnicity"] = ethnicity
    
    table.to_csv(outdir + '/goldenGlobesDramaWithEthnicity.csv', index = False)
    
'''
FUNCTION: test_ingestion(websites, outdir)

INPUTS: websites: websites to be scraped in data ingestion process
        outdir: directory to write csv files to

OUTPUTS: None (writes everything to csv files in directories)

DESCRIPTION: This function calls the necessary functions to scrape all 
    the data needed 
''' 
def collect_data(websites, outdir, flag): 
    #make folder to hold test data
    if outdir and not os.path.exists(outdir[0]):
        os.makedirs(outdir[0])
    
    #gather all winners and nominees from each year
    print("Part 1/10: Gathering all Oscar Winners and Nominees")
    create_csv_of_actors(websites[0], outdir[0])
    
    #keep only years 1934- 2008
    print("Part 2/10: Cleaning file of Oscar Winners and Nominees")
    clean_actorsTemp("testData/actorsTemp.csv", outdir[0])
  
    #add ethnicity to file with all winners and nominees from each year 
    print("Part 3/10: Adding ethnicities to Oscar Winners and Nominees file")
    add_ethnicity_to_nominees_and_winners(outdir[0])
  
    #gather all movies made every year since 1934 and actors/actresses in them
    print("Part 4/10: Creating Files Containing Every Movie Made Every Year (1934 - 2008)")
    all_movies_per_year(outdir[0], flag)
    
    #identify one male actors from each movie made each year
    print("Part 5/10: Finding Lead Actor for Every Movie Made Every Year")
    only_males(outdir[0])
    
    #find ethnicity for male actor in each movies made each year 
    print("Part 6/10: Adding Ethnicities to Lead Actor from Every Movie Made Every Year")
    get_ethnicity_for_all_years(outdir[0])
    
    #gather the genre of every movie made every year
    print("Part 7/10: Gathering the Genre of Every Movie Made Every Year (1934 - 2008)")
    all_movies_per_year_with_genre(outdir[0], flag)

    #gather all winners and nominees from each year at the Golden Globes
    print("Part 8/10: Gathering all Golden Globe Winners and Nominees for Best Drama")
    create_csv_of_gg(outdir[0])
    
    #add ethnicity to file with all winners and nominees from each year at the Golden Globes
    print("Part 9/10: Adding ethnicities to Golden Globe Winners and Nominees file")
    get_ethnicities_gg(outdir[0])
