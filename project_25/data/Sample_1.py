import os
import pyspark.sql.functions as F
import pyspark.sql.types as T
#from utilities import SEED
# import any other dependencies you want, but make sure only to use the ones
# availiable on AWS EMR
# Import your own dependencies

import time
from pyspark.ml.stat import Summarizer
from pyspark.ml.linalg import SparseVector, DenseVector, Vectors
import numpy as np

# ---------------- choose input format, dataframe or rdd ----------------------
INPUT_FORMAT = 'dataframe'  # change to 'rdd' if you wish to use rdd inputs
# -----------------------------------------------------------------------------
if INPUT_FORMAT == 'dataframe':
    import pyspark.ml as M
    import pyspark.sql.functions as F
    import pyspark.sql.types as T
    from pyspark.ml.regression import DecisionTreeRegressor
    from pyspark.ml.evaluation import RegressionEvaluator
if INPUT_FORMAT == 'koalas':
    import databricks.koalas as ks
elif INPUT_FORMAT == 'rdd':
    import pyspark.mllib as M
    from pyspark.mllib.feature import Word2Vec
    from pyspark.mllib.linalg import Vectors
    from pyspark.mllib.linalg.distributed import RowMatrix
    from pyspark.mllib.tree import DecisionTree
    from pyspark.mllib.regression import LabeledPoint
    from pyspark.mllib.linalg import DenseVector
    from pyspark.mllib.evaluation import RegressionMetrics
# ---------- Begin definition of helper functions, if you need any ------------

# def task_1_helper():
#   pass

# -----------------------------------------------------------------------------


def task_1(data_io, review_data, product_data):
    # -----------------------------Column names--------------------------------
    # Inputs:
    asin_column = 'asin'
    overall_column = 'overall'
    # Outputs:
    mean_rating_column = 'meanRating'
    count_rating_column = 'countRating'
    # -------------------------------------------------------------------------

    # ---------------------- Your implementation begins------------------------
    selected_review = review_data.select(asin_column, overall_column)
    grouped_review = selected_review.groupby(asin_column).agg(F.mean(overall_column)\
                                                              .alias(mean_rating_column),
                                                         F.count(overall_column)\
                                                              .alias(count_rating_column))

    joined_product = product_data.select(asin_column).join(grouped_review,
                                                      on = 'asin',
                                                      how = 'left')
    # joined_product.head()
    out = joined_product.agg(F.count(asin_column)\
                             .alias('count_total'),
                             F.avg(mean_rating_column)\
                             .alias('mean_meanRating'),
                             F.variance(mean_rating_column)\
                             .alias('variance_meanRating'),
                             F.sum(F.isnull(mean_rating_column).cast('int'))\
                             .alias('numNulls_meanRating'),

                             F.avg(count_rating_column)\
                             .alias('mean_countRating'),
                             F.variance(count_rating_column)\
                             .alias('variance_countRating'),
                             F.sum(F.isnull(count_rating_column).cast('int'))\
                             .alias('numNulls_countRating')).head()
    # -------------------------------------------------------------------------

    # ---------------------- Put results in res dict --------------------------
    # Calculate the values programmaticly. Do not change the keys and do not
    # hard-code values in the dict. Your submission will be evaluated with
    # different inputs.
    # Modify the values of the following dictionary accordingly.
    res = {
        'count_total': None,
        'mean_meanRating': None,
        'variance_meanRating': None,
        'numNulls_meanRating': None,
        'mean_countRating': None,
        'variance_countRating': None,
        'numNulls_countRating': None
    }
    # Modify res:

    res['count_total'] = int(out[0])
    res['mean_meanRating'] = float(out[1])
    res['variance_meanRating'] = float(out[2])
    res['numNulls_meanRating'] = int(out[3])
    res['mean_countRating'] = float(out[4])
    res['variance_countRating'] = float(out[5])
    res['numNulls_countRating'] = int(out[6])


    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_1')
    return res
    # -------------------------------------------------------------------------




