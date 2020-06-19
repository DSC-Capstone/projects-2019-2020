import json
from scipy import sparse
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
import os
import pandas as pd
from glob import glob
from src import *
MAT_DIR = 'interim/hinembed'

class hinmodel():
    """[hindroid svm model]
    """
    def __init__(self, method = 'AA'):
        self.clf = SVC(kernel='precomputed')
        if method == 'AA':
            self.kernel = lambda x, y: x.dot(y.T).todense()
        else:
            raise NotImplementedError
    def fit(self, X, y):
        _X = self.kernel(X, X)
        self.X = X
        self.y = y
        self.clf.fit(_X, self.y)
    def predict(self, X):
        _X = self.kernel(X, self.X)
        return self.clf.predict(_X)
    def score(self, X, y):
        _X = self.kernel(X, self.X)
        return self.clf.score(_X, y)