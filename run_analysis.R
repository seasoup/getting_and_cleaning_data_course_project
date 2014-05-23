library(stringr)

run_analysis <- function () {
  # Merges the training and the test sets to create one data set.
  test_data <- read.table("test/X_test.txt")
  training_data <- read.table("train/X_train.txt")
  complete_data <- rbind(test_data, training_data)
  
  # Load labels for data set in this folder and merges test and train labels
  test_activity_labels <- read.table("test/y_test.txt")
  training_activity_labels <- read.table("train/y_train.txt")
  complete_activity_labels <- rbind(test_activity_labels, training_activity_labels)
  
  # Appropriately label the data set with descriptive activity names.
  activity_label_names <- read.table("activity_labels.txt")
  activity_names <- activity_label_names[,2]
  activity_labels_list<-sapply(complete_activity_labels, simplify=T, function(x){ activity_names[x]})
  
  # Get list of test and train subjects and combine them
  test_subject <- read.table("test/subject_test.txt")
  train_subject <- read.table("train/subject_train.txt")
  complete_subject <- rbind(test_subject, train_subject)
  
  # Load the names of the features
  features_labels <- read.table("features.txt")
  
  # Reduce data set to relevant features
  relevant_data <- extract_relevant_columns( complete_data, features_labels )
  
  # Add subjects and activity labels
  colnames(complete_subject) <- c("subject")
  colnames(activity_labels_list) <- c("activity")
  relevant_data$subject  <- complete_subject[,1]
  relevant_data$activity <- activity_labels_list[,1]
  relevant_data$activity_numeric <- complete_activity_labels[,1]

  # rearrange columns so subject and activity label are first
  relevant_data<-relevant_data[c(80,81,1:79,82)]
  output_tidy_data_summary(relevant_data)
  #Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
  relevant_data
}

# This function takes the names of all of the columns and cleans them up
# it removes the characters ( ) - and uppercases Mean and Std to make them all camelCase
clean_names <- function ( names ) {
  names <- str_replace_all(names, "[()-]","")
  names <- str_replace_all(names, "mean","Mean")
  names <- str_replace_all(names, "std","Std")
  names
}

#Extracts only the measurements on the mean and standard deviation for each measurement. 
extract_relevant_columns <- function (complete_data, features_labels) {
  labels <- features_labels[,2]
  col_with_mean <- grep("mean()", labels)
  col_with_std <- grep("std()", labels)
  relevant_cols <- sort(append(col_with_mean,col_with_std))
  relevant_data <- complete_data[relevant_cols]

  # set Column names for relevant data
  colnames(relevant_data) <- clean_names( labels[relevant_cols] )
  relevant_data
}

output_tidy_data_summary <- function (results) {
  agg_data <- aggregate(results, list(results$activity_numeric, results$subject), function(x) ifelse(is.numeric(x), mean(x),x ))
  agg_data <- agg_data[c(3:84,1,2)]
  write.csv(agg_data, "data_out.txt")
}