def task_2(data_io, product_data):
    # -----------------------------Column names--------------------------------
    # Inputs:
    salesRank_column = 'salesRank'
    categories_column = 'categories'
    asin_column = 'asin'
    # Outputs:
    category_column = 'category'
    bestSalesCategory_column = 'bestSalesCategory'
    bestSalesRank_column = 'bestSalesRank'
    # -------------------------------------------------------------------------

    # ---------------------- Your implementation begins------------------------
    res_df = product_data.select(
                                product_data.categories[0][0].alias(category_column),
                                F.map_keys(product_data.salesRank)[0].alias(bestSalesCategory_column),
                                F.map_values(product_data.salesRank)[0].alias(bestSalesRank_column)
                                ).replace({'': None},
                                          subset = [category_column,
                                                    bestSalesCategory_column,
                                                    bestSalesRank_column])


    stats = res_df.agg(
        F.count("*").alias('count_total'),
        F.avg(bestSalesRank_column).alias('mean_bestSalesRank'),
        F.variance(bestSalesRank_column).alias('variance_bestSalesRank'),

        F.sum(F.isnull(category_column).cast('int')).alias('numNulls_category'),

        F.countDistinct(res_df.category).alias('countDistinct_category'),


        F.sum(F.isnull(bestSalesCategory_column).cast('int')).alias('numNulls_bestSalesCategory'),

        F.countDistinct(res_df.bestSalesCategory).alias('countDistinct_bestSalesCategory')
    ).head()

    # -------------------------------------------------------------------------

    # ---------------------- Put results in res dict --------------------------
    res = {
        'count_total': None,
        'mean_bestSalesRank': None,
        'variance_bestSalesRank': None,
        'numNulls_category': None,
        'countDistinct_category': None,
        'numNulls_bestSalesCategory': None,
        'countDistinct_bestSalesCategory': None
    }
    # Modify res:

    res['count_total'] = int(stats[0])
    res['mean_bestSalesRank'] = float(stats[1])
    res['variance_bestSalesRank'] = float(stats[2])
    res['numNulls_category'] = int(stats[3])
    res['countDistinct_category'] = int(stats[4])
    res['numNulls_bestSalesCategory'] = int(stats[5])
    res['countDistinct_bestSalesCategory'] = int(stats[6])
    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_2')
    return res
    # -------------------------------------------------------------------------





def task_3(data_io, product_data):
    # -----------------------------Column names--------------------------------
    # Inputs:
    asin_column = 'asin'
    price_column = 'price'

    attribute = 'also_viewed'
    related_column = 'related'
    # Outputs:
    meanPriceAlsoViewed_column = 'meanPriceAlsoViewed'
    countAlsoViewed_column = 'countAlsoViewed'
    # -------------------------------------------------------------------------

    # ---------------------- Your implementation begins------------------------

    # countAlsoViewed
    added_also_viewed = product_data.select(asin_column,
                                            price_column,
                                            F.element_at(related_column, attribute))
