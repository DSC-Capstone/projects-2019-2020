"""
ENWIKI RAW DATA DOWNLOADING AND PARSING 
Contains methods for downloading zips, unzipping zips, parsing to lightdump

Jwlin17
"""

import os
import requests
import urllib.request
from bs4 import BeautifulSoup
from lxml import etree
import re
import gzip
import shutil

def download_metadata_zips(num_files_download, outdir, datetime, overwrite=False):
    """
    Download the Wikipedia Metadata ZIP XML 
    
    Keyword arguments:
    num_files_download -- determines how many files to download
    outdir -- the directory that we want the zipped files to download to
    overwrite -- boolean whether to overwrite existing zip files
    datetime -- format YYYYMMDD, "20200401" must be updated as wikipedia dumps the first of each month
    """

    wikimedia_url = 'https://dumps.wikimedia.org/enwiki/'+ datetime + '/'
    response = requests.get(wikimedia_url)

    soup = BeautifulSoup(response.text, "html.parser")
    ul_links = soup.findAll('ul')[12].findAll('a')

    if not os.path.exists(outdir):
        os.makedirs(outdir, exist_ok=True)

    for i in range(num_files_download): #'a' tags are for links
        print("Downloading enwiki metadata file: (" + str(i+1) + "/" + str(num_files_download) + ")")

        link = ul_links[i]['href']
        download_url = wikimedia_url + ul_links[0]['href'][17:]
        print(download_url)
        filename = os.path.join(outdir, "metadata-" + datetime + "-" + str(i+1) + ".xml.gz")

        # if file name exists, skip unless overwrite
        if not overwrite and os.path.exists(filename):
            continue
        else: 
            urllib.request.urlretrieve(download_url, filename)
            
def gunzip_shutil(filepath, outdir, block_size=65536):
    """
    Unzip the .gz xml files downloaded from Wikimedia dumps
    
    Keyword arguments:
    filepath -- relative filepath to the zipped file
    outdir -- directory we want to output unzipped xml file
    blocksize -- blocksize for shutil copyfileobj
    """
    if not os.path.exists(outdir):
         os.mkdir(outdir)

    filename = outdir + "/" + filepath.split("/")[-1][:-3]
    
    #if file name exists then skip, and not overwrite
    if os.path.exists(filename):
        print("Extracted file already exists: {}".format(filename))
        return

    print("Extracting file: {} --- to path --- {}".format(filepath, outdir))
    with gzip.open(filepath, 'rb') as s_file, \
            open(filename, 'wb') as d_file:
        shutil.copyfileobj(s_file, d_file, block_size) 
        
class MetadataRevision:
    """
    Class Object for Handling Parsing through Raw Article Revision History 
    
    Creates a class that has all the information about the revision
    We use this to organize and write out to the lightdump format
    """
    def __init__(self, timestamp, revert, version, contributor, revision_id, revision_parentid, sha1, text_bytes):
        self.timestamp = timestamp
        self.revert = revert
        self.version = version
        self.contributor = contributor
        self.revision_id = revision_id
        self.revision_parentid = revision_parentid
        self.sha1 = sha1
        self.text_bytes = text_bytes
        
    def __repr__(self):
        return [self.timestamp, self.revert, self.version, self.contributor, self.revision_id, self.revision_parentid]
        
    def __str__(self):
        try:
            return ("^^^_" + self.timestamp + " " 
                    + str(self.revert) + " " 
                    + str(self.version) + " " 
                    + str(self.text_bytes) + " " 
                    + self.contributor)
        except:
            print(self.timestamp)
            print(self.revert)
            print(self.version)
            print(self.contributor)
    
    def get_revision_id(self):
        return self.revision_id
        
