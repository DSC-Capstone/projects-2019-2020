# Development Guide

## Description of Contents

```bash
hinreddit
├── Dockerfile
├── LICENSE
├── README.md
├── config
│   ├── data-params.json
│   ├── embedding
│   │   ├── graph_1
│   │   │   ├── infomax.json
│   │   │   ├── metapath2vec.json
│   │   │   ├── node2vec.json
│   │   │   ├── test-infomax.json
│   │   │   ├── test-metapath2vec.json
│   │   │   └── test-node2vec.json
│   │   └── graph_2
│   │       ├── infomax.json
│   │       ├── metapath2vec.json
│   │       ├── node2vec.json
│   │       ├── test-infomax.json
│   │       ├── test-metapath2vec.json
│   │       └── test-node2vec.json
│   ├── env.json
│   ├── nlp_model.zip
│   └── test-params.json
├── index.html
├── notebooks # for statistical finding
│   ├── EDA_data_0.ipynb
│   ├── EDA_data_1.ipynb
│   ├── EDA_graph.ipynb
│   ├── embedding_baseline_feature.ipynb
│   └── embedding_evaluation.ipynb
├── requirements.txt
├── run.py
├── src
│   ├── __init__.py
│   ├── embedding
│   │   ├── __init__.py
│   │   ├── _graph_1.py
│   │   ├── _graph_2.py
│   │   ├── infomax.py
│   │   ├── metapath2vec.py
│   │   └── node2vec.py
│   ├── etl
│   │   ├── __init__.py
│   │   ├── etl.py
│   │   ├── label.py
│   │   └── sentimental.py
│   ├── models
│   │   ├── __init__.py
│   │   ├── baseline.py
│   │   └── hinmodel.py
│   ├── utils
│   │   ├── __init__.py
│   │   └── utils.py
│   └── visualization
│       ├── assets
│       │   └── ...
│       ├── main.css
│       └── main.js
└── writeups
```

### Main Module

main module is under the directory `./src` with 5 sections:

- `etl`: contains source code of etl process
- `embedding`: contains source code of embedding process
- `utils`: contains source code of utility functions: for example, model evaluations
- `models`: contains hinreddis models
- `vizualization`: contains the assets of project website

### Project Website

website page is under the link syeehyn.github.io/hinreddit, the corressponding sources of the website is under `./src/visualization` and `index.html`:

- `./index.html`: source html file of the website
- `./src/visualization/main.js`: corresponding javascript file of the website
- `./src/visualization/main.css`: corresponding css file of the website
  
### Hinreddit Arguments

arguments for the project is under the directory `./config`, you may find the explaination of parameter [here](./PARAMS.md)

## Data Schema

```source
./data
├── interim
│   ├── graph
│   │   ├── graph_1.mat
│   │   └── graph_2.mat
│   └── label
│       ├── comment
│       │   ├── buildapc.csv
│       │   ├── legaladvice.csv
│       │   └── ...
│       ├── label.csv
│       └── post
│           └── post_sentimental.csv
├── processed
│   └── node2vec
│       ├── graph_1.npy
│       ├── graph_1.npylog.json
│       ├── graph_2.npy
│       └── graph_2.npylog.json
└── raw
    ├── comments
    │   ├── buildapc.csv
    │   ├── legaladvice.csv
    │   ├── log.json
    │   └── ...
    ├── posts
    │   ├── buildapc.csv
    │   ├── legaladvice.csv
    │   ├── log.json
    │   └── ...
    └── posts_detail
        ├── buildapc.json
        ├── legaladvice.json
        └── ...

```

#### Raw

##### First Layer: Posts

The csv file contains the information of each post in a dataframe where the unit of observation is the individual post. 

- `id`: post_id
- `author`: username of the author who make the post
- `title`: title of the post
- `selftext`: the content of the post
- `num_comments`: number of comments
- `created_utc`: the epoch date for which the post is created
- `full_link`: the link to the reddit post
- `subreddit`: subreddit it belongs to
- `score`: number of upvote - number of downvote

##### Second Layer: Post detail

The file contains certain number of posts id and all of its comments id under a certain subrredit. 

- `submission_id` : id of the post
- `comment_ids`: id of each comment

```json

[{"submission_id":"fsoala","comment_ids":[]},
{"submission_id": "fsnmj4", "comment_ids": ["fm2fd48", "fm2hrmh", "fm2k37i", "fm2k8p4", "fm2kuot", "fm2lces", "fm2lsao", "fm2lu4n", "fm2m5at", "fm3trkl", "fm4c7i6"]}]
```

##### Third Layer: Comments

The csv file contains the information of each specific post in a dataframe where the unit of observation is the individual comment. 

- `id`: comment id
- `author` : username of the author who make the comment
- `created_utc` : the epoch date for which the comment is made
- `is_submitter`: whether that person post the original post
- `subreddit`: the subreddit it belongs to
- `link_id`: the post id for which this comment is made for

#### Interim

##### Graph

- `graph_1.mat` contains the sparse matrix file of N, P, U, A matrices of Graph 1
- `graph_2.mat` contains the sparse matrix file of N, P, U, A matrices of Graph 2

##### Label

- `label.csv` contains the label of posts after taking in to account comment labels.
- `comment` directory conatians sentimental analysis over comments by different subreddits.
- `post` directory contains sentimental analysis over posts.

#### Processed

- `node2vec` directory contains the pytorch embedding layer of node2vec algorithm. 
  - `graph1.npy` contains the numpy array format of graph 1 embedding.
  - `graph2.npy` contains the numpy array format of graph 2 embedding.