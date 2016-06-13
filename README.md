# Getting-and-Cleaning-Data-Course-Project

Full instructions are found here: https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project

## Summary of the instructions:
You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Solution (or explanation to the solution)
The file *run_analysis.R* in this repository will automatically download the dataset from the UCI repo, and save it in the subfolder *data*. It will automatically extract the files before starting to analysis them.

To obtain the desired output *tidy.txt*, first set your working directory to the location of the file *run_analysis.R*. I used *source("run_analysis.R")* to run/test it.

When it is done, it wil produce the output in the file *tidy.txt*. This file is also uploaded to this repository. 

Brief description of the workflow of the *run_analysis.R* is as follow:

1. Data download and preparation
2. Merges the training and the test sets to create one data set and extracts only the measurements on the mean and standard deviation for each measurement
  1. First read the labels and features
  2. Extract the mean and std. dev. feature names
  3. Read from training and test data, selecting only the required feature names
  4. Merge them as a new data (*new_data_set*)
3. Uses descriptive activity names to name the activities in the data set and appropriately labels the data set with descriptive variable names
  1. set the desired column names accordingly
  2. convert the acitivy ids/numbers to meaningful descriptive names (this is where reshape2 library is used).
4. save the output as *tidy.txt*