#                                     .withColumnRenamed(
#                                         'element_at(related, also_viewed)',
#                                          attribute)

    added_count = added_also_viewed.withColumn(countAlsoViewed_column,
                                               F.size(F.col('element_at(related, also_viewed)')))\
    .replace(-1, None)

    # countAlsoViewed res
    exploded_df = added_count.select(asin_column,
                                     F.explode('element_at(related, also_viewed)'))\
                             .withColumnRenamed(
                                        'col',
                                         'to_join')

    joined_df = exploded_df.join(added_count.withColumnRenamed('asin', 'to_join'),
                                 on = 'to_join',
                                 how = 'inner')

    # meanPriceAlsoViewed
    out_df = joined_df.groupby(asin_column).agg({price_column: 'mean'})\
        .withColumnRenamed('avg(price)', meanPriceAlsoViewed_column)

    out_df = added_count.join(out_df, on = asin_column, how = 'left')


    count_total = out_df.count()

    # meanPriceAlsoViewed res
    mean_meanPriceAlsoViewed = out_df.select(F.avg(out_df.meanPriceAlsoViewed)).head()[0]
    variance_meanPriceAlsoViewed = out_df.select(F.variance(out_df.meanPriceAlsoViewed)).head()[0]
    numNulls_meanPriceAlsoViewed = out_df.filter(out_df.meanPriceAlsoViewed.isNull()).count()

    mean_countAlsoViewed = out_df.select(F.avg(out_df.countAlsoViewed)).head()[0]
    variance_countAlsoViewed = out_df.select(F.variance(out_df.countAlsoViewed)).head()[0]
    numNulls_countAlsoViewed = out_df.filter(out_df.countAlsoViewed.isNull()).count()

    # -------------------------------------------------------------------------

    # ---------------------- Put results in res dict --------------------------
    res = {
        'count_total': None,
        'mean_meanPriceAlsoViewed': None,
        'variance_meanPriceAlsoViewed': None,
        'numNulls_meanPriceAlsoViewed': None,
        'mean_countAlsoViewed': None,
        'variance_countAlsoViewed': None,
        'numNulls_countAlsoViewed': None
    }
    # Modify res:

    res['count_total'] = int(count_total)

    res['mean_meanPriceAlsoViewed'] = float(mean_meanPriceAlsoViewed)
    res['variance_meanPriceAlsoViewed'] = float(variance_meanPriceAlsoViewed)
    res['numNulls_meanPriceAlsoViewed'] = int(numNulls_meanPriceAlsoViewed)

    res['mean_countAlsoViewed'] = float(mean_countAlsoViewed)
    res['variance_countAlsoViewed'] = float(variance_countAlsoViewed)
    res['numNulls_countAlsoViewed'] = int(numNulls_countAlsoViewed)

    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_3')
    return res
    # -------------------------------------------------------------------------



def task_4(data_io, product_data):
    # -----------------------------Column names--------------------------------
    # Inputs:
    price_column = 'price'
    title_column = 'title'
    # Outputs:
    meanImputedPrice_column = 'meanImputedPrice'
    medianImputedPrice_column = 'medianImputedPrice'
    unknownImputedTitle_column = 'unknownImputedTitle'
    # -------------------------------------------------------------------------

    # ---------------------- Your implementation begins------------------------

    price_df = product_data.select(title_column,
                                   product_data.price.cast('float').alias('float_price'))

    mean_imputer = M.feature.Imputer(
        strategy = 'mean',
        inputCols = ['float_price'],
        outputCols = [meanImputedPrice_column]
    )

    median_imputer = M.feature.Imputer(
        strategy = 'median',
        inputCols = ['float_price'],
        outputCols = [medianImputedPrice_column]
    )

    mean_imputed_df = mean_imputer.fit(price_df).transform(price_df)

    median_imputed_df = median_imputer.fit(mean_imputed_df).transform(mean_imputed_df)


    unknown_imputed_df = median_imputed_df.withColumnRenamed(title_column,
                                                             unknownImputedTitle_column)\
                                .replace({'': 'unknown'},
                                         subset = [unknownImputedTitle_column])\
                                .fillna({unknownImputedTitle_column: 'unknown'})

    stats = unknown_imputed_df.agg(
        F.count('*')\
        .alias('count_total'),
        F.avg(meanImputedPrice_column)\
        .alias('mean_meanImputedPrice'),
        F.variance(meanImputedPrice_column)\
        .alias('variance_meanImputedPrice'),
        F.sum(F.isnull(meanImputedPrice_column).cast('int'))\
        .alias('numNulls_meanImputedPrice'),
        F.avg(medianImputedPrice_column)\
        .alias('mean_medianImputedPrice'),
        F.variance(medianImputedPrice_column)\
        .alias('variance_medianImputedPrice'),
        F.sum(F.isnull(medianImputedPrice_column).cast('int'))\
        .alias('numNulls_medianImputedPrice'),
        F.sum((unknown_imputed_df.unknownImputedTitle == 'unknown').cast('int'))\
        .alias('numUnknowns_unknownImputedTitle')
                  ).head()

