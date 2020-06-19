library(maftools)

gbm = read.maf('testdata/samples/ecto_GBM.maf.gz')
luad = read.maf('testdata/samples/endo_LUAD.maf.gz')

compare = mafCompare(gbm, luad)
write.table(compare[[1]], file="testdata/samples/gbm_vs_luad.csv")

gbm_summary = getSampleSummary(gbm)
luad_summary = getSampleSummary(luad)

write.table(gbm_summary, file="testdata/samples/gbm_summary.csv")
write.table(luad_summary, file="testdata/samples/gbm_summary.csv")


