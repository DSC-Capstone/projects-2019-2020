#!/usr/bin/env python
import sys
import subprocess
from argparse import ArgumentParser
sys.path.append('./src')
import pickle

import data_collection


def str2bool(v):
    if v.lower() in ('yes', 'true', 't', 'y', '1'):
        return True
    elif v.lower() in ('no', 'false', 'f', 'n', '0'):
        return False
    else:
        raise argparse.ArgumentTypeError('Boolean value expected.')

if __name__ =="__main__":
    targets = sys.argv[1:]
    
    #No arguments passed in
    if len(targets)==0:
        print("Please add flags [--train], [test-project], [--input], [--mask]")
        sys.exit(2)
    
    #Calls Single Arguments
    if targets[0] in ["scrape", "test-project", "features"]:
        
        #Perform test project output
        if targets[0]=="test-project":
            using_mask = False
            subprocess.call(['./src/run_dgp_inpainting.sh', str(False), 'degraded_spoils_of_war.jpeg', str(using_mask), ''])
            print("Output saved in ./data/out")
            sys.exit(2)
                  
        #Perform data collection
        if targets[0]=="scrape":
            scraped_images = data_collection.scrape_ww2_images(int(targets[1]), targets[2])
            
            #Save list of scraped images
            file_to_write('../data/test/'+str(targets[2])+'_images.data')
            with open(file_to_write, 'wb') as filehandle:
                # store the data as binary data stream
                pickle.dump(scraped_images, filehandle)
            print("War images written to", file_to_write)
            sys.exit(2)
                  
        if targets[0]=="features":
            feat = data_collection.run_features()
            print("Calculated features, located in ../data/out")
            sys.exit(2)
    
    #Create parser for flags
    parser = ArgumentParser(description='Parser for flags')
    parser.add_argument(
        '--train', type=str2bool, default=False,
        help='Use weights for training'
                 ' (default: %(default)s)') 
    
    parser.add_argument(
        '--input', type=str, default='',
        help='Input image: Degraded image to be restored '
                 ' (default: %(default)s)')
    
    parser.add_argument(
        '--mask', type=str, default='',
        help='Mask image: Overlayed mask to be applied for inpainting '
                 ' (default: %(default)s)')
    config = vars(parser.parse_args())
    
    #Enforce Input File name
    if config['input']=='':
        print("Please enter a input file name --input [example.png]")
        sys.exit(2)
        
    #Check if mask path passed in
    if config['mask']=='':
        using_mask = False
    else:
        using_mask = True
        
    subprocess.call(['./src/run_dgp_inpainting.sh', str(not config['train']), config['input'], str(using_mask), config['mask']])
    

