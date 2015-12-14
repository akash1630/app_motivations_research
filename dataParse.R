### Initial setup
# store the current directory
initial.dir<-getwd()
# change to the new directory
setwd("/Users/adminuser/Desktop/Motivations")
# load the necessary libraries
#library(nlme)
# set the output file
#sink("output.out")

### Load the dataset
# get the column headers
header <- read.csv("responses.csv",header=TRUE,nrows=1,skip=0)
header <- names(header)
req_header <- header[c(17:126)]
# read the data, use previously determined header, skip three header rows
df <- read.csv("responses.csv",header=false,col.names=header,skip=3)
res_data <- subset(df, select = req_header)
df <- NULL
# use regular expressions to select the columns we want to keep
#keep_cols <- grep("^Q|DO",colnames(motiv_data),value=TRUE)
#motiv_data <- subset(motiv_data,select=keep_cols)



### Cleanup
# close the output file
#sink()
# unload the libraries
#detach("package:nlme")
# change back to the original directory
setwd(initial.dir)
