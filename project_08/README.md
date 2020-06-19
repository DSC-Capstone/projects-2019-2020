# SuperBowlCapstone

Collects superbowl and non-superbowl commercials from ispot and adforum respectively.
Generates features from their audio and video content
Builds multiple models based off of the generated features.
Creates multiple visualizations.

## Usage Instructions

Potential run.py arguments:
* data: does the webscraping
* fxt: feature extraction, requires data to be run
* analyze: model and visual generation, requires fxt to be run
* test-project: using given test commercials, tests project.

## Project Contents

```
ROOT FOLDER
├── .gitignore
├── README.md
├── config
│   ├── data-params.json
│   ├── test-params.json
│   └── env.json
├── chosen data folder
│   ├── chosen superbowl commercial folder
│   │   └── chosen audio folder
│   └── chosen non-superbowl commercial folder
│       └── chosen audio folder
├── notebooks
│   └── .gitkeep
├── run.py
└── src
    └── etl.py
```

### `src`

* `ad_scraper.py`: Library code that collects non-superbowl commercials from adforum based off of collected superbowl commercials.
* `ispot_scrape.py`: Library code that collects superbowl commercials from ispot.
* `video_processing.py`: Library code that generates visual features.
* `extract_audio_features.py`: Library code that generates audio features.
* `vis_video.py`: Library code that generates visualizations for generated features.
* `predictor.py`: Library code that generates predictions from Logistic Regression and Random Forest models.

### `config`

* `data-params.json`: Common parameters for getting data, serving as
  inputs to library code.
  
* `test-params.json`: parameters for running small process on small
  test data.

### `notebooks`

* Jupyter notebooks for analysis, mainly audio-orientated.
