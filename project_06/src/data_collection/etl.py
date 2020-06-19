import numpy as np
from skimage import io
import requests
from bs4 import BeautifulSoup
import matplotlib.pyplot as plt
import re
import random
from collections import defaultdict

import pickle

#EXTRACT (Scrape images)
WW2_LINK = "https://ww2db.com/photo.php"
NAV_PAGE_CATEGORIES = {"Pre-War": "prevwar", "Early-War": "earlywar", 
							"Mid-War": "midwar", "Late-War": "latewar"}

NUM_IMAGES = 1000
NOT_RETRIEVED = 0


class img_counter:
    num_imgs = 0
    page_range = []
    
    def __init__(self, img_num,page_range):
        self.num_imgs = img_num
        self.page_range = page_range
        
    def remove_next_page(self,page):
        self.page_range.remove(page)
        
    def decrement_num_images(self):
        self.num_imgs -= 20

"""
Starts WW2 Scraping process
Gets WW2 Images
Returns: Dictionary with year as key, art data as values
"""
def scrape_ww2_images(num_images,category):
    
    #images = defaultdict(list)
    images = []
    
    n_imgs, n_pages = get_category_features(category)
    page_range = list(np.arange(0,n_imgs - (n_imgs % 20), 20))
    counter = img_counter(num_images, page_range)
    
    next_page = get_to_next_page(counter)
    
    curr_increm = 0

    #Iterate while output of scraping exists
    while counter.num_imgs > 0:
        
        #Get all image links
        img_links = get_all_page_images(next_page)
        
        #Get subset of image links
        
        for i in img_links:
            curr_img = scrape_image(i)
            images.append(curr_img)
            
        #Continue to next page
        next_page = get_to_next_page(counter)
        counter.decrement_num_images()
        curr_increm += 20
        print("Scraped {0} out of 1000 from {1}".format(curr_increm, category))
            
    return images



"""
Gets categories
category: "Pre-War", "Early-War", "Mid-War", "Late-War"
returns num_images, num_pages
"""
def get_category_features(category):
    
    link = WW2_LINK + "?list=sp&sp=" + NAV_PAGE_CATEGORIES[category]
    
    #Get WW2 Webpage
    result = requests.get(link)
    
    # if successful parse the download into a BeautifulSoup object, which allows easy manipulation 
    if result.status_code == 200:
        soup = BeautifulSoup(result.text, "html.parser")
        
    desc = soup.find_all("p")[0].text.replace(",", '')
        
    num_images, num_pages = re.findall(r'[0-9]+', desc)
    
    return int(num_images), int(num_pages)


"""
Gets next page to scrape

"""
def get_to_next_page(counter):
    next_page = random.choice(counter.page_range)
    counter.remove_next_page(next_page)
    
    return "https://ww2db.com/photo.php?list=sp&sp=midwar&startRow=" + str(next_page)


"""
Gets all image links from page
page_link: Like "https://ww2db.com/photo.php?list=sp&sp=midwar&startRow=0"
returns list of image links
"""
def get_all_page_images(page_link):
    #Get WW2 Webpage
    result = requests.get(page_link)
    global NOT_RETRIEVED
    
    # if successful parse the download into a BeautifulSoup object, which allows easy manipulation 
    if result.status_code == 200:
        soup = BeautifulSoup(result.text, "html.parser")
    else:
        NOT_RETRIEVED += 20
        return np.array([])
        
    all_images = soup.find_all("td", {'align': 'center'})    
    
    return ["https://ww2db.com/" + img.find_all('a')[0]['href'] for img in all_images]

    

"""
Scrape image from final page
img_link: something like "https://ww2db.com/image.php?image_id=7797"
"""
def scrape_image(img_link):
    #Get WW2 Webpage
    result = requests.get(img_link)
    global NOT_RETRIEVED
    
    # if successful parse the download into a BeautifulSoup object, which allows easy manipulation 
    if result.status_code == 200:
        soup = BeautifulSoup(result.text, "html.parser")
    else:
        NOT_RETRIEVED += 1
        return np.array([])
        
    war_image_ext = soup.find_all("img", {'itemprop':'image'})[0]['src']
    
    curr_image = "https://ww2db.com/" + war_image_ext
    
    
    try:
        l = io.imread(curr_image)
        return l
    except Exception:
        NOT_RETRIEVED += 1
        return np.array([])
    
    return l



#TRANSFORM (Data Augmentation)



#LOAD (Save dataset)
