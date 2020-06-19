# Graph-Based-Malware-Prediction
This project analyzes multiple graph embeddings for malware predictions based on their smali codes. Project results and interactive demonstrations can be found on our [project website](https://maishuliang.github.io/malware-detection-viz/)

## Overview

Nowadays, Android is dominating the smartphone market as an open source and customizable operating system. Many hackers targeted Android applications by disseminating malwares, posing serious threats to users. Historically, mobile security products such as Norton and Lookout, are heavily relied upon as major defense against such threats. Recently, many machine learning based methods have been invented for malware detection. A successful one of them is creating features from a Heterogeneous Information Network ([HinDroid](https://www.cse.ust.hk/~yqsong/papers/2017-KDD-HINDROID.pdf)). However, it is confined in such a way that it ignores more comprehensive information which can be extracted from graph representation. In this project, we will explore different meta-paths and incorporate various graph embedding methods in the task of malware prediction. We propose to build upon our previous work in HinDroid replication, more specifically we will attempt to use deep learning graph embedding techniques including Node2vec and Metapath2vec.

## Usage
Docker image on Docker Hub:
[b4zhang/malware_detection_with_graph_embedding](https://hub.docker.com/r/b4zhang/malware_detection_with_graph_embedding)

On Datahub, create a pod using the custom image.

To test-run the project, use or modify the default `config/test-params.json` and run
```bash
python run.py test
```

To run the project, modify the config file `config/data-params.json` and run
```bash
python run.py data process
```
or run `data` and `process` separately.

`data` target will save decompiled apk files under the folder as specified by the argument `apk_out_path` in `config/data-params.json`.

`process` target will save the Word2Vec model and Neural Network Model under the folder as specified by the argument `model_out_path` in `config/data-params.json`.
