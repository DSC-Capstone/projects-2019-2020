# main.py

from flask import Flask
from flask import render_template, url_for, request
import pprint as pp
import pandas as pd
import sys
import json
import shutil
import time
import pickle
from flask_bootstrap import Bootstrap

sys.path.insert(0, 'src') # add library code to path

from get_data import etl, verify_listing
from model import driver 

DATA_PARAMS = 'config/data-params.json'
MODEL_PARAMS = 'config/model-params.json'
TEST_PARAMS = 'config/test-params.json'
ENV = 'config/env.json'
META_DICT = {
            'Serve the same cuisine as your favorite restaurant': 'A',
            'Are within a 15 minute driving distance from your favorite restaurant': 'D',
            'Serve the same specialty items as your favorite restaurant': 'W',
            'Have reviews that talk about the same food served at your favorite restaurant':'S',
            'Are as popular as your favorite restaurant': 'R',
            'Have the same overall satisfaction as your favorite restaurant': 'P'}

def load_params(fp):
    with open(fp) as fh:
        param = json.load(fh)
    return param

def get_metapath(mtrx_lst):
            """ 
            Generates metapath from list of relationship types.
            :param: mtrx_lst: list of relationship types
            :return: metapath as a string 
            """
            mid = "C".join(mtrx_lst)
            res = "C" + mid 
            return res + res[-2::-1]

# create app instance
app = Flask(__name__)
Bootstrap(app)

@app.route("/", methods=['GET', 'POST'])
def home():
    
    boxes = []
    for label in META_DICT.keys():
        d = {}
        d['name'] = label
        boxes.append(d) 

    return render_template("home.html", data=boxes)

@app.route("/result", methods=['GET', 'POST'])
def result():

    error = None
    
    if request.method == 'POST':
        
        # Get Restaurant Name from user
        listing = request.form['listing']
        listing_name = listing.strip()

        # Get Restaurant Location from user
        city = request.form['city']
        listing_city = city.strip()

        # TODO - confirm valid inputs
        if (len(listing_name) < 1) or (len(listing_name) < 1):
            return "No restaurant entered."

        # Get listing info and category from Yelp 
        env_cfg = load_params(ENV)
        api =  env_cfg['API2']
        
        nxt, cat = verify_listing(listing_name, listing_city, api) # 'nxt' is dict of info of the verified input listing 

        # Get Metapath Choice 
        checked = request.form.getlist('mycheckbox')
        mtrx_lst = []
        for m in checked:
            mtrx_lst.append(META_DICT[m])
        metapath = get_metapath(mtrx_lst)
        #print(metapath)

        # Update data-params 
        with open("config/data-params.json", "r") as fp:
            params = json.load(fp)
        params["listing_name"] = listing_name 
        params["listing_city"] = listing_city
        params["listing_cat"] = cat
        params["listing_info"] = nxt
        params["api_key"] = api
        with open("config/data-params.json", "w") as fp:
            json.dump(params, fp)

        # Update model-params 
        with open("config/model-params.json", "r") as fp:
            m_params = json.load(fp)
        m_params["listing_id"] = nxt['id']
        m_params["metapath"] = metapath
        with open("config/model-params.json", "w") as fp:
            json.dump(m_params, fp)
		
        # Get Data (ETL)
        cfg = load_params(DATA_PARAMS)
        etl(**cfg)
        print('ETL Complete.')


        # Generate recommendations
        cfg = load_params(MODEL_PARAMS)
        driver(**cfg)

        # Display Recommendations
        df = pd.read_csv('data/out/recommendations.csv') # TODO - verify existance
        dct = df.transpose().to_dict()
        data = []
        for val in dct.values():
            data.append(val)
            
    return render_template('result.html', data=data, num=len(data), error=error)

@app.route("/about")
def about():
    return render_template("about.html")
     
if __name__ == "__main__":
    app.run(debug=True)     
