
######### EXAMPLE COMMANDS
## do these in order:
    ## py run.py createDict config/param_config.json
    ## py run.py queryData config/param_config.json config/query_config.json
    ## py run.py downloadData config/param_config.json

"""
Run.py is the main file ran on the command line by users. It uses the
functions from selenium_functions and cleaning to perform.

Currently choices are only createDict, queryData, downloadData. Entering these
without the files will prompt a question to ensure that users know the files
that are needed.
"""

####### imports to check files exist and user arguments
import os
import sys
import subprocess

sys.path.insert(0, 'src')
from selenium_functions import get_keywords, tcga_scrape, download_data


if __name__ == "__main__":
    args = sys.argv
    print('\n<> indicates an optional requirement\n')
    if len(args) == 1:
        print('Please specify function you want to use');

    elif 'createDict' in args[1]:
        print('After createDict specify Parameter.json <Data_dictionary.csv>')
        inp = input("Did your parameters fit this order? (y/n) \n")
        if inp.lower() != 'y': assert False, "Redo with correct order"

        if os.path.isfile(args[2]):
            if len(args) >= 4:
                get_keywords(args[2], args[3])
            else:
                get_keywords(args[2])
        else:
            print(f'{args[2]} does not exist')

    elif 'queryData' in args[1]:
        print('Order after queryData is Parameter.json Query.json ')
        inp = input("Did your parameters fit this order? (y/n) \n")
        if inp.lower() != 'y': assert False, "Redo with correct order"

        if os.path.isfile(args[2]) and os.path.isfile(args[3]):
            tcga_scrape(args[2], args[3])
        else:
            if os.path.isfile(args[2]) == False:
                print(f'{args[2]} does not exist')
            if os.path.isfile(args[3]) == False:
                print(f'{args[3]} does not exist')

    elif 'downloadData' in args[1]:
        print('Order after queryData is Parameter.json <[CSVs/CSV patterns]>')
        print('CSVs can be obtained through * pattern or from json file.')
        print('However, make sure indicies in json file match.\n')

        print("Addition of command line patterns will override all " +
              "entered csv files from Parameters.json file,\n")

        inp = input("Did your parameters fit this order? (y/n) \n")
        if inp.lower() != 'y': assert False, "Redo with correct order"

        if os.path.isfile(args[2]):
            if len(args) >= 4:
                download_data(args[2], args[3:])
            else:
                download_data(args[2])
        else:
            if os.path.isfile(args[2]) == False:
                print(f'{args[2]} does not exist')

    else:
        print("Choices are currently only createDict, queryDict, and downloadData")

#code to product sample outputs, results can be found in testdata/samples
subprocess.call(['/opt/conda/bin/Rscript',  '--vanilla', 'outputs.r'])
