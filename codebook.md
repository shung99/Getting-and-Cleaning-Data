Enter file contents here

#Codebook

##Data Set Information

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:


- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.



##Variable information in tidy.txt
- id Subject ID
- activity Activity Type
- mean_tBodyAcc.std...X Mean of Mean body acceleration for X direction
- mean_tBodyAcc.std...Y Mean of Mean body acceleration for Y direction
- mean_tBodyAcc.std...Z Mean of Mean body acceleration for Z direction
- mean_tGravityAcc.std...X Mean of Mean frequency of body acceleration for X direction
- mean_tGravityAcc.std...Y Mean of Mean frequency of body acceleration for Y direction
- mean_tGravityAcc.std...Z Mean of Mean frequency of body acceleration for Z direction
- mean_tBodyAccJerk.std...X Mean of Standard deviation of frequency of body acceleration for X direction
- mean_tBodyAccJerk.std...Y Mean of Standard deviation of frequency of body acceleration for Y direction
- mean_tBodyAccJerk.std...Z Mean of Standard deviation of frequency of body acceleration for Z direction
- mean_tBodyGyro.std...X Mean of Mean time of body acceleration jerk for X direction
- mean_tBodyGyro.std...Y Mean of Mean time of body acceleration jerk for Y direction
- mean_tBodyGyro.std...Z Mean of Mean time of body acceleration jerk for Z direction
- mean_tBodyGyroJerk.std...X Mean of Standard deviation of time of body acceleration jerk for X direction
- mean_tBodyGyroJerk.std...Y Mean of Standard deviation of time of body acceleration jerk for Y direction
- mean_tBodyGyroJerk.std...Z Mean of Standard deviation of time of body acceleration jerk for Z direction
- mean_fBodyAcc.std...X Mean of Standard deviation frequency of body accerlation jerk for X direction
- mean_fBodyAcc.std...Y Mean of Standard deviation frequency of body accerlation jerk for Y direction
- mean_fBodyAcc.std...Z Mean of Standard deviation frequency of body accerlation jerk for Z direction
- mean_fBodyAccJerk.std...X Mean of Mean frequency of body acceleration magnitude
- mean_fBodyAccJerk.std...Y Mean of Mean frequency of body acceleration jerk magnitude
- mean_fBodyAccJerk.std...Z Mean of Mean frequency of magnitude of body gyroscope jerk measurement
- mean_fBodyGyro.std...X Mean of Mean frequency of magnitude of body gyroscope measurement
- mean_fBodyGyro.std...Y Mean of Mean body gyroscope measurement for X direction
- mean_fBodyGyro.std...Z Mean of Mean body gyroscope measurement for Y direction
- mean_tBodyAcc.mean...X Mean of Mean body gyroscope measurement for Z direction
- mean_tBodyAcc.mean...Y Mean of Mean frequency of body gyroscope measurement for X direction
- mean_tBodyAcc.mean...Z Mean of Mean frequency of body gyroscope measurement for Y direction
- mean_tGravityAcc.mean...X Mean of Mean frequency of body gyroscope measurement for Z direction
- mean_tGravityAcc.mean...Y Mean of Standard deviation frequency of body gyroscope measurement for X direction
- mean_tGravityAcc.mean...Z Mean of Standard deviation frequency of body gyroscope measurement for Y direction
- mean_tBodyAccJerk.mean...X Mean of Standard deviation frequency of body gyroscope measurement for Z direction
- mean_tBodyAccJerk.mean...Y Mean of Mean time for acceleration of body for X direction
- mean_tBodyAccJerk.mean...Z Mean of Mean time for acceleration of body for Y direction
- mean_tBodyGyro.mean...X Mean of Mean time for acceleration of body for Z direction
- mean_tBodyGyro.mean...Y Mean of Standard deviation of time for acceleration of body for X direction
- mean_tBodyGyro.mean...Z Mean of Standard deviation of time for acceleration of body for Y direction
- mean_tBodyGyroJerk.mean...X Mean of Standard deviation of time for acceleration of body for Z direction
- mean_tBodyGyroJerk.mean...Y Mean of Mean time of body acceleration jerk for X direction
- mean_tBodyGyroJerk.mean...Z Mean of Mean time of body acceleration jerk for Y direction
- mean_fBodyAcc.mean...X Mean of Mean time of body acceleration jerk for Z direction
- mean_fBodyAcc.mean...Y Mean of Standard deviation of time of body acceleration jerk for X direction
- mean_fBodyAcc.mean...Z Mean of Standard deviation of time of body acceleration jerk for Y direction
- mean_fBodyAcc.meanFreq...X Mean of Standard deviation of time of body acceleration jerk for Z direction
- mean_fBodyAcc.meanFreq...Y Mean of Mean body gyroscope measurement for X direction
- mean_fBodyAcc.meanFreq...Z Mean of Mean body gyroscope measurement for Y direction
- mean_fBodyAccJerk.mean...X Mean of Mean body gyroscope measurement for Z direction
- mean_fBodyAccJerk.mean...Y Mean of Standard deviation of body gyroscope measurement for X direction
- mean_fBodyAccJerk.mean...Z Mean of Standard deviation of body gyroscope measurement for Y direction
- mean_fBodyAccJerk.meanFreq...X Mean of Standard deviation of body gyroscope measurement for Z direction
- mean_fBodyAccJerk.meanFreq...Y Mean of Mean jerk signal of body for X direction
- mean_fBodyAccJerk.meanFreq...Z Mean of Mean jerk signal of body for Y direction
- mean_fBodyGyro.mean...X Mean of Mean jerk signal of body for Z direction
- mean_fBodyGyro.mean...Y Mean of Standard deviation of jerk signal of body for X direction
- mean_fBodyGyro.mean...Z Mean of Standard deviation of jerk signal of body for Y direction
- mean_fBodyGyro.meanFreq...X Mean of Standard deviation of jerk signal of body for Z direction
- mean_fBodyGyro.meanFreq...Y Mean of Mean time of acceleration of gravity for X direction
- mean_fBodyGyro.meanFreq...Z Mean of Mean time of acceleration of gravity for Y direction
- mean_fBodyAccMag.meanFreq.. Mean of Mean time of acceleration of gravity for Z direction
- mean_fBodyBodyAccJerkMag.meanFreq.. Mean of Standard deviation of time of acceleration of gravity for X direction
- mean_fBodyBodyGyroMag.meanFreq.. Mean of Standard deviation of time of acceleration of gravity for Y direction
- mean_fBodyBodyGyroJerkMag.meanFreq.. Mean of Standard deviation of time of acceleration of gravity for Z direction
