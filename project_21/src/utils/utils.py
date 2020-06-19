import pandas as pd
from scipy import sparse
import os
import json
from sklearn.model_selection import train_test_split
from sklearn.metrics import f1_score, fbeta_score, accuracy_score, confusion_matrix
from src import *
from src.models import hinmodel
MAT_DIR = 'interim/hinembed'

def evaluate(test_size, method, datapath):
    """[evaluate the model]

    Args:
        test_size ([float]): [the proportion of test data]
        method ([string]): [which method to be evaluated]
        datapath ([string]): [the the root of the file path of the data]

    Returns:
        [type]: [description]
    """
    X = sparse.load_npz(os.path.join(datapath ,MAT_DIR, 'A.npz'))
    y = pd.read_csv(os.path.join(datapath, MAT_DIR, 'A_post_ref.csv')).sort_values('post_id_ind')['label'].values
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=test_size)
    if method == 'hinmodel':
        clf = hinmodel()
        clf.fit(X_train, y_train)
        y_preds = [clf.predict(X_train), clf.predict(X_test)]
        y_trues = [y_train, y_test]
        res = []
        for y_true, y_pred in zip(y_trues, y_preds):
                f1 = f1_score(y_true, y_pred)
                acc = accuracy_score(y_true, y_pred)
                tn, fp, fn, tp = confusion_matrix(y_true, y_pred).ravel()
                res += [{
                        'method': method,
                        'f1': f1,
                        'acc': acc,
                        'tp': tp,
                        'fp': fp,
                        'tn': tn,
                        'fn': fn
                            }]
    return res