import pandas as pd
import urllib.request
import os
from skimage.color import rgb2hsv
from skimage.color import rgb2gray
from skimage import io
import numpy as np
import random
from skimage.filters.rank import entropy
from skimage import io
from skimage.morphology import disk
import time
from matplotlib import pyplot as plt
from matplotlib.pyplot import figure
import umap.umap_ as umap
from sklearn.model_selection import train_test_split
import seaborn as sns
import tensorflow.compat.v1 as tf
tf.disable_v2_behavior()

from keras.applications.vgg16 import VGG16
from keras.preprocessing.image import load_img
from keras.preprocessing.image import img_to_array
from keras.applications.vgg16 import preprocess_input

from keras.models import Sequential
from keras.layers.core import Flatten
from keras.optimizers import SGD
from keras import backend as K
from PIL import Image
from matplotlib.offsetbox import OffsetImage
from matplotlib.offsetbox import AnnotationBbox

# retreive sample set and calls on all the other functions to
# generate basic image stats and create graphs
def sample_genres(list_of_genres, sample_size, df, folder):
    ''' list_of_genres: a list of the genres that we are working with
        sample_size: an integer of the sample size that we would retrieve
        folder: a string of the folder that would store the book cover images
    '''
    df = df.drop(df[df.cover_id == 'None'].index)
    sampled_df = pd.DataFrame()
    for genre in list_of_genres:
        sampled_df = pd.concat([df[df.genre == genre].sample(int(sample_size/5)), sampled_df])

    metadata = download_images(sampled_df, folder)

    #create graphs
    saturation_histograms(metadata, 'output')
    entropy_histograms(metadata, 'output')
    brightness_histograms (metadata, 'output')

    # creates umap from basic image stats
    embedding_df = create_umap (metadata, 'output')

    # creates thumbnails of the book covers
    thumbnail_list = create_img_thumbnails (metadata, folder, 'thumbnails')
    embedding_df['thumbnail_path'] = thumbnail_list
    embedding_df.columns = ['x', 'y', 'thumbnail_path']

    #creates umap of thumbnails from basic image stats
    create_umap_thumbnail(embedding_df, 'UMAP of Book Cover Features')

    metadata.to_csv('src/metadata.csv', index = False)
    return sampled_df

#gets entropy
def get_entropy(image_file):
    img = io.imread(image_file)
    gray_img = rgb2gray(img)
    entr_img = entropy(gray_img, disk(10))
    return (np.mean(entr_img))

# get pixel counts
def pixcount(painting):
    return painting.shape[0] * painting.shape[1]

#get saturation
def mean_saturation(link):
    hsv_img = rgb2hsv(link)
    saturation_img = hsv_img[:,:, 1]
    satur = np.mean(saturation_img, axis=(0,1))
    return satur

#get hue
def mean_hue(link):
    hsv_img = rgb2hsv(link)
    hue_img = hsv_img[:, :, 0]
    return np.mean(hue_img, axis=(0,1))

#get brightness
def mean_brightness(link):
    hsv_img = rgb2hsv(link)
    value_img = hsv_img[:, :, 2]
    return np.mean(value_img)

#creates folder of the passed in param
def create_directory (folder):

    if not os.path.isdir(folder):
        os.makedirs(folder)

#downloads images and extracts features
def download_images(meta_df, folder):
    ''' meta_df: adataframe of the sample set that includes cover_id
        folder: a string of the name of the folder where the images would
                be saved at
                '''
    create_directory(folder)
    pix = []
    brightness = []
    hue = []
    saturation = []
    entropy = []
    count = 0

    # goes through all of the cover id to download images
    for coverid in meta_df['cover_id']:
        if count == 90:
            time.sleep(350)
            count = 0
        count += 1
        if coverid == 'None':
            continue
        # gets image from the Open Library API
        link = "http://covers.openlibrary.org/b/id/{}-L.jpg".format(coverid)

        rendered_link = io.imread(link)

        pix.append(pixcount(rendered_link))
        brightness.append(mean_brightness(rendered_link))
        hue.append(mean_hue(rendered_link))
        saturation.append(mean_saturation(rendered_link))

        filename = "{}/{}.jpg".format(folder,coverid)

        #download the book cover images
        urllib.request.urlretrieve(link, filename)
        entropy.append(get_entropy(filename))

    #appends the lists of basic image stats to a dataframe
    meta_df['pixel_count'] = pix
    meta_df['mean_brightness'] = brightness
    meta_df['mean_hue'] = hue
    meta_df['mean_saturation'] = saturation
    meta_df['entropy'] = entropy

    return meta_df

def saturation_histograms(metadata, file):
    create_directory(file)
    genres = ['Fantasy', 'Horror', 'Crime', 'Science', 'Romance']
    for genre in genres:
        saturation = metadata[metadata.genre == genre].mean_saturation
        bins = np.linspace(0, 1, 20)
        plt.figure(figsize = (10,8), dpi = 80)
        plt.hist([saturation],
                 bins, label=[genre])
        plt.legend(loc='best')
        plt.xlabel('Mean Saturation')
        plt.ylabel('count')
        plt.title('Histogram: mean saturation of {}'.format(genre))
        plt.savefig('{}/histogram_saturation_{}.png'.format(file, genre), dpi = 100)

