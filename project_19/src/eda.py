import shlex
import subprocess as sp
import os
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

def filter_recode(input_file, covar_file, data_dir, filename, hwe, maf, geno, mind, chr_, min_):
    if not os.path.exists(data_dir):
        os.makedirs(data_dir)
    # check_sex
    cmd = shlex.split(("plink2 --file {}/{} --check-sex --gplink --out {}/check_sex --recode").format(data_dir, input_file, data_dir))
    sp.call(cmd)
    # filter: covar, hwe, maf, geno, mind, chr, min
    cmd = shlex.split(("plink2 --file {}/check_sex --covar {}/{} --hwe {} --maf {} --geno {} --mind {} --chr {} --min {} --genome --gplink --out {}/{} --recode").format(data_dir, data_dir, covar_file, hwe, maf, geno, mind, chr_ , min_, data_dir, filename))
    sp.call(cmd)
    
def pca(data_dir, input_file):
    cmd = shlex.split(("plink2 --file {}/{} --gplink --out {}/pca --pca var-wts --recode").format(data_dir, input_file, data_dir))
    sp.call(cmd)
    
def plot_pca(filename, output_dir):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    df = pd.read_table(filename ,header = None,sep=' ')
    df = df[[0,2,3,4,5,6]]
    df.columns = ['AD','PC1','PC2','PC3','PC4','PC5']
    sns.pairplot(df, hue='AD', vars=['PC1','PC2','PC3','PC4','PC5'])
    sns.set(font_scale=1.5)
    plt.savefig(output_dir+'PCA.png')

def plot_eigenval(filename, output_dir): 
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    eigenval = pd.read_table(filename ,header=None)
    eigenval = eigenval.reset_index()
    eigenval.columns = ['PCs', 'eigenval']
    eigenval.plot.scatter(x='PCs',y='eigenval', figsize = (9,6))
    plt.gca().set_xticks(eigenval['PCs'].unique())
    plt.savefig(output_dir+'eigenval.png')