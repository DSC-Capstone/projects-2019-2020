

import pandas as pd
import gzip
from pandas import DataFrame
from scipy.stats import uniform
from scipy.stats import randint
import numpy as np
import matplotlib.pyplot as plt



#function to read in data from gz files
def read_gz(gz):
    with gzip.open(str(gz)) as f:
        features_train = pd.read_csv(f, sep='\t')
    return features_train
#clean the data frame
def clean_df(source):
    #gets rid of null columns
    source = source.drop(['hm_beta','hm_odds_ratio','hm_ci_lower','hm_ci_upper','standard_error','ci_lower','odds_ratio','beta','ci_upper'],axis=1)
    #gets rid of null values
    source = source.dropna()
    return source
#function to run metal commands
def metal_commands():
    cmd = shlex.split('./metal')
    cmd1 = shlex.split('MARKER variant_id')
    cmd2 = shlex.split('ALLELE effect_allele other_allele')
    cmd3 = shlex.split('FREQ effect_allele_frequency')
    cmd4 = shlex.split('EFFECT beta')
    cmd5 = shlex.split('PVAL p_value')
    cmd6 = shlex.split('PROCESS source_one.txt')
    cmd7 = shlex.split('PROCESS source_two.txt')
    cmd8 = shlex.split('PROCESS source_three.txt')
    cmd9 = shlex.split('PROCESS source_four.txt')
    cmd10 = shlex.split('PROCESS source_five.txt')
    cmd11 = shlex.split('ANALYZE')
    sp.call(cmd)
    sp.call(cmd1)
    sp.call(cmd2)
    sp.call(cmd3)
    sp.call(cmd4)
    sp.call(cmd5)
    sp.call(cmd6)
    sp.call(cmd7)
    sp.call(cmd8)
    sp.call(cmd9)
    sp.call(cmd10)
    sp.call(cmd11)



    


