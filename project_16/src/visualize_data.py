""" Data Visualizations

visualize_data.py: Library code to create data visualizations,
such as KDE plots, histograms, and scatter plots.

"""

# Importing libraries
import pandas as pd
import numpy as np
import matplotlib
matplotlib.use('Agg', warn=False)
import matplotlib.pyplot as plt
import seaborn as sns

# Libraries for plotting curves
from sklearn.metrics import roc_curve, auc
from sklearn.metrics import roc_auc_score
import matplotlib.pyplot as plt
from sklearn.metrics import precision_recall_curve
from sklearn.metrics import average_precision_score
from itertools import cycle

# Suppress warnings
import warnings
warnings.simplefilter(action='ignore', category=UserWarning)




def plot_polygenic_risk_scores(fp):
    """
    Creates a histogram of the polygenic risk scores.
    
    :param fp: Filepath to csv file
    """
    
    simulated_df = pd.read_csv(fp)
    
    plt.hist(simulated_df['PRS'], bins=20)
    plt.title('Polygenic Risk Scores for Unbiased Population')
    plt.xlabel('Polygenic Risk Score')
    plt.ylabel('Frequency');
    
    

def plot_risk_across_classes(fp):
    """
    Creates a histogram of the polygenic risk scores.
    
    :param fp: Filepath to csv file
    """
    
    simulated_bias_df = pd.read_csv(fp)
    
    sns.kdeplot(simulated_bias_df[simulated_bias_df['Class'] == 0]['PRS'], label="Low Risk")
    sns.kdeplot(simulated_bias_df[simulated_bias_df['Class'] == 1]['PRS'], label="Medium Risk")
    sns.kdeplot(simulated_bias_df[simulated_bias_df['Class'] == 2]['PRS'], label="High Risk")
    plt.title('Distribution of PRS Across Classes')
    plt.xlabel('Polygenic Risk Score')
    plt.ylabel('Normalized Frequency')
    

    
def plot_multiclass_roc(clf_name, clf, X_test, y_test, n_classes, ax):
    """
    Plots the multiclass version of the Receiver Operating Characteristic (ROC) 
    curve, which shows the connection/trade-off between 
    the true positive rate and false positive rate
    
    :param clf_name: String of the model's name
    :param clf: The trained model
    :param X_test: Test data of the features
    :param y_test: Test data of the labels
    :param n_classes: Number of classes
    :param figsize: Size of the ROC curve plot
    :param ax: Axis of subplot to save plot to, otherwise will create new figure
    """
    
    # try to run decision_function(), which is contained in 
    # all classifiers we used except for KNN
    try:
        y_score = clf.decision_function(X_test)
    
    # except: run predict_proba() for KNN
    except:
        y_score = clf.predict_proba(X_test)

    # dictionaries to hold false positive rate (fpr), 
    # true positive rate (tpr), ROC area under the curve (roc_auc),
    # and the classes
    fpr = dict()
    tpr = dict()
    roc_auc = dict()
    classes_dict = {0: 'Low Risk', 1: 'Medium Risk', 2: 'High Risk'}
    classes_color = {0: 'Green', 1: 'Yellow', 2: 'Red'}

    # one-hot encode labels to determine ROC curve
    y_test_dummies = pd.get_dummies(y_test, drop_first=False).values
    for i in range(n_classes):
        fpr[i], tpr[i], _ = roc_curve(y_test_dummies[:, i], y_score[:, i])
        roc_auc[i] = auc(fpr[i], tpr[i])

    # plot of the ROC for each class
    ax.plot([0, 1], [0, 1], 'k--')
    ax.lines[0].set_linestyle=('--')
    ax.set_xlim([0.0, 1.0])
    ax.set_ylim([0.0, 1.05])
    ax.tick_params(axis="x")
    ax.tick_params(axis="y")
    ax.set_xlabel('False Positive Rate', fontweight='bold')
    ax.set_ylabel('True Positive Rate', fontweight='bold')
    ax.set_title(clf_name, fontweight='bold')
    for i in range(n_classes):
        sns.lineplot(fpr[i], tpr[i], label='%s (Area = %0.2f)' % (classes_dict[i], roc_auc[i]),
                     ax=ax, color=classes_color[i])
    ax.legend(loc='bottom right')
    ax.grid(alpha=.4)
    sns.despine(ax=ax)

    
    
def plot_precision_recall(clf_name, clf, X_test, y_test, n_classes, ax):
    """
    Plots the multiclass version of the Precision-Recall (P-R) 
    curve, which shows the tradeoff between precision and recall 
    for different threshold and is a useful measure of success 
    of prediction when the classes are very imbalanced.
    
    :param clf_name: String of the model's name
    :param clf: The trained model
    :param X_test: Test data of the features
    :param y_test: Test data of the labels
    :param n_classes: Number of classes
    :param figsize: Size of the ROC curve plot
    :param ax: Axis of subplot to save plot to, otherwise will create new figure
    """
    
    # try to run decision_function(), which is contained in 
    # all classifiers we used except for KNN
    try:
        y_score = clf.decision_function(X_test)
    
    # except: run predict_proba() for KNN
    except:
        y_score = clf.predict_proba(X_test)

    # dictionaries to hold precision, 
    # recall, average precision,
    # and the classes
    precision = dict()
    recall = dict()
    average_precision = dict()
    classes_dict = {0: 'Low Risk', 1: 'Medium Risk', 2: 'High Risk'}
    classes_color = {0: 'Green', 1: 'Orange', 2: 'Red'}

    # one-hot encode labels to determine ROC curve
    y_test_dummies = pd.get_dummies(y_test, drop_first=False).values
    for i in range(n_classes):
        precision[i], recall[i], _ = precision_recall_curve(y_test_dummies[:, i], y_score[:, i])
        average_precision[i] = average_precision_score(y_test_dummies[:, i], y_score[:, i])
        
    # A "micro-average": quantifying score on all classes jointly
    # Micro-averaging is plotting a precision-recall curve by considering 
    # each element of the label indicator matrix as a binary prediction
    precision["micro"], recall["micro"], _ = precision_recall_curve(y_test_dummies.ravel(),
        y_score.ravel())
    average_precision["micro"] = average_precision_score(y_test_dummies, y_score,
                                                         average="micro")
    
    # plot of the P-R curve for each class
    ax.plot([0, 1], [1, 0], 'k--')
    ax.lines[0].set_linestyle=('--')
    ax.set_xlim([0.0, 1.0])
    ax.set_ylim([0.0, 1.05])
    ax.tick_params(axis="x")
    ax.tick_params(axis="y")
    ax.set_xlabel('Recall', fontweight='bold')
    ax.set_ylabel('Precision', fontweight='bold')
    ax.set_title(clf_name, fontweight='bold')
    for i in range(n_classes):
        sns.lineplot(recall[i], precision[i], label='%s (Area = %0.2f)' % (classes_dict[i], average_precision[i]),
                     ax=ax, color=classes_color[i])
    ax.legend(loc='bottom right')
    ax.grid(alpha=.4)
    sns.despine(ax=ax)
