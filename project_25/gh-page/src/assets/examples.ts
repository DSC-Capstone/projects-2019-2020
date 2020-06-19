interface CodeSamples {
  code: string,
  name: string
}
const examples: CodeSamples[] = [
  {
    code: `import simplegui

# formatting time function
def format(t):
  a = t // 600
  b = (t // 100) % 6
  c = (t // 10) % 10
  d = t % 10
  # string representation of the formatted time
  clock = str(a) + ':' + str(b) + str(c) + '.' + str(d)
  return clock

# event handlers for buttons
def start():
  timer.start()

def stop():

  if (timer.is_running() == True):	# controller for if stopwatch is started first
      if ( d == 0 ):
          x += 1
      y += 1
  result = str(x) + '/' + str(y)
  timer.stop()


def reset():
  count = 0
  format(count)
  x = 0
  y = 0
  result = str(x) + '/' + str(y)
  timer.stop()

# event handler for timer with 0.1 sec interval
timer = simplegui.create_timer(100, counter)

# draw handler
def draw(canvas):
  canvas.draw_text(format(count), [125, 125], 25, "White")
  canvas.draw_text(result, [225,50], 25, "Red")
`,
    name: 'Coursera 1 (Course A)'
  }, {
    code: `# STOPWATCH: Time as you've never seen it before
# (I used to work in PR)

# requires SimpleGUICS2Pygame module
import simplegui
import SimpleGUICS2Pygame.simpleguics2pygame as simplegui

# define global variables

# define helper function
def format(t):
  A = time / 600
  B = ((time / 10) % 60) / 10
  C = ((time / 10) % 60) % 10
  D = time % 10
  t = str(A) + ":" + str(B) + str(C) + "." + str(D)
  return t

# define event handlers for buttons

def start_timer():
  timer.start()
  running = True

def stop_timer():
  timer.stop()
  if running == True:
      counter += 1
      if time % 10 == 0:
          success +=1
  running = False

def reset_timer():
  timer.stop()
  time = 0
  running = False
  counter = 0
  success = 0

# define event handler for timer with 0.1 sec interval

def timer_handler():
  time += 1
  print(time)

# define draw handler

def draw(canvas):
  t = "0:00.0"
  t = format(t)
  canvas.draw_text(t,[130,150],24,"Yellow","monospace")
  canvas.draw_text(str(success)+"/"+str(counter),[260,30],20,"Red","monospace")
`,
    name: 'Coursera 2 (Course A)'
  }, {
    code: `import os
import pyspark.sql.functions as F
import pyspark.sql.types as T
from utilities import SEED
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

    asin_ = product_data.select('asin')
    asin_ = asin_.join(review_data.select('asin', 'overall'), \
            how = 'left', on = 'asin')
    asin_ = asin_.groupby('asin').agg(F.count('overall'), F.avg('overall'))
    asin_ = asin_.withColumnRenamed('avg(overall)','meanRating')
    asin_ = asin_.withColumnRenamed('count(overall)', 'countRating')
    null_ = F.when(asin_.countRating==0, None).otherwise(asin_.countRating)
    asin_ = asin_.withColumn(count_rating_column, null_)
    count_total,mean_meanRating,variance_meanRating,numNulls_meanRating,mean_countRating,\
    variance_countRating, numNulls_countRating = asin_.agg(F.count(asin_column), F.avg(mean_rating_column),\
                        F.variance(mean_rating_column), F.sum((F.isnull(mean_rating_column)).cast("int")), \
                    F.avg(count_rating_column), F.variance(count_rating_column), F.sum((F.isnull(count_rating_column)).cast("int"))).collect()[0]



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
    first_item = product_data.categories.getItem(0)
    first_item_ = first_item.getItem(0)
    procesed_ = product_data.withColumn(category_column, first_item_)
    null_ = F.when(procesed_.categories=='', None).otherwise(procesed_.categories)
    procesed_ = procesed_.withColumn(category_column, null_)
    map_key = F.map_keys(salesRank_column)[0]
    procesed_ = procesed_.withColumn(bestSalesCategory_column, map_key)
    map_value = F.map_values(salesRank_column)[0]
    procesed_ = procesed_.withColumn(bestSalesRank_column, map_value)
    count_total, mean_bestSalesRank, variance_bestSalesRank = procesed_.agg(F.count(asin_column), \
      F.mean(bestSalesRank_column), F.variance(bestSalesRank_column)).collect()[0]

    countDistinct_category = procesed_.filter(procesed_["category"] != '').groupBy("category").agg(F.countDistinct("category")).count()

    sales = procesed_.select(bestSalesCategory_column).filter( \
        procesed_[bestSalesCategory_column].isNotNull())

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

    processed_ = product_data.select(asin_column, price_column, related_column)
    processed_ = processed_.withColumn('meanPriceAlsoViewed', processed_.related.getItem(attribute))
    pro_ = processed_.select(processed_.asin, F.explode(processed_.meanPriceAlsoViewed))
    pro_ = pro_.withColumnRenamed('asin','pro__asin')

    processed_ = processed_.select(asin_column, price_column)
    pro_ = pro_.join(processed_, pro_.col == processed_.asin, how = 'left').groupby( 'pro__asin').agg(F.mean(price_column),\
                                                                        F.count('col'))
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
    process_ = product_data.withColumn(price_column, cast_)
    #process_.show(5)
    null_ = F.when(process_.price.isNull(),process_.select(F.mean(price_column)).head()[0]).otherwise(process_.price)
    process_ = process_.withColumn('meanImputedPrice', null_ )
    null_ = F.when(process_.price.isNull(), process_.approxQuantile('Price', [0.5], 0.0)[0]).otherwise(process_.price)
    process_ = process_.withColumn('medianImputedPrice', null_)
    #process_.show(5)

    null_ = F.when( (process_.title.isNull())|(process_.title ==''), 'unknow').otherwise(\
                process_.title)
    process_ = process_.withColumn('unknownImputedTitle', null_)
    #process_.show(5)

    numUnknowns_unknownImputedTitle = process_.where(process_.unknownImputedTitle == 'unknow').count()
    process_ = process_.select(meanImputedPrice_column, medianImputedPrice_column)

    count_total, mean_meanImputedPrice, variance_meanImputedPrice, numNulls_meanImputedPrice, mean_medianImputedPrice, \
    variance_medianImputedPrice, numNulls_medianImputedPrice= \
    process_.agg(F.count(meanImputedPrice_column), F.mean(meanImputedPrice_column), F.variance(meanImputedPrice_column),\
                    F.sum((F.isnull('medianImputedPrice')).cast("int")),\
                     F.mean(medianImputedPrice_column), F.variance(medianImputedPrice_column), F.sum((F.isnull('medianImputedPrice')).cast("int")\
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
    res['numUnknowns_unknownImputedTitle' ]  = numUnknowns_unknownImputedTitle



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
`,
    name: 'DSC-A-1 (Course B)'
  }, {
    code: `import os
import pyspark.sql.functions as F
import pyspark.sql.types as T
import time
from pyspark.ml.stat import Summarizer
from pyspark.ml.linalg import SparseVector, DenseVector, Vectors
import numpy as np


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
`,
    name: 'DSC-A-2 (Course B)'
  }, {
    code: `import os
import pyspark.sql.functions as F
import pyspark.sql.types as T
from utilities import SEED
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
`,
    name: 'DSC-A-3 (Course B)'
  }, {
    code: `import pandas as pd
import matplotlib.pyplot as plt

def clean_data(data):
    data = data.drop_duplicates()
    data.dropna(inplace=True)
    data = data.where(data['catagory']=='other')
    return data

def explore_data(data):
    print(data.info())
    print("average price: "+str(data['price'].mean()))
    print("max price: "+str(data['price'].max()))
    print("quantity: "+str(len(data)))

def train_model(data):
    data = clean_data(data)
    x = data.drop(['price'])
    y = data['price']
    model = LogisticRegression()
    model.train_n_folds(x,y,fold = 5)
    return model

def validate_model(test_data,model):
    test_data = clean_data(test_data)
    x = test_data.drop(['price'])
    y = test_data['price']
    predicted = model.predict(x)
    accuracy = (predicted == y).mean()
    if accuracy >= 0.8:
        print('success')
    return accuracy
`,
    name: 'DSC-B-1 (Course C)'
  }, {
    code: `import pandas as pd
import matplotlib.pyplot as plt

def clean(data):
    data = data.drop_duplicates()
    data.fillna(0,inplace=True)
    data = data[data['catagory']=='other'].copy()
    return data

def explore(data,print_ = True):
    if print_:
        print(data.info())
        print("mean price: "+str(data['price'].mean()))
        print("max price: "+str(data['price'].max()))
        print("quantity: "+str(len(data)))

def train(data, n=3):
    data = clean(data)
    x = data.drop(['price'])
    y = data['price']
    model = LogisticRegression(c = 1)
    model.train_n_folds(x,y,fold = n)
    return model

def validate(test_data,model):
    test_data = clean(test_data)
    x = test_data.drop(['price'])
    y = test_data['price']
    predicted = model.predict(x)
    accuracy = sum(predicted == y)/len(y)
    if accuracy<0.8:
        print('fail')
    else:
        print('success')
    return accuracy
`,
    name: 'DSC-B-2 (Course C)'
  }
]

export { examples }