#     count_total = product_data.count()
#     mean_meanImputedPrice = mean_imputed_df.select(F.avg(meanImputedPrice_column)).head()[0]
#     variance_meanImputedPrice = mean_imputed_df.select(F.variance(meanImputedPrice_column)).head()[0]
#     numNulls_meanImputedPrice = mean_imputed_df.filter(F.col(meanImputedPrice_column).isNull()).count()

#     mean_medianImputedPrice = median_imputed_df.select(F.avg(medianImputedPrice_column)).head()[0]
#     variance_medianImputedPrice = median_imputed_df.select(F.variance(medianImputedPrice_column)).head()[0]
#     numNulls_medianImputedPrice = median_imputed_df.filter(F.col(medianImputedPrice_column).isNull())\
#                                               .count()

#     numUnknowns_unknownImputedTitle = unknown_df.filter(F.col(unknownImputedTitle_column) == 'unknown')\
#                                                   .count()
    # -------------------------------------------------------------------------

    # ---------------------- Put results in res dict --------------------------
    res = {
        'count_total': None,
        'mean_meanImputedPrice': None,
        'variance_meanImputedPrice': None,
        'numNulls_meanImputedPrice': None,
        'mean_medianImputedPrice': None,
        'variance_medianImputedPrice': None,
        'numNulls_medianImputedPrice': None,
        'numUnknowns_unknownImputedTitle': None
    }
    # Modify res:

    res['count_total'] = int(stats[0])
    res['mean_meanImputedPrice'] = float(stats[1])
    res['variance_meanImputedPrice'] = float(stats[2])
    res['numNulls_meanImputedPrice'] = int(stats[3])
    res['mean_medianImputedPrice'] = float(stats[4])
    res['variance_medianImputedPrice'] = float(stats[5])
    res['numNulls_medianImputedPrice'] = int(stats[6])
    res['numUnknowns_unknownImputedTitle'] = int(stats[7])

    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_4')
    return res
    # -------------------------------------------------------------------------




def task_5(data_io, product_processed_data, word_0, word_1, word_2):
    # -----------------------------Column names--------------------------------
    # Inputs:
    title_column = 'title'
    PATTERN = ' '
    # Outputs:
    titleArray_column = 'titleArray'
    titleVector_column = 'titleVector'
    # -------------------------------------------------------------------------

    # ---------------------- Your implementation begins------------------------
    product_processed_data_output = product_processed_data.select(
        F.split(F.lower(F.col(title_column)), PATTERN))

    word2Vec = M.feature.Word2Vec(vectorSize=16,
                                  minCount = 100,
                                  numPartitions = 4,
                                  inputCol="split(lower(title),  )",
                                  outputCol="result",
                                  seed = 5)

    model = word2Vec.fit(product_processed_data_output)
    model = word2Vec.fit(product_processed_data_output)
    model = word2Vec.fit(product_processed_data_output)
    model = word2Vec.fit(product_processed_data_output)
    model = word2Vec.fit(product_processed_data_output)
    model = word2Vec.fit(product_processed_data_output)

#     result = model.transform(title_df)
#     result
    # -------------------------------------------------------------------------

    # ---------------------- Put results in res dict --------------------------
    res = {
        'count_total': None,
        'size_vocabulary': None,
        'word_0_synonyms': [(None, None), ],
        'word_1_synonyms': [(None, None), ],
        'word_2_synonyms': [(None, None), ]
    }
    # Modify res:
    res['count_total'] = product_processed_data_output.count()
    res['size_vocabulary'] = model.getVectors().count()
    for name, word in zip(
        ['word_0_synonyms', 'word_1_synonyms', 'word_2_synonyms'],
        [word_0, word_1, word_2]
    ):
        res[name] = model.findSynonymsArray(word, 10)
    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_5')
    return res
    # -------------------------------------------------------------------------





