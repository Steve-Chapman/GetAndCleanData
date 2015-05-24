---
title: "CodeBook - Getting and Cleaning Data Project"
author: "Steve Chapman"
date: "May 24, 2015"
---


All the measure variables in the file SamsungFitnessMeans.txt, are **means** of the features in the original data.
The original data was limited to average and standard deviation values in the source data set.
The means are derived by averaging all observations of a single test subject for a specific activity. Thus, the table therein is composed of 180 rows, (averages for each of the 30 subjects * 6 activities performed by each subject), and 81 rows (2 id variables + 79 measurement variables)

The activities are labelled consistently with the original data:

*  WALKING
*  WALKING_UPSTAIRS
*  WALKING_DOWNSTAIRS
*  SITTING
*  STANDING
*  LAYING

In order to maintain continuity with the source dataset, and to avoid confusion and the potential for typographical errors, the means have the same names as the original features; there was no reason to alter them, as they were meaningful and concise.

The only alteration was the elimination of erroneous repetition of the word "Body" from some of the frequency domain features. 

The id variables names, Subject and Activity were added. 
The names of the measure variables follow.

Note: All variables are prefixed with 't' for time domain, and 'f' for frequency domain.
Variables containing 'Acc' were derived from measures taken by the accelerometer.
Similarly, variables containing 'Gyro' were taken with the gyroscope in the device. The suffixes X, Y and Z denote movement in 3-dimensional space.
For further information on the features and how they were derived, see the file 
features_info.txt that is zipped into the data set (see README.md in this repo)


* Subject

* Activity

* tBodyAcc-mean()-X

* tBodyAcc-mean()-Y

* tBodyAcc-mean()-Z

* tBodyAcc-std()-X

* tBodyAcc-std()-Y

* tBodyAcc-std()-Z

* tGravityAcc-mean()-X

* tGravityAcc-mean()-Y

* tGravityAcc-mean()-Z

* tGravityAcc-std()-X

* tGravityAcc-std()-Y

* tGravityAcc-std()-Z

* tBodyAccJerk-mean()-X

* tBodyAccJerk-mean()-Y

* tBodyAccJerk-mean()-Z

* tBodyAccJerk-std()-X

* tBodyAccJerk-std()-Y

* tBodyAccJerk-std()-Z

* tBodyGyro-mean()-X

* tBodyGyro-mean()-Y

* tBodyGyro-mean()-Z

* tBodyGyro-std()-X

* tBodyGyro-std()-Y

* tBodyGyro-std()-Z

* tBodyGyroJerk-mean()-X

* tBodyGyroJerk-mean()-Y

* tBodyGyroJerk-mean()-Z

* tBodyGyroJerk-std()-X

* tBodyGyroJerk-std()-Y

* tBodyGyroJerk-std()-Z

* tBodyAccMag-mean()

* tBodyAccMag-std()

* tGravityAccMag-mean()

* tGravityAccMag-std()

* tBodyAccJerkMag-mean()

* tBodyAccJerkMag-std()

* tBodyGyroMag-mean()

* tBodyGyroMag-std()

* tBodyGyroJerkMag-mean()

* tBodyGyroJerkMag-std()

* fBodyAcc-mean()-X

* fBodyAcc-mean()-Y

* fBodyAcc-mean()-Z

* fBodyAcc-std()-X

* fBodyAcc-std()-Y

* fBodyAcc-std()-Z

* fBodyAcc-meanFreq()-X

* fBodyAcc-meanFreq()-Y

* fBodyAcc-meanFreq()-Z

* fBodyAccJerk-mean()-X

* fBodyAccJerk-mean()-Y

* fBodyAccJerk-mean()-Z

* fBodyAccJerk-std()-X

* fBodyAccJerk-std()-Y

* fBodyAccJerk-std()-Z

* fBodyAccJerk-meanFreq()-X

* fBodyAccJerk-meanFreq()-Y

* fBodyAccJerk-meanFreq()-Z

* fBodyGyro-mean()-X

* fBodyGyro-mean()-Y

* fBodyGyro-mean()-Z

* fBodyGyro-std()-X

* fBodyGyro-std()-Y

* fBodyGyro-std()-Z

* fBodyGyro-meanFreq()-X

* fBodyGyro-meanFreq()-Y

* fBodyGyro-meanFreq()-Z

* fBodyAccMag-mean()

* fBodyAccMag-std()

* fBodyAccMag-meanFreq()

* fBodyAccJerkMag-mean()

* fBodyAccJerkMag-std()

* fBodyAccJerkMag-meanFreq()

* fBodyGyroMag-std()

* fBodyGyroMag-meanFreq()

* fBodyGyroJerkMag-mean()

* fBodyGyroJerkMag-std()

* fBodyGyroJerkMag-meanFreq()
