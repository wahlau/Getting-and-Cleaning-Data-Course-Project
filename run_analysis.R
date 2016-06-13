library(reshape2)vuew

# Data download and preparation
if(!file.exists("./data")){dir.create("./data")}

if(!file.exists("./data/dataset.zip")){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl,destfile="./data/dataset.zip")

  # Unzip dataSet to /data directory
  unzip(zipfile="./data/dataset.zip",exdir="./data")
}


# Step 1 - Merges the training and the test sets to create one data set
# Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement

# first, read from features and activity labels
features <- read.table('./data/UCI HAR Dataset/features.txt')
features[,2] <- as.character(features[,2])
activity_labels = read.table('./data/UCI HAR Dataset/activity_labels.txt')
activity_labels[,2] <- as.character(activity_labels[,2])

# extract only the required mean and std. dev. data
required_features <- grep(".*mean.*|.*std.*", features[,2])
required_features.names <- features[required_features,2]
required_features.names = gsub('-mean', 'Mean', required_features.names)
required_features.names = gsub('-std', 'Std', required_features.names)
required_features.names <- gsub('[-()]', '', required_features.names)

# Read from trainings tables
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")[required_features]
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
training_data <- cbind(subject_train, y_train, X_train)

# now, read from testing tables
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")[required_features]
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
test_data <- cbind(subject_test, y_test, X_test)

# next, merge the data
new_data_set <- rbind(training_data, test_data)

# Step 3 - Uses descriptive activity names to name the activities in the data set
# Step 4 - Appropriately labels the data set with descriptive variable names.
colnames(new_data_set) <- c("subject", "activity", required_features.names)

# use factor approach to convert the activity numbers to decsriptive names
new_data_set$activity <- factor(new_data_set$activity, levels = activity_labels[,1], labels = activity_labels[,2])
new_data_set$subject <- as.factor(new_data_set$subject)

new_data_set.melted <- melt(new_data_set, id = c("subject", "activity"))
new_data_set.mean <- dcast(new_data_set.melted, subject + activity ~ variable, mean)

# Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
write.table(new_data_set.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
