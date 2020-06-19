import requests
from bs4 import BeautifulSoup
import re
from collections import defaultdict
import gzip
import os
from random import sample, seed
import subprocess
from pathlib import Path
import io

# seed(4)


base_url = 'https://apkpure.com'

def get_xml_zipped(categories):
    """
    Method to get the links from the sitemap for the given category
    Params - 1. categories - list of categories to get xml files for

    Returns - list with all xml links
    """
    # ping request to sitemap.xml of APKPure
    xml_url = base_url + '/sitemap.xml'
    r = requests.get(xml_url)
    soup = BeautifulSoup(r.text, 'lxml')
    # extract just tags containing the .gz files 
    xml_links_tag = soup.find_all('loc')
    # adding each .gz file to a dictionary by category
    xml_links = defaultdict(list)
    
    #creating regex command to get all xml files for given category
    regex_commands = {}
    for category in categories:
        r = re.compile(r".*"+category+".*")
        regex_commands[category] = r
    
    i = 0
    last_match = False
    for xml_link in xml_links_tag:
        #running regex command to get xml files
        matching_category =  regex_commands[categories[i]].findall(xml_link.text)
        if not matching_category and last_match: 
            #looping through categories 
            if i != len(categories)-1:
                i += 1
            last_match = False

        #append xml link to dictionary 
        if matching_category:
            xml_links[categories[i]].append(matching_category[0])
            last_match = True
    return xml_links

def unzip_xml(sampled_xml, outpath):
    """
    Unzip .gz files and store the xml files in outpath/xml_files/cat_name
    Params - 1. sampled_xml - sampled xml file
             2. outpath - path to output xml files to 
    
    Return: file path of xml file
    """
    #create xml files folder if it does not exist
    if not os.path.exists(outpath + '/xml_files'):
        os.mkdir(outpath + '/xml_files')
        
    if len(sampled_xml) < 1:
        return 
    #downloading xml content
    sampled_xml = sampled_xml[0]
    r = requests.get(sampled_xml)
    compressed_gz = io.BytesIO(r.content)
    decompressed_gz = gzip.GzipFile(fileobj=compressed_gz)
    #getting file name 
    xml_name = sampled_xml.split('/')[-1].replace('.gz', '')
    #getting category of app
    if '-' in xml_name:
        category = xml_name.split('-')[0]
    else:
        category = xml_name.split('.')[0]
    #create category folders if they dont exist
    category_path = os.path.join(outpath, 'xml_files' ,category)
    if not os.path.exists(category_path):
        os.mkdir(category_path)

    #saving content of unzipped xml files 
    xml_out_path = os.path.join(outpath,'xml_files', category, xml_name)
    with open(xml_out_path, 'wb') as outfile:
        outfile.write(decompressed_gz.read())
    return xml_out_path

def sample_app(xml_file_path, n,outpath, category):
    """
    Sample n random files from all the xml files 

    Params:
        1. xml_file_path - path of xml file
        2. n - number of xml files to sample
        3. outpath - path to save out files 
        4. category - category for which we want to sample apps

    """
    app_links = []
    #get all apk links from given xml file
    with open(xml_file_path, "r") as f:
        contents = f.read()
        soup = BeautifulSoup(contents, 'lxml')
        app_link_loctag = soup.find_all('loc')
    for app_link_lt in app_link_loctag:
        app_links.append(app_link_lt.text)
    #sample n app links from given xml file
    i = 0
    while i < n:
        sampled_app = sample(app_links,1)
        scraped_app = scrape_apps(sampled_app,outpath,category)
        if scraped_app:
            i += 1
    return 
        

def scrape_apps(sampled_app_link,outpath,category):
    """
    Download apk file of the apps passed in

    Param - 1. sampled_apps - {category: [apps in xml_file]
            2. outpath - path of data directory
            3. category - category of app that is to be scraped
            
    Returns - boolean of if app was download

    """
    #create APK folder
    if not os.path.exists(outpath + '/APK'):
        os.mkdir(outpath + '/APK' )
    #creates folder for given category
    category_path = os.path.join(outpath, 'APK', category)
    if not os.path.exists(category_path):
        os.mkdir(category_path)

    try:
        sampled_app_link = sampled_app_link[0]
        #extract app name from url
        url_split = sampled_app_link.split('/')
        if 'group' == url_split[3]:
            app_name = url_split[4]
        else:
            app_name = url_split[3]

        #check if app has already been download
        app_path = outpath + '/APK/' + category + '/' + app_name
        if os.path.exists(app_path):
            return False

        #download link scraped on one of the two ways depending on the category
        r = requests.get(sampled_app_link)
        soup = BeautifulSoup(r.text, 'html.parser')
        download_link = soup.find('div', class_ = 'ny-down')

        if download_link != None:
            download_url = base_url + (download_link.find('a', class_ = 'da')['href'])
        else:
            download_url = base_url + (soup.find('div', class_ = 'down').find('a')['href'])
        print('url: ' ,download_url)
        #download APK file of the app 
        r = requests.get(download_url)
        print(r.status_code)
        soup = BeautifulSoup(r.text, 'html.parser')

        download_file = soup.find_all('a', class_ = "ga")[0]['href']

        r = requests.get(download_file, stream = True)
        data = r.content
        apk_path = os.path.join(outpath,'APK',category,app_name+ '.apk')
        with open(apk_path, 'wb') as fh:
            fh.write(data)
        fh.close()
        #run apktool on app
        unzip_apk(apk_path)
        #outputs successful message to logger
        with open(outpath + '/log.txt', 'a') as logger:
            logger.write(app_name + ' downloaded\n')
        logger.close()
        return True
    except:
        #outputs error message to logger
        with open(outpath + '/log.txt', 'a') as logger:
            logger.write(app_name + ' failed to downloaded\n')
        logger.close()
    return False
    

def unzip_apk(path):
    """
    method to run apktool on all apps
    Params - 1. path - outpath to save smali files 
    """
    app_name = path.split('/')[-1]
    # extract directory of file and cd into it
    directory = '/'.join(path.split('/')[:-1])
    os.chdir(directory)
    #run apktool to unzip apk file 
    test = subprocess.Popen(["apktool","d", app_name ], stdout=subprocess.PIPE)
    output = test.communicate()[0]
    #delete apk file
    os.remove(app_name)
    #cd back to home directory
    os.chdir('./../../../')


def run_scraper(categories, num_apps,outpath):
    """
    Run web scraper to get apps from apkpure.com
    Params - 1. categories - list of all categories
             2. num_apps - number of apps per category 
             3. outpath - data directory file path
    """
    #gets all xml links
    xml_links = get_xml_zipped(categories)
    #iterates through categories and unzips num_apps 
    for cats in categories:
        i = 0
        print(cats)
        while i < num_apps:
            sampled_xml = sample(xml_links[cats], 1)
            
            # sample app links
            xml_file_path = unzip_xml(sampled_xml,outpath)
            sample_app(xml_file_path, 1,outpath,cats)
            i += 1
            
