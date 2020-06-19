import numpy as np
import pandas as pd
import statsmodels.api as sm

##################### Functions for Detrend##########################
# input is ca_DUI_by_month.DUI_RATE OR sd_DUI_by_month.DUI_RATE
# perform simple Discrete Fourier Transform and filter in frequency domain
# output the filtered DUI_RATE
def detrend(y,threshold):
    signal_fft = np.fft.fft(y)
    signal_fft[np.abs(signal_fft) > threshold] = 0
    filtered = np.fft.ifft(signal_fft)
    return filtered

##################### Functions for DD model##########################
# input two states data after calling functions in eda.py
# this function will create df for model use
def make_model_data(ca,sd):
    ca_DUI_by_month = ca[ca.PCF_VIOL_CATEGORY == '01'].groupby(["YEAR",'MONTH']).size() / ca.groupby(["YEAR",'MONTH']).size()
    ca_DUI_by_month = ca_DUI_by_month.to_frame().reset_index().rename({0:"DUI_RATE"},axis=1)
    ca_DUI_by_month["STATE"] = "CA"

    sd_DUI_by_month = sd[sd.DUI].groupby(["YEAR",'MONTH']).size() / sd.groupby(["YEAR",'MONTH']).size()
    sd_DUI_by_month = sd_DUI_by_month.to_frame().reset_index().rename({0:"DUI_RATE"},axis=1)
    sd_DUI_by_month['STATE'] = "SD"

    data = pd.concat([ca_DUI_by_month,sd_DUI_by_month])
    data['y'] = data.DUI_RATE
    data['POST'] = data.apply(lambda x:0 if x.YEAR<=2016 and x.MONTH<11 else 1 ,axis=1)
    data['TREAT'] = data.STATE.apply(lambda x:1 if x == "CA" else 0)
    data['INTERACTION'] = data.POST * data.TREAT
    ca_mean = data[data.STATE == "CA"].y.mean()
    sd_mean = data[data.STATE == "SD"].y.mean()
    data['STATE_MEAN'] = data.STATE.apply(lambda x:ca_mean if x=="CA" else sd_mean)
    data["DEMEANED_y"] = data.y - data.STATE_MEAN

    return data

# OLS on the prepared dataset
def DD_model(data):
    X = data[['POST','TREAT','INTERACTION']]
    X = sm.add_constant(X)
    y = data.DEMEANED_y

    model = sm.OLS(y,X)
    result = model.fit()
    return result

# helper function to output the regression result
def result_to_txt(result,fp):
    with open(fp+'/summary.txt', 'w') as fh:
        fh.write(result.summary().as_text())
        fh.close()
    return
