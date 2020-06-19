# Description of Arguments

## `data[-test]`

- Modify `config/data-params.json`, an example shown below. Information includes: POST_ARGS: parameter related to the post extraction part. META_ARGS: parameter related to the comment extraction part. The all the posts is sorted by the creation data and we extracted data prior to the date of `Tuesday,March 31 17:00:00 2020 PDT`.

```json
{"POST_ARGS":
    {"sort_type":"created_utc",
    "sort":"dsc",
    "size":"1000",
    "start":"1585699200"},
"META_ARGS":
    {"filepath":".\/tests",
    "total":"1000",
    "meta":["id","author","title","selftext","num_comments","created_utc","full_link","subreddit","score"],
    "subreddits":["amitheasshole","showerthoughts","politics","documentaries"]}}
```

- Sample a number of newest posts prior to a chosen daytime, the number specified in configuration file.

- For labels you may change the pretrained NLP model with replace `config/nlp_model.zip`. You can find more information [here](https://www.kaggle.com/c/jigsaw-toxic-comment-classification-challenge/data)
  
## `graph[-test]`

- Graph Extraction process will only need the file of the raw data, so no arguments is needed.

## `node2vec[-test]`

- The parameter file is under `./config/embedding/<graph_>[1/2]/[test-]node2vec.json`:

  ``` json
    {
    "GRAPH_NAME": "graph_1.mat",
    "BATCH_SIZE": 128,
    "EMBEDDING_DIM": 64,
    "WALK_LENGTH": 100,
    "CONTEXT_SIZE": 10,
    "WALKS_PER_NODE": 10,
    "LEARNING_RATE": 0.001,
    "NUM_EPOCH": 1,
    "P": 1,
    "Q": 1,
    "CUDA": true,
    "EMBEDDING_NAME": "graph_1.npy"
    }
  ```

  `GRAPH_NAME`: the file name of graph matrix.

  `BATCH_SIZE`: the number of row to be trained in each batch.

  `EMBEDDING_DIM`: the output embedding dimension.

  `WALK_LENGTH`: the walk length of random walk.

  `CONTEXT_SIZE`: the number of positive sample & negative sample in each walk.

  `WALKS_PER_NODE`: the number of walks to be performed per node.

  `LEARNING_RATE`: the learning rate of SGD optimization in loss function.

  `NUM_EPOCH`: the number of epoch to perform embedding.

  `P`: the parameter to control probability of walk to go back.

  `Q`: the parameter to control probability of walk to go towards the end.

  `CUDA`: True if use GPU for embedding.

  `EMBEDDING_NAME`: the output embedding file name.

## `metapath2vec[-test]`

- The parameter file is under `./config/embedding/<graph_>[1/2]/[test-]metapath2vc.json`:
  
    ```json
    {
    "GRAPH_NAME": "graph_1.mat",
    "`NUM_NEG_SAMPLES`": 5,
    "BATCH_SIZE": 32,
    "EMBEDDING_DIM": 128,
    "WALK_LENGTH": 50,
    "CONTEXT_SIZE": 7,
    "WALKS_PER_NODE": 5,
    "LEARNING_RATE": 0.01,
    "NUM_EPOCH": 5,
    "CUDA": true,
    "EMBEDDING_NAME": "graph_1.npy",
    "TEST": false
    }
    ```

    `GRAPH_NAME`: the file name of graph matrix.

    `NUM_NEG_SAMPLES`: the number of negative samples for each node.

    `BATCH_SIZE`: the number of row to be trained in each batch.

    `EMBEDDING_DIM`: the output embedding dimension.

    `WALK_LENGTH`: the walk length of random walk.

    `CONTEXT_SIZE`: the number of positive sample & negative sample in each walk.

    `WALKS_PER_NODE`: the number of walks to be performed per node.

    `LEARNING_RATE`: the learning rate of SGD optimization in loss function.

    `NUM_EPOCH`: the number of epoch to perform embedding.

    `CUDA`: True if use GPU for embedding.

    `EMBEDDING_NAME`: the output embedding file name.

    "TEST": ONLY true for unconnected dataset.

## `infomax[-test]`

- The parameter file is under `./config/embedding/<graph_>[1/2]/[test-]infomax.json`:

    ```json
    {
    "GRAPH_NAME": "graph_1.mat",
    "HIDDEN_CHANNELS": 64,
    "SUMMARY": 64,
    "LEARNING_RATE": 0.01,
    "NUM_EPOCH": 300,
    "CUDA": true,
    "EMBEDDING_NAME": "graph_1.npy",
    }
    ```

  `HIDDEN_CHANNELS`: the hidden layer's dimension.

  `SUMMARY`: the output embedding layer's dimension.

  `LEARNING_RATE`: the learning rate of SGD optimization in loss function.

  `NUM_EPOCH`: the number of epoch to perform embedding.

  `CUDA`: True if use GPU for embedding.

  `EMBEDDING_NAME`: the output embedding file name.
