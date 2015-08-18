# README

## Files

* *CodeBook.md*  
  Code book describing the transformations from the raw to the tidy data set and all variables in the tidy data set.  
  
* *README.md*  
  This file.  
  
* *run_analysis.R*  
  R code with all transformations from the raw to the tidy data set. The script performs the following steps:
    1. Merge the training and the test sets to create one data set.
    2. Extract only the measurements on the mean and standard deviation for each measurement.
    3. Use descriptive activity names to name the activities in the data set.
    4. Appropriately label the data set with descriptive variable names.
    5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
    6. Export tidy data as text file.
  
* *tidydata.txt*  
  Text file containing the tidy data set.  