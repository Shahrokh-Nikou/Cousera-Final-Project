


Data

The "tidy_data.txt" data file is a text file, containing space-separated values. The first row contains the names of the variables. 

Subject : There are 30 subjects, each subject is identified with a number ranging from 1 to 30.

Activity: there six diffetnet types of activities, namely, Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, and Laying. 

Measurements
The features in this excercise are slected from an accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals labelled as "t" are captured at 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

The acceleration signal then separated based on the body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Transformations

With regard to transformations made on the data, the following are step-by-step procedures:

The test and train datasets merged to create one dataset.

I extracted the measurements based on their mean and standard deviation.

I provided a descriptive activity names which have substituted activity identifiers.

Descriptive variable names were given to the variable names:

Special characters were removed, labels starting with f and t changed to frequencyDomain and timeDomain respectively.
Acc, Gyro, Mag, Freq, mean, and std were replaced by Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and StandardDeviation respectively and finally BodyBody has been replaced by Body.

The final dataset was created with the mean of each variable for each activity as well as each subject.
