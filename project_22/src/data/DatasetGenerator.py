import pandas as pd
import os
import numpy as np
import math
import json

"""
Data Generation Class.
Purpose is to allow for the generation of artificial datasets for testing the pipeline
"""
class datasetGenerator:
    
    """
    Constructor.
    Requires config dictionary defining the parameters of data generation.
    """
    def __init__(self, config):
        self.config = config
        self.row_num = config['row_num']
        self.col_num = config['col_num']
        self.strong_col_num = config['strong_col_num']
        self.randomness_param = config['randomness_param']
        self.saveLoc = config['saveLoc']
        self.maxCategories = config['maxCategories']
        
        tokenLength = math.ceil(np.log(2 * self.row_num)/np.log(10))
        assert(tokenLength >= self.strong_col_num)
        self.tokenLength = tokenLength
        
        assert (self.row_num > 0)
        assert (self.col_num > 0)
        assert (0 <= self.randomness_param <= 1)
        assert (os.path.exists(self.saveLoc))
    
    def padValue(self, x, tokenLength):
        temp = x + '0' * (tokenLength - len(x))
        return temp
    
    """
    This creates the dataset
    First defines the strong key columns.
    Then generates the weak columns based on a conditional distribution of previous column.
    """
    def createDataset(self):
        self.dataset1 = pd.DataFrame()
        self.dataset2 = pd.DataFrame()
        StrongCols = self.createStrongCol()
        for i in range(self.strong_col_num):
            self.dataset1[i] = StrongCols[i]
        
        for i in range(self.strong_col_num):
            self.dataset2[i] = StrongCols[i + self.strong_col_num]
        
        weakCols = self.weakColWrapper(self.col_num - self.strong_col_num)
        for i in range(len(weakCols)):
            if i%2 == 0:
                #dataset 1 case
                try:
                    self.dataset1[np.max(list(self.dataset1.columns)) + 1] = weakCols[i]
                except:
                    self.dataset1[0] = weakCols[i]
            else:
                #dataset 2 case
                try:
                    self.dataset2[np.max(list(self.dataset2.columns)) + 1] = weakCols[i]
                except:
                    self.dataset2[0] = weakCols[i]
        pass
    
    """
    Helper Method to create strong key columns
    """
    def createStrongCol(self):
        temp1 = [str(i) for i in np.arange(self.row_num)]
        temp2 = [str(i) for i in np.arange(self.row_num, 2*self.row_num)]
        
        temp1 = [self.padValue(x,self.tokenLength) for x in temp1]
        temp2 = [self.padValue(x,self.tokenLength) for x in temp2]
        cols = self.splitStrongColumns(temp1, temp2)
        return cols
        pass
    
    """
    Helper Method to split the strong keys to the 2 tables.
    """
    def splitStrongColumns(self, col1, col2):
        cols = []
        iterLength = math.ceil(self.tokenLength/self.strong_col_num)
        i = 0
        while (i < self.strong_col_num):
            colTemp = [x[i * iterLength:iterLength * (i + 1)] for x in col1]
            i = i + 1
            cols.append(colTemp)
        i = 0
        while (i < self.strong_col_num):
            colTemp = [x[i * iterLength:iterLength * (i + 1)] for x in col2]
            i = i + 1
            cols.append(colTemp)
        
        return cols
    
    """
    Helper Method to create weak key columns
    """
    def createWeakCol(self, oldColumn):
        #note: creates 2 columns: 1 for each dataset
        
        #creating conditionional distribution
        numNewCat = np.random.randint(1, self.maxCategories)
        numOldCat = np.unique(oldColumn).max() + 1
        
        permutation = np.random.permutation(range(numNewCat))
        dist = {}
        for i in range(max(numNewCat, numOldCat)):
            if (i % numOldCat) in dist.keys():
                dist[i % numOldCat].append(permutation[i % numNewCat])
            else:
                dist[i % numOldCat] = [permutation[i % numNewCat]]
        
        #creating columns using the distribution
        col1 = []
        col2 = []
        for i in range(self.row_num):
            if np.random.choice([0,1], p = [1 - self.randomness_param, self.randomness_param]):
                #random case
                #note: assigns random number to each column w/ any conditioning
                col1.append(np.random.choice(permutation))
                col2.append(np.random.choice(permutation))
            else:
                #non-random case
                #assigns random number w/ conditioning
                col1.append(np.random.choice(dist[oldColumn[i]]))
                col2.append(np.random.choice(dist[oldColumn[i]]))
                
        return (np.array(col1), np.array(col2))

    """
    Wrapper function for generating weak key columns
    """
    def weakColWrapper(self, n):
        #create 1 fully random column
        cols = []
        numCats = np.random.randint(1, self.maxCategories)
        col = np.random.choice(range(numCats), size = self.row_num)
        cols.append(col)
        cols.append(col)
        
        #create n - 1 columns using a conditional distribution based on the previous column
        for _ in range(1, n):
            col1, col2 = self.createWeakCol(col)
            cols.append(col1)
            cols.append(col2)
            col = col1
        
        return cols
    
    """
    Helper Method to save the dataset to disk
    """
    def saveDataset(self):
        folders = os.listdir(self.saveLoc)
        if (len(folders) == 0): val = "0"
        else: 
            maxVal = 0
            for ff in folders:
                try:
                    maxVal = max(maxVal,int(ff.strip("generatedDataset_")))
                except:
                    pass
            val = str(maxVal + 1)
        
        datasetPath = os.path.join(self.saveLoc, "generatedDataset_" + val)
        os.mkdir(datasetPath)
        
        #save the 2 datasets
        self.dataset1.to_csv(os.path.join(datasetPath, 'dataset1.csv'))
        self.dataset2.to_csv(os.path.join(datasetPath, 'dataset2.csv'))
        
        #save the associated metadata
        with open(os.path.join(datasetPath, 'metdata.json'), 'w') as f:
            json.dump(self.config, f)


def generateDataset(config):

    if not os.path.exists('./data/gen'): os.mkdir('./data/gen')
    dG = datasetGenerator(config)
    dG.createDataset()
    dG.saveDataset()
    print('Generated Fake Dataset')
    


