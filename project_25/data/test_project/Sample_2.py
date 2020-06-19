import os
import pyspark.sql.functions as F
import pyspark.sql.types as T
from utilities import SEED
# import any other dependencies you want, but make sure only to use the ones
# availiable on AWS EMR
# Import your own dependencies
from statistics import *
from pyspark.sql import functions as F
from pyspark.sql import *
from pyspark.sql.types import *
from pyspark.ml import *
from statistics import mean
from pyspark.ml.regression import DecisionTreeRegressor
from pyspark.ml.evaluation import RegressionEvaluator
from pyspark.sql.types import *
import time

from pyspark.ml.classification import DecisionTreeClassifier
from pyspark.ml.feature import StringIndexer, VectorIndexer
from pyspark.ml.evaluation import MulticlassClassificationEvaluator
from pyspark.mllib.util import MLUtils
from pyspark.ml.evaluation import RegressionEvaluator
from pyspark.ml.stat import Summarizer

#-----------------------------

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

# %load -s task_1 assignment2.py
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
    count_rating_column = review_data.groupBy('asin').count()
    count_total =  product_data.join(count_rating_column, product_data['asin'] == count_rating_column['asin'], 'left_outer').count()
    asin_ = product_data.select('asin')
    asin_ = asin_.join(review_data.select('asin', 'overall'), \
            how = 'left', on = 'asin')
    asin_ = asin_.groupby('asin').agg(F.count('overall'), F.avg('overall'))
    asin_ = asin_.withColumnRenamed('count(overall)', 'countRating')
    asin_ = asin_.withColumnRenamed('avg(overall)','meanRating')
    
    null_ = F.when(asin_.countRating==0, None).otherwise(asin_.countRating)
    asin_ = asin_.withColumn('countRating', null_)
    
    mean_meanRating,variance_meanRating,numNulls_meanRating,mean_countRating,\
    variance_countRating, numNulls_countRating = asin_.agg(F.avg('meanRating'),\
                        F.variance('meanRating'), F.sum((F.isnull('meanRating')).cast("int")), \
                    F.avg('countRating'), F.variance('countRating'), F.sum((F.isnull('countRating')).cast("int"))).collect()[0]
     


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
    # res[ ]  = ,
    res['count_total']  = count_total
    res[ 'mean_meanRating']  = mean_meanRating
    res['variance_meanRating' ]  = variance_meanRating
    res['numNulls_meanRating' ]  = numNulls_meanRating
    res[ 'mean_countRating']  = mean_countRating
    res[ 'variance_countRating']  = variance_countRating
    res[ 'numNulls_countRating']  = numNulls_countRating
    
    print(count_total)
    print(type(count_total))


    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_1')
    return res
    # -------------------------------------------------------------------------

# %load -s task_2 assignment2.py
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
    first_item_ = product_data['categories'][0][0]
    procesed_ = product_data.withColumn(category_column, first_item_)
    null_ = F.when(procesed_.category=='', None).otherwise(procesed_.category)
    procesed_ = procesed_.withColumn(category_column, null_)
    map_key = F.map_keys('salesRank')[0]
    procesed_ = procesed_.withColumn('bestSalesCategory', map_key)
    map_value = F.map_values('salesRank')[0]
    procesed_ = procesed_.withColumn('bestSalesRank', map_value)
    count_total, mean_bestSalesRank, variance_bestSalesRank = procesed_.agg(F.count('asin'), \
      F.mean('bestSalesRank'), F.variance('bestSalesRank')).collect()[0]

    countDistinct_category = procesed_.filter(procesed_["category"] != '')
    countDistinct_category = countDistinct_category.groupBy("category")
    countDistinct_category = countDistinct_category.agg(F.countDistinct("category")).count()

    sales = procesed_.select('bestSalesCategory').filter( \
        procesed_.bestSalesCategory.isNotNull())

    numNulls_bestSalesCategory, temp =  procesed_.agg(F.sum((F.isnull(procesed_[bestSalesCategory_column])).cast("int")),\
                                                    F.sum((F.isnull(procesed_[bestSalesCategory_column])).cast("int"))).collect()[0]
    numNulls_category, temp =  procesed_.agg(F.sum((F.isnull(procesed_[category_column])).cast("int")),\
                                                    F.sum((F.isnull(procesed_[category_column])).cast("int"))).collect()[0]
    countDistinct_bestSalesCategory, temp = \
    sales.agg(F.countDistinct(procesed_.bestSalesCategory).alias('bestSalesCategory'),\
                 F.countDistinct(procesed_.bestSalesCategory).alias('bestSalesCategory')\
                ).collect()[0]


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
    res[ 'count_total']  =count_total
    res[ 'mean_bestSalesRank']  =mean_bestSalesRank
    res[ 'variance_bestSalesRank']  =variance_bestSalesRank
    res[ 'numNulls_category']  = numNulls_category
    res[ 'countDistinct_category']  =countDistinct_category
    res[ 'numNulls_bestSalesCategory']  = numNulls_bestSalesCategory
    res[ 'countDistinct_bestSalesCategory']  =countDistinct_bestSalesCategory

    print(res)

    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_2')
    return res
    # -------------------------------------------------------------------------

