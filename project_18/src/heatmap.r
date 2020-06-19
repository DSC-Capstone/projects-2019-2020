#! /usr/bin/Rscript

library(limma)
library(reshape2)
library(Glimma)
library(edgeR)
library(gplots)
library(rjson)

json <- fromJSON(file="config/config.json")

# ingestion inputs
file_url <- json["file_url"]$file_url
raw_dir <- json["raw_dir"]$raw_dir
temp_dir <- json["temp_dir"]$temp_dir   
out_dir <- json["out_dir"]$out_dir
file_name <- json["file_name"]$file_name

read_all_files_in_dir_with_columns <- function(file_dir, required_columns) {
    files <- list.files(path=file_dir)
    
    all <- list()
    
    for (i in files) {
        fp <- paste(file_dir, i, sep='')
        seqdata <- read.delim(gzfile(fp), stringsAsFactors = FALSE)
        columns <- colnames(seqdata)
        
        has_unidentified_col <- FALSE
        
        # ignore samples with columns not present in required_columns
        for (c in columns) {
            if (!any(required_columns==c)) {
                has_unidentified_col <- TRUE
                break
            }
        }
        
        if (has_unidentified_col) {
            next
        }
        
        sampleName = strsplit(fp, "/")[[1]][3]
        sampleName = strsplit(sampleName, ".txt")[[1]][1]
        
        
        cellType = strsplit(fp, "_")[1]
        cellType = cellType[[1]][3]
        cellType = strsplit(cellType, ".txt")
        cellType = cellType[[1]][1]
        
        healthy <- !grepl("P", fp, fixed=TRUE)
        
        # add healthy column
        seqdata$healthy <- healthy
        seqdata$cellType <- cellType
        seqdata$sampleName <- sampleName
        
        if (length(all) == 0) {
            all <- seqdata
        } else {
            all <- rbind(all, seqdata)
        }
    }
    
    return(all)
}

generate_heatmap_healthy <- function(out_dir) {
    required_columns <- list("miRNA", "Chromosome", "Position", "Strand", "Total.miRNA.reads", "RPM..reads.per.million.")
    all <- read_all_files_in_dir_with_columns(temp_dir, required_columns)

    #subset the pre-t1 group from all
    pret1 <- all[all$healthy == TRUE,] 

    countdata <- dcast(pret1, miRNA ~ sampleName, value.var= "Total.miRNA.reads", fill= 0)

    rownames(countdata) <- countdata$miRNA
    countdata$miRNA <- NULL
    # countdata

    group<-factor(c(rep("Naive",6),rep("rTreg",8),rep("aTreg",9),rep("Tcm",5),rep("Tem",5),rep("Ttm",5)))

    # create model
    design2<-model.matrix(~0+group)
    design1<-model.matrix(~group)
    design<-cbind(design1[,1],design1[,3],design2[,1],design1[,4:6])
    colnames(design)<-c("(Intercept)","grouprTreg","groupaTreg","groupTcm","groupTem","groupTtm")

    d <- DGEList(counts=countdata,group=group)
    nf<-calcNormFactors(d$counts)
    design<-model.matrix(~group)

    # F test for rTreg to aTreg

    c1 <- countdata[7:23] + 0.5
    group <- factor(c(rep("rTreg", 8), rep("aTreg", 9)))
    # group

    d <- DGEList(counts=c1, group=group)
    # d$samples

    dd <- d[rowSums(d$counts) >= 1.5*ncol(d), ]
    d<-1e+06 * dd$count/expandAsMatrix(d$samples$lib.size,dim(dd))

    d<-log2(d)

    F<-data.frame(nrow(d))
    x<-data.frame(nrow(d),2)
    for (i in 1:nrow(d)) {
            a<-7*abs(mean(d[i,1:8])-mean(d[i,1:17]))+6*abs(mean(d[i,9:17])-mean(d[i,1:17]))
            bb = 0
            for (j in 1:8) {
            b<-abs(d[i,j]-mean(d[i,1:8]))
            bb = bb +b
            }

            for (j in 8:13) {
            b<-abs(d[i,j]-mean(d[i,9:17]))
            bb = bb +b
            }
            F[i] <- 12*a/bb

            x[i,2]<-mean(d[i,1:8])
            x[i,1]<-mean(d[i,9:17])

    }

    names(F)<-rownames(d)
    rownames(x)<-rownames(d)
    # length(F[,F>9.6])

    ## 93 for rTreg 2 aTreg
    # 109

    mydist<-function(c) {
    require(amap)
    Dist(c,method="pearson")
     }
    myclust<-function(c) { hclust(c,method='ward.D') }

    # fold change
    f<-x[names(-sort(-F))[1:93],1]-x[names(-sort(-F))[1:93],2]
    names(f)<-names(-sort(-F))[1:93]
    id<-c(names(f[f>=2]),names(f[-f>=2]))
    y<-d[id,]

    png(file=out_dir)
    heatmap.2(x=y,distfun=mydist,dendrogram ="none", main='(healthy) rTreg vs. aTreg',hclustfun=myclust,trace="none",density.info="none",cexRow=0.5,cexCol=1.2,las=2,col=greenred(30),lhei=c(1,5),sepcolor="yellow",margin=c(9,9), sepwidth = 0.0,scale="row",Colv = FALSE)
    dev.off()
}

generate_heatmap_pt1 <- function(out_dir) {
    required_columns <- list("miRNA", "Chromosome", "Position", "Strand", "Total.miRNA.reads", "RPM..reads.per.million.")
    all <- read_all_files_in_dir_with_columns(temp_dir, required_columns)

    #subset the pre-t1 group from all
    pret1 <- all[all$healthy == FALSE,] 

    countdata <- dcast(pret1, miRNA ~ sampleName, value.var= "Total.miRNA.reads", fill= 0)

    rownames(countdata) <- countdata$miRNA
    countdata$miRNA <- NULL
    # countdata

    group<-factor(c(rep("Naive",7),rep("rTreg",7),rep("aTreg",6),rep("Ttm",7),rep("Tcm",7),rep("Tem",7)))

    # create model
    design2<-model.matrix(~0+group)
    design1<-model.matrix(~group)
    design<-cbind(design1[,1],design1[,3],design2[,1],design1[,4:6])
    colnames(design)<-c("(Intercept)","grouprTreg","groupaTreg","groupTcm","groupTem","groupTtm")

    d <- DGEList(counts=countdata,group=group)
    nf<-calcNormFactors(d$counts)
    design<-model.matrix(~group)

    # F test for rTreg to aTreg

    c1 <- countdata[8:20] + 0.5
    group <- factor(c(rep("rTreg", 7), rep("aTreg", 6)))
    # group

    d <- DGEList(counts=c1, group=group)
    # d$samples

    dd <- d[rowSums(d$counts) >= 1.5*ncol(d), ]
    d<-1e+06 * dd$count/expandAsMatrix(d$samples$lib.size,dim(dd))

    d<-log2(d)

    F<-data.frame(nrow(d))
    x<-data.frame(nrow(d),2)
    for (i in 1:nrow(d)) {
            a<-7*abs(mean(d[i,1:7])-mean(d[i,1:13]))+6*abs(mean(d[i,8:13])-mean(d[i,1:13]))
            bb = 0
            for (j in 1:7) {
            b<-abs(d[i,j]-mean(d[i,1:7]))
            bb = bb +b
            }

            for (j in 8:13) {
            b<-abs(d[i,j]-mean(d[i,8:13]))
            bb = bb +b
            }
            F[i] <- 12*a/bb

            x[i,2]<-mean(d[i,1:7])
            x[i,1]<-mean(d[i,8:13])

    }

    names(F)<-rownames(d)
    rownames(x)<-rownames(d)
    # length(F[,F>9.6])

    ## 93 for rTreg 2 aTreg
    # 109

    mydist<-function(c) {
    require(amap)
    Dist(c,method="pearson")
     }
    myclust<-function(c) { hclust(c,method='ward.D') }

    # fold change
    f<-x[names(-sort(-F))[1:93],1]-x[names(-sort(-F))[1:93],2]
    names(f)<-names(-sort(-F))[1:93]
    id<-c(names(f[f>=2]),names(f[-f>=2]))
    y<-d[id,]

    png(file=out_dir)
    heatmap.2(x=y,distfun=mydist,dendrogram ="none", main='(pre-T1D) rTreg vs. aTreg',hclustfun=myclust,trace="none",density.info="none",cexRow=0.5,cexCol=1.2,las=2,col=greenred(30),lhei=c(1,5),sepcolor="yellow",margin=c(9,9), sepwidth = 0.0,scale="row",Colv = FALSE)
    dev.off()
}

path1 = paste(out_dir, "heatmap_healthy.png", sep="")
path2 = paste(out_dir, "heatmap_pt1d.png", sep="")

generate_heatmap_healthy(path1)
generate_heatmap_pt1(path2)