Getting and Cleaning Data
========================================================

This package runs an analysis over the Human Activity Recognition Using Smartphones Dataset.  

The run_analysis.R file should be in the same directory as the files: activity_label.txt, features.txt, 
and the directories: test, train

Calling run_analysis() outputs the data summary file described in CodeBook.md and returns the summary data set by combining the test and train data sets into one complete data set, combining the activity labels from the test and train data sets into one complete activity label data set, and then combining the test and train subject data into one complete subject data set.  It carefully loads the separate data sets in the same order to preserve the data integrity.

Since the only relevant data is in the mean and std columns, we pulled out just these columns by grepping for "mean()" and "std()" in the column names and reducing the dataset down to these columns.  In order to give the activities a properly tidy and descriptive name we changed them to camelCase and remove the dash character (-).

We then added the relevant activity and subjects to the data frame.  The activity was give a descriptive label by taking the activity numeric label and using it to pull the descriptive label out of the activity_labels.txt file.  Since the number of observations was not reduced and the activities and subjects were loaded in the same order, they match up directly.

We then rearrange the data frame columns so that the subject and activity are in columns 1 & 2, respectively, so that they are easier to find.

Lastly we use the aggregate function group the data together by subject and activity and calculate the mean of the other numeric columns.  The non-numeric column is the activity label, so we just return the label in the aggregation knowing that since we are aggregating on that they will all be the same.  The aggregate function adds a Group.1 and Group.2 column and we move them to the end to keep things tidy and then write out the results to the data_out.txt file.