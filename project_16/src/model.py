""" Model Building

model.py: Library code to construct a Support Vector 
Machine model on population SNP data and generate/save results 
for the model's performance.

"""

# Importing libraries
import pandas as pd
import numpy as np
import json
import matplotlib.pyplot as plt
# Models
from sklearn.linear_model import LogisticRegression
from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC
from sklearn.naive_bayes import GaussianNB
from sklearn.ensemble import RandomForestClassifier
from sklearn.tree import DecisionTreeClassifier
# Model utils
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report
# Ignoring warnings
import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)

# Importing scripts
import visualize_data as vd



modelNames = {
      "LogisticRegression": LogisticRegression,
      "KNeighborsClassifier": KNeighborsClassifier,
      "SVC": SVC,
      "GaussianNB": GaussianNB,
      "RandomForestClassifier": RandomForestClassifier,
      "DecisionTreeClassifier": DecisionTreeClassifier
}
    
prettyNames = {
      "LogisticRegression": "Logistic Regression",
      "KNeighborsClassifier": "K Nearest Neighbors",
      "SVC": "Support Vector Machine",
      "GaussianNB": "Gaussian Naive Bayes",
      "RandomForestClassifier": "Random Forest Classifier",
      "DecisionTreeClassifier": "Decision Tree Classifier"
}



def build_model(train_sim_fp, test_gwas_fp, outpath, test_sim_fp=None):
    """
    Builds models on training GWAS simulation with the SNP subset
    given by the test GWAS summary statistics
    
    :param train_sim_fp: Filepath to train GWAS simulated data
    :param test_gwas_fp: Filepath to test GWAS data summary data
    :param outpath: Path to save outputs to
    :param test_sim_fp: Filepath to test GWAS simulated data, if None
    then splits simulated training data into a train/test split
    :returns: Dictionary of model types and fit models
    """
    
    print('Building and testing model..')
    
    label_cols = ['Class', 'PRS']
    
    # Loading in model GWAS data
    model_data = pd.read_csv(test_gwas_fp, usecols=['variant_id'])
    model_snps = model_data['variant_id'].unique()
    
    # Loading in simulated data and filtering to model SNPs
    train_data = pd.read_csv(train_sim_fp)
    sim_snps = train_data.drop(label_cols, axis=1).columns
    keep_cols = list(set(sim_snps).intersection(model_snps))
    train_data = train_data[keep_cols+label_cols]
    
    # Creating training and test set, using simulated training data
    # if it exists, otherwise splitting the train data into a training
    # set and a test set
    X = train_data.drop(label_cols, axis=1)
    y = train_data['Class']
    if not test_sim_fp:
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=.2)
    else:
        X_train = X
        y_train = y
        test_data = pd.read_csv(test_sim_fp)[keep_cols+label_cols]
        X_test = test_data.drop(label_cols, axis=1)
        y_test = test_data['Class']
    
    model_params = json.load(open('config/model-params.json', 'r'))

    # Iterate through models
    rows = 2
    cols = 3
    roc_fig, roc_axs = plt.subplots(rows, cols, figsize=(15, 10))
    pr_fig, pr_axs = plt.subplots(rows, cols, figsize=(15, 10))

    finalModels = {}
    fullResults = pd.DataFrame()
    shortResults = pd.DataFrame()
    i = 0
    for name, model in modelNames.items():
        row = i // cols
        col = i % cols
        model_fit, model_short, model_full = get_model_results(model_params[name], name,
                                          model, X_train, X_test, y_train, y_test)
        model_short['Model Type'] = name
        model_full['Model Type'] = name
        fullResults = fullResults.append(model_full)
        shortResults = shortResults.append(model_short[['Model Type', '0', '1', '2']])
        finalModels[name] = model_fit

        vd.plot_multiclass_roc(prettyNames[name], model_fit, X_test, y_test, 3, roc_axs[row, col])
        vd.plot_precision_recall(prettyNames[name], model_fit, X_test, y_test, 3, pr_axs[row, col])
        i += 1

    roc_fig.savefig(f'{outpath}/ROC_plots.png')
    pr_fig.savefig(f'{outpath}/PR_plots.png')
    
    
    # Saving model plots
    shortResults.to_csv(f'{outpath}/short_results.csv')
    fullResults.to_csv(f'{outpath}/full_results.csv')
    print('\nFull model results saved at {}'.format(outpath))



def get_model_results(model_params, model_name, sklearn_model, X_train, X_test, y_train, y_test):
    """
    Fits the given model and returns the fit model and results
    
    :param model_params: parameters to use for the model
    :param model_name: name of the model type
    :param sklearn_model: pointer to sklearn model class
    :param X_train: X training set
    :param X_test: X test set
    :param y_train: y training set
    :param y_test: y test set
    :returns: tuple of the model and the model results
    """
    model = sklearn_model(**model_params)
    model.fit(X_train, y_train)
    
    # Making predictions
    preds = model.predict(X_test)

    # Get results by class
    byClass = {str(x_class): [] for x_class in [0, 1, 2]}
    yt = y_test.reset_index(drop=True)
    ypreds = pd.Series(preds)
    for x_class in [0, 1, 2]:
        classFilter = yt == x_class
        byClass[str(x_class)].append(np.mean(yt[classFilter] == ypreds[classFilter]))
    # Saving classification report
    target_names = ['Low Risk', 'Medium Risk', 'High Risk']
    return (model,
            pd.DataFrame(byClass),
            pd.DataFrame(classification_report(y_test, preds, 
                                               target_names=target_names, 
                                               output_dict=True)))
