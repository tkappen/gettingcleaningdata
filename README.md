# Coursera Data Science Course - Getting and Cleaning Data
Week 3 - Course Project

## Summary of this project
This project combines several sources of smarthphone data on the activities of 30 human subjects and creates a summarized tidy dataset. First the project is explained, followed by an explanation on how the script run_analysis.R processes the original data.

## Summary of the used dataset
This project uses data from the [Human Activity Recognition database](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). It was built from the recordings of 30 subjects performing common daily activities while carrying a waist-mounted Samsung Galaxy S smartphone with embedded inertial sensors. These sensors gathered data on triaaxial acceleration from the accelerometer and triaxial angular velocity from the gyroscope.


For more information please consult the README.txt in the [original data zipfile](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) or [their website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## run_analysis.R
The original data was split into a *train* and *test* dataset. The aim of the script is to merge these datasets, together with subject-identifiers and the type of daily activity for which the measurements were taken.

### The script sequence
1. The script first sets the working directory from the clipboard
2. The data will be downloaded and extracted into a new subfolder *data*
3. It then reads the various files that need to be combined or contain label data
4. Both *train* and *test* sets are then combined with the *subjectID* and the *activity* and appropriately labeled 
5. Then only the mean and standard deviations columns of each measurement are selected
6. The cases the *train* and *test* sets are merged for all subsetted columns
7. The mean for each subject performing each activity was calculated for each measurement variable
8. The wide-dataset was transformed to a long-version, as this was allowed in the assigment, and I consider that easier to read.
9. The file is written to SamsungActivityData_tidyset.txt


 