import numpy as np
import torch
import torch.nn as nn
import pandas as pd
import glob
import gensim
import scipy
from sklearn import svm
from sklearn.ensemble import RandomForestClassifier, GradientBoostingClassifier
from sklearn.model_selection import train_test_split
from gensim.models import Word2Vec, KeyedVectors
import matplotlib.pyplot as plt


def API_mean_embedding(model, APP_idx, A):
    """
    Calculates the mean embedding of all APIs called by the APP for node2vec
    """
    API_mean_emd = []
    ser = pd.Series(A[APP_idx].toarray()[0])
    for i in ser[ser == 1].index:
        try:
            API_mean_emd.append(model[str(i)])
        except:
            continue
    return np.mean(np.array(API_mean_emd), axis = 0)

def API_mean_embedding_metapath(APP_idx, dic, A):
    """
    Calculates the mean embedding of all APIs called by the APP for metapath2vec
    """
    API_mean_emd = []
    ser = pd.Series(A[APP_idx].toarray()[0])
    for i in ser[ser == 1].index:
        try:
            API_mean_emd.append(dic[i])
        except:
            continue
    return np.mean(np.array(API_mean_emd), axis = 0)


class Net(nn.Module):
    """
    Neural Network that inputs API mean embedding and outputs APP embedding
    """
    def __init__(self):
        # Initialization.
        super(Net, self).__init__()
        self.input_size  = 128
        self.fc1_output_size = 200       # Hidden size: 100.
        self.fc2_output_size = 200
        self.fc3_output_size = 128
        self.fc1 = nn.Linear(self.input_size, self.fc1_output_size)
        self.fc2 = nn.Linear(self.fc1_output_size, self.fc2_output_size)
        self.fc3 = nn.Linear(self.fc2_output_size, self.fc3_output_size)
        self.activate = nn.Tanh()

    def forward(self, input):
        # Forward function.
        out = self.fc1(input)
        out = self.activate(out)
        out = self.fc2(out)
        out = self.activate(out)
        out = self.fc3(out)
        return out


def train_net(clf, out_path, epochs, inputs, targets, labels_train, labels_test, batch_size):
    """
    Trains the neural network
    """
    device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
    inputs = torch.tensor(inputs).type(torch.DoubleTensor).to(device)
    targets = torch.tensor(targets).type(torch.DoubleTensor).to(device)

    train_amount = int(0.8 * len(inputs))
    inputs_train, inputs_val = inputs[:train_amount], inputs[train_amount:]
    targets_train, targets_val = targets[:train_amount], targets[train_amount:]

    net = Net().double()     # Create the network instance.
    net.to(device)  # Move the network parameters to the specified device.

    opt       = torch.optim.Adam(net.parameters(), lr=0.001)
    loss_func = nn.MSELoss()

    train_losses = []
    val_losses = []
    test_losses = []
    test_accs = []

    best_acc = 0
    for i in range(epochs):
        net.train()
        net.zero_grad()
        for j in range(train_amount//batch_size):
            out = net(inputs_train[batch_size*j:batch_size*(j+1)])
            loss = loss_func(out, targets_train[batch_size*j:batch_size*(j+1)])
            loss.backward()
            opt.step()
            opt.zero_grad()

        if (i+1) % 5 == 0:
            net.eval()
            X_val = net(inputs_val).cpu().detach()
            Y_val = labels_train[train_amount:]
            acc = clf.score(X_val, Y_val)
            if acc >= best_acc:
                torch.save(net, out_path + '/net.model')
                best_acc = acc
