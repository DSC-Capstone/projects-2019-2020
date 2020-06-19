# DSC180B Wikipedia Engagement

This project is focused on helping people understand engagement on a wikipedia page through analysis of supply and demand on the page.

## Usage
```
launch-scipy-ml.sh
git clone https://github.com/Jwlin17/DSC180B.git
cd DSC180B
python run.py test-project
```

```
launch-scipy-ml.sh -i jwlin/wiki-engagement
```

## Files

**./config/test-params.json** - holds input values to run test-project command

**./config/env.json** - docker config data

**./config/data-params.json** - directory where data should be output to

**./notebooks/WikiEngagementEDA.ipynb** - EDA analysis for our data set

**./src/engagement_score.py** - contains relevant functions for creating the engagement score

**./src/wikiparser.py** - contains relevant functions for parsing wikipedia dump files

**./website_data/article_titles.txt** - contains article titles to populate search bar

**./website_data/content_score.png** - content score formula

**./website_data/editor_score.png** - editor score formula

**./website_data/engagement_scores.json** - engagement scores to graph on website

**./index.html** - website html

**./requirements.txt** - required packages

**./run.py** - call run.py to run data analysis

## Output Files

**./data/raw/zips** - holds all the zipped files from wikidump / lightdump

**./data/raw/extracted** - holds all the extracted zip files

**./data/temp** - holds the created lightdump data parsed from en-wiki dump

**./data/out** - contains the .png charts of mscore over time and csv of article title / mscore

## Sources

Link to my writeup report: https://docs.google.com/document/d/17lQ96NeAWvI133FgFkBsB234vdQLecg9g2wfLc_Y79o/edit?usp=sharing

Wiki-Media Dumps I Used: https://dumps.wikimedia.org/enwiki/20200101/

Wiki-Monitor Lightdump information: http://wwm.phy.bme.hu/

Paper that I replicated: https://arxiv.org/pdf/1107.3689.pdf

Alternative methods of studying controversy: https://www.opensym.org/ws2012/p18wikisym2012.pdf
