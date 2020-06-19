import src.ispot_scrape as ispot
import src.ad_scraper as ad
import src.ispot_clean as icl
import src.extract_audio_features as ifx
import src.video_processing as vid
import src.vis_video as vis_vid
import src.predictor as pred

import sys
import json


def main():
    """
    main executable with optional args for data
    :arg: years: list of years to use in data testing
    :arg: superdata: directory in datapath that holds raw superbowl data
    :arg: otherdata: directory in datapath that holds raw non-superbowl data
    :arg: datapath: directory of data path
    :arg: audiodir: directory of audio files in repective datafolder
    :arg: vizpath: path to hold vizualization outputs
    """
    argv = sys.argv

    # Download commercials and their dataframes
    if "data" in argv:
        cfg = json.load(open("config/data-params.json"))
        years = cfg["years"]
        superdata = cfg["superdata"]
        otherdata = cfg["otherdata"]
        datapath = cfg["datapath"]
        vizpath = cfg["vizpath"]
        ispot.scrape_ispot(years, datapath, superdata)
        ad.all_videos(otherdata, datapath)
    # Feature generation for both groups of commercials
    if "fxt" in argv:
        cfg = json.load(open("config/data-params.json"))
        superdata = cfg["superdata"]
        otherdata = cfg["otherdata"]
        datapath = cfg["datapath"]
        audiodir = cfg["audiodir"]
        vid.dataframe_processor(superdata, otherdata, datapath, superdata)
        vid.dataframe_processor(superdata, otherdata, datapath, otherdata)
        ifx.extract(datapath, superdata, audiodir)
        ifx.extract(datapath, otherdata, audiodir)
    # Analysis of features, both viz and model generation
    if "analyze" in argv:
        cfg = json.load(open("config/data-params.json"))
        superdata = cfg["superdata"]
        otherdata = cfg["otherdata"]
        datapath = cfg["datapath"]
        vizpath = cfg["vizpath"]
        vis_vid.get_visualizations(superdata, otherdata, datapath, vizpath)
        pred.predict(superdata, otherdata, datapath)
    # Test run of project on 1 of each type of commercial
    if "test-project" in argv:
        cfg = json.load(open("config/test-params.json"))
        years = cfg["years"]
        superdata = cfg["superdata"]
        otherdata = cfg["otherdata"]
        datapath = cfg["datapath"]
        audiodir = cfg["audiodir"]
        vizpath = cfg["vizpath"]
        vid.dataframe_processor(superdata, otherdata, datapath, superdata)
        vid.dataframe_processor(superdata, otherdata, datapath, otherdata)
        ifx.extract(datapath, superdata, audiodir)
        ifx.extract(datapath, otherdata, audiodir)
        vis_vid.get_visualizations(superdata, otherdata, datapath, vizpath)
        pred.predict(superdata, otherdata, datapath)


if __name__ == "__main__":
    main()