def entropy_histograms (metadata, file):
    create_directory(file)
    genres = ['Fantasy', 'Horror', 'Crime', 'Science', 'Romance']
    for genre in genres:
        entropy = metadata[metadata.genre == genre].entropy
        bins = np.linspace(0, 7, 20)
        plt.figure(figsize = (10,8), dpi = 80)
        plt.hist([entropy],
                 bins, label=[genre])
        plt.legend(loc='best')
        plt.xlabel('Entropy')
        plt.ylabel('count')
        plt.title('Histogram: entropy of {}'.format(genre))
        plt.savefig('{}/histogram_entropy_{}.png'.format(file, genre), dpi = 100)

def brightness_histograms (metadata, file):
    create_directory(file)
    genres = ['Fantasy', 'Horror', 'Crime', 'Science', 'Romance']
    for genre in genres:
        brightness = metadata[metadata.genre == genre].mean_brightness
        bins = np.linspace(0, 1, 20)
        plt.figure(figsize = (10,8), dpi = 80)
        plt.hist([brightness],
                 bins, label=[genre])
        plt.legend(loc='best')
        plt.xlabel('Mean Brightness')
        plt.ylabel('count')
        plt.title('Histogram: brightness of {}'.format(genre))
        plt.savefig('{}/histogram_brightness_{}.png'.format(file, genre), dpi = 100)

def hue_histograms (metadata, file):
    create_directory(file)
    genres = ['Fantasy', 'Horror', 'Crime', 'Science', 'Romance']
    for genre in genres:
        hue = metadata[metadata.genre == genre].mean_hue
        bins = np.linspace(0, 1, 20)
        plt.figure(figsize = (10,8), dpi = 80)
        plt.hist([hue],
                 bins, label=[genre])
        plt.legend(loc='best')
        plt.xlabel('Mean Hue')
        plt.ylabel('count')
        plt.title('Histogram: hue of {}'.format(genre))
        plt.savefig('{}/histogram_hue_{}.png'.format(file, genre), dpi = 100)

def create_umap (metadata, file):
    cover_data = metadata[['mean_brightness', 'mean_hue', 'mean_saturation', 'entropy']]

    reducer = umap.UMAP()
    embedding = reducer.fit_transform(cover_data)

    df = pd.DataFrame(embedding)
    df['label'] = metadata.genre
    df.columns = ['x', 'y', 'label']

    umap_plt = sns.lmplot( x='x', y='y', data=df, fit_reg=False, hue='label', legend=True)
    fig = umap_plt.fig
    fig.suptitle("UMAP of Book Cover Features",fontsize=12)
    umap_plt.savefig('{}/umap_of_book_features.png'.format(file), dpi = 100)
    return (pd.DataFrame(embedding))

def create_img_thumbnails(metadata,image_path,thumbnail_path):
    create_directory(thumbnail_path)
    size = 24, 32
    lst_thumbnails = []
    for cover_id in metadata['cover_id']:
        path = image_path+"/"+str(cover_id)+".jpg"
        im = Image.open(path)
        im.thumbnail(size)
        thumbnail_file = thumbnail_path+'/'+str(cover_id)+'.jpg'
        im.save(thumbnail_file)
        lst_thumbnails.append(thumbnail_file)
    return lst_thumbnails

def create_umap_thumbnail(umap_df, graph_title):
    fig, ax = plt.subplots(figsize=(10, 10), dpi=100)
    print(umap_df.columns)
    ax.scatter(umap_df['x'].values, umap_df['y'].values)
    coords = umap_df[['x','y','thumbnail_path']].values
    for i in range(len(coords)):

        img = OffsetImage(plt.imread(coords[i][2]))
        ab = AnnotationBbox(img, (coords[i][0], coords[i][1]), frameon=False)
        ax.add_artist(ab)

    plt.title(graph_title)
    fig.savefig('output/{}.jpg'.format(graph_title), dpi = 100)

def cnn_feature_vector(img):
    model = VGG16(weights='imagenet', include_top=False)
    image = img_to_array(img)
    image = image.reshape((1, image.shape[0], image.shape[1], image.shape[2]))
    image = preprocess_input(image)
    vgg16_feature = model.predict(image)
    vgg16_feature_np = np.array(vgg16_feature)
    vgg16_feature_vector = vgg16_feature_np.flatten()
    return vgg16_feature_vector

def calc_feature_vector (coverid_list, folder):
    feature_vector = []

    for coverid in coverid_list:
        if coverid == 'None':
            continue
        filename = "{}/{}.jpg".format(folder,coverid)
        image = load_img(filename, target_size=(224, 224))
        feature_vector.append(cnn_feature_vector(image))
    return feature_vector

def cnn_umap(metadata, graph_folder, image_folder):
    cnn_feature = pd.DataFrame(calc_feature_vector(metadata['cover_id'], image_folder))
    cnn_feature['genre'] = metadata['genre']

    d = {'Horror':1, 'Crime': 0, 'Romance': 2, 'Fantasy':3, 'Science':4}

    vectors = cnn_feature.drop(['genre'], axis=1)
    vector_targets = cnn_feature['genre'].map(d, na_action='ignore')

    reducer = umap.UMAP()
    embedding = reducer.fit_transform(vectors)

    plt.scatter(embedding[:, 0], embedding[:, 1], c=[sns.color_palette()[x] for x in vector_targets])
    plt.gca().set_aspect('auto','box')
    plt.title('UMAP CNN', fontsize=12);
    plt.savefig('{}/umap_cnn.png'.format(graph_folder), dpi = 100)
