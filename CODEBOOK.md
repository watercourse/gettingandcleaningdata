# CODEBOOK 

This codebook reviews the variables defined in the original dataset [1] and then explains the variables defined in the final tidy dataset produced by run_analysis.R

References:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012. [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Original dataset

Quoting from reference [1]:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag"

From the above variables researchers calculated additional variables involving (mean(), std(), mad(), max(), etc. Read the file features_info.txt in the original dataset for additional informations.). To produce the final tidy dataset we only selected variables involving: 

mean(): Mean value

std(): Standard deviation

"Features are normalized and bounded within [-1,1]."

## Final tidy dataset

subjects - the id of each subject (1 to 30)

activity_label - a textual description of the type of activity the subject was doing (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) as required in the exercise. Note: it would be better to keep the variable activity_id to identify the type of activity rather than a textual description.

The following variables have a similar meaning to the ones explained above, except that they represent mean values of the several observations for each subject within each activity. 

"fBodyAccJerk-mean()-X" 

"fBodyAccJerk-mean()-Y"      

"fBodyAccJerk-mean()-Z"    

"fBodyAccJerk-std()-X"       

"fBodyAccJerk-std()-Y"        

"fBodyAccJerk-std()-Z"       

"fBodyAccMag-mean()"          

"fBodyAccMag-std()"          

"fBodyAcc-mean()-X"           

"fBodyAcc-mean()-Y"          

"fBodyAcc-mean()-Z"           

"fBodyAcc-std()-X"           

"fBodyAcc-std()-Y"            

"fBodyAcc-std()-Z"           

"fBodyBodyAccJerkMag-mean()"  

"fBodyBodyAccJerkMag-std()"  

"fBodyBodyGyroJerkMag-mean()" 

"fBodyBodyGyroJerkMag-std()" 

"fBodyBodyGyroMag-mean()"     

"fBodyBodyGyroMag-std()"     

"fBodyGyro-mean()-X"          

"fBodyGyro-mean()-Y"         

"fBodyGyro-mean()-Z"          

"fBodyGyro-std()-X"          

"fBodyGyro-std()-Y"           

"fBodyGyro-std()-Z"          

"tBodyAccJerkMag-mean()"      

"tBodyAccJerkMag-std()"      

"tBodyAccJerk-mean()-X"       

"tBodyAccJerk-mean()-Y"      

"tBodyAccJerk-mean()-Z"       

"tBodyAccJerk-std()-X"       

"tBodyAccJerk-std()-Y"        

"tBodyAccJerk-std()-Z"       

"tBodyAccMag-mean()"          

"tBodyAccMag-std()"          

"tBodyAcc-mean()-X"           

"tBodyAcc-mean()-Y"          

"tBodyAcc-mean()-Z"           

"tBodyAcc-std()-X"           

"tBodyAcc-std()-Y"            

"tBodyAcc-std()-Z"           

"tBodyGyroJerkMag-mean()"     

"tBodyGyroJerkMag-std()"     

"tBodyGyroJerk-mean()-X"      

"tBodyGyroJerk-mean()-Y"     

"tBodyGyroJerk-mean()-Z"      

"tBodyGyroJerk-std()-X"      

"tBodyGyroJerk-std()-Y"       

"tBodyGyroJerk-std()-Z"      

"tBodyGyroMag-mean()"         

"tBodyGyroMag-std()"         

"tBodyGyro-mean()-X"          

"tBodyGyro-mean()-Y"         

"tBodyGyro-mean()-Z"          

"tBodyGyro-std()-X"          

"tBodyGyro-std()-Y"           

"tBodyGyro-std()-Z"          

"tGravityAccMag-mean()"       

"tGravityAccMag-std()"       

"tGravityAcc-mean()-X"        

"tGravityAcc-mean()-Y"       

"tGravityAcc-mean()-Z"        

"tGravityAcc-std()-X"        

"tGravityAcc-std()-Y"         

"tGravityAcc-std()-Z"    

