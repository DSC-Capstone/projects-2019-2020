import pandas as pd
import zipfile
import os

def get_media_data(**cfg):
    '''retrive media dataset'''
    for url in cfg['URLs']:
        print(url)
        infile = os.path.join(cfg['outpath'],url.split('/')[-1])
        os.system(cfg['wget_fmt']%(url,infile))
        print(infile)

    with zipfile.ZipFile(infile, 'r') as zip_ref:
        zip_ref.extractall(infile)
        
def process_media_data(**cfg):
    '''get COVID-19 related news out of news dataset'''

    result = []
    for chunk in pd.read_csv(cfg['infile'],usecols=range(2,12),
                         parse_dates=['date'], chunksize=chunksize):
        result.append(chunk[chunk.year==2020])
    all2020 = pd.concat(result)
    
    COVID = all2020[
        (all2020.title.str.contains('virus'))|
        (all2020.title.str.contains('COVID'))|
        (all2020.title.str.contains('stay-at-home'))|
        (all2020.title.str.contains('COVID-19'))|
    #    (all2020.title.str.contains('toll'))|
        (all2020.title.str.contains('coronavirus'))
    ].reset_index(drop=True)

    COVID.to_csv(cfg['outfile'])
