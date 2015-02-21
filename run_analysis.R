# run_analysis.R
# script for the Getting and Cleaning Data Course Project

# This script starts with the assumption that the Samsung data is available in
# the working directory in an unzipped UCI HAR Dataset folder
library(plyr)
library(dplyr)

# The following read.table commands load the neccesary data from the given files
# Each variable has the name of the corresponding file, so that it is a lot
# easier to proceed with the info in README.txt
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
subject_test <- read.table("test/subject_test.txt")
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_train <- read.table("train/subject_train.txt")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")

# We use rbind to create the common subject column from train and test and we
# give the name "subject" to the column
subject <- rbind(subject_train, subject_test)
colnames(subject) <- "subject"

# We use rbind to create the common activity column from train and test and w 
# give the name "activity" to the column. We also "translate" each activity
# number to the corresponding activity using the activity_labels.
activity <- rbind(y_train, y_test)
colnames(activity) <- "activity"
translate_activities <- function(n){
  mapvalues(n, activity_labels[,1], as.character(activity_labels[,2]),
            warn_missing=FALSE)
}
activity <- sapply(activity, translate_activities)

# The features table has all the variable names. We use grep to keep only the 
# ones the have the substrings 'mean()' or 'std()'. Then we substitute using
# gsub  each minus symbol '-' with the underscore '_' symbol. And we also
# substitute 'mean()' with MEAN and 'std()' with STD.
# MeanStdColNums contains the 'mean()' or 'std()' column numbers.
# MeanStdColLabels contains the new variable labels that contain MEAN and STD
# substrings instead of mean() and std().
MeanStdColNums <- grep("mean\\(\\)|std\\(\\)", features[,2])
MeanStdColLabels <- gsub("\\-", "_", features[MeanStdColNums,2])
MeanStdColLabels <- gsub("mean\\(\\)", "MEAN", MeanStdColLabels)
MeanStdColLabels <- gsub("std\\(\\)", "STD", MeanStdColLabels)

# Now we are goinf to create a big data.frame, column by column, choosing only 
# MEAN and STD columns from X_train and X_test tables.
# We begin by creating a single column data.frame with data from the first variable that we
# have already checked and it as a mean variable (tBodyAcc-mean()-X) so it is ok
# to include it.
X <- data.frame(X_train[1])
X <- rbind(X, X_test[1])
colnames(X) <- MeanStdColLabels[1]

# And then we continue by inserting (using cbind) all the MEAN and STD columns 
# from X_train and X_test. We choose only the MEAN and STD variables by using 
# MeanStdColNums we have created before.
for (i in 2:length(MeanStdColNums)){
  Y <- data.frame(X_train[MeanStdColNums[i]])
  Y <- rbind(Y, X_test[MeanStdColNums[i]])
  colnames(Y) <- MeanStdColLabels[i]
  X <- cbind(X, Y)
}
# Now X is a data.frame which contains only the MEAN and STD variables from
# X_train/X_test

# We are binding the subject, activity and X together to create
# Data.frame X, which is the answer to step 4 of the project.
X <- cbind(subject,activity,X)

# In order to create the tidy data set, we use the following instruction.
# Instead of using just numbers for the subjects, we concatenate the string 'Person'
# to create more human friendly subject name like Person1, Person2, etc :)
tidy <-(X %>% group_by(subject,activity)  %>% summarise_each(funs(mean)))
tidy$subject <- paste("Person", tidy$subject, sep="")
print(tidy)