import numpy as np
import pandas as pd
import requests
from bs4 import BeautifulSoup
import re
import gzip
import xml.etree.ElementTree as ET
import os
from random import sample
import math
import subprocess
import random
from collections import defaultdict
import json
def get_gz_links(url):
    """
    Returns all useful xml.gz links in the url
    - url: the url to extract xml.gz links
    >>> url = 'https://apkpure.com/sitemap.xml'
    >>> xml_gz_links = get_gz_links(url)
    >>> xml_gz_links[0]
    'https://apkpure.com/sitemaps/art_and_design.xml.gz'
    """
    #url = 'https://apkpure.com/sitemap.xml'
    r = requests.get(url)
    urlText = r.text
    soup = BeautifulSoup(urlText, features="lxml")
    idx_since = 55
    xml_gz_links = [l.get_text() for l in soup('loc')][idx_since:]
    return xml_gz_links

def href_in_gz(link):
    """
    Returns all application hyperlinks in the xml.gz link
    - link: the xml.gz link to get all application hyperlinks
    >>> link = 'https://apkpure.com/sitemaps/art_and_design-2.xml.gz'
    >>> xml_hrefs = href_in_gz(link)
    >>> xml_hrefs[0]
    'https://m.apkpure.com/art-what/com.tradefwd.ArtWhat'
    """
    resp = requests.get(link)
    data = gzip.decompress(resp.content)
    soup = BeautifulSoup(data, features='lxml')
    xml_hrefs = [l.get_text().replace('apkpure.com', 'm.apkpure.com') for l in soup('loc')]
    return xml_hrefs

def get_download_link(xml_hrefs, d_urls):
    """
    Returns the download link of the application if downloadable, else return 0
    - d_url: url of the application to download
    >>> len(get_download_link('https://m.apkpure.com/art-what/com.tradefwd.ArtWhat')) > 0
    True
    >>> get_download_link('https://m.apkpure.com/argila-driver/com.myargila.driver')
    0
    """
    download_link = 0
    while download_link == 0:
        try:
            d_url = np.random.choice(xml_hrefs, 1).item()
            while d_url in d_urls:
                d_url = np.random.choice(xml_hrefs, 1).item()
            r = requests.get(d_url + '/download?from=details')
            urlText = r.text
            soup = BeautifulSoup(urlText, features="lxml")
            download_link = soup.find('a', attrs = {'id': 'download_link'})['href']
        except:
            download_link = 0
            continue
    return d_url, download_link

def delete_non_smali(decompiled_positions):
    """
    Only keep folders that contain smali code
    - decompiled_positions: filepaths that specify the decompiled apk files
    """
    for position in decompiled_positions:
        for d in os.listdir(position):
            if 'smali' in d:
                continue
            if os.path.isdir(position + '/' + d):
                command = subprocess.run(["rm", '-R', position + '/' + d], capture_output=True)
            elif os.path.isfile(position + '/' + d):
                command = subprocess.run(["rm", position + '/' + d], capture_output=True)

def download_decompile_apk(apk_type, d_url, download_link, apk_file_path, decompiled_file_path):
    r = requests.get(d_url)
    urlText = r.text
    soup = BeautifulSoup(urlText, features="lxml")
    name = soup.find('span', attrs = {'itemprop': 'name'}).get_text().replace(' ', '_')
    name = apk_type + '-' + name
    resp = requests.get(download_link)
    data = resp.content
    apk_position = apk_file_path + '/' + name +'.apk'
    decompiled_position = decompiled_file_path + '/' + name
    with open(apk_position, 'wb') as fh:
        fh.write(data)
    print('Decompiling apk: ', name)
    command = subprocess.run(["apktool", "d", apk_position, '-o', decompiled_position], capture_output=True)
    command = subprocess.run(["rm", apk_position], capture_output=True)
    return decompiled_position

def check_data_validity(decompiled_positions):
    """
    Removes empty decompiled apks that do not contain smali code and returns the type of data need to refetch
    and updated positions of decompiled apks
    """
    result = defaultdict(int)
    for position in decompiled_positions:
        if len(os.listdir(position)) == 0:
            apktype = position.split('-')[0].split('/')[-1]
            result[apktype] += 1
            command = subprocess.run(["rm", '-R', position], capture_output=True)
            decompiled_positions.remove(position)
    return result, decompiled_positions

def download_extra_apk(type_dict, xml_gz_links, d_urls, decompiled_positions, apk_file_path, decompiled_file_path):
    decom_positions = decompiled_positions
    d_urls_copy = d_urls
    for apk_type in type_dict:
        count = 0
        while count < type_dict[apk_type]:
            links = pd.Series(xml_gz_links)[pd.Series(xml_gz_links).str.contains(apk_type)]
            link = np.random.choice(links, 1).item()
            xml_hrefs = href_in_gz(link)
            d_url, download_link = get_download_link(xml_hrefs, d_urls_copy)
            d_urls_copy.append(d_url)
            count += 1
            print('Downloading Extra apks...')
            decompiled_position = download_decompile_apk(apk_type, d_url, download_link, apk_file_path, decompiled_file_path)
            decom_positions.append(decompiled_position)
    return decom_positions, d_urls_copy

def get_data(num_of_apks, num_of_categories, apk_out_path, **kwargs):
    """
    Given number of total apks to sample, and number of links these apks are from,
    evenly sample apks from randomly sampled links on sitemap. Save apks under apk_out_path/apks,
    decompiled apks under apk_out_path/decompiled
    """
    xml_gz_links = get_gz_links('https://apkpure.com/sitemap.xml')
    num = math.ceil(num_of_apks / num_of_categories)
    num_remaining = num_of_apks
    links = list(np.random.choice(xml_gz_links, num_of_categories, replace= False))
    decompiled_positions = []

    apk_file_path = apk_out_path+'/apks'
    decompiled_file_path = apk_out_path+'/decompiled'
    for path in [apk_file_path, decompiled_file_path]:
        if not os.path.exists(path):
            os.makedirs(path)
    d_urls = []
    for link in links:
        if num_remaining <= num:
            num = num_remaining
        xml_hrefs = href_in_gz(link)
        apk_type = re.findall(r'sitemaps/(\w+)', link)[0]
        count = 0
        while count < num:
            d_url, download_link = get_download_link(xml_hrefs, d_urls)
            count += 1
            d_urls.append(d_url)
            print('Downloading apk: ', num_of_apks - (num_remaining - count))
            decompiled_position = download_decompile_apk(apk_type, d_url, download_link, apk_file_path, decompiled_file_path)
            decompiled_positions.append(decompiled_position)
        num_remaining -= num
    delete_non_smali(decompiled_positions)
    type_dict, decompiled_positions = check_data_validity(decompiled_positions)
    while type_dict:
        decompiled_positions, d_urls = download_extra_apk(type_dict, xml_gz_links, d_urls, decompiled_positions, apk_file_path, decompiled_file_path)
        type_dict, decompiled_positions = check_data_validity(decompiled_positions)
        delete_non_smali(decompiled_positions)
    return decompiled_positions