def task_6(data_io, product_processed_data):
    # -----------------------------Column names--------------------------------
    # Inputs:
    category_column = 'category'
    # Outputs:
    categoryIndex_column = 'categoryIndex'
    categoryOneHot_column = 'categoryOneHot'
    categoryPCA_column = 'categoryPCA'
    # -------------------------------------------------------------------------

    # ---------------------- Your implementation begins------------------------
    indexer = M.feature.StringIndexer(inputCol = category_column,
                                      outputCol = categoryIndex_column,
                                      handleInvalid = "error")
    indexed_model = indexer.fit(product_processed_data).transform(product_processed_data)


    encoder = M.feature.OneHotEncoderEstimator(dropLast = False,
                                               inputCols = [categoryIndex_column],
                                               outputCols = [categoryOneHot_column])
    encodded_model = encoder.fit(indexed_model).transform(indexed_model)

    pca =  M.feature.PCA(k = 15,
                         inputCol = categoryOneHot_column,
                         outputCol = categoryPCA_column)
    pca_model = pca.fit(encodded_model).transform(encodded_model)

    summarizer = Summarizer.metrics("mean")

    count_total = pca_model.count()
    meanVector_categoryPCA = pca_model.select(
        summarizer.summary(pca_model.categoryPCA)).head()[0][0]
    meanVector_categoryOneHot = pca_model.select(
        summarizer.summary(pca_model.categoryOneHot)).head()[0][0]
    # -------------------------------------------------------------------------

    # ---------------------- Put results in res dict --------------------------
    res = {
        'count_total': None,
        'meanVector_categoryOneHot': [None, ],
        'meanVector_categoryPCA': [None, ]}
    # Modify res:
    res['count_total'] = count_total
    res['meanVector_categoryOneHot'] = meanVector_categoryOneHot
    res['meanVector_categoryPCA'] = meanVector_categoryPCA



    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_6')
    return res
    # -------------------------------------------------------------------------




def task_7(data_io, train_data, test_data):

    # ---------------------- Your implementation begins------------------------

    tree = M.regression.DecisionTreeRegressor(maxDepth = 5,
                                             featuresCol = 'features',
                                             labelCol = 'overall')
    model = tree.fit(train_data)

    predictions = model.transform(test_data)

    evaluator = M.evaluation.RegressionEvaluator(labelCol="overall",
                                                 predictionCol="prediction",
                                                 metricName="rmse")
    test_rmse = evaluator.evaluate(predictions)
    # -------------------------------------------------------------------------


    # ---------------------- Put results in res dict --------------------------
    res = {
        'test_rmse': None
    }
    # Modify res:
    res['test_rmse'] = test_rmse

    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_7')
    return res
    # -------------------------------------------------------------------------



def task_8(data_io, train_data, test_data):
    depth_candidates = [5, 7, 9, 12]

    # ---------------------- Your implementation begins------------------------
    evaluator = M.evaluation.RegressionEvaluator(labelCol="overall",
                                                 predictionCol="prediction",
                                                 metricName="rmse")

    (training_data, validation_data) = train_data.randomSplit([0.75, 0.25])

    rmse_lst = []
    model_lst = []
    for val in depth_candidates:
        tree = M.regression.DecisionTreeRegressor(maxDepth = val,
                                                  featuresCol = 'features',
                                                  labelCol = 'overall')

        model = tree.fit(train_data)
        model_lst.append(model)

        pred = model.transform(validation_data)

        rmse = evaluator.evaluate(pred)
        rmse_lst.append(rmse)

    selected_model = model_lst[np.argmin(rmse_lst)]
    test_pred = selected_model.transform(test_data)
    test_rmse = evaluator.evaluate(test_pred)
    # -------------------------------------------------------------------------


    # ---------------------- Put results in res dict --------------------------
    res = {
        'test_rmse': None,
        'valid_rmse_depth_5': None,
        'valid_rmse_depth_7': None,
        'valid_rmse_depth_9': None,
        'valid_rmse_depth_12': None,
    }
    # Modify res:
    res['test_rmse'] = test_rmse
    res['valid_rmse_depth_5'] = rmse_lst[0]
    res['valid_rmse_depth_7'] = rmse_lst[1]
    res['valid_rmse_depth_9'] = rmse_lst[2]
    res['valid_rmse_depth_12'] = rmse_lst[3]

    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_8')
    return res
    # -------------------------------------------------------------------------
