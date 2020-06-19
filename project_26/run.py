
import src.scrape_apk as scraper
import src.create_matrices as cm
import src.model as model
import json
import os
from random import sample
import sys
import src.Filter_Coef as fc
import src.Correlation_Coef as cc
import src.Percent_API as pa


def get_apk(**kwargs):
    """
    method to run multi class malware category detection pipeline
    """
    #loads in input parameters into local variables 
    outpath = kwargs['outpath']
    scrape = kwargs['scrape_data']
    categories = kwargs['categories']
    num_apps = kwargs['number_of_apps_per_cat']
    reread = kwargs['re_read']
    malware_path = kwargs['malware_path']
    num_malware = kwargs['num_malware_apps']
    malware_cats = kwargs['malware_categories']
    load_matrices = kwargs['load_matrices']
    corr = kwargs['corr_coef']
    #considers the following malware categories given the keyword 'all' is passed in
    if malware_cats == 'all':
        malware_cats = ["Andup","BankBot","DroidKungFu","FakeAngry","FakeAV","FakeDoc",\
                        "Fjcon","GingerMaster","Kemoge","Koler","Ksapp","Kyview","Minimob","MobileTX",\
                        "Mtk","Nandrobox","Obad","Roop","SimpleLocker","Univert","Youmi"]
    #creates output data directory
    if not os.path.exists(outpath):
            os.mkdir(outpath)
    #runs scraper to get apps from apkpure.com
    if scrape:
        print('Scraping data')
        scraper.run_scraper(categories, num_apps,outpath)
    
    print('Getting API info')
    #compiles metadata for all benign apps
    category_data,apps,apis,test_info, test_apps = cm.get_metadata(categories, outpath,reread)
    
    print('Getting malware info')
    #compiles metadata from all malware apps
    if reread:
        category_data,apps,apis, malware,test_info, test_apps, malware_test = cm.get_malware\
        (malware_path,num_malware ,category_data,apps,apis,malware_cats,test_info, test_apps,outpath)
    else:
        category_data,apps,apis, malware,test_info, test_apps, malware_test = cm.read_malware\
        (malware_cats, outpath,category_data,apps,apis,test_info, test_apps)
        
        
    print("Number of apps: ", len(apps))
    print("Number of apis: ", len(apis))
    #creates outpath for intermediate data files
    api_path = os.path.join(outpath, 'APIs')
    if not os.path.exists(api_path):
        os.mkdir(api_path)
    app_path = os.path.join(outpath, 'apps')
    if not os.path.exists(app_path):
        os.mkdir(app_path)
    ds_path = os.path.join(outpath, 'data structures')
    if not os.path.exists(ds_path):
        os.mkdir(ds_path)
    
    #removes APIs in less than 3 apps and stores intermediate data structures
    apis = cm.reduce_and_save_apps_apis(outpath,apps,apis,test_apps)
    cm.save_data(category_data, test_info,outpath)
    
    print("Number of apps: ", len(apps))
    print("Number of apis: ", len(apis))
    
    print()
    print('Number of test apps: ', str(len(test_apps)))
    
    #creates test and train kernels 
    if not load_matrices:
        print('Creating kernels')
        train_kernels,test_kernels = cm.get_kernels(category_data,apps,apis, test_info,test_apps,outpath)
    else:
        train_kernels,test_kernels = cm.load_kernels(outpath)

    #frees up memory
    del category_data
    del test_info
    
    #run SVM model to predict malware category
    print('Training SVM')        
    p1 = model.run_model(outpath,train_kernels, test_kernels,malware, malware_test,'original')
    #calculates coefficient correlation values and filters high and low coef APIs
    if corr:
        cc.main(outpath)
        fc.main(outpath)
            
    #calculates percentage APIs for each app
    pa.main(outpath)
    
    num_apis = [250]
    for n_api in num_apis:
        #infuses test APIs using 250 APIs based on percentage APIs
        train_kernels,test_kernels = cm.load_kernels(outpath,n_api)
        #run SVM model to predict malware category
        p2 = model.run_model(outpath,train_kernels, test_kernels,malware, malware_test,'infused_benign')
        #performs t-test based on predictions 
        model.run_ttest(p1,p2)

    
    
    
    


if __name__== "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == 'test-project':
        cfg = json.load(open('./config/test-params.json'))
    else:
        #params - number_of_xml_files, number_of_apps_per_category
        cfg = json.load(open('./config/data-params.json'))
    get_apk(**cfg)
