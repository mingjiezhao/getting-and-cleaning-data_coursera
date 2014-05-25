CodeBook
This is a md file that explains source and processing of data, as well as meaning of each variables in the data set titled "tidy_data.txt"

-1 data are extracted and reshaped from "Human Activity Recognition Using Smartphones Dataset Version 1.0" Only average of each variable for each activity and each subject is recored in this dataset.

Use of the source dataset in publications must be acknowledged by referencing the following publication [1] [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

-2 The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

-3 The table contains 180 cases (rows) for the 30 subjects and 6 activities.

-4 The table contains 68 features, with two recording the subject and activity, and the rest average of variables for measurements.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. '-mean()' and '-std()' denote averages of mean value and standard deviation for the measurements.

68 Features: Subject Activity tBodyAcc-mean()-XYZ tBodyAcc-std()-XYZ tGravityAcc-mean()-XYZ tGravityAcc-std()-XYZ tBodyAccJerk-mean()-XYZ tBodyAccJerk-std()-XYZ tBodyGyro-mean()-XYZ tBodyGyro-std()-XYZ tBodyGyroJerk-mean()-XYZ tBodyGyroJerk-std()-XYZ tBodyAccMag-mean() tBodyAccMag-std() tGravityAccMag-mean() tGravityAccMag-std() tBodyAccJerkMag-mean() tBodyAccJerkMag-std() tBodyGyroMag-mean() tBodyGyroMag-std() tBodyGyroJerkMag-mean() tBodyGyroJerkMag-std() fBodyAcc-mean()-XYZ fBodyAcc-std()-XYZ fBodyAccJerk-mean()-XYZ fBodyAccJerk-std()-XYZ fBodyGyro-mean()-XYZ fBodyGyro-std()-XYZ fBodyAccMag-mean() fBodyAccMag-std() fBodyAccJerkMag-mean() fBodyAccJerkMag-std() fBodyGyroMag-mean() fBodyGyroMag-std() fBodyGyroJerkMag-mean() fBodyGyroJerkMag-std()
