import pandas as pd
import numpy as np
import datetime as dt
import seaborn as sbd

fl = pd.read_csv("cleaned_fl.csv")
flwb = fl.loc[((fl["officer_race"] == "white") | (fl["officer_race"] == "black")) & ((fl["subject_race"] == "white") | (fl["subject_race"] == "black"))]
pt = pd.read_csv("cleaned_pits.csv")
ptwb = pt.loc[((pt["officer_race"] == "black") | (pt["officer_race"] == "white")) & ((pt["subject_race"] == "white") | (pt["subject_race"] == "black"))]


def sun(avgsun):
    average = avgsun.reset_index()
    avg = average[0:15]
    avg = avg.drop([0, 1, 2])
    avg["level_6"] = pd.to_datetime(avg["level_6"])
    avg["level_1"] = avg["level_1"].map({"01": 1, "02": 2, "03": 3, "04": 4, "05":5, "06":6, "07":7,
                                         "08": 8, "09":9, "10": 10, "11": 11, "12": 12})
    keyavg = avg["level_1"][0:12]
    valueavg = avg["level_6"][0:12]
    sundict = dict(zip(keyavg, valueavg))
    return sundict

def table(a):
    start = '17:09:00'
    stop = '20:29:00'
    rows = ((a['time'] >= start) & (a['time'] <= stop))
    a = a.loc[rows]
    a['racepair'] = a.apply(lambda row: "same if same pair" if row["subject_race"] == row["officer_race"] else "var if var pair", axis = 1)
    return a

def compare(avgsun, a, b):
    b = a
    a['date'] = pd.to_datetime(a['date'])
    a['month'] = pd.DatetimeIndex(a['date']).month
    a['sun'] = a['month'].map(avgsun)
    comparetimes = pd.to_datetime((a['time']), errors = "coerce") < pd.to_datetime(a['sun'])
    a['light'] = comparetimes
    a.groupby(["subject_race"]).count()
    df_light = a.loc[a['light'] == True]
    df_dark = a.loc[a['light'] == False]
    return df_light, df_dark

def grouped(df_light, df):
    groupedlight = df_light.groupby(["racepair"]).count()
    groupeddark = df.groupby(["racepair"]).count()
    groupeddark = groupeddark.reset_index()
    groupedlight = groupedlight.reset_index()
    #print(groupedlight, groupeddark)
    groupedlight = groupedlight[["light"]]
    groupeddark = groupeddark[["light"]]
    groupeddark = groupeddark.rename(columns = {"light" : "dark"})
    groupedlightdark = groupedlight.join(groupeddark)
    groupedlightdark["light"] = groupedlightdark["light"]
    groupedlightdark["dark"] = groupedlightdark["dark"]
    groupedlightdark["lightp"] = groupedlightdark["light"]/ len(df_light)
    groupedlightdark["darkp"] = groupedlightdark["dark"]/len(df)
    from scipy import stats
    return groupedlightdark["light"], groupedlightdark["dark"], groupedlightdark["lightp"], groupedlightdark["darkp"]

def stats(df_light, df, df_lightp, dfp):
    df1 = pd.DataFrame()
    df1['dark'] = df
    df1['light'] = df_light
    from scipy import stats
    df1 = df1.rename(index = {0:"same if same pair", 1: "var if var pair"})
    import statsmodels
    import statsmodels.api as sm
    dflist = df.tolist()
    df_lightlist = df_light.tolist()
    tables = sm.stats.Table2x2([dflist, df_lightlist])
    return stats.fisher_exact(df1), tables.oddsratio_confint(), stats.sem(df_lightp.tolist())

def prportions(pt):
    pt1 = pt
    pt1['count'] = [1]*len(pt)
    pt1
    return pt1.groupby(['subject_race']).count() / len(pt)

prportions(pt)
prportions(fl)
prportions(ptwb)
prportions(flwb)

sundictionary = sun(sunpit)
a= table(ptwb)
sAmeL, sAmeD = compare(sundictionary, a, a)
sAmeplot, sAmestats, sAme, sAmee = grouped(sAmeL, sAmeD)
print(stats(sAmeplot, sAmestats, sAme, sAmee))

sundictionary = sun(sunpit)
a= table(pt)
sAmeL, sAmeD = compare(sundictionary, a, a)
sAmeplot, sAmestats, sAme, sAmee = grouped(sAmeL, sAmeD)
print(stats(sAmeplot, sAmestats, sAme, sAmee))

sundictionary = sun(sunpit)
a= table(flwb)
sAmeL, sAmeD = compare(sundictionary, a, a)
sAmeplot, sAmestats, sAme, sAmee = grouped(sAmeL, sAmeD)
print(stats(sAmeplot, sAmestats, sAme, sAmee))

sundictionary = sun(sunpit)
a= table(fl)
sAmeL, sAmeD = compare(sundictionary, a, a)
sAmeplot, sAmestats, sAme, sAmee = grouped(sAmeL, sAmeD)
print(stats(sAmeplot, sAmestats, sAme, sAmee))
