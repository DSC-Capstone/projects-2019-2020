import pandas as pd
import os
from skimage.color import rgb2hsv
import numpy as np
import cv2

import scenedetect
from scenedetect.video_manager import VideoManager
from scenedetect.scene_manager import SceneManager
from scenedetect.frame_timecode import FrameTimecode
from scenedetect.detectors import ContentDetector

import string
import pytesseract


def hsv_image(img):
    """
    converts RGB (or grayscale) image to HSV image
    :param: img: image to be converted to HSV
    """
    if img.ndim > 2:
        hsv_img = rgb2hsv(img)
        hue_img = hsv_img[:, :, 0]
        saturation_img = hsv_img[:, :, 1]
        value_img = hsv_img[:, :, 2]
    else:
        hue_img = np.zeros(img.shape)
        saturation_img = np.zeros(img.shape)
        value_img = img
    return hue_img, saturation_img, value_img


def averaged(a):
    """
    gets overall average of 2D array (or matrix)
    :param: a: 2D array (or matrix) to be averaged
    """
    return np.mean(a, axis=(0, 1))


def scenes(video):
    """
    convert video file into list of scenes based on frame range and fps
    :param: video: video filename
    """
    video_manager = VideoManager([video])
    scene_manager = SceneManager()
    scene_manager.add_detector(ContentDetector())
    video_manager.set_downscale_factor()
    video_manager.start()
    scene_manager.detect_scenes(frame_source=video_manager)
    scene_list = scene_manager.get_scene_list(video_manager.get_base_timecode())
    return scene_list


def scenemidframe(scene_list):
    """
    convert scene list into list of frame midpoints for individual frame processing
    :param: scene_list: list of scene ranges
    """
    midpoints = [
        int(sum(points.get_frames() for points in scene) / len(scene))
        for scene in scene_list
    ]
    return midpoints


def get_text(images):
    """
    get list of words from list of images using OCR
    :param: images: list of images
    """
    results = []
    # Convert images to grayscale before collecting text
    for img in images:
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        text = pytesseract.image_to_string(gray)
        results.append(text)
    # Split words and clean/filter out small words and watermark (adforum)
    words = [i.split() for i in results]
    removepunct = str.maketrans("", "", string.punctuation)
    words = [i.translate(removepunct) for ilist in words for i in ilist]
    words = [i for i in words if "forum" not in i and len(i) > 3]
    return words


def face_count(images):
    """
    get count of faces detected in images
    :param: images: list of images
    """
    facedetector = cv2.CascadeClassifier(
        cv2.data.haarcascades + "haarcascade_frontalface_default.xml"
    )
    count = 0
    for img in images:
        faces = facedetector.detectMultiScale(img, 1.3, 5)
        count += len(faces)
    return count


def video_features(video, info):
    """
    wrapper for collecting all visual features from a given video
    :param: video: video filename
    :param: info: series to append features to and return
    """
    rawvideofeatures = pd.DataFrame()
    videofeatures = info
    scenelist = scenes(video)
    midpoints = scenemidframe(scenelist)

    cap = cv2.VideoCapture(video)
    num_frames = cap.get(cv2.CAP_PROP_FRAME_COUNT)
    frame_count = 0
    images = []
    # Get all midpoint images
    while frame_count < num_frames:
        ret, frame = cap.read()
        if frame_count in midpoints:
            images.append(frame)
        frame_count += 1
    cap.release()
    cv2.destroyAllWindows()

    # Get Basic Visual Features
    for num, i in enumerate(images):
        temp = pd.Series()
        temp.name = num
        hue_img, saturation_img, value_img = hsv_image(i)
        temp["mean hue"] = averaged(hue_img)
        temp["mean saturation"] = averaged(saturation_img)
        temp["mean brightness"] = averaged(value_img)
        rawvideofeatures = rawvideofeatures.append(temp)
    videofeatures["ID"] = info.ID
    videofeatures["commercial length (seconds)"] = float(scenelist[-1][-1])
    videofeatures["number of scenes"] = len(scenelist)

    # More advanced features
    videofeatures["words"] = get_text(images)
    videofeatures["average word count per scene"] = len(videofeatures["words"]) / len(
        images
    )
    videofeatures["average face count per scene"] = face_count(images) / len(images)
    videofeatures = videofeatures.append(rawvideofeatures.mean())
    videofeatures.name = info.name
    return videofeatures


def dataframe_processor(superdata, otherdata, datapath, whichdata):
    """
    wrapper for collecting all visual features for a given dataframe of commercials
    :param: superdata: directory in datapath that holds raw superbowl data
    :param: otherdata: directory in datapath that holds raw non-superbowl data
    :param: datapath: directory of data path
    :param: whichdata: which category of data to use
    """
    directory = os.path.join(datapath, whichdata)

    videodata = pd.DataFrame()
    info = pd.Series()
    for i in os.listdir(directory):
        filepath = os.path.join(directory, i)
        if os.path.isfile(filepath):
            try:
                info = pd.Series()
                info.name = filepath
                info.ID = i[:-4]
                info = video_features(filepath, info)
                videodata = videodata.append(info)
            except:
                print("Error collecting video features for %s, skipped." % (filepath))
    # Categorize features
    if whichdata == superdata:
        videodata["issuperbowl"] = 1
    else:
        videodata["issuperbowl"] = 0
    output_filename = "%s features.csv" % (whichdata)
    output_filename = os.path.join(datapath, output_filename)
    videodata.to_csv(output_filename)
    return videodata
