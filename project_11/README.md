# DSC180B Capstone Project

## Description of Contents

The project consists of these portions:
```
PROJECT
├── .gitignore
├── README.md
├── config
│   ├── data-params.json
│   ├── env.json
│   ├── model.json
│   ├── process-params.json
│   ├── test-data-params.json
│   ├── test-model.json
│   └── test-process-params.json
├── imgs
├── notebooks
│   ├── prop_score.ipynb
│   └── sandbox.ipynb
├── references
│   └── .gitkeep
├── requirements.txt
├── run.py
├── index.html
├── index.md
└── src
│   ├── etl.py
│   ├── model_vod.py
│   ├── model.py
│   └── viz.py
```

### `src`

* `etl.py`: Script to perform Extract Transform Load.
* `model_vod.py`: Script to perform Veil of Darkness analysis.
* `model.py`: Script to perform propensity score analysis.
* `viz.py`: Script to visualize findings from both sets of analysis.

### `config`

* `data-params.json`: Common parameters for getting data, serving as inputs to library code.
* `env.json`: Environment paramters for GitHub repository and Docker image.
* `model.json`: Model parameters for for performing propensity score analysis.
* `process-params.json`: Common parameters for cleaning and processing data.
* `test-data-params.json`: Common parameters for getting test data, serving as inputs to library code.
* `test-model.json`: Model parameters for for performing propensity score analysis on test data.
* `test-process-params.json`: Common parameters for cleaning and processing test data.

### `notebooks`

* `prop_score.ipynb`: Imports code from `src` for the purpose of running the propensity score analysis. 
* `sandbox.ipynb`: Imports code from `src` for the purpose of analysis. 

### Description of Targets

* `!python run.py data`: Collects traffic stops data from Stanford Open Policing Portal and cleans it.
* `!python run.py model`: Performs propensity score and veil of darkness analysis on traffic stops.
* `!python run.py test-project`: Ingests, cleans, and runs model on a subset of the traffic stops data for the purpose of testing.