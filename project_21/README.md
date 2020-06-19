# Hinreddit

[project website](https://syeehyn.github.io/hinreddit/)

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/syeehyn/hinreddit)

As social platforms become accessible nowadays, more and more people get used to posting opinions on various topics online. The existence of nagetive online behaviors such as hateful comments is also unavoidable. These platforms thus become prolific sources for hate detection, which motivates many people to apply various techniques in order to detect hateful users or hateful speeches.

This project investigates contents from Reddit. its goal is to classify hateful posts from the normal ones. This not only enables platforms to improve user experiences, but also helps to maintain a positive online environment.

- [Hinreddit](#hinreddit)
  - [Getting Started](#getting-started)
    - [Prerequisite](#prerequisite)
      - [Use Dockerfile](#use-dockerfile)
    - [Usage](#usage)
      - [etl](#etl)
      - [graph](#graph)
      - [embedding](#embedding)
      - [pipeline](#pipeline)
  - [For Developers](#for-developers)
  - [Contribution](#contribution)
    - [Authors](#authors)
    - [Advisors](#advisors)
  - [References](#references)
  - [License](#license)

----

## Getting Started

### Prerequisite

The project is mainly built upon following packages:

- Data Preprocessing & Feature Extraction

  - [Pandas](https://pandas.pydata.org/)
  
- Labeling & ML Deployment

  - [Pytorch = 1.5](https://pytorch.org/)
  
  - [PyTorch Geometric = 1.5](https://github.com/rusty1s/pytorch_geometric)

#### Use Dockerfile

  You can build a docker image out of the provided [DockerFile](Dockerfile)

  ```bash
  docker build . # This will build using the same env as in a)
  ```

  Run a container, replacing the ID with the output of the previous command

  ```bash
  docker run -it -p 8888:8888 -p 8787:8787 <container_id_or_tag>
  ```

  The above command will give an URL (Like http://(container_id or 127.0.0.1):8888/?token=<sometoken>) which can be used to access the notebook from browser. You may need to replace the given hostname with "localhost" or "127.0.0.1".

### Usage

#### etl

 - Modify the config file located in `config/data-params.json`. For testing, use `config/test-params.json`, you may define an output root `[data-path]` under `config/data-params.json`.

 - **The HinReddit's etl process uses the python script file `run.py` with target `data[-test]`.**

 - You may change the `nlp_model.zip` file with custom nlp labeling rules.

 - The etl process result will be under "\<data-path>/raw" and "\<data-path>/interim/label" directories.

#### graph

- **The HinReddit's graph process uses the python script file `run.py` with target `graph[-test]`.**

- The graph process result will be under "\<data-path>/interim/graph/*.mat"

#### embedding

- Modify the config files located in `config/embedding/graph_<1/2>/[test-]<informax/metapath2vec/node2vec>.json` for corresponding parameters of the embedding models.

- **The HinReddit's embedding process uses the python script file `run.py` with following targets:**

  - `node2vec[-test]`: for node2vec embedding.
  - `metapath2vec[-test]`: for metapath2vec embedding.
  - `infomax[-test]`: for deep graph infomax (DGI) embedding.

#### pipeline

- run `$ python run.py data[-test] graph[-test] node2vec[-test] metapath2vec[-test] infomax[-test]`

- You can find a detailed explaination of configuration arguments [here](./writeups/PARAMS.md)

----

## For Developers

[Development Guide](./writeups/DEVGUIDE.md) is provided and under `./writeups/DEVGUIDE.md`

----

## Contribution

### Authors

- [Chengyu Chen](https://github.com/anniechen0127)
- [Yu-chun Chen](https://github.com/yuc330)
- [Yanyu Tao](https://github.com/lilytaoyy)
- [Shuibenyang Yuan](https://github.com/shy166)

### Advisors

- [Aaron Fraenkel](https://afraenkel.github.io/)
- [Shivam Lakhotia](https://github.com/shivamlakhotia)

<sup>Authors contributed equally to this project</sup>

----

## References

``` 
@paper{Hou/Ye/2017,
  title={HinDroid: {An Intelligent Android Malware Detection System Based on Structured Heterogeneous Information Network}},
  author={Hou, Ye, Song, Abdulhayoglu}
  year={2017}
}
@inproceedings{Fey/Lenssen/2019,
  title={Fast Graph Representation Learning with {PyTorch Geometric}},
  author={Fey, Matthias and Lenssen, Jan E.},
  booktitle={ICLR Workshop on Representation Learning on Graphs and Manifolds},
  year={2019},
}
@article{turc2019,
  title={Well-Read Students Learn Better: On the Importance of Pre-training Compact Models},
  author={Turc, Iulia and Chang, Ming-Wei and Lee, Kenton and Toutanova, Kristina},
  journal={arXiv preprint arXiv:1908.08962v2 },
  year={2019}
}
@course{Koutra/2018,
  title={Mining Large-scale Graph Data},
  author={Danai Koutra},
  link={http://web.eecs.umich.edu/~dkoutra/courses/W18_598/},
  year={2018}
}
@collection{src-d/2019,
  title={Awesome Machine Learning On Source Code},
  author={src-d},
  link={https://github.com/src-d/awesome-machine-learning-on-source-code},
  year={2019}
}
```

----

## License

[Apache License 2.0](LICENSE)
