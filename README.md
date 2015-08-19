# README

## Acknowledgement

Information about the raw data set that has been used in this course project is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and in the following publication:  

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012  

Information - including the description of the various files and variables - about the raw data set is available in the README.txt that comes with the raw data set which was download from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## Files in this repository

* *CodeBook.md*  
  Code book describing the transformations from the raw to the tidy data set and all variables in the tidy data set.  
  
* *README.md*  
  This file.  
  
* *run_analysis.R*  
  R code with all transformations from the raw to the tidy data set. The script performs the following steps (see code and comments in the R file for details):
    1. Merge the training and the test sets to create one data set.
    2. Extract only the measurements on the mean and standard deviation for each measurement.
    3. Use descriptive activity names to name the activities in the data set.
    4. Appropriately label the data set with descriptive variable names.
    5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
    6. Export tidy data as text file (with `<tab>`-separated columns).
  
* *tidydata.txt*  
  Text file containing the tidy data set. Columns are `<tab>`-separated.  