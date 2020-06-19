"""
Testing file for the graph embedding.
"""

from src.FeatureExtraction.GraphEmbedder import graphEmbedder
import pandas as pd
import numpy as np
import os
from sklearn.feature_extraction.text import CountVectorizer, TfidfVectorizer
import re

def fixPrice(x):
    if not (type(x)== float):
        try:
            return re.findall("\d+\.\d+", x)[0]
        except:
            return np.nan
    else:
        return x


def build_abt_buy_graph():
	pt1 = "./data/Abt-Buy/Abt.csv"
	pt2 = "./data/Abt-Buy/Buy.csv"
	pt3 = "./data/Abt-Buy/abt_buy_perfectMapping.csv"

	Abt = pd.read_csv(pt1, engine = 'python')
	Buy = pd.read_csv(pt2, engine = 'python')
	truth = pd.read_csv(pt3)

	Abt['price'] = pd.to_numeric(Abt.price.apply(fixPrice))
	Buy['price'] = pd.to_numeric(Buy.price.apply(fixPrice))

	gE = graphEmbedder()

	gE.defineKeys(Abt, 'id')
	gE.defineKeys(Buy, 'id')

	gE.defineTruth(truth)

	gE.embeddText([Abt,Buy], 'id','name','name', min_df=0)

	gE.embeddText([Abt,Buy], 'id','description','description', min_df = 0.05)

	gE.embeddOrdinal([Abt,Buy],'id','price','price', bins = 5)

	gE.embeddCategorical([Buy], 'id', 'manufacturer', 'manufacturer')

	gE.saveGraph("./data/gen/abt_buy_graph")