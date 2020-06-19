import numpy as np
import pandas as pd
from scipy import stats
import matplotlib.pyplot as plt

#########################South Dakota Functions###########################
# read SD data (accident + person) from file path, return df
def make_SD(fp,year):
    sd_year_p = pd.read_csv(fp+"/Person"+str(year)+".txt",sep="|")
    sd_year_a = pd.read_csv(fp+"/Accident"+str(year)+".txt",sep="|")
    sd_year_a = sd_year_a[['AccidentSeqID','AccidentDateTime']]
    sd_year_p = sd_year_p[["AccidentSeqID","DrugUseDesc",'AlcoholUseDesc']]
    sd_year = pd.merge(left=sd_year_a,right=sd_year_p,on='AccidentSeqID')
    sd_year["YEAR"] = year
    return sd_year

# clean SD df and create useful columns for identifying DUI etc.
def clean_SD(df,year):
    copy = df.copy(deep=True)
    copy['DRUG'] = copy.DrugUseDesc.apply(lambda x:1 if x == 'Drugs used' else 0)
    copy['ALCOHOL'] = copy.AlcoholUseDesc.apply(lambda x:1 if x == 'Alcohol used' else 0)
    copy['DUI'] = copy.apply(lambda x:np.any([x.DRUG,x.ALCOHOL]),axis=1)
    copy['MONTH'] = pd.to_datetime(copy.AccidentDateTime).dt.month
    return copy

# Could get SD data in one df(2015-2018) rather make_SD would produce multiple
def make_all_SD(fp):
    result = []
    for i in range(2015,2019):
        sd_year_p = pd.read_csv(fp+"/Person"+str(i)+".txt",sep="|")
        sd_year_a = pd.read_csv(fp+"/Accident"+str(i)+".txt",sep="|")
        sd_year_a = sd_year_a[['AccidentSeqID','AccidentDateTime']]
        sd_year_p = sd_year_p[["AccidentSeqID","DrugUseDesc",'AlcoholUseDesc']]
        sd_year = pd.merge(left=sd_year_a,right=sd_year_p,on='AccidentSeqID')
        sd_year["YEAR"] = i
        result.append(clean_SD(sd_year,i))
    return pd.concat(result)

#########################California Functions###########################
# CA's data is in one big file, this function would filter to 2015-2018
def make_CA(fp):
    ca = pd.read_csv("../data/CA_Collision/CollisionRecords.txt",error_bad_lines=False)
    ca = ca[['CASE_ID','ACCIDENT_YEAR','COLLISION_DATE','PCF_VIOL_CATEGORY','ALCOHOL_INVOLVED']]
    ca = ca[(ca.ACCIDENT_YEAR > 2014)&(ca.ACCIDENT_YEAR < 2019)]
    return ca

# adding month to ca df
def clean_CA(ca):
    copy = ca.copy(deep=True)
    copy["MONTH"] = copy.COLLISION_DATE.apply(lambda x:int(str(x)[4:6]))
    return copy


#########################plotting Functions###########################
#plot annual DUI rate line chart with a vertical line indicating RML
def plot_annual_trend(ca,sd,out=None):
    plt.plot([2015,2016,2017,2018],ca,label='CA')
    plt.plot([2015,2016,2017,2018],sd,label='SD')
    plt.vlines(2016.9,0.035,0.075)
    plt.legend()
    plt.title("California and South Dakota annual DUI rates in 2015-2018 collision data")
    if out is not None:
        plt.savefig(out+"/annual_trend.png")
    return

# ca,sd should be two full data frame
# this will plot the monthly DUI rates trend
def plot_monthly_trend(ca,sd,out=None):
    ca_dui_month = (ca[ca.PCF_VIOL_CATEGORY == "01"].groupby(['ACCIDENT_YEAR','MONTH']).size()/ca.groupby(['ACCIDENT_YEAR','MONTH']).size())
    sd_dui_month = (sd[sd.DUI == 1].groupby(['YEAR',"MONTH"]).size()/sd.groupby(['YEAR',"MONTH"]).size())
    ca_dui_month.plot(label='CA')
    sd_dui_month.plot(label='SD')
    plt.vlines(23,0.025,0.08)
    plt.title("California and South Dakota monthly DUI rates in 2015-2018 collision data")
    plt.legend()
    if out is not None:
        plt.savefig(out+"/monthly_trend.png")
    return
