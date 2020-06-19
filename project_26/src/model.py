from sklearn.metrics import classification_report
from sklearn.model_selection import train_test_split
from sklearn import svm
from sklearn.metrics import multilabel_confusion_matrix
import numpy as np
import src.Malware_Types as mt
from scipy.stats import ttest_ind
from sklearn.manifold import TSNE
import os



def run_model(p,train_kernels, test_kernels,malware_train,malware_test,suffix = None):
    """
    Run the SVM model to classify apps based on the category of malware
    Params - 1. p - outpath of data directory 
             2. train_kernels - dictionary containing training kernels {kernel_name: kernel} 
             3. test_kernels - dictionary containing testing kernels {kernel_name: kernel}
             4. malware_train - dictionary containing app IDs of malware training apps {malware_family: [apps]}
             5. malware_test - dictionary containing app IDs of malware test apps {malware_family: [apps]}
             6. suffix - string for the suffix of outfiles 
    return - 1. preds - list of predictions made by model 
    """
    #gets metadata of malware families
    df = mt.getMalwareData()
    #create y train and test lists
    y_train = [0] * train_kernels['a_at'].shape[0]
    y_test = [0] * test_kernels['a_at'].shape[0]
    
    labels = {}
    #iterates through malware apps in training set
    for family,apps in malware_train.items():
        #get malware type from the given family
        mal_type = (mt.condensedFaimlyData(df,family)['Malware_Type'].iloc[0])
        #classifies trojan subcategories as trojan
        if 'Trojan' in mal_type:
            mal_type = 'Trojan'
        #keeping track of different categories with label
        if mal_type not in labels:
            labels[mal_type] = len(labels) + 1
        
        i = labels[mal_type]
        #update training labels based on malware type 
        for app_id in apps:
            y_train[app_id] = i
    #outputs training labels    
    f=open(p+'/Matrix_data/training_labels.csv','w')
    for ele in y_train:
        f.write(str(ele)+'\n')

    #iterating through malware apps in testing set      
    for family,apps in malware_test.items():
        #get malware type from the given family
        mal_type = (mt.condensedFaimlyData(df,family)['Malware_Type'].iloc[0])
        #classifies trojan subcategories as trojan
        if 'Trojan' in mal_type:
            mal_type = 'Trojan'
        i = labels[mal_type]
        #update training labels based on malware type 
        for app_id in apps:
            y_test[app_id] = i
    #outputs testing labels   
    f=open(p+'/Matrix_data/testing_labels.csv','w')
    for ele in y_test:
        f.write(str(ele)+'\n')
        
    #initialising SVM and category labels
    clf = svm.LinearSVC(C=0.1, multi_class = 'ovr', dual = False)
    target_names = ['Benign'] + list(labels.keys())
    
    #creating outpath to save reports
    report_path = os.path.join(p, 'output')
    if not os.path.exists(report_path):
        os.mkdir(report_path)
    #outfiles for report, TSNE and SVM weights
    f = open(report_path + '/report_' + suffix + '.txt','w') 
    f1 = open(report_path + '/tsne_' + suffix + '.txt','w') 
    f2 = open(report_path + '/coef_' + suffix + '.txt','w') 
#     np.savetxt(f2, clf.classes_, delimiter=",")
    f2.write('/n')
    #list for predictions across all kernels 
    all_preds = []
    for k,x in train_kernels.items():
        #fitting training data and make predictions for testing data
        clf.fit(x, y_train)
        X_test = test_kernels[k]
        preds = clf.predict(X_test)
        all_preds.append(preds)
        #calculating TSNE in 2-D
        X_embedded = TSNE(n_components=2).fit_transform(x.todense())
        
        #creates classification report and confusion matrix
        report = classification_report(y_test,preds, target_names=target_names)
        report_2 = multilabel_confusion_matrix(y_test, preds)
        print(k)
        #output report to respective files
        f.write(k)
        f1.write(k)
        f2.write(k)
        
        f.write('\n')
        f1.write('\n')
        f2.write('\n')
        
        f.write(report)
        f.write('\n') 
        for i,m in enumerate(report_2):
            f.write(target_names[i])
            f.write('\n')
            np.savetxt(f, m, delimiter=",", fmt = '%d')
        f.write('\n')
        
        f1.write('TSNE')
        f1.write('\n')
        np.savetxt(f1, X_embedded, delimiter=",")
        f1.write('\n')
        f2.write('coefs')
        f2.write('\n')
        np.savetxt(f2, clf.coef_, delimiter=",")

        f2.write('\n')
        f2.write('intercept')
        f2.write('\n')
        np.savetxt(f2, clf.intercept_, delimiter=",")

    
    f1.close()
    f2.close()
    #max voting ensemble classifier
    preds = []
    f1 = open(report_path+'/preds_'+suffix+'.csv','w')
    for i in zip(*all_preds):
        #gets mode of all predictions 
        preds.append(max(set(i), key=i.count))
        f1.write(str(preds[-1]))
        f1.write('\n')
    f.write('Ensemble - Max Voting')
    f.write('\n')
    #generates classification report and confusion matrix
    report = classification_report(y_test,preds, target_names=target_names)
    report_2 = multilabel_confusion_matrix(y_test, preds)
    
    f.write(report)
    f.write('\n') 
    for i,m in enumerate(report_2):
        f.write(target_names[i])
        f.write('\n')
        np.savetxt(f, m, delimiter=",", fmt = '%d')
    f.write('\n')
        
    f.close()
    return preds
    
def run_ttest(p1,p2):
    """
    Performs a two sided t-test given two arrays
    Params - 1. p1 - predictions of base model
             2. p2 - predictions of infused APIs
    """
    #running t-test based on predictions made by SVM
    print(ttest_ind(p1,p2))
    

    

                      

    
