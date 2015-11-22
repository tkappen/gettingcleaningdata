library(data.table)
library(dplyr)

## Set Working Directory from clipboard
wd <- normalizePath(readClipboard(), "/", mustWork = FALSE)
setwd(wd)
getwd()

## Create folder named "data" if necessary
if (!file.exists("data")) {dir.create("data")}

## Get project data
dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataset_url, "./data/samsung_data.zip")
unzip("./data/samsung_data.zip", exdir="./data")

## Set the working directory to unzipped Samsung Data
setwd("./data")

## List all files in WD
files.data <- list.files(full.names=TRUE)
## List all files in subfolder "UCI HAR Dataset"
files.dataset <- list.files(files.data[2], full.names=TRUE)
## List all files in subfolder "UCI HAR Dataset/test"
files.test <- list.files(files.dataset[5], full.names=TRUE)
## List all files in subfolder "UCI HAR Dataset/train"
files.train <- list.files(files.dataset[6], full.names=TRUE)


## Read data.table from test set "X_test.txt"
test <- fread(files.test[3])
## Read data.table from train set "X_test.txt"
train <- fread(files.train[3])


## Read variable names from features.txt
d.names <- fread(files.dataset[2])

## Apply variables to datasets
setnames(test,d.names[,V2])
setnames(train,d.names[,V2])

## Read subject ID to a variable within dataset
test[,subjectID:=fread(files.test[2])]
train[,subjectID:=fread(files.train[2])]

## Read activity type from y_test.txt to a variable within dataset
test[,activity:=fread(files.test[4])]
train[,activity:=fread(files.train[4])]

## Change into factor
test[,activity:=factor(activity)]
train[,activity:=factor(activity)]

## Read level names from activity_labels.txt
d.activity <- fread(files.dataset[1])
## Apply level values to variable activity
setattr(test$activity,"levels",d.activity[,V2])
setattr(train$activity,"levels",d.activity[,V2])

## Assignment: only the mean and standard deviation for each measurement
## Select all columns with "mean(" OR "std(" 
## This thus avoids selecting "meanFreq" and "angle" variables as they are
## processed and not means/std of raw measurements
## Also include "activity" and "subjectID"
d.cols <- names(test)[grepl("mean[(]|std[(]|activity|subjectID", names(test))]
d.measurements <- names(test)[grepl("mean[(]|std[(]", names(test))]
 
## Bind test and train dataset with appropriate columns only
d <- bind_rows(Train = train[,d.cols, with=FALSE],
	Test = test[,d.cols, with=FALSE],
	.id="Dataset")

## Create a wide dataset 
d.wide <- d %>% group_by(subjectID, activity, Dataset) %>% summarize_each(funs(mean))

## Create a long dataset
d.long <- melt(d.wide, 
	id.vars=c("subjectID", "activity", "Dataset"), 
	measure.vars= d.measurements,
	variable.name = "FeatureType", value.name = "MeanValue")

## Write file from long dataset after sorting on subject -> activity -> FeatureType
write.table(arrange(d.long,subjectID, activity, FeatureType),
	"SamsungActivityData_tidyset.txt",row.name=FALSE)


