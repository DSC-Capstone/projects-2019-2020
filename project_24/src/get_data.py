import requests
import pandas as pd
import numpy as np
import time
import os
import pprint as pp
from tqdm import tqdm
import psutil
import sys
import re
import string
from sklearn.feature_extraction import text
#import nltk
from nltk import word_tokenize          
from nltk.stem import WordNetLemmatizer 
from sklearn.feature_extraction.text import CountVectorizer
from collections import Counter
from textblob import TextBlob
#import pickle

#nltk.download()


def get_input():
    '''
    Prompts the user to input their restaurant name and
    their location
    '''
    inp = input('Enter the name and location (city) of your restaurant separated by a comma:')
    name = inp.split(',')[0]
    location = inp.split(',')[1]
    return name, location


def verify_listing(name, location, api):
    '''
    Iterate through search results to find the correct listing
    '''
    PARAMETERS = {'location': location, 
              'term': name,
              'limit': 50,
              'offset':0}
    ENDPOINT = 'https://api.yelp.com/v3/businesses/search'
    HEADERS = {'Authorization': 'bearer %s' % api}
    response = requests.get(url = ENDPOINT, params = PARAMETERS, headers = HEADERS)
    if response.status_code!=200:
            print('Error: response status code not 200')
            sys.exit(0)
    
    business_data = response.json()
    businesses = (x for x in business_data['businesses'])
    #print([x['name'] for x in business_data['businesses']])

    # This loop iterates through to verify the correct listing with the user
    nxt = next(businesses) ##!!!!!!!!!!!
    found = True ##!!!!!!!!!!!!
    while found == False:
        nxt = next(businesses)
        print(nxt)
        # Prompt user
        inp = input("Is this the correct listing?: "+nxt['name']+" (Y/n)")
        if inp.lower() == 'y':
            found = True
    
    # This prompts the user to select the index corresponding to the correct listing
    cats = []
    for i in range(len(nxt['categories'])):
        cats += [nxt['categories'][i]['title']]
    #print("cats:", cats)
    #inp = input("What is the index of the category you are interested in?") # "Select a Category"
    #cat = cats[int(inp)]
    cat = cats[0] ##!!!!!!!!!!!
    return nxt, cat


def vertical_split(x_):
    '''
    splits up the vertical column into multiple columns
    '''
    first = []
    second = []
    third = []
    for _ in x_:
        x = _.split(', ')
        try:
            first += [x[0]]
        except: first += ['None']
        try:
            second += [x[1]]
        except: second += ['None']
        try:
            third += [x[2]]
        except: third += ['None']
    return first, second, third


def clean_text_round1(text):
    '''
    Make text lowercase, remove text in square brackets,
    remove punctuation and remove words containing numbers.
    '''
    text = text.lower()
    text = re.sub('\[.*?\]', '', text)
    text = re.sub('[%s]' % re.escape(string.punctuation), '', text)
    text = re.sub('\w*\d\w*', '', text)
    text = re.sub('[\d\.]', '', text)
    text = re.sub('[‘’“”…]', '', text)
    text = re.sub('\n', '', text)
    text = re.sub('ᐧ', '', text)
    return text

# ---------------------------------------------------------------------
# Driver Functions
# ---------------------------------------------------------------------

