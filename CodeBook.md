


The "tidy_data.txt" data file is a text file, containing space-separated values. The first row contains the names of the variables. 

Subject: There are 30 subjects, each subject is identified with a number ranging from 1 to 30.

Activity: there six diffident types of activities, namely, Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, and Laying. 

Measurements
The features in this exercise are selected from an accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals labelled as "t" are captured at 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

The acceleration signal then separated based on the body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also, the magnitude of these three-dimensional signals was calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Common terms used in the experiment
1.	t: Time
2.	f: Frequency domain signals
3.	Acc: Accelerometer
4.	Gyro: Gyroscope
5.	Mag: Magnitude
6.	mean (): Mean value
7.	std (): Standard Deviation
8.	-XYZ: 3-axial signals in the X, Y & Z directions


Signals Used to Estimate Variables of the Feature
1.	tBodyAcc-XYZ: Time_Body_Accelerometer-XYZ
2.	tGravityAcc-XYZ: Time_Gravity_Accelerometer-XYZ
3.	tBodyAccJerk-XYZ: Time_Body_AccelerometerJerk-XYZ
4.	tBodyGyro-XYZ: Time_Body_Gyroscope-XYZ
5.	tBodyGyroJerk-XYZ: Time_Body_GyroscopeJerk-XYZ
6.	tBodyAccMag: Time_Body_Accelerometer_Magnitude
7.	tGravityAccMag: Time_Gravity_Accelerometer_Magnitude
8.	tBodyAccJerkMag: Time_Body_Accelerometer_Jerk_Magnitude
9.	tBodyGyroMag: Time_Body_Gyroscope_Magnitude
10.	tBodyGyroJerkMag: Time_Body_Gyroscope_Jerk_Magnitude
11.	fBodyAcc-XYZ: Frequency_Body_Accelerometer-XYZ
12.	fBodyAccJerk-XYZ: Frequency_Body_AccelerometerJerk-XYZ
13.	fBodyGyro-XYZ: Frequency_Body_Gyroscope-XYZ
14.	fBodyAccMag: Frequency_Body_Accelerometer_Magnitude
15.	fBodyAccJerkMag: Frequency_Body_Accelerometer_Jerk_Magnitude
16.	fBodyGyroMag: Frequency_Body_Gyroscope_Magnitude
17.	fBodyGyroJerkMag: Frequency_Body_Gyroscope_Jerk_Magnitude
18.	tBodyAccMean: Time_Body_Accelerometer_Mean
19.	tBodyAccJerkMean: Time_Body_Accelerometer_Jerk_Mean
20.	tBodyGyroMean: Time_Body_Gyroscope_Mean
21.	tBodyGyroJerkMean: Time_Body_Gyroscope_Jerk_Mean



SET OF VARIABLES ESTIMATED FROM THE ABOVE SIGNALS
1.	mad(): Median absolute deviation
2.	max(): Largest value in array
3.	min(): Smallest value in array
4.	sma(): Signal magnitude area
5.	energy(): Energy measure. Sum of the squares divided by the number of values
6.	iqr(): Interquartile range
7.	entropy(): Signal entropy
8.	arCoeff(): Auto-regression coefficients with Burg order equal to 4
9.	correlation(): Correlation coefficient between two signals
10.	maxInds(): Index of the frequency component with largest magnitude
11.	meanFreq()  Weighted average of the frequency components to obtain a mean frequency
12.	skewness(): Skewness of the frequency domain signal
13.	kurtosis(): Kurtosis of the frequency domain signal
14.	bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window
15.	angle(): Angle between two vectors


Transformations
With regard to transformations made on the data, the following are step-by-step procedures:
The test and train datasets merged to create one dataset.
I extracted the measurements based on their mean and standard deviation.
I provided a descriptive activity names which have substituted activity identifiers.
Descriptive variable names were given to the variable names:

Special characters were removed, labels starting with f and t changed to frequencyDomain and timeDomain respectively.
Acc, Gyro, Mag, Freq, mean, and std were replaced by Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and Standard Deviation respectively and finally BodyBody has been replaced by Body.

The final dataset was created with the mean of each variable for each activity as well as each subject.