# %load -s task_3 assignment2.py
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

    processed_ = product_data.select(asin_column,related_column, price_column)
    processed_ = processed_.withColumn('meanPriceAlsoViewed', processed_.related.getItem(attribute))
    pro_ = processed_.select(processed_.asin, F.explode(processed_.meanPriceAlsoViewed))
    pro_ = pro_.withColumnRenamed('asin','pro__asin')

    processed_ = processed_.select('asin', 'price')
    pro_ = pro_.join(processed_, pro_.col == processed_.asin, how = 'left')
    pro_ = pro_.groupby( 'pro__asin').agg(F.mean(price_column),F.count('col'))
    processed_ = processed_.join(pro_, processed_.asin == pro_.pro__asin, how = 'left').select(asin_column,'avg(price)', 'count(col)')



    count_total, mean_meanPriceAlsoViewed, variance_meanPriceAlsoViewed, \
    numNulls_meanPriceAlsoViewed, mean_countAlsoViewed, variance_countAlsoViewed, \
    numNulls_countAlsoViewed = processed_.agg(\
        F.count(asin_column), F.mean('avg(price)'),\
        F.variance('avg(price)'), F.sum((F.isnull('avg(price)')).cast("int")), F.mean('count(col)'),\
        F.variance('count(col)'), F.sum((F.isnull('count(col)')).cast("int"))).collect()[0]




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
    res['count_total' ]  = count_total
    res['mean_meanPriceAlsoViewed' ]  = mean_meanPriceAlsoViewed
    res['variance_meanPriceAlsoViewed' ]  = variance_meanPriceAlsoViewed
    res['numNulls_meanPriceAlsoViewed' ]  = numNulls_meanPriceAlsoViewed
    res['mean_countAlsoViewed' ]  = mean_countAlsoViewed
    res['variance_countAlsoViewed' ]  = variance_countAlsoViewed
    res['numNulls_countAlsoViewed' ]  = numNulls_countAlsoViewed



    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_3')
    return res
    # -------------------------------------------------------------------------


# %load -s task_4 assignment2.py
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
    cast_ = product_data.price.cast(FloatType())
    process_ = product_data.withColumn('price', cast_)
    #process_.show(5)
    null_ = F.when(process_.price.isNull(),process_.select(F.mean('price')).head()[0]).otherwise(process_.price)
    process_ = process_.withColumn('meanImputedPrice', null_ )  
    null_ = F.when(process_.price.isNull(), process_.approxQuantile('Price', [0.5], 0.0)[0]).otherwise(process_.price)
    process_ = process_.withColumn('medianImputedPrice', null_)                                                                    
    #process_.show(5)

    null_ = F.when( (process_.title =='') |(process_.title.isNull()), 'unknow').otherwise( process_.title)
    process_ = process_.withColumn('unknownImputedTitle', null_)
    #process_.show(5)

    #numUnknowns_unknownImputedTitle = process_.where(process_.unknownImputedTitle == 'unknow').count()
    process_2 = process_.select('meanImputedPrice', 'medianImputedPrice')


    count_total, mean_meanImputedPrice, variance_meanImputedPrice, \
    numNulls_meanImputedPrice, mean_medianImputedPrice, \
    variance_medianImputedPrice, numNulls_medianImputedPrice= \
    process_2.agg(F.count(meanImputedPrice_column), F.mean(meanImputedPrice_column), F.variance(meanImputedPrice_column),\
                    F.sum((F.isnull('medianImputedPrice')).cast("int")),\
                     F.mean(medianImputedPrice_column), F.variance(medianImputedPrice_column),\
                 F.sum((F.isnull('medianImputedPrice')).cast("int")\
                                    )).collect()[0]





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
    res['count_total' ]  = count_total
    res['mean_meanImputedPrice' ]  = mean_meanImputedPrice
    res['variance_meanImputedPrice' ]  =  variance_meanImputedPrice
    res['numNulls_meanImputedPrice' ]  = numNulls_meanImputedPrice
    res['mean_medianImputedPrice' ]  = mean_medianImputedPrice
    res['variance_medianImputedPrice' ]  = variance_medianImputedPrice
    res['numNulls_medianImputedPrice' ]  = numNulls_medianImputedPrice
    res['numUnknowns_unknownImputedTitle' ]  = process_.where(process_.unknownImputedTitle == 'unknow').count()



    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_4')
    return res
    # -------------------------------------------------------------------------

