# GetCleanData
Getting and Cleaning Data Course Project

This script starts with the assumption that the Samsung data is available
in the working directory in an unzipped UCI HAR Dataset folder.

## Some info about the data used in this project ##
30 people (subjects), performed several activities (walking upstairs, downstairs, etc) while a wearable
Samsung device was taking measurements. The subjects were separated in two teams:

* test with 9 subjects and
* train with 21 subjects,

each one with its own measurements folder.
The main files used in this project are:

* `subject_train` and `subject_test` with the subject number that performed activities (`1..30`),
* `y_train` and `y_test` with the activities performed (`1..6`),
* `X_train` and `X_test` that have the measurements from the device.

*It should be noted that the measurements were produced from several files in the* `Inertial Signals` *folders
in both train and test folders, but the way they were produced is beyond the scope of this project.*

From the project's [website](https://class.coursera.org/getdata-011/human_grading/view/courses/973498/assessments/3/submissions) we downloaded a zip file and we unzipped it.
The result was the following directory structure:

    .
    ├── README.txt                   # README file
    ├── activity_labels.txt          # File that links activity number with their names
    ├── features.txt                 # List of all features (names for the measurements taken)
    ├── features_info.txt            # Info about the features (not used by the scripts)
    ├── test                         # Test experiment measurements
    │   ├── Inertial Signals         # Detailed measurements (not used by the scripts)
    │   ├── X_test.txt               # Main measurements file (test set) (26.5MB file size)
    │   ├── subject_test.txt         # Who performed activities (test set)
    │   └── y_test.txt               # Which activity was performed (test set)
    └── train
        ├── Inertial Signals         # Detailed measurements (not used by the scripts)
        ├── X_train.txt              # Main measurements file (train set) (66MB file size)
        ├── subject_train.txt        # Who performed activities (train set)
        └── y_train.txt              # Which activity was performed (train set)

## run_analysis.R ##

For this project, we provide the script `run_analysis.R` that uses the aforementioned files and produces a tidy data set with the average of each variable for each activity and each subject. In order to run the file, the libraries `plyr` and `dplyr` must be installed. In case they are not installed, use the following commands in Rstudio:

    > install.packages("plyr")
    > install.packages("dplyr")

Save the `run_analysis.R` script in the same folder with the unzipped UCI HAR Dataset folder and execute it:

	> source("run_analysis.R")

## Analysis of run_analysis.R ##

First of all, we load all needed data in R using read.table commands.

### Step 1. Merges the training and the test sets to create one data set. ###
In order to merge the sets, we essentially need to merge the `subject_` files, the `y_` files (with the activities)
and the `X_` files with the measurements. In the following images, the merge of the two data sets is depicted.
In the first one, the mean() and std() columns of `X_train` and `X_test` are selected, and they create the mean and std
only table.

![X](https://raw.githubusercontent.com/sotirop/GetCleanData/master/X.png)

In the second image, we see the merging of

* `subject_train` with `subject_test` (`rbind` function to merge the green with the blue column)
* `y_train` with `y_test` (`rbind` function to merge the green with the blue column)
* `X_train` is already merged with `X_test` from the first image
* all these three are merged together (using `cbind`) to create one data set.

![one data set](https://raw.githubusercontent.com/sotirop/GetCleanData/master/one_data_set.png)


### Step 2. Extracts only the measurements on the mean and standard deviation for each measurement. ###
We used `grep` function to distinguish all the features from `features.txt` that contain the substring `mean()` and `std()`.
And since R language cannot handle table variables that contains parenthesis or '-',
we substituted all minus symbols ('-') to underscores ('_') and `mean()` to `MEAN` and `std()` to `STD`.
All substitutions used the `gsub` function.

### Step 3. Uses descriptive activity names to name the activities in the data set ###
Files `y_test` and `y_train` contained numbers `1..6`. Using info from `activity_labels`,
we mapped numbers to activity names. For achieving that, we used the `mapvalues` function.

### Step 4. Appropriately labels the data set with descriptive variable names. ###
For appropriate labels, we used the labels from `features.txt`, as described in Step 2.

### Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. ###
The final step creates a tidy set. The script groups the X array by
subject and activity using the `%>%` operator, the `group_by` function
and the `summarise_each` function of the `dplyr` package. This one
liner is a very useful command and shows the power of the `dplyr`
package. Since we calculated the average of each variable, we
concatenate each variable name with the substring `AVG_` using `paste`
function. In order to be fully compliant with the tidy data set
definition, we concatenated the string `Person` before each subject
number, creating the values Person1, Person2, etc. Last
function call `View(tidy) shows the tide table in Rstudio.


## Saving result in file ##
Currently the script does not save the produced tidy set. If needed, you can uncomment the last line of the script.
A `tidy.txt` file will be produced.