#parse the file, calculate lightdump information, output to outfile
def parse_metadata_to_lightdump(filepath, outfile, outdir, articles, num_articles, min_revisions):
    """
    Parsing the xml metadata file into a more readable lightdump format
    
    Currently, if provided a list of articles, the function will ignore min_revisions and add that article always
    It will also keep parsing until all articles are found, but will not write to lightdump more than num_articles
    
    Keyword arguments:
    filepath -- filepath to the xml file
    outfile -- the txt file that we want to write out lightdump to
    articles -- specific article titles that we want to include in our lightdump
    num_articles -- the total number of articles that we want to parse through
    min_revisions -- minimum number of revisions that an article must have to be included in the lightdump
    
    Outputs:
    lightdump.txt -- lightdump text file
    article_titles.txt -- list of article_titles that are included in the lightdump
    """ 
    context = etree.iterparse(filepath, tag='{http://www.mediawiki.org/xml/export-0.10/}page', encoding='utf-8')
    nsmap = {'ns': 'http://www.mediawiki.org/xml/export-0.10/'}
    
    num_articles = num_articles - len(articles)
    curr_article_count = 0
    
    revi_header = "^^^_"
    
    # Setting up directory path, making sure file doesnt already exist
    if not os.path.exists(outdir):
        os.makedirs(outdir, exist_ok=True) 
    if os.path.exists(outdir + "/" + outfile):
        print("Lightdump File Already Exists")
        return
    
    # Creating a file to write to for lightdump and list of article titles
    with open(outdir + "/" + outfile, 'w') as file:
        file.write("")
    with open(outdir + "/" + 'article_titles.txt', 'w') as article_file:
        article_file.write("")

    # Iteratively loop through entire XML article by article
    for event, elem in context:
        page_title = '_'.join(elem.find('ns:title', nsmap).text.split())
        page_id = elem.find('ns:id', nsmap).text
        revisions = elem.findall('ns:revision', nsmap)

        # print(page_title + " " + str(len(revisions)))
        rev_dicts = []
        
        if len(articles) == 0 and curr_article_count >= num_articles:
            break
            
        # Skip parsing this revision if not in article list, or less than min revisions, or greater than num_articles
        if (page_title not in articles) and ((len(revisions) < min_revisions) or (curr_article_count >= num_articles)):
            elem.clear()
            while elem.getprevious() is not None:
                del elem.getparent()[0]
            continue  
        
        for revision in revisions:
            rev = {}
            
            # Get basic revision metadata
            rev['revision_id'] = revision.find("ns:id", nsmap).text
            rev['revision_parentid'] = revision.find("ns:parentid", nsmap).text if revision.find("ns:parentid", nsmap) != None else None
            rev['timestamp'] = revision.find("ns:timestamp", nsmap).text
            rev['sha1'] = revision.find("ns:sha1", nsmap).text
            rev['text_bytes'] = revision.find("ns:text", nsmap).attrib['bytes']
                         
            # Get Contributor info either username + id or IP
            contributor_info = revision.find("ns:contributor", nsmap)
            revision_contributor_username = contributor_info.find("ns:username", nsmap).text if contributor_info.find("ns:username", nsmap) != None else None
            revision_contributor_id = contributor_info.find("ns:id", nsmap).text if contributor_info.find("ns:id", nsmap) != None else None
            revision_contributor_ip = contributor_info.find("ns:ip", nsmap).text if contributor_info.find("ns:ip", nsmap) != None else None
            if revision_contributor_username != None:
                revision_contributor_username = "_".join(revision_contributor_username.split())
                rev['contributor'] = revision_contributor_username
            elif revision_contributor_ip != None:
                rev['contributor'] = revision_contributor_ip
            else:
                rev['contributor'] = "null"
            
            # Append info to the list of revisions
            rev_dicts.append(rev)
            
        # Sort by Timestamp
        rev_dicts.sort(key=lambda x: x['timestamp'])

        version = 1
        page_revisions = []
        
        # Establish versions per revision, (this metric is not used in current engagement score)
        # Normally we can also determine is a revision is a revert
        for i in range(len(rev_dicts)):

            temp_rev = MetadataRevision(rev_dicts[i]['timestamp'], 0, version, rev_dicts[i]['contributor'], \
                                rev_dicts[i]['revision_id'], rev_dicts[i]['revision_parentid'], \
                                rev_dicts[i]['sha1'], rev_dicts[i]['text_bytes'])
            page_revisions.append(temp_rev)
            version += 1    
        
        
        if page_title in articles:
            articles.remove(page_title)
            num_articles += 1

        curr_article_count += 1
            
        # Write to lightdump file
        if curr_article_count % 100 == 0: 
            print(str(curr_article_count) + "/" + num_articles + ": Writing {} {} revisions to {}".format(page_title, len(page_revisions), outfile))
        with open(outdir + "/" + outfile, 'a') as file:
            with open(outdir + "/" + 'article_titles.txt', 'a') as article_file:
                file.write(page_title.strip() + '\n')
                article_file.write(page_title.strip() + "\n")
                for i in range(len(page_revisions) - 1, -1, -1):
                    file.write(page_revisions[i].__str__() + "\n")
                    
            
        # Release XML article from memory
        elem.clear()
        while elem.getprevious() is not None:
            del elem.getparent()[0]
    
    print("Finished writing {} articles to {}".format(curr_article_count, outfile))

    del context
    