def etl(**cfg):
    """
    Takes in config file and ETLs the df of relevant data based on the user's
    input.

    """

    #Store config data
    API = cfg['api_key']
    HEADERS = {'Authorization': 'bearer %s' % API}
    ENDPOINT = 'https://api.yelp.com/v3/businesses/search'
    
    name, location = cfg['listing_name'], cfg['listing_city'] #name, location = get_input()
    
    #nxt, cat = verify_listing(name, location, API)
    nxt, cat = cfg['listing_info'], cfg['listing_cat']
    count = 0

    #Initialize lists for collecting data
    name, url, phone, address, city, state, czip, rating = [], [], [], [], [], [], [], []
    review_count, vertical, price, latitude, longitude = [], [], [], [], []
    yelp_id, review1, review2, review3 = [], [], [], []

    for page in tqdm([0,50,100,150]):
        count+=1
        PARAMETERS = {'location': location, 
                  'term': cat,
                  'limit': 50,
                  'offset':page}
        response = requests.get(url = ENDPOINT, params = PARAMETERS, headers = HEADERS)
        if response.status_code!=200:
            print('Error: response status code not 200')
            time.sleep(5)
            sys.exit(0)
        business_data = response.json()
        for business in tqdm(business_data['businesses']):
            name = name + [business['name']]
            url = url + [business['url']]
            address = address + [business['location']['address1']]
            city = city + [business['location']['city']]
            state = state + [business['location']['state']]
            czip = czip + [business['location']['zip_code']]
            phone = phone + [business['phone']]
            latitude = latitude + [business['coordinates']['latitude']]
            longitude = longitude + [business['coordinates']['longitude']]
            try:
                price = price + [business['price']]
            except:
                price = price + ['null']
            yelp_id = yelp_id + [business['id']]
            industries = str()
            for i in business['categories']:
                industries = industries+', '+str(i['title'])
            vertical = vertical + [industries[2:]]
            rating = rating + [business['rating']]
            review_count = review_count + [business['review_count']]
            # Reviews
            response_reviews = requests.get(url = 'https://api.yelp.com/v3/businesses/'+business['id']+'/reviews',
                params = {}, headers = HEADERS)
            review_data = response_reviews.json()
            try:
                review1 += [review_data['reviews'][0]['text']]
            except: review1 += ['null']
            try:
                review2 += [review_data['reviews'][1]['text']]
            except: review2 += ['null']
            try:
                review3 += [review_data['reviews'][2]['text']]
            except: review3 += ['null']

    result = pd.DataFrame({
    'Name':name[:200],
    'URL':url[:200],
    'Phone':phone[:200],
    'Latitude':latitude[:200],
    'Longitude':longitude[:200],
    'Address':address[:200],
    'City':city[:200],
    'State':state[:200],
    'ZIP':czip[:200],
    'Vertical':vertical[:200],
    'Rating':rating[:200],
    'Review Count':review_count[:200],
    'Yelp ID':yelp_id[:200],
    'Review1':review1[:200],
    'Review2':review2[:200],
    'Review3':review3[:200]
    })
    result['Vertical1'], result['Vertical2'], result['Vertical3'] = vertical_split(result['Vertical'])
    result.drop_duplicates(subset=['Phone'], inplace=True)
    result.drop_duplicates(subset=['Name'], inplace=True)
    result['Reviews'] = result['Review1'] + ' ' + result['Review2'] + ' ' + result['Review3']
    result['Reviews'] = result['Reviews'].apply(lambda x: clean_text_round1(x))
    
    print("Raw data recieved from Yelp.")
    print("Columns: ", list(result.columns))

    add_stop_words = []
    stop_words = text.ENGLISH_STOP_WORDS.union(add_stop_words)
    print("len 'stop_words': ", len(stop_words))

    class LemmaTokenizer(object):
        def __init__(self):
            self.wnl = WordNetLemmatizer()
        def __call__(self, articles):
            return [self.wnl.lemmatize(t) for t in word_tokenize(articles)]

    cv = CountVectorizer(stop_words=stop_words, ngram_range=(1,1), tokenizer=LemmaTokenizer())
    data_cv = cv.fit_transform(result.Reviews) 
    data_dtm = pd.DataFrame(data_cv.toarray(), columns=cv.get_feature_names())
    data_dtm.index = result['Yelp ID']

    data_tdm = data_dtm.T
    top_dict = {}
    for i in data_tdm.columns:
        top = data_tdm[i].sort_values(ascending=False).head(15)
        top_dict[i]= list(zip(top.index, top.values))

    # Print top words to console
    #for yid, top_words in top_dict.items():
        #print(yid)
        #print(', '.join([word for word, count in top_words[0:14]]))
        #print('---')

    # Let's first pull out the top 30 words for each comedian
    words = []
    for yid in top_dict.keys():
        top = [word for (word, count) in top_dict[yid]]
        for t in top:
            words.append(t)
    add_stop_words += [word for word, count in Counter(words).most_common() if count > len(top_dict)/3]

    stop_words = text.ENGLISH_STOP_WORDS.union(add_stop_words)
    cv = CountVectorizer(stop_words=stop_words, ngram_range=(1,1), tokenizer=LemmaTokenizer())
    #try:
    data_cv = cv.fit_transform(result.Reviews) 
    #except:
        #mport nltk
        #nltk.download('p')
    data_dtm = pd.DataFrame(data_cv.toarray(), columns=cv.get_feature_names())
    data_dtm.index = result['Yelp ID']
    
    pol = lambda x: TextBlob(x).sentiment.polarity
    sub = lambda x: TextBlob(x).sentiment.subjectivity

    result['polarity'] = result['Reviews'].apply(pol)
    result['subjectivity'] = result['Reviews'].apply(sub)

    word1 = []
    word2 = []
    word3 = []
    word4 = []
    word5 = []

    for i in range(len(data_dtm)):
        temp = data_dtm.iloc[i].sort_values(ascending=False)[:5].index
        word1 += [temp[0]]
        word2 += [temp[1]]
        word3 += [temp[2]]
        word4 += [temp[3]]
        word5 += [temp[4]]

    result['Word1'] = word1
    result['Word2'] = word2
    result['Word3'] = word3
    result['Word4'] = word4
    result['Word5'] = word5

    #df = result[result['Name']!=nxt['name']]
    df = result
    #target = result[result['Name']==nxt['name']]

    # Populate 'data/raw/raw.csv' 
    outdir = cfg['outdir'] # 'data/raw'
    if outdir and not os.path.exists(outdir):
        os.makedirs(outdir)

    df.to_csv('data/raw/raw.csv')
   
    return
