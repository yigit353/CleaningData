# Codebook

## Raw Dataset

Raw data codebook can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Data Set Information

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## New Dataset

| Attribute           | Value |
|:---------------------|:---------|
| **Number of instances** | 10299 |
| **Number of columns**  | 68 |
| **Date of processing** | 06/21/2015 |

> The features selected for this database come from the **accelerometer** and **gyroscope** 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (**prefix 't' to denote time**) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and **angular velocity** were derived in time to obtain **Jerk signals** (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the **Euclidean norm** (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a **Fast Fourier Transform (FFT)** was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (**Note the 'f' to indicate frequency domain signals**). 

Only mean and standard deviation of these variables are selected. 

| Variable           | Type   | Description |
|:--------------------|:---------|:----------------|
|tBodyAcc-XYZ   | XYZ numeric | Body Acceleration in time domain |
|tGravityAcc-XYZ | XYZ numeric | Gravity Acceleration in time Domain |
|tBodyAccJerk-XYZ | XYZ numeric | Body Acc. Jerk Signal in time domain | 
|tBodyGyro-XYZ | XYZ numeric | Body Gyro in time domain |
|tBodyGyroJerk-XYZ | XYZ numeric | Body Gyro Jerk Signal in time domain |
|fBodyAcc-XYZ | XYZ numeric | Body Acceleration in frequency domain |
|fBodyAccJerk-XYZ | XYZ numeric | Body Acc. Jerk Signal in frequency domain |
|fBodyGyro-XYZ | XYZ numeric | Body Gyro in frequency domain |

There are three of each XYZ numeric variables separated by X, Y, and Z and also by mean and std functions.

| Variable           | Type   | Description |
|:--------------------|:---------|:----------------|
|tBodyAccMag | numeric | Body Acceleration Magnitude in time domain |
|tGravityAccMag | numeric | Gravity Acc. Magnitude in time domain | 
|tBodyAccJerkMag | numeric | Body Acc. Jerk Signal Magnitude in time domain | 
|tBodyGyroMag | numeric | Body Gyro Magnitude in time domain | 
|tBodyGyroJerkMag | numeric | Body Gyro Jerk Signal Magnitude in time domain | 
|fBodyAccMag | numeric | Body Acceleration Magnitude in frequency domain |
|fBodyAccJerkMag | numeric | Body Acc. Jerk Signal Magnitude in frequency domain |
|fBodyGyroMag | numeric | Body Gyro Magnitude in frequency domain |
|fBodyGyroJerkMag | numeric |Body Gyro Jerk Signal Magnitude in frequency domain |


There are two of each variables for mean and std functions.

**All values are normalised to range between -1 to 1 for analysis**.

There are also two more variables;

| Variable           | Type   | Description |
|:--------------------|:---------|:----------------|
| activityName   | string  | 1 WALKING 2 WALKING_UPSTAIRS 3 WALKING_DOWNSTAIRS 4 SITTING 5 STANDING 6 LAYING |
| subject            | numeric | 1 - 30, volunteer id |

