#!/usr/bin/python

import sys
import json
import shutil
import subprocess

DATA_PARAMS = 'config/config.json'
TEST_PARAMS = 'config/test-config.json'


def load_params(fp):
    with open(fp) as fh:
        param = json.load(fh)

    return param


def main(targets):

    # make the clean target
    if 'clean' in targets:
        shutil.rmtree('data/temp', ignore_errors=True)
        shutil.rmtree('data/out', ignore_errors=True)
        shutil.rmtree('data/test', ignore_errors=True)

    # make the project target
    if 'test-project' in targets:
        cfg = load_params(DATA_PARAMS)

        print('volcano')
        command1 = "./src/volcano_plot_script.r"
        subprocess.call([command1], shell=True, executable='/bin/bash')

        print('heatmaps')
        command2 = "./src/heatmap.r"
        subprocess.call([command2], shell=True, executable='/bin/bash')

    return


if __name__ == '__main__':
    targets = sys.argv[1:]
    main(targets)
