import pandas as pd
import re
from datetime import datetime as dt
import numpy as np


def advertiser_from_title(title):

    pat0 = " Super Bowl.+"
    pat1 = " 2020.+"

    if len(re.findall(pat0, title)) > 0:
        extra = re.findall(pat0, title)[0]
    elif len(re.findall(pat1, title)) > 0:
        extra = re.findall(pat1, title)[0]
    else:
        extra = ""
    brand = title.replace(extra, "").replace("2020", "").strip()

    return brand


def clean_duration(dur):

    if len(dur) == 5:
        x = int(dur[1]) * 60 + int(dur[3])
    else:
        x = int(dur[1]) * 60 + int(dur[3]) * 10 + int(dur[4])
    return x


def clean_date(date):

    form = "%m/%d/%Y"
    short = date[:10]
    if short == "1970-01-01":
        return "Missing"
    else:
        return dt.strptime(short, form)


#################


def clean(rawdatacsv, outdir):

    data = pd.read_csv(rawdatacsv, index_col=0)

    data["Advertiser"] = data["Title"].apply(advertiser_from_title)

    data["Duration"] = data["Duration"].apply(clean_duration)

    data["First_DT"] = data["First Occurance"].apply(clean_date)
    data["Last_DT"] = data["Last Occurance"].apply(clean_date)

    data.to_csv(outdir)
