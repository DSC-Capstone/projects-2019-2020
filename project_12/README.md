# DSC180B
Exploring Predictive Policing in San Diego for DSC180B Capstone Project

[Here](https://chuanyuanyeh.github.io/predpol_study/) is the link to the website.

Link to the GIS map can be found at https://arcg.is/1CmX0r

## Usage Instructions

To replicate the entire (or subsets of the) project, copy and paste `python run.py` in the command line while in the root directory followed by the arguments below:
* `data`: Ingests raw data from online sources.
* `process`: Runs the pipeline for cleaning and formatting raw datasets.
* `eda`: Performs exploratory data analysis and outputs visualizations.
* `analyze`: Performs statistical tests on differences in observed proportions between PredPol and non-PredPol instances.
* `test-project`: Runs the entire pipeline from start to end on a smaller, versioned test data.

For example, running the code below would reproduce the entire project:

`python run.py data process eda analyze`

## Description of Contents

The project consists of these portions:
```
PROJECT
├── config
    ├── data-params.json
    ├── process-params.json
    ├── eda-params.json
    ├── analyze-params.json
    ├── test-data-params.json
    ├── test-process-params.json
    ├── test-eda-params.json
    ├── test-analyze-params.json
    └── env.json
├── data
    ├── raw
    └── cleaned
├── notebooks
    └── .gitkeep
├── references
    ├── arrest_charges.json
    ├── arrest_types.json
    ├── crime_charges.json
    ├── crime_types.json
    ├── divisions_mapper.json
    ├── nhgis0005_ds172_2010_block_codebook.txt
    └── races.json
└── src
    ├── etl.py
    ├── eda.py
    ├── analyze.py
    └── geospatial.py
├── test_data
    ├── raw
    └── cleaned
├── viz
    ├── EDA
        ├── Arrests
        ├── Crime
        └── Stops
    └── Analysis
        ├── Arrests
        ├── Crime
        └── Stops
├── .gitignore
├── Dockerfile
├── README.md
├── requirements.txt
├── run.py
```

### `config/`

* `data-params.json`: Common parameters for getting data, serving as
  inputs to library code.
* `process-params.json`: Parameters for processing data.
* `eda-params.json`: Parameters for exploratory analysis on each dataset.
* `analyze-params.json`: Parameters for statistical testings and analyses.
* `env.json`: Parameters for loading virtual environment.
* Also contains similar configurations for test data.
  
### `data/`

* `raw/`: Raw datasets from original source.
* `cleaned/`: Cleaned datasets.

### `notebooks/`

* Jupyter notebooks for *analyses* and *code development*
  - notebooks will be removed after migration to library code.

### `references/`

* Data Dictionaries, references to external sources.

### `src/`

* `etl.py`: Library code that executes tasks useful for getting data.

### `test_data/`

* Versioned test data.

### `viz/`

* Visual outputs from EDA and analyses pipelines.

### `Dockerfile`

* Docker image to replicate the environment the project was developed in. 

### `requirements.txt`

* Python libraries/modules used as well as their corresponding versions.

### `run.py`

* Main driver for project replication
