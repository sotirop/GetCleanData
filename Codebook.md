# Codebook

This project produces a tidy data set.
The data set has the following 68 variables:

    * subject
    * activity
    * tBodyAcc_MEAN_X
    * tBodyAcc_MEAN_Y
    * tBodyAcc_MEAN_Z
    * tBodyAcc_STD_X
    * tBodyAcc_STD_Y
    * tBodyAcc_STD_Z
    * tGravityAcc_MEAN_X
    * tGravityAcc_MEAN_Y
    * tGravityAcc_MEAN_Z
    * tGravityAcc_STD_X
    * tGravityAcc_STD_Y
    * tGravityAcc_STD_Z
    * tBodyAccJerk_MEAN_X
    * tBodyAccJerk_MEAN_Y
    * tBodyAccJerk_MEAN_Z
    * tBodyAccJerk_STD_X
    * tBodyAccJerk_STD_Y
    * tBodyAccJerk_STD_Z
    * tBodyGyro_MEAN_X
    * tBodyGyro_MEAN_Y
    * tBodyGyro_MEAN_Z
    * tBodyGyro_STD_X
    * tBodyGyro_STD_Y
    * tBodyGyro_STD_Z
    * tBodyGyroJerk_MEAN_X
    * tBodyGyroJerk_MEAN_Y
    * tBodyGyroJerk_MEAN_Z
    * tBodyGyroJerk_STD_X
    * tBodyGyroJerk_STD_Y
    * tBodyGyroJerk_STD_Z
    * tBodyAccMag_MEAN
    * tBodyAccMag_STD
    * tGravityAccMag_MEAN
    * tGravityAccMag_STD
    * tBodyAccJerkMag_MEAN
    * tBodyAccJerkMag_STD
    * tBodyGyroMag_MEAN
    * tBodyGyroMag_STD
    * tBodyGyroJerkMag_MEAN
    * tBodyGyroJerkMag_STD
    * fBodyAcc_MEAN_X
    * fBodyAcc_MEAN_Y
    * fBodyAcc_MEAN_Z
    * fBodyAcc_STD_X
    * fBodyAcc_STD_Y
    * fBodyAcc_STD_Z
    * fBodyAccJerk_MEAN_X
    * fBodyAccJerk_MEAN_Y
    * fBodyAccJerk_MEAN_Z
    * BodyAccJerk_STD_X
    * fBodyAccJerk_STD_Y
    * fBodyAccJerk_STD_Z
    * fBodyGyro_MEAN_X
    * fBodyGyro_MEAN_Y
    * fBodyGyro_MEAN_Z
    * fBodyGyro_STD_X
    * fBodyGyro_STD_Y
    * fBodyGyro_STD_Z
    * fBodyAccMag_MEAN
    * fBodyAccMag_STD
    * fBodyBodyAccJerkMag_MEAN
    * fBodyBodyAccJerkMag_STD
    * fBodyBodyGyroMag_MEAN
    * fBodyBodyGyroMag_STD
    * fBodyBodyGyroJerkMag_MEAN
    * fBodyBodyGyroJerkMag_STD

## subject variable
Variable `subject` contains the subjects that took part in this experiment.
It takes values from `Person1` to `Person30`, since there were 30 participants.

## activity variable
Variable `activity` contatins the particular activity that is measured for the corresponding Person.
It can take 6 different values:

    * LAYING
    * SITTING
    * STANDING
    * WALKING
	* WALKING_DOWNSTAIRS
	* WALKING_UPSTAIRS

As can be seen in subject and activity, each subject executed all 6 activities and for each of them an experiment value is produced.
n experiment value is comprised of 66 different values, one for each of the following 66 variables.

## AVG\_\*\_MEAN\* variables
Variables that contain the substring `_MEAN` contain the average of each MEAN variable for each activity and each subject.

## AVG\_\*\_STD\* variables
Variables that contain the substring `_STD` contain the average of each STD variable for each activity and each subject.
