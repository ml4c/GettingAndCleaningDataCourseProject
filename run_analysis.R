## Set working directory
## ! Remove after development !

setwd("C:/_Data/Documents/R/CourseraGettingAndCleaningData/GettingAndCleaningDataCourseProject")


## Clear environment and console
## ! Remove after development !

rm(list = ls())
cat("\014")


## dplyr
##
## select: return a subset of the columns of a data frame
##
## filter: extract a subset of rows from a data frame based on
## logical conditions
##
## arrange: reorder rows of a data frame
##
## rename: rename variables in a data frame
##
## mutate: add new variables/columns or transform existing
## variables
##
## summarise / summarize: generate summary statistics of
## different variables in the data frame, possibly within strata
##


## This script does the following:
##
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set.
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the
##    average of each variable for each activity and each subject.
## 6. Export tidy data as text file.


## 1. Merge the training and the test sets to create one data set.

df_subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
df_activity_test <- read.table("UCI HAR Dataset/test/y_test.txt")
df_measures_test <- read.table("UCI HAR Dataset/test/X_test.txt")
df_test <- cbind(df_subject_test, df_activity_test, df_measures_test)
rm("df_subject_test")
rm("df_activity_test")
rm("df_measures_test")

df_subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
df_activity_train <- read.table("UCI HAR Dataset/train/y_train.txt")
df_measures_train <- read.table("UCI HAR Dataset/train/X_train.txt")
df_train <- cbind(df_subject_train, df_activity_train, df_measures_train)
rm("df_subject_train")
rm("df_activity_train")
rm("df_measures_train")

df <- rbind(df_test, df_train)
rm("df_test")
rm("df_train")


## 2. Extract only the measurements on the mean and standard deviation for each measurement.

## Read variable names from the file features.txt

feature_labels <- read.table("UCI HAR Dataset/features.txt", col.names = c("number", "label"))


## Set variable names in the data set

names(df) <- c(c("Subject", "ActivityNumber"), as.character(feature_labels$label))
rm("feature_labels")


## Only keep the required variables for subject, activity, mean values and standard
## deviations
##
## Note: I decided to only select "mean" and "std" in lower case, i.e., I only want
##       to include variable names containing "mean()" and "std()".

df <- df[, grepl("Subject|ActivityNumber|mean|std", names(df))]


## Exclude variable names containing "meanFreq" which were included by the previous
## statement.

df <- df[, !grepl("meanFreq", names(df))]



## 3. Use descriptive activity names to name the activities in the data set.

## Read activity names from the file activity_labels.txt

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("number", "label"))


## Add variable Activity and fill it with the respective activity name matching the
## ActivityNumber

df$Activity <- activity_labels$label[match(df$ActivityNumber, activity_labels$number)]
rm("activity_labels")


## 4. Appropriately label the data set with descriptive variable names.

## Load required libraries

library(stringr)


## Replace the "cryptic" original variable names with better readable names

names(df) <- names(df) %>%
                str_replace_all("[[:punct:]]", "") %>%
                str_replace_all("mean", "Mean") %>%
                str_replace_all("std", "StandardDeviation") %>%
                str_replace_all("BodyBody", "Body") %>%
                str_replace_all("Acc", "Acceleration") %>%
                str_replace_all("Gyro", "Gyroscope") %>%
                str_replace_all("Mag", "Magnitude") %>%
                str_replace_all("^t(\\w+)", "Time\\1") %>%
                str_replace_all("^f(\\w+)", "Frequency\\1")


## 5. From the data set in step 4, create a second, independent tidy data set with
##    the average of each variable for each activity and each subject.

## Load required libraries

library(dplyr)


## Remove variable ActivityNumber from data set (it's no longer needed)

df <- select(df, -ActivityNumber)


## Create tidy data set:
## - Grouped by Subject and Activity
## - Summarizes each variable by calculating the average (= mean) of its values

tidy_df <- df %>%
                group_by(Subject, Activity) %>%
                summarise_each(funs(mean))


## Prefix the variable names of the summarized variables with "Average"

names(tidy_df) <- names(tidy_df) %>%
                        str_replace_all("^Time", "AverageTime") %>%
                        str_replace_all("^Frequency", "AverageFrequency")


## 6. Export tidy data as text file (columns are <tab>-separated).

write.table(tidy_df, "tidydata.txt", sep="\t", row.names = FALSE, quote = FALSE)


## Create variable list (including variable type and description) for code book

var_names <- names(tidy_df)
var_types <- sapply(tidy_df, class)
var_description <- var_names
var_description <- gsub("Subject", "Subject ID", var_description)
var_description <- gsub("Activity", "Activity name", var_description)
var_description <- gsub("AverageTimeBody", "The average of the time of the body ", var_description)
var_description <- gsub("AverageTimeGravity", "The average of the time of the gravity ", var_description)
var_description <- gsub("AverageFrequencyBody", "The average of the frequency of the body ", var_description)
var_description <- gsub("AccelerationJerk", "jerk acceleration ", var_description)
var_description <- gsub("Acceleration", "acceleration ", var_description)
var_description <- gsub("GyroscopeJerk", "jerk gyroscope ", var_description)
var_description <- gsub("Gyroscope", "gyroscope ", var_description)
var_description <- gsub("Magnitude", "magnitude ", var_description)
var_description <- gsub("Mean$", "mean values", var_description)
var_description <- gsub("Mean", "mean values of ", var_description)
var_description <- gsub("StandardDeviation$", "standard deviations", var_description)
var_description <- gsub("StandardDeviation", "standard deviations of ", var_description)
codebook <- paste("* Name: _", var_names, "_  \n  ", "Class: _", var_types, "_  \n  ", "Description: _", var_description, "_  \n", sep = "")
codebook <- c(c("## Variables  \n"), codebook)
write.table(codebook, "CodeBook_Variables.md", quote = FALSE, row.names = FALSE, col.names = FALSE)
rm("var_names")
rm("var_types")
rm("var_description")
rm("codebook")


## Remove data sets from the R environment

rm("df")
rm("tidy_df")

