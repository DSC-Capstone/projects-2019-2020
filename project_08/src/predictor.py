from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier
import pandas as pd
import os


def read_features(datapath, whichdata):
    """
    loads feature dataframe for desired group
    :param: datapath: directory of data path
    :param: whichdata: which category of data to use
    """
    output_filename = "%s features.csv" % (whichdata)
    output_filename = os.path.join(datapath, output_filename)
    return pd.read_csv(output_filename, index_col=0, keep_default_na=False)


def subsample(combined):
    """
    sample so both categories have same sample counts
    :param: combined: combined dataframe
    """
    mincount = combined.groupby("issuperbowl").count()["ID"].min()
    sampled = combined.groupby("issuperbowl").apply(
        pd.DataFrame.sample, n=mincount, random_state=0
    )
    sampled["issuperbowl"] = sampled.issuperbowl
    sampled.index = [i[1] for i in sampled.index]
    return sampled


def modelresults(combined, model):
    """
    Fits and returns predictions for given model
    :param: combined: combined dataframe
    :param: model: chosen model
    """
    train, test = train_test_split(combined, test_size=0.2, random_state=0)
    train_y = train["issuperbowl"]
    train = train.drop("issuperbowl", axis=1)
    model = model.fit(train, train_y)

    result = pd.DataFrame(index=test.index)
    test_y = test["issuperbowl"]
    test = test.drop("issuperbowl", axis=1)
    test = preprocessing.scale(test)
    modelname = type(model).__name__
    result[modelname + "Prediction"] = clf.predict(test)
    result[modelname + "Superbowliness Score"] = [i[1] for i in clf.predict_proba(test)]
    return result


def predict(superdata, otherdata, datapath):
    """
    wrapper for using models to predict category of commercials
    :param: superdata: directory in datapath that holds raw superbowl data
    :param: otherdata: directory in datapath that holds raw non-superbowl data
    :param: datapath: directory of data path
    """
    superdf = read_features(datapath, superdata)
    otherdf = read_features(datapath, otherdata)
    combined = superdf.append(otherdf).fillna(0)
    combined = subsample(combined)
    combined = combined.drop("words", axis=1)
    combined = combined.drop("ID", axis=1)

    logreg = LogisticRegression(random_state=0)
    forest = RandomForestClassifier(random_state=0)

    train, test = train_test_split(combined, test_size=0.2, random_state=0)
    result = test
    for i in [logreg, forest]:
        predictions = modelresults(combined, i)
        result = result.join(predictions)
    result.to_csv(os.path.join(datapath, "model results.csv"))
