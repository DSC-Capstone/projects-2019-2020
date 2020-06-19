#Congressional tweets example

install.packages("tidyverse")
install.packages("tidyr")
install.packages("stm")
install.packages("quanteda")
install.packages("tidytext")
install.packages("Rtsne")
install.packages("rsvd")
install.packages("geometry")

#Topic modeling
library(tidyverse)
library(tidyr)
library(stm)
library(quanteda)
library(tidytext)
library(Rtsne)
library(rsvd)
library(geometry)

covids <- read.csv("./combined_v1.csv")[-1]
#covids <- read.csv("./all-the-news-2020-COVID-title.csv")[-1]
#covids <- covids[c('date','title','article','section','publication')]
#covids <- covids[-which(is.na(covids$hour) == T),]
covids$article <- as.character(covids$article)
covids$title <- as.character(covids$title)

#covids <- covids[covids$country=="China",]
corpus <- corpus(covids$article,
                 docvars=covids)

doc.features <- dfm(corpus, 
                    remove=c(stopwords("english"), "https", "t.co", "rt"), 
                    stem=T, remove_punct=T)

# drop documents without feature and save
empty_docs <- rowSums(doc.features) ==0
covids_notna<-covids[!empty_docs,]
#write.csv(covids_notna,"all-the-news-2020-COVID-title-drop-na.csv")

#convert to STM
out <- convert(doc.features, to = "stm", docvars = covids)
out$meta$date <- as.Date(out$meta$date, format="%Y-%m-%d")
hist(out$meta$date, breaks="day")

#Run STM model
stm.out = stm(out$documents, out$vocab, K=0, 
              prevalence = ~ s(date), 
              data=out$meta, init.type="Spectral")

labelTopics(stm.out)

dim(stm.out$mu$gamma)

plot.STM(stm.out, n=10)
findThoughts(stm.out, out$meta$text, topics=23, n=10)
findThoughts(stm.out, out$meta$text, topics=26, n=30)
findThoughts(stm.out, out$meta$text, topics=25, n=10)

#out$meta$date <- as.numeric(out$meta$date)
prep <- estimateEffect(c(1:30) ~ s(date), stm.out, out$meta)
plot.estimateEffect(prep, covariate = "date", 
                    method="continuous", topic=24)

td_gamma <- tidy(stm.out, matrix = "gamma",document_names = rownames(covids))
#write.csv(td_gamma,"topic_td_gamma_69topics.csv")

#Supervised learning
set.seed(98661)
covids$sentiment_toward <- ifelse(covids$AvgBucket==1,1,0)
table(covids$sentiment_toward)
corpus <- corpus(covids$text,
                 docvars=covids)
doc.features <- dfm(corpus, 
                    remove=c(stopwords("english"), "https", "t.co", "rt"), 
                    stem=T, remove_punct=T,min_termfreq = 20)

docvars(corpus, "id_numeric") <- 1:ndoc(corpus)
training <- sample(1:ndoc(corpus), round(ndoc(corpus)*.75))
validation <- labeled[!labeled%in%training]

dfmat_train <- doc.features[training,]
dfmat_val <- doc.features[validation,]

#Naive Bayes
#Train
tmod_nb <- textmodel_nb(dfmat_train, docvars(dfmat_train, "sentiment_toward"))
summary(tmod_nb)

#Probability of a word given a category
head(t(tmod_nb$PwGc))
#Words associated with sentiment toward:
head(sort(tmod_nb$PwGc[2,]/tmod_nb$PwGc[1,], decreasing=T))
#Words not associated with sentiment toward
head(sort(tmod_nb$PwGc[1,]/tmod_nb$PwGc[2,], decreasing=T))

#How well does it do in sample?
predict.train <- predict(tmod_nb, dfmat_train)

tab_train <- table(docvars(dfmat_train, "sentiment_toward"), predict.train)
tab_train

#recall
diag(tab_train)/colSums(tab_train)
#precision
diag(tab_train)/rowSums(tab_train)

#How well does this prediction do out of sample?  Validation
predict.val <- predict(tmod_nb, newdata = dfmat_val)

tab_val <- table(docvars(dfmat_val, "sentiment_toward"), predict.val)
tab_val

#recall
diag(tab_val)/colSums(tab_val)
#precision
diag(tab_val)/rowSums(tab_val)

