#run_analysis.R 
#Steve Chapman / Getting and Cleaning Data / 5-23-2015

#Used to process fitness accelerometer/gyro data from smartphones to average motion-related
#fitness data.

# Required input files:
#       activity_labels.txt - Lookup table for activity categories (Running, Walking etc.)
#       features.txt - Lookup table for variables (pre-processed) from the fitness device
#       subject_test.txt - numeric vars linking observation to a subject
#       subject_train.txt  
#       X_test.txt - sensor data
#       X_train.txt
#       y_text.txt - variables linking a (numerically coded) activity to each observation
#       y_train.txt  
#
# Output file: 
#       SamsungFitnessMeans.txt
#       A file containing 180 rows of means derived from Samsung smartwatch accelerometer
#       and gyroscope data (30 subjects * 6 different measurement activities), and 79
#       means of average and standard deviation data.

#Read in and stack the sensor variables
X_test <- read.table("X_test.txt")
X_train <- read.table("X_train.txt")
X_merged <- rbind(X_test, X_train)
rm(X_test, X_train)

#Apply labels of sensor data variables(features) 
features <- read.table("features.txt")
colnames(X_merged) <- features[,2]
rm(features)

#Select the features(columns) that represent only means and standard deviations of the data
X_narrowed <- X_merged[grepl("mean|std", names(X_merged))]
rm(X_merged)
#Create column of descriptive activity labels
activity_lookup <- read.table("activity_labels.txt")
y_test <- read.table("y_test.txt")
y_train <- read.table("y_train.txt")
y_merged <- rbind(y_test, y_train)
activity_labels <- data.frame(Activity=character())
for (i in 1:nrow(y_merged)){
        activity_index <- y_merged[i,1]
        activity_labels <- rbind(activity_labels, as.data.frame(activity_lookup[activity_index, 2]))
}
rm(activity_lookup, y_test, y_train, y_merged)

#Read in subject data
subject_test <- read.table("subject_test.txt")
subject_train <- read.table("subject_train.txt")
subjects <- rbind(subject_test, subject_train)
rm(subject_test, subject_train)

#Prepend subject and activity columns to the merged and narrowed data frame
#to create a tidy data set with id variables Subject and Activity, and 79
#measure variables that contain means and standard deviations
X_withRowLabels <- cbind(subjects, activity_labels, X_narrowed)
rm(X_narrowed, subjects, activity_labels)

#Clean up column names
names(X_withRowLabels)[names(X_withRowLabels)=="V1"] <- "Subject"
names(X_withRowLabels)[names(X_withRowLabels)=="activity_lookup[activity_index, 2]"] <- "Activity"
names(X_withRowLabels) <- gsub("BodyBody", "Body", names(X_withRowLabels))

#Create a new data frame that holds the means of each feature (79 of them), that contains either
#an average or standard deviation.
SamsungFitnessMeans <- group_by(X_withRowLabels, Subject, Activity) %>% summarise_each(funs(mean))
rm(X_withRowLabels)


#Save the results to a text file.
write.table(SamsungFitnessMeans, "SamsungFitnessMeans.txt", row.name=FALSE)
rm(SamsungFitnessMeans)