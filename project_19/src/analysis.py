import shlex
import subprocess as sp
import os
from bioinfokit import analys, visuz
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

def logistic_regression(data_dir, how = 'pca1'):
    if how == 'pca1':
        cmd = shlex.split(("plink2 --adjust --allow-no-sex --ci .95 --covar {}/pca.eigenvec --covar-number 1 --file {}/pca --gplink --logistic --out {}/pca1 --recode").format(data_dir, data_dir, data_dir))
        sp.call(cmd)
        
def plot_manhattan(file, output_dir):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    df = pd.read_table(file, delim_whitespace=True)
    visuz.marker.mhat(df=df, chr='CHR',pv='P',gwas_sign_line=True, dim=(15,10))
    os.rename("manhatten.png", output_dir+"manhattan.png")
    

def regional_manhattan(df, gene, chromo, start, end, gap=500000, dim = (15,10)):
    
    def set_color(pos, start, end, gene):
        if pos<start:
            return 'AALeft'
        elif pos>end:
            return 'ZRight'
        return gene
    temp=df[(df['BP'].astype(int)>(int(start)-gap)) & (df['BP'].astype(int)<(int(end)+gap)) & (df['CHR']==chromo)]
    
    temp['color'] = temp['BP'].apply(lambda x: set_color(x, start, end, gene))
    visuz.marker.mhat(df=temp, chr='color',pv='P', gwas_sign_line=True, dim=dim, axxlabel='{} (Chromosome {})'.format(gene, str(chromo)), dotsize=10)

def new_regional_manhattan (df, gene, chromo, start, end, gap=500000, dim = (10,6)):
    def set_color(pos, start, end, gene):
        if pos<start:
            return 'Left'
        elif pos>end:
            return 'Right'
        return gene
    temp=df[(df['BP'].astype(int)>(int(start)-gap)) & (df['BP'].astype(int)<(int(end)+gap)) & (df['CHR']==chromo)]
    temp['gene'] = temp['BP'].apply(lambda x: set_color(x, start, end, gene))
    temp['-log(P)'] = -np.log10(temp['P'])

    plt.figure(figsize=dim)
    sns.scatterplot(data=temp, x='BP', y='-log(P)', hue = 'gene').set(ylim=(0, 8))
    plt.title('Regional Manhattan Plot for {} (chr{})'.format(gene, chromo))
    plt.xlabel('Based Pairs')
    plt.savefig('manhattan.png')
    
def plot_regional_manhattan(file, gene_csv, output_dir, dim=(10,6)):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    df = pd.read_table(file, delim_whitespace=True)
    genes = pd.read_csv(gene_csv)
    for i, row in genes.iterrows():
        new_regional_manhattan(df, row['gene'], row['chr'], row['start'], row['end'], dim=dim)
        os.rename("manhattan.png", output_dir+"{}.png".format(row['gene'].replace('/', '_')))
        
def qqplot(file, output_dir, col_name = 'P'):
    data = pd.read_table(file, delim_whitespace=True)[col_name]
    y = -np.log10(data).sort_values().dropna()
    X = -np.log10(np.arange(1/len(y), 1, (1-1/len(y))/(len(y))))
    sns.set()
    sns.scatterplot(X, y, linewidth=0)
    plt.xlabel('-log(expected p-values)')
    plt.ylabel('-log(observed p-values)')
    sns.lineplot(x=-np.log10([1/len(y), 1]), y=-np.log10([1/len(y), 1]), color='red')
    plt.savefig(output_dir+'qqplot.png')
    
def meta(path, script, output_dir):
    cmd = shlex.split(("{} {}").format(path, script))
    sp.call(cmd)
    cmd = shlex.split(("mv METAANALYSIS1.TBL {}").format(output_dir))
    sp.call(cmd)
    cmd = shlex.split(("mv METAANALYSIS1.TBL.info {}").format(output_dir))
    sp.call(cmd)