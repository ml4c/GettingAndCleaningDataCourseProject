# Code book

## Transformations from the raw to the tidy data set

The following steps were taken to process the raw data set, in order to get a tidy data set for further data analysis:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Export tidy data as text file. Columns are `<tab>`-separated.

## Data overview

The tidy data set contains 180 observations (30 subjects x 6 activities) with 68 variables (see *Variables*).

## Variables  

* Name: _Subject_  
  Class: _integer_  
  Description: _Subject ID_  

* Name: _Activity_  
  Class: _factor_  
  Description: _Activity name_  

* Name: _AverageTimeBodyAccelerationMeanX_  
  Class: _numeric_  
  Description: _The average of the time of the body acceleration mean values of X_  

* Name: _AverageTimeBodyAccelerationMeanY_  
  Class: _numeric_  
  Description: _The average of the time of the body acceleration mean values of Y_  

* Name: _AverageTimeBodyAccelerationMeanZ_  
  Class: _numeric_  
  Description: _The average of the time of the body acceleration mean values of Z_  

* Name: _AverageTimeBodyAccelerationStandardDeviationX_  
  Class: _numeric_  
  Description: _The average of the time of the body acceleration standard deviations of X_  

* Name: _AverageTimeBodyAccelerationStandardDeviationY_  
  Class: _numeric_  
  Description: _The average of the time of the body acceleration standard deviations of Y_  

* Name: _AverageTimeBodyAccelerationStandardDeviationZ_  
  Class: _numeric_  
  Description: _The average of the time of the body acceleration standard deviations of Z_  

* Name: _AverageTimeGravityAccelerationMeanX_  
  Class: _numeric_  
  Description: _The average of the time of the gravity acceleration mean values of X_  

* Name: _AverageTimeGravityAccelerationMeanY_  
  Class: _numeric_  
  Description: _The average of the time of the gravity acceleration mean values of Y_  

* Name: _AverageTimeGravityAccelerationMeanZ_  
  Class: _numeric_  
  Description: _The average of the time of the gravity acceleration mean values of Z_  

* Name: _AverageTimeGravityAccelerationStandardDeviationX_  
  Class: _numeric_  
  Description: _The average of the time of the gravity acceleration standard deviations of X_  

* Name: _AverageTimeGravityAccelerationStandardDeviationY_  
  Class: _numeric_  
  Description: _The average of the time of the gravity acceleration standard deviations of Y_  

* Name: _AverageTimeGravityAccelerationStandardDeviationZ_  
  Class: _numeric_  
  Description: _The average of the time of the gravity acceleration standard deviations of Z_  

* Name: _AverageTimeBodyAccelerationJerkMeanX_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk acceleration mean values of X_  

* Name: _AverageTimeBodyAccelerationJerkMeanY_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk acceleration mean values of Y_  

* Name: _AverageTimeBodyAccelerationJerkMeanZ_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk acceleration mean values of Z_  

* Name: _AverageTimeBodyAccelerationJerkStandardDeviationX_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk acceleration standard deviations of X_  

* Name: _AverageTimeBodyAccelerationJerkStandardDeviationY_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk acceleration standard deviations of Y_  

* Name: _AverageTimeBodyAccelerationJerkStandardDeviationZ_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk acceleration standard deviations of Z_  

* Name: _AverageTimeBodyGyroscopeMeanX_  
  Class: _numeric_  
  Description: _The average of the time of the body gyroscope mean values of X_  

* Name: _AverageTimeBodyGyroscopeMeanY_  
  Class: _numeric_  
  Description: _The average of the time of the body gyroscope mean values of Y_  

* Name: _AverageTimeBodyGyroscopeMeanZ_  
  Class: _numeric_  
  Description: _The average of the time of the body gyroscope mean values of Z_  

* Name: _AverageTimeBodyGyroscopeStandardDeviationX_  
  Class: _numeric_  
  Description: _The average of the time of the body gyroscope standard deviations of X_  

* Name: _AverageTimeBodyGyroscopeStandardDeviationY_  
  Class: _numeric_  
  Description: _The average of the time of the body gyroscope standard deviations of Y_  

* Name: _AverageTimeBodyGyroscopeStandardDeviationZ_  
  Class: _numeric_  
  Description: _The average of the time of the body gyroscope standard deviations of Z_  

* Name: _AverageTimeBodyGyroscopeJerkMeanX_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk gyroscope mean values of X_  

* Name: _AverageTimeBodyGyroscopeJerkMeanY_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk gyroscope mean values of Y_  

* Name: _AverageTimeBodyGyroscopeJerkMeanZ_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk gyroscope mean values of Z_  

* Name: _AverageTimeBodyGyroscopeJerkStandardDeviationX_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk gyroscope standard deviations of X_  

* Name: _AverageTimeBodyGyroscopeJerkStandardDeviationY_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk gyroscope standard deviations of Y_  

* Name: _AverageTimeBodyGyroscopeJerkStandardDeviationZ_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk gyroscope standard deviations of Z_  

* Name: _AverageTimeBodyAccelerationMagnitudeMean_  
  Class: _numeric_  
  Description: _The average of the time of the body acceleration magnitude mean values_  

* Name: _AverageTimeBodyAccelerationMagnitudeStandardDeviation_  
  Class: _numeric_  
  Description: _The average of the time of the body acceleration magnitude standard deviations_  

* Name: _AverageTimeGravityAccelerationMagnitudeMean_  
  Class: _numeric_  
  Description: _The average of the time of the gravity acceleration magnitude mean values_  

* Name: _AverageTimeGravityAccelerationMagnitudeStandardDeviation_  
  Class: _numeric_  
  Description: _The average of the time of the gravity acceleration magnitude standard deviations_  

