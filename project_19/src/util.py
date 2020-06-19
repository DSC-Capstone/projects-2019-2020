import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt


def plot_pca(filename):
    df = pd.read_table(filename ,header = None,sep=' ')
    df = df[[0,2,3,4,5,6]]
    df.columns = ['AD','PC1','PC2','PC3','PC4','PC5']
    sns.set(font_scale=1.2)
    sns.pairplot(df, hue='AD', vars=['PC1','PC2','PC3','PC4','PC5'])
    plt.savefig('PCA.png')

def plot_eigenval(filename): 
    eigenval = pd.read_table(filename ,header=None)
    eigenval = eigenval.reset_index()
    eigenval.columns = ['PCs', 'eigenval']
    eigenval.plot.scatter(x='PCs',y='eigenval', figsize = (9,6))
    plt.gca().set_xticks(eigenval['PCs'].unique())
    plt.savefig('eigenval.png')