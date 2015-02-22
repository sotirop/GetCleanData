# Codebook

This project produces a tidy data set.
The data set has the following 68 variables:

    * subject
    * activity
    * AVG_tBodyAcc_MEAN_X
    * AVG_tBodyAcc_MEAN_Y
    * AVG_tBodyAcc_MEAN_Z
    * AVG_tBodyAcc_STD_X
    * AVG_tBodyAcc_STD_Y
    * AVG_tBodyAcc_STD_Z
    * AVG_tGravityAcc_MEAN_X
    * AVG_tGravityAcc_MEAN_Y
    * AVG_tGravityAcc_MEAN_Z
    * AVG_tGravityAcc_STD_X
    * AVG_tGravityAcc_STD_Y
    * AVG_tGravityAcc_STD_Z
    * AVG_tBodyAccJerk_MEAN_X
    * AVG_tBodyAccJerk_MEAN_Y
    * AVG_tBodyAccJerk_MEAN_Z
    * AVG_tBodyAccJerk_STD_X
    * AVG_tBodyAccJerk_STD_Y
    * AVG_tBodyAccJerk_STD_Z
    * AVG_tBodyGyro_MEAN_X
    * AVG_tBodyGyro_MEAN_Y
    * AVG_tBodyGyro_MEAN_Z
    * AVG_tBodyGyro_STD_X
    * AVG_tBodyGyro_STD_Y
    * AVG_tBodyGyro_STD_Z
    * AVG_tBodyGyroJerk_MEAN_X
    * AVG_tBodyGyroJerk_MEAN_Y
    * AVG_tBodyGyroJerk_MEAN_Z
    * AVG_tBodyGyroJerk_STD_X
    * AVG_tBodyGyroJerk_STD_Y
    * AVG_tBodyGyroJerk_STD_Z
    * AVG_tBodyAccMag_MEAN
    * AVG_tBodyAccMag_STD
    * AVG_tGravityAccMag_MEAN
    * AVG_tGravityAccMag_STD
    * AVG_tBodyAccJerkMag_MEAN
    * AVG_tBodyAccJerkMag_STD
    * AVG_tBodyGyroMag_MEAN
    * AVG_tBodyGyroMag_STD
    * AVG_tBodyGyroJerkMag_MEAN
    * AVG_tBodyGyroJerkMag_STD
    * AVG_fBodyAcc_MEAN_X
    * AVG_fBodyAcc_MEAN_Y
    * AVG_fBodyAcc_MEAN_Z
    * AVG_fBodyAcc_STD_X
    * AVG_fBodyAcc_STD_Y
    * AVG_fBodyAcc_STD_Z
    * AVG_fBodyAccJerk_MEAN_X
    * AVG_fBodyAccJerk_MEAN_Y
    * AVG_fBodyAccJerk_MEAN_Z
    * AVG_fBodyAccJerk_STD_X
    * AVG_fBodyAccJerk_STD_Y
    * AVG_fBodyAccJerk_STD_Z
    * AVG_fBodyGyro_MEAN_X
    * AVG_fBodyGyro_MEAN_Y
    * AVG_fBodyGyro_MEAN_Z
    * AVG_fBodyGyro_STD_X
    * AVG_fBodyGyro_STD_Y
    * AVG_fBodyGyro_STD_Z
    * AVG_fBodyAccMag_MEAN
    * AVG_fBodyAccMag_STD
    * AVG_fBodyBodyAccJerkMag_MEAN
    * AVG_fBodyBodyAccJerkMag_STD
    * AVG_fBodyBodyGyroMag_MEAN
    * AVG_fBodyBodyGyroMag_STD
    * AVG_fBodyBodyGyroJerkMag_MEAN
    * AVG_fBodyBodyGyroJerkMag_STD

## `subject` variable
Variable `subject` contains the subjects that took part in this experiment.
It takes values from `Person1` to `Person30`, since there were 30 participants.

## `activity` variable
Variable `activity` contains the particular activity that is measured for the corresponding Person.
It can take 6 different values:

    * LAYING
    * SITTING
    * STANDING
    * WALKING
	* WALKING_DOWNSTAIRS
	* WALKING_UPSTAIRS

As can be seen in subject and activity, each subject executed all 6 activities and for each of them an experiment value is produced.
n experiment value is comprised of 66 different values, one for each of the following 66 variables.

## `AVG_*_MEAN*` variables
Variables that contain the substring `_MEAN` contain the average of each MEAN variable for each activity and each subject.

## `AVG_*_STD*` variables
Variables that contain the substring `_STD` contain the average of each STD variable for each activity and each subject.