* Name: _AverageTimeBodyAccelerationJerkMagnitudeMean_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk acceleration magnitude mean values_  

* Name: _AverageTimeBodyAccelerationJerkMagnitudeStandardDeviation_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk acceleration magnitude standard deviations_  

* Name: _AverageTimeBodyGyroscopeMagnitudeMean_  
  Class: _numeric_  
  Description: _The average of the time of the body gyroscope magnitude mean values_  

* Name: _AverageTimeBodyGyroscopeMagnitudeStandardDeviation_  
  Class: _numeric_  
  Description: _The average of the time of the body gyroscope magnitude standard deviations_  

* Name: _AverageTimeBodyGyroscopeJerkMagnitudeMean_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk gyroscope magnitude mean values_  

* Name: _AverageTimeBodyGyroscopeJerkMagnitudeStandardDeviation_  
  Class: _numeric_  
  Description: _The average of the time of the body jerk gyroscope magnitude standard deviations_  

* Name: _AverageFrequencyBodyAccelerationMeanX_  
  Class: _numeric_  
  Description: _The average of the frequency of the body acceleration mean values of X_  

* Name: _AverageFrequencyBodyAccelerationMeanY_  
  Class: _numeric_  
  Description: _The average of the frequency of the body acceleration mean values of Y_  

* Name: _AverageFrequencyBodyAccelerationMeanZ_  
  Class: _numeric_  
  Description: _The average of the frequency of the body acceleration mean values of Z_  

* Name: _AverageFrequencyBodyAccelerationStandardDeviationX_  
  Class: _numeric_  
  Description: _The average of the frequency of the body acceleration standard deviations of X_  

* Name: _AverageFrequencyBodyAccelerationStandardDeviationY_  
  Class: _numeric_  
  Description: _The average of the frequency of the body acceleration standard deviations of Y_  

* Name: _AverageFrequencyBodyAccelerationStandardDeviationZ_  
  Class: _numeric_  
  Description: _The average of the frequency of the body acceleration standard deviations of Z_  

* Name: _AverageFrequencyBodyAccelerationJerkMeanX_  
  Class: _numeric_  
  Description: _The average of the frequency of the body jerk acceleration mean values of X_  

* Name: _AverageFrequencyBodyAccelerationJerkMeanY_  
  Class: _numeric_  
  Description: _The average of the frequency of the body jerk acceleration mean values of Y_  

* Name: _AverageFrequencyBodyAccelerationJerkMeanZ_  
  Class: _numeric_  
  Description: _The average of the frequency of the body jerk acceleration mean values of Z_  

* Name: _AverageFrequencyBodyAccelerationJerkStandardDeviationX_  
  Class: _numeric_  
  Description: _The average of the frequency of the body jerk acceleration standard deviations of X_  

* Name: _AverageFrequencyBodyAccelerationJerkStandardDeviationY_  
  Class: _numeric_  
  Description: _The average of the frequency of the body jerk acceleration standard deviations of Y_  

* Name: _AverageFrequencyBodyAccelerationJerkStandardDeviationZ_  
  Class: _numeric_  
  Description: _The average of the frequency of the body jerk acceleration standard deviations of Z_  

* Name: _AverageFrequencyBodyGyroscopeMeanX_  
  Class: _numeric_  
  Description: _The average of the frequency of the body gyroscope mean values of X_  

* Name: _AverageFrequencyBodyGyroscopeMeanY_  
  Class: _numeric_  
  Description: _The average of the frequency of the body gyroscope mean values of Y_  

* Name: _AverageFrequencyBodyGyroscopeMeanZ_  
  Class: _numeric_  
  Description: _The average of the frequency of the body gyroscope mean values of Z_  

* Name: _AverageFrequencyBodyGyroscopeStandardDeviationX_  
  Class: _numeric_  
  Description: _The average of the frequency of the body gyroscope standard deviations of X_  

* Name: _AverageFrequencyBodyGyroscopeStandardDeviationY_  
  Class: _numeric_  
  Description: _The average of the frequency of the body gyroscope standard deviations of Y_  

* Name: _AverageFrequencyBodyGyroscopeStandardDeviationZ_  
  Class: _numeric_  
  Description: _The average of the frequency of the body gyroscope standard deviations of Z_  

* Name: _AverageFrequencyBodyAccelerationMagnitudeMean_  
  Class: _numeric_  
  Description: _The average of the frequency of the body acceleration magnitude mean values_  

* Name: _AverageFrequencyBodyAccelerationMagnitudeStandardDeviation_  
  Class: _numeric_  
  Description: _The average of the frequency of the body acceleration magnitude standard deviations_  

* Name: _AverageFrequencyBodyAccelerationJerkMagnitudeMean_  
  Class: _numeric_  
  Description: _The average of the frequency of the body jerk acceleration magnitude mean values_  

* Name: _AverageFrequencyBodyAccelerationJerkMagnitudeStandardDeviation_  
  Class: _numeric_  
  Description: _The average of the frequency of the body jerk acceleration magnitude standard deviations_  

* Name: _AverageFrequencyBodyGyroscopeMagnitudeMean_  
  Class: _numeric_  
  Description: _The average of the frequency of the body gyroscope magnitude mean values_  

* Name: _AverageFrequencyBodyGyroscopeMagnitudeStandardDeviation_  
  Class: _numeric_  
  Description: _The average of the frequency of the body gyroscope magnitude standard deviations_  

* Name: _AverageFrequencyBodyGyroscopeJerkMagnitudeMean_  
  Class: _numeric_  
  Description: _The average of the frequency of the body jerk gyroscope magnitude mean values_  

* Name: _AverageFrequencyBodyGyroscopeJerkMagnitudeStandardDeviation_  
  Class: _numeric_  
  Description: _The average of the frequency of the body jerk gyroscope magnitude standard deviations_  