# %load -s task_5 assignment2.py
def task_5(data_io, product_processed_data, word_0, word_1, word_2):
    # -----------------------------Column names--------------------------------
    # Inputs:
    title_column = 'title'
    # Outputs:
    titleArray_column = 'titleArray'
    titleVector_column = 'titleVector'
    # -------------------------------------------------------------------------

    # ---------------------- Your implementation begins------------------------


    processed_1=product_processed_data.withColumn("process_title", F.split(F.lower(F.col('title')), ' '))
    word2Vec = M.feature.Word2Vec(inputCol="process_title", outputCol="TitleVector", minCount=100, vectorSize=16, seed=SEED, numPartitions=4 )
    model = word2Vec.fit(processed_1)
    result = model.transform(processed_1)
    #word_0_synonyms = model.findSynonymsArray(word_0, 10)
    #word_1_synonyms = model.findSynonymsArray(word_1, 10)
    #word_2_synonyms = model.findSynonymsArray(word_2, 10)
    product_processed_data_output = processed_1



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
# %load -s task_6 assignment2.py
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

    step1=product_processed_data[[category_column]]
    stringIndexer = M.feature.StringIndexer(inputCol="category", outputCol="indexed_category", handleInvalid="error", stringOrderType="frequencyDesc")
    inputs = stringIndexer.getOutputCol()
    OHencoder = M.feature.OneHotEncoderEstimator(inputCols=[inputs], outputCols=['categoryOneHot'], dropLast = False)
    pca_ = M.feature.PCA(inputCol="categoryOneHot",outputCol='categoryPCA', k=15 )
    pipeline = Pipeline(stages=[stringIndexer, OHencoder, pca_])
    pipelineFit = pipeline.fit(step1)
    output = pipelineFit.transform(step1)
    sum_mean = Summarizer.metrics("mean")
    meanVector_categoryOneHot = output.select(Summarizer.mean(output.categoryOneHot)).head()[0]
    meanVector_categoryPCA = output.select(Summarizer.mean(output.categoryPCA)).head()[0]
    # -------------------------------------------------------------------------

    # ---------------------- Put results in res dict --------------------------
    res = {
        'count_total': None,
        'meanVector_categoryOneHot': [None, ],
        'meanVector_categoryPCA': [None, ]
    }
    # Modify res:
    res['count_total'] = output.count()
    res['meanVector_categoryOneHot'] = meanVector_categoryOneHot
    res['meanVector_categoryPCA'] = meanVector_categoryPCA



    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_6')
    return res
    # -------------------------------------------------------------------------


def task_7(data_io, train_data, test_data):
    
    # ---------------------- Your implementation begins------------------------
    dt = DecisionTreeRegressor(labelCol="overall", featuresCol="features", maxDepth=5)
    model = dt.fit(train_data)
    predictions = model.transform(test_data)
    evaluator = RegressionEvaluator(labelCol="overall", predictionCol="prediction", metricName="rmse")
    rmse = evaluator.evaluate(predictions)
    
    
    
    
    # -------------------------------------------------------------------------
    
    
    # ---------------------- Put results in res dict --------------------------
    res = {
        'test_rmse': None
    }
    # Modify res:
    res['test_rmse'] = rmse

    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_7')
    return res
    # -------------------------------------------------------------------------
def task_8(data_io, train_data, test_data):
    
    # ---------------------- Your implementation begins------------------------
    trainingData, testData = train_data.randomSplit([0.75, 0.25])
    best = 0
    all_rmse = []
    lowest_rmse = 100
    for i in [5, 7, 9, 12]:
        dt = DecisionTreeRegressor(labelCol="overall", featuresCol="features", maxDepth=i)
        model = dt.fit(trainingData)
        predictions = model.transform(testData)
        evaluator = RegressionEvaluator(labelCol="overall", predictionCol="prediction", metricName="rmse")
        rmse = evaluator.evaluate(predictions)
        all_rmse = all_rmse + [rmse]
        if rmse <= lowest_rmse:
            lowest_rmse = rmse
            best = i
            best_model = model

    predictions = best_model.transform(test_data)
    evaluator = RegressionEvaluator(labelCol="overall", predictionCol="prediction", metricName="rmse")
    rmse = evaluator.evaluate(predictions)
    
    
    
    
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
    res['test_rmse'] = rmse
    res['valid_rmse_depth_5'] = all_rmse[0]
    res['valid_rmse_depth_7'] = all_rmse[1]
    res['valid_rmse_depth_9'] = all_rmse[2]
    res['valid_rmse_depth_12'] = all_rmse[3]
    
    

    # -------------------------------------------------------------------------

    # ----------------------------- Do not change -----------------------------
    data_io.save(res, 'task_8')
    return res
    # -------------------------------------------------------------------------