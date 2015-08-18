## This script does the following:
##
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set.
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
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

feature_labels <- read.table("UCI HAR Dataset/features.txt", col.names = c("number", "label"))
names(df) <- c(c("Subject", "ActivityNumber"), as.character(feature_labels$label))
rm("feature_labels")
df <- df[, grepl("Subject|ActivityNumber|mean|std", names(df))]
## Alternative: Only include "mean", not "meanFreq"
df <- df[, !grepl("meanFreq", names(df))]
## Alternative: Also include "angle" variables containing "Mean" in the variable name
## df <- df[, grepl("Subject|ActivityNumber|mean|std", names(df), ignore.case = TRUE)]



## 3. Use descriptive activity names to name the activities in the data set.

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("number", "label"))
df$Activity <- activity_labels$label[match(df$ActivityNumber, activity_labels$number)]
rm("activity_labels")


## 4. Appropriately label the data set with descriptive variable names.

library(stringr)
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


## 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)
df <- select(df, -ActivityNumber)
tidy_df <- df %>%
                group_by(Subject, Activity) %>%
                summarise_each(funs(mean))
names(tidy_df) <- names(tidy_df) %>%
                        str_replace_all("^Time", "AverageTime") %>%
                        str_replace_all("^Frequency", "AverageFrequency")


## 6. Export tidy data as text file

write.table(tidy_df, "tidydata.txt", sep="\t", row.names = FALSE, quote = FALSE)


## Remove data sets from the R environment

rm("df")
rm("tidy_df")

