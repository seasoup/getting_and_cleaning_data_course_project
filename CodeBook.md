Getting and Cleaning Data Code Book
========================================================
The data_out.csv file contains the mean of the observations of the Human Activity Recognition Using Smartphones Dataset when grouped by subject and activity.  For example, row one has a subject of 1 and an activity of WALKING, the rest of the columns (except for activity_numeric and Group.1 and Group.2) contain the mean value for all measurements of subject 1 when they were walking.

These columns are what the data set is grouped by:
---------------------------------------------------------
subject - numeric field with the id of the subject  
activity - characters describing the activity  
  
These columns are the mean of the measurements grouped by subject and activity. They are numeric.
---------------------------------------------------------
tBodyAccMeanX  
tBodyAccMeanY  
tBodyAccMeanZ  
tBodyAccStdX  
tBodyAccStdY  
tBodyAccStdZ  
tGravityAccMeanX  
tGravityAccMeanY  
tGravityAccMeanZ  
tGravityAccStdX  
tGravityAccStdY  
tGravityAccStdZ  
tBodyAccJerkMeanX  
tBodyAccJerkMeanY  
tBodyAccJerkMeanZ  
tBodyAccJerkStdX  
tBodyAccJerkStdY  
tBodyAccJerkStdZ  
tBodyGyroMeanX  
tBodyGyroMeanY  
tBodyGyroMeanZ  
tBodyGyroStdX  
tBodyGyroStdY  
tBodyGyroStdZ  
tBodyGyroJerkMeanX  
tBodyGyroJerkMeanY  
tBodyGyroJerkMeanZ  
tBodyGyroJerkStdX  
tBodyGyroJerkStdY  
tBodyGyroJerkStdZ  
tBodyAccMagMean  
tBodyAccMagStd  
tGravityAccMagMean  
tGravityAccMagStd  
tBodyAccJerkMagMean  
tBodyAccJerkMagStd  
tBodyGyroMagMean  
tBodyGyroMagStd  
tBodyGyroJerkMagMean  
tBodyGyroJerkMagStd  
fBodyAccMeanX  
fBodyAccMeanY  
fBodyAccMeanZ  
fBodyAccStdX  
fBodyAccStdY  
fBodyAccStdZ  
fBodyAccMeanFreqX  
fBodyAccMeanFreqY  
fBodyAccMeanFreqZ  
fBodyAccJerkMeanX  
fBodyAccJerkMeanY  
fBodyAccJerkMeanZ  
fBodyAccJerkStdX  
fBodyAccJerkStdY  
fBodyAccJerkStdZ  
fBodyAccJerkMeanFreqX  
fBodyAccJerkMeanFreqY  
fBodyAccJerkMeanFreqZ  
fBodyGyroMeanX  
fBodyGyroMeanY  
fBodyGyroMeanZ  
fBodyGyroStdX  
fBodyGyroStdY  
fBodyGyroStdZ  
fBodyGyroMeanFreqX  
fBodyGyroMeanFreqY  
fBodyGyroMeanFreqZ  
fBodyAccMagMean  
fBodyAccMagStd  
fBodyAccMagMeanFreq  
fBodyBodyAccJerkMagMean  
fBodyBodyAccJerkMagStd  
fBodyBodyAccJerkMagMeanFreq  
fBodyBodyGyroMagMean  
fBodyBodyGyroMagStd  
fBodyBodyGyroMagMeanFreq  
fBodyBodyGyroJerkMagMean  
fBodyBodyGyroJerkMagStd  
fBodyBodyGyroJerkMagMeanFreq  

These columns provide simpler access to running R functions:
---------------------------------------------------------
activity_numeric - numeric label of activity  
Group.1 - numeric label of activity, result of running the aggregate function  
Group.2 - same value as subject, result of running the aggregate function  

