##############################Deprecated (changed data source)#######################
####### No fetch functions needed anymore #### All comes from querying database############
import numpy as np
import pandas as pd

old_url = "http://seshat.datasd.org/pd/vehicle_stops_"
old_tail = "_datasd_v1.csv"

new_basic_url = "http://seshat.datasd.org/pd/ripa_stops_datasd_v1.csv"
new_result_url = "http://seshat.datasd.org/pd/ripa_stop_result_datasd.csv"
new_reason_url = "http://seshat.datasd.org/pd/ripa_stop_reason_datasd.csv"
new_race_url = "http://seshat.datasd.org/pd/ripa_race_datasd.csv"
new_search_url = "http://seshat.datasd.org/pd/ripa_search_basis_datasd.csv"
new_prop_url = "http://seshat.datasd.org/pd/ripa_prop_seize_type_datasd.csv"
new_contraband_url = "http://seshat.datasd.org/pd/ripa_contraband_evid_datasd.csv"

###############################################################################
#---------------------these functions are for fetching stop data---------------
# fetch from the older version
def fetch_old(year): # for 2014-2017
    if year <= 2017 and year >= 2014:
        full_old = old_url+str(year)+old_tail
        stop_df = pd.read_csv(full_old)
        search_old = old_url+"search_details_"+str(year)+"_datasd.csv"
        search_df = pd.read_csv(search_old)
        return stop_df.merge(search_df,on='stop_id')
    else:
        raise NotImplementedError("Invalid input year")
        return

# fetch from the newer version
def fetch_new(year):
    if year < 2018:
        raise NotImplementedError("Invalid input year")
        return
    basic = pd.read_csv(new_basic_url)
    result = pd.read_csv(new_result_url)
    reason = pd.read_csv(new_reason_url)
    race = pd.read_csv(new_race_url)
    search = pd.read_csv(new_search_url)
    prop = pd.read_csv(new_prop_url)
    contra = pd.read_csv(new_contraband_url)

    #join together
    joinrace = basic.merge(race,on=['stop_id','pid'])
    joinresult = joinrace.merge(result,on=['stop_id','pid'])
    joinreason = joinresult.merge(reason,on=['stop_id','pid'])
    joinsearch = joinreason.merge(search,on=['stop_id','pid'])
    joinprop = joinsearch.merge(prop,on=['stop_id','pid'])
    joincontra = joinprop.merge(contra,on=['stop_id','pid'])

    df_year = joincontra[pd.to_datetime(joincontra.date_stop).dt.year == year]
    return df_year.drop_duplicates()
###############################################################################

###########################collision data######################################
def fetch_collision():
    return pd.read_csv("http://seshat.datasd.org/pd/pd_collisions_datasd_v1.csv")
