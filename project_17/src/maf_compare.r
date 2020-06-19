library(maftools)
args = commandArgs(trailingOnly=TRUE)

maf1 = readRDS(sprintf('../testdata/rds/coad.rds', args[1]))
maf2 = readRDS(sprintf('../testdata/rds/brca.rds', args[2]))
threshold = mafCompare(maf1, maf2)[[1]][adjPval < 0.0001]
write.table(threshold, file=sprintf("../testdata/coad_vs_brca.csv", args[1], args[2]))