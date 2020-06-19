pivot_data <- function(countdata, value_column, groupNames, groupSizes) {
    ### pivot ingested miRNA counts data
    ### dataframe must have columns miRNA and sampleName
    # countdata - data with raw reads and from ingestion function
    # value_column - name of column with the reads
    # groupNames - list of group names
    # groupSizes - list of size of each group
    
    
    countdata <- dcast(countdata, miRNA ~ sampleName, value.var= value_column, fill= 0)
    rownames(countdata) <- countdata$miRNA
    countdata$miRNA <- NULL
    
    factoredGroups <- vector()
    for (i in 1:length(groupNames)) {
        curGroup <- rep(groupNames[i], groupSizes[i])
        factoredGroups <- c(factoredGroups, curGroup)
    }
    group <- factor(factoredGroups)
    toReturn <- list('countdata'=countdata, 'group'=group)
    return(toReturn)

}

filter_logcounts <- function(countdata, group) {
    countdata <- countdata + 0.5

    d <- DGEList(counts=countdata,group=group)

    # got values for filter from paper, Yuxia Zhang
    # filter all mirna with less than 1.5*(# of total samples) of counts across all samples. lowly expressing gene
    dd <- d[rowSums(d$counts) >= 1.5*ncol(d),]
    # multiply by million and divide by column library size to get RPM
    d<-1e+06 * dd$count/expandAsMatrix(d$samples$lib.size,dim(dd))
    # take the log RPM
    d<-log2(d)
    return(d)
}

absF <- function(df, groupSize1, groupSize2) {
    # calculate absF, stat for between-group variability vs within-group. used for volcano plot
    F<-data.frame(nrow(df))
    # NAIVE
    x<-data.frame(nrow(df),2) # for calculating fold change later
    total_groups <- groupSize1+groupSize2
    for (i in 1:nrow(df)) {
        a<-groupSize1*abs(mean(df[i,1:groupSize1])-mean(df[i,1:total_groups]))+groupSize2*abs(mean(df[i,(groupSize1+1):total_groups])-mean(df[i,1:total_groups]))
        bb = 0
        for (j in 1:groupSize1) {
            b<-abs(df[i,j]-mean(df[i,1:groupSize1]))
            bb = bb +b
        }

        for (j in (groupSize1+1):total_groups) {
            b<-abs(df[i,j]-mean(df[i,(groupSize1+1):total_groups]))
            bb = bb +b
        }

        F[i]<-12*a/bb # 12 is scalar from the paper/ Yuxia Zhang


        # X contains the mean of the logRPM of each group.
        x[i,2]<-mean(df[i,1:groupSize1])
        x[i,1]<-mean(df[i,(groupSize1+1):total_groups])

    }
    names(F)<-rownames(df)
    rownames(x)<-rownames(df)
#     absFOver9.6<-length(F[,F>9.6]) # 9.6 chosen from paper. corresponds to less than 1% false discovery rate in limma package
    return(list(FVal_df=F, miRNA_means=x))
}
    
volcano_plot <- function(df, miRNA_means, FVal_df, Title) {
    absFOver9.6<-length(FVal_df[,FVal_df>9.6])
    # f <- x[names(-sort(-F))[1:166],1]-x[names(-sort(-F))[1:166],2]

    f <- miRNA_means[names(-sort(-F))[1:absFOver9.6],1]-miRNA_means[names(-sort(-F))[1:absFOver9.6],2] # fold change on the mirna with ABS F>9.6

    names(f)<-names(-sort(-absFOver9.6))[1:absFOver9.6]
    # -sort(-f)

    # filter by abs(logFC) >= 1
    id<-c(names(f[f>=1]),names(f[-f>=1]))
    # length(id)

    # calculate logFC again for mirna which meet filters, might be redundant
    y<-df[id,]
    de<-rownames(miRNA_means)%in%id
    f<-c(miRNA_means[de,1]-miRNA_means[de,2])

    saved_mirna<- rownames(miRNA_means[de,])
    names(f)<- saved_mirna
    f # gives us the filtered names of mirna with absF > 9.6 with abs(logFC) >=1.


    fval<-as.numeric(FVal_df)
    fold<-as.numeric(miRNA_means[,1]-miRNA_means[,2])

    volcanodf<-data.frame(fold,fval)


    ## 20 highest F-values labeled
    numToLabel = 20

    ggplot(volcanodf, aes(fold,fval)) +
        geom_point(color='red',alpha = 0.5) + 
        geom_text_repel(aes(fold,fval),segment.size = 1, min.segment.length=0.5, box.padding=1,
        segment.alpha = .8,
        force = 1,segment.color = "grey50",label=as.character(ifelse(FVal_df >= as.numeric(-sort(-FVal_df)[numToLabel]), colnames(FVal_df), NA)),hjust=0,vjust=0) +
        labs(y= "F-Value", x = "Log2 Fold Change") +
        ggtitle(Title) + theme(text = element_text(size = 13))   

}