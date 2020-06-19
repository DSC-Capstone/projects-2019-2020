library(maftools)
args = commandArgs(trailingOnly=TRUE)

dir_files = list.files()
study_files = list()

for (f in dir_files) {
  if (grepl(args[1], f, fixed=TRUE)) {
    study_files <- append(study_files, f)
  }
}

combined = merge_mafs(read.maf(study_files[[1]], clinicalData = study_files[[2]]), 
                      read.maf(study_files[[3]], clinicalData = study_files[[4]]),
                      read.maf(study_files[[5]], clinicalData = study_files[[6]]),
                      read.maf(study_files[[7]], clinicalData = study_files[[8]]))

save(combined, file=sprintf('%s.RData', args[1]))

