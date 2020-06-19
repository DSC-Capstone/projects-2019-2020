import os
import numpy as np
import pandas as pd
import gensim.models
from gensim import utils
from src.learningPipeline.graph import *
import networkx as nx
import random

"""
Class for loading and evaluating the node2vec model
"""
class Model:
    
    def __init__(self, corpus, embedder = None, model = None):
        self.corpus = corpus
        self.embedder = embedder
        self.model = model
    
    def trainW2V(self, numWalks, walkLength, embedLength):
        sentences = test.corpus.simulate_walks(numWalks,walkLength)
        if (self.embedder == None):
            self.embedder = Word2Vec(sentences, size=embedLength, workers=4)
        else:
            self.embedder.build_vocab(more_sentences, update=True)
            self.embedder.train(sentences, total_examples=self.embedder.corpus_count, epochs=self.embedder.iter)
    
    def saveW2V(self, fname):
        self.embedder.save(fname)
    
    def loadW2V(self, fname):
        self.embedder = gensim.models.Word2Vec.load(fname)
    
    def trainModel(self):
        trainData = corpus.train
        pass
    
    def saveModel(self, fname):
        pass
    
    def loadModel(self, fname):
        pass
    
    def evaluate(self, setType = 'train'):
        pass
    
    