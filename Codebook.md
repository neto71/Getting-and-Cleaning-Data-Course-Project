# CodeBook

Data measurements taken of 30 individuals. Each individual
was recorded while doing 6 different activities:
Activities were: Walking,Walking upstarirs, Walking downstairs, sitting, standing and laying.

The recording device was a Samsung Galaxy smart phone they
carried on their waist.
This phone has  an Accelerometer and a Gyrometer. 
The Accelerometer info was divided into into body and gravity acceleration signals.
The units of measurement for the accelerometer were standard
gravity units.
The units of measurement for the gyrometer were radiasn/per second.
Also:
Features are normalized and bounded within [-1,1].

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. "I*
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
In the attached txt file you'll see a complete break down
of measurements per subject,activity and a more ample description of the measurements.



