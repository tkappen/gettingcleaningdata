# CodeBook for dataset SamsungActivityData_tidyset.txt
The dataset was created by [run_analysis.R](https://github.com/tkappen/gettingcleaningdata/blob/master/run_analysis.R)

## Study design
This project uses data from the 
[Human Activity Recognition database](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 
It was built from the recordings of 30 subjects performing common daily 
activities while carrying a waist-mounted Samsung Galaxy S smartphone with embedded inertial sensors. 
These sensors gathered data on triaaxial acceleration from the accelerometer (in standard gravity units 'g') 
and triaxial angular velocity from the gyroscope (radians/second). 

### Description of the original data
For more elaborate descriptions of the data please consult README.txt and features_info.txt within the 
[original data zipfile](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

Most of the text of this paragraph are direct snippets from these sources.
The accelerometer and gyroscope produce 3-axial raw signals in the time domain: tAcc-XYZ and tGyro-XYZ. 
After first filtering, the data was splitted into body and gravitation acceleration signals. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 
Also the magnitude of these three-dimensional signals were calculated. 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals. All features were normalized and bounded within [-1,1].
Several values were estimated for all these signals, among which mean and standard deviation (std).

### How the data has been processed by [run_analysis.R](https://github.com/tkappen/gettingcleaningdata/blob/master/run_analysis.R)
After combining *train* and *test* datasets (see [README.md](https://github.com/tkappen/gettingcleaningdata/blob/master/README.md))
 only the variables with the mean and std values for each of the measurements were select. For each subject doing each activity 
 the average value for each measurement value was calculated in a long format, as this was also allowed in the assignemtn.

## CodeBook (per variable)
As the signals were normalized they do not have a true unit anymore. Thus MeanValues are normalized values [-1,1].

|Variable Name |Label                                                                     |
|:------------|:-------------------------------------------------------------------------|
|subjectID    |Human Subject Identifier                                                  |
|activity     |Type of Activity                                                          |
|Dataset      |Dataset Origin (Train or Test                                             |
|FeatureType  |Type of measurement: either its mean or st. deviation                     |
|MeanValue    |The mean value for the mean/std of a measurement per Subject and Activity |

## CodeBook for the values of the variable *FeatureType*
|Value Name                   |Value Label                                                                                                   |
|:---------------------------|:------------------------------------------------------------------------------------------------------------|
|tBodyAcc-mean()-X           |Body motion component of acceleration in time domain of the X-axis - mean value                              |
|tBodyAcc-mean()-Y           |Body motion component of acceleration in time domain of the Y-axis - mean value                              |
|tBodyAcc-mean()-Z           |Body motion component of acceleration in time domain of the Z-axis - mean value                              |
|tBodyAcc-std()-X            |Body motion component of acceleration in time domain of the X-axis - standard deviation                      |
|tBodyAcc-std()-Y            |Body motion component of acceleration in time domain of the Y-axis - standard deviation                      |
|tBodyAcc-std()-Z            |Body motion component of acceleration in time domain of the Z-axis - standard deviation                      |
|tGravityAcc-mean()-X        |Gravity motion component of acceleration in time domain of the X-axis - mean value                           |
|tGravityAcc-mean()-Y        |Gravity motion component of acceleration in time domain of the Y-axis - mean value                           |
|tGravityAcc-mean()-Z        |Gravity motion component of acceleration in time domain of the Z-axis - mean value                           |
|tGravityAcc-std()-X         |Gravity motion component of acceleration in time domain of the X-axis - standard deviation                   |
|tGravityAcc-std()-Y         |Gravity motion component of acceleration in time domain of the Y-axis - standard deviation                   |
|tGravityAcc-std()-Z         |Gravity motion component of acceleration in time domain of the Z-axis - standard deviation                   |
|tBodyAccJerk-mean()-X       |Body motion component of acceleration jerk signals in time domain of the X-axis - mean value                 |
|tBodyAccJerk-mean()-Y       |Body motion component of acceleration jerk signals in time domain of the Y-axis - mean value                 |
|tBodyAccJerk-mean()-Z       |Body motion component of acceleration jerk signals in time domain of the Z-axis - mean value                 |
|tBodyAccJerk-std()-X        |Body motion component of acceleration jerk signals in time domain of the X-axis - standard deviation         |
|tBodyAccJerk-std()-Y        |Body motion component of acceleration jerk signals in time domain of the Y-axis - standard deviation         |
|tBodyAccJerk-std()-Z        |Body motion component of acceleration jerk signals in time domain of the Z-axis - standard deviation         |
|tBodyGyro-mean()-X          |Body motion component of gyroscope in time domain of the X-axis - mean value                                 |
|tBodyGyro-mean()-Y          |Body motion component of gyroscope in time domain of the Y-axis - mean value                                 |
|tBodyGyro-mean()-Z          |Body motion component of gyroscope in time domain of the Z-axis - mean value                                 |
|tBodyGyro-std()-X           |Body motion component of gyroscope in time domain of the X-axis - standard deviation                         |
|tBodyGyro-std()-Y           |Body motion component of gyroscope in time domain of the Y-axis - standard deviation                         |
|tBodyGyro-std()-Z           |Body motion component of gyroscope in time domain of the Z-axis - standard deviation                         |
|tBodyGyroJerk-mean()-X      |Body motion component of gyroscope jerk signals in time domain of the X-axis - mean value                    |
|tBodyGyroJerk-mean()-Y      |Body motion component of gyroscope jerk signals in time domain of the Y-axis - mean value                    |
|tBodyGyroJerk-mean()-Z      |Body motion component of gyroscope jerk signals in time domain of the Z-axis - mean value                    |
|tBodyGyroJerk-std()-X       |Body motion component of gyroscope jerk signals in time domain of the X-axis - standard deviation            |
|tBodyGyroJerk-std()-Y       |Body motion component of gyroscope jerk signals in time domain of the Y-axis - standard deviation            |
|tBodyGyroJerk-std()-Z       |Body motion component of gyroscope jerk signals in time domain of the Z-axis - standard deviation            |
|tBodyAccMag-mean()          |Body motion component of acceleration in time domain as the magnitude - mean value                           |
|tBodyAccMag-std()           |Body motion component of acceleration in time domain as the magnitude - standard deviation                   |
|tGravityAccMag-mean()       |Gravity motion component of acceleration in time domain as the magnitude - mean value                        |
|tGravityAccMag-std()        |Gravity motion component of acceleration in time domain as the magnitude - standard deviation                |
|tBodyAccJerkMag-mean()      |Body motion component of acceleration jerk signals in time domain as the magnitude - mean value              |
|tBodyAccJerkMag-std()       |Body motion component of acceleration jerk signals in time domain as the magnitude - standard deviation      |
|tBodyGyroMag-mean()         |Body motion component of gyroscope in time domain as the magnitude - mean value                              |
|tBodyGyroMag-std()          |Body motion component of gyroscope in time domain as the magnitude - standard deviation                      |
|tBodyGyroJerkMag-mean()     |Body motion component of gyroscope jerk signals in time domain as the magnitude - mean value                 |
|tBodyGyroJerkMag-std()      |Body motion component of gyroscope jerk signals in time domain as the magnitude - standard deviation         |
|fBodyAcc-mean()-X           |Body motion component of acceleration in frequency domain of the X-axis - mean value                         |
|fBodyAcc-mean()-Y           |Body motion component of acceleration in frequency domain of the Y-axis - mean value                         |
|fBodyAcc-mean()-Z           |Body motion component of acceleration in frequency domain of the Z-axis - mean value                         |
|fBodyAcc-std()-X            |Body motion component of acceleration in frequency domain of the X-axis - standard deviation                 |
|fBodyAcc-std()-Y            |Body motion component of acceleration in frequency domain of the Y-axis - standard deviation                 |
|fBodyAcc-std()-Z            |Body motion component of acceleration in frequency domain of the Z-axis - standard deviation                 |
|fBodyAccJerk-mean()-X       |Body motion component of acceleration jerk signals in frequency domain of the X-axis - mean value            |
|fBodyAccJerk-mean()-Y       |Body motion component of acceleration jerk signals in frequency domain of the Y-axis - mean value            |
|fBodyAccJerk-mean()-Z       |Body motion component of acceleration jerk signals in frequency domain of the Z-axis - mean value            |
|fBodyAccJerk-std()-X        |Body motion component of acceleration jerk signals in frequency domain of the X-axis - standard deviation    |
|fBodyAccJerk-std()-Y        |Body motion component of acceleration jerk signals in frequency domain of the Y-axis - standard deviation    |
|fBodyAccJerk-std()-Z        |Body motion component of acceleration jerk signals in frequency domain of the Z-axis - standard deviation    |
|fBodyGyro-mean()-X          |Body motion component of gyroscope in frequency domain of the X-axis - mean value                            |
|fBodyGyro-mean()-Y          |Body motion component of gyroscope in frequency domain of the Y-axis - mean value                            |
|fBodyGyro-mean()-Z          |Body motion component of gyroscope in frequency domain of the Z-axis - mean value                            |
|fBodyGyro-std()-X           |Body motion component of gyroscope in frequency domain of the X-axis - standard deviation                    |
|fBodyGyro-std()-Y           |Body motion component of gyroscope in frequency domain of the Y-axis - standard deviation                    |
|fBodyGyro-std()-Z           |Body motion component of gyroscope in frequency domain of the Z-axis - standard deviation                    |
|fBodyAccMag-mean()          |Body motion component of acceleration in frequency domain as the magnitude - mean value                      |
|fBodyAccMag-std()           |Body motion component of acceleration in frequency domain as the magnitude - standard deviation              |
|fBodyBodyAccJerkMag-mean()  |Body motion component of acceleration jerk signals in frequency domain as the magnitude - mean value         |
|fBodyBodyAccJerkMag-std()   |Body motion component of acceleration jerk signals in frequency domain as the magnitude - standard deviation |
|fBodyBodyGyroMag-mean()     |Body motion component of gyroscope in frequency domain as the magnitude - mean value                         |
|fBodyBodyGyroMag-std()      |Body motion component of gyroscope in frequency domain as the magnitude - standard deviation                 |
|fBodyBodyGyroJerkMag-mean() |Body motion component of gyroscope jerk signals in frequency domain as the magnitude - mean value            |
|fBodyBodyGyroJerkMag-std()  |Body motion component of gyroscope jerk signals in frequency domain as the magnitude - standard deviation    |


