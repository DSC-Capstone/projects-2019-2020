import numpy as np
import pandas as pd
import os
import ast
import librosa

from moviepy.editor import *
import speech_recognition as sr
from os import path
from pydub import AudioSegment
from sklearn.impute import SimpleImputer


def transcribe(mp3):
    """
    transcribes audio to words
    :param: mp3: audio file
    """
    sound = AudioSegment.from_mp3(mp3)
    sound.export("placehold.wav", format="wav")
    wave_file = "placehold.wav"

    god = sr.Recognizer()
    try:
        with sr.AudioFile(wave_file) as spoken:
            audio = god.record(spoken)
            tries = god.recognize_google(audio, show_all=True)
            if len(tries) == 0:
                transcript = "Fail"
            else:
                transcript = tries["alternative"][0]["transcript"]
        return transcript
    except:
        print("Error getting words from %s" % (mp3))
        transcript = "Fail"
        return transcript


def get_text_rates(dur, text):
    """
    finds words and characters per second
    :param: dur: duration of audio file
    :param: text: transcribed text from audio file
    """
    if text != "Fail":
        wordrate = len(text.split()) / dur
        charrate = len(text) / dur
    else:
        wordrate = np.nan
        charrate = np.nan
    return (wordrate, charrate)


def feature_extract(video, mp3_file, wr, cr, n_mfcc=20):
    """
    main feature extraction, based off of spectral features
    :param: video: name of video file
    :param: mp3_file: name of audio file
    :param: wr: words per second feature
    :param: cr: characters per second feature
    :param: n_mfcc: number of mfcc features, optional
    """
    x, sr = librosa.load(mp3_file)

    spec_features = [
        librosa.feature.spectral_centroid,
        librosa.feature.spectral_bandwidth,
        librosa.feature.spectral_contrast,
        librosa.feature.spectral_flatness,
        librosa.feature.spectral_rolloff,
    ]

    raw_feats = [video, mp3_file, wr, cr]
    # Add spectral features
    for f in spec_features:
        # Get raw features from function call
        raw_feat_f = f(x)
        # Add each feature one-by-one
        for row in raw_feat_f:
            avg = np.mean(row)
            raw_feats.append(avg)
            dev = np.std(row)
            raw_feats.append(dev)
    # MFCCs
    f = librosa.feature.mfcc
    raw_feat = f(x, sr, n_mfcc=n_mfcc)
    for row in raw_feat:
        avg = np.mean(row)
        raw_feats.append(avg)
        dev = np.std(row)
        raw_feats.append(dev)
    # Zero crossing rate
    f = librosa.feature.zero_crossing_rate
    raw_feat = f(x)
    for row in raw_feat:
        avg = np.mean(row)
        raw_feats.append(avg)
        dev = np.std(row)
        raw_feats.append(dev)
    # Chromagram
    f = librosa.feature.chroma_stft
    raw_feat = f(x, sr)
    for row in raw_feat:
        avg = np.mean(row)
        raw_feats.append(avg)
        dev = np.std(row)
        raw_feats.append(dev)
    # Tonnetz
    f = librosa.feature.tonnetz
    raw_feat = f(x, sr)
    for row in raw_feat:
        avg = np.mean(row)
        raw_feats.append(avg)
        dev = np.std(row)
        raw_feats.append(dev)
    return raw_feats


########################


def extract(datapath, videodir, audiodir):
    """
    wrapper for collecting all audio features for a given dataframe of commercials
    :param: datapath: directory of data path
    :param: videodir: chosen category of data to use
    :arg: audiodir: directory of audio files in repective datafolder
    """
    feature_filename = "%s features.csv" % (videodir)
    feature_filename = os.path.join(datapath, feature_filename)
    data = pd.read_csv(feature_filename, index_col=0)

    # mp3 creation
    directory = os.path.join(datapath, videodir)
    curraudiodir = os.path.join(directory, audiodir)
    if not os.path.exists(curraudiodir):
        os.mkdir(curraudiodir)
    for v in os.listdir(directory):
        vpath = os.path.join(directory, v)
        if os.path.isfile(vpath):
            audioname = v[:-4] + ".mp3"
            audiofn = os.path.join(curraudiodir, audioname)
            # Make sure mp3 doesn't already exist
            if not os.path.exists(audiofn):
                try:
                    video = VideoFileClip(vpath)
                    audio = video.audio
                    audio.write_audiofile(audiofn)
                except:
                    print("Error writing %s, file skipped" % (audiofn))
    tempfeats = list()
    # Signal based features
    for num, pair in enumerate(data.iterrows()):
        index = pair[0]
        row = pair[1]
        audioname = str(row["ID"]) + ".mp3"
        audiofn = os.path.join(curraudiodir, audioname)
        if os.path.exists(audiofn):
            try:
                text = transcribe(audiofn)
                wps, cps = get_text_rates(row["commercial length (seconds)"], text)
                feat_array = [index, audiofn, wps, cps]
                tempfeats.append(feat_array)
            except:
                print("Issue with %s, file skipped" % (audiofn))
    # Hold midpoint versions of audio features
    tempout = pd.DataFrame(tempfeats)
    tempout.columns = ["videofilename", "audiofilename", "WordsPerSec", "CharsPerSec"]
    tempout = tempout.set_index("videofilename")
    tempfeature_filename = "%s mid audio features.csv" % (videodir)
    tempfeature_filename = os.path.join(datapath, tempfeature_filename)
    tempout = data.join(tempout)
    tempout.to_csv(tempfeature_filename)

    data = tempout

    # Imputes missing values from signal features
    imp = SimpleImputer(missing_values=np.nan, strategy="mean")
    data["WordsPerSec"] = imp.fit_transform(data["WordsPerSec"].values.reshape(-1, 1))
    data["CharsPerSec"] = imp.fit_transform(data["CharsPerSec"].values.reshape(-1, 1))

    # Spectral features and combining
    features = list()
    sb = 1.0
    for num, pair in enumerate(data.iterrows()):
        index = pair[0]
        row = pair[1]
        try:
            audio = row["audiofilename"]
            wr = row["WordsPerSec"]
            cr = row["CharsPerSec"]
            sb = row["issuperbowl"]
            feat_array = feature_extract(index, audio, wr, cr)
            features.append(feat_array)
        except:
            print("Issue with %s, file skipped" % (index))
    # Merge audio and visual features into one dataframe
    out = pd.DataFrame(features)
    feature_filename = "%s features.csv" % (videodir)
    feature_filename = os.path.join(datapath, feature_filename)
    videodata = pd.read_csv(feature_filename, index_col=0, keep_default_na=False)
    out = out.set_index(0).drop(1, axis=1)
    out = out.join(videodata)
    out.to_csv(feature_filename)
