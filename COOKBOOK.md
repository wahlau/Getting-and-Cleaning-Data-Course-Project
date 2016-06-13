This file *COOKBOOK.md* indicate all the variables and summaries calculated, along with units, and any other relevant information.

# Column names/Identifier

* subject - the ID of the subject (total 30 of them)
* activity - the activity labels, converted from digits/ids that represented them 
* \*Mean\* (eg. tBodyAccMeanX or tBodyGyroMeanZ) - the mean values extracted from the original files from UCI. The tBodyAcc means accelerometer data, and MeanX or MeanZ means the axis of the sensor data from the corresponding axis.
* \*Std\* (eg. tBodyAccStdX or tBodyGyroStdZ) - the standard deviation values extracted from the original files from UCI. The tBodyAcc means accelerometer data, and StdX or StdZ means the axis of the sensor data from the corresponding axis.
  * list of these column names (a listing output from colnames(new_data_set):
 [1] "subject"                      "activity"                     "tBodyAccMeanX"                "tBodyAccMeanY"               
 [5] "tBodyAccMeanZ"                "tBodyAccStdX"                 "tBodyAccStdY"                 "tBodyAccStdZ"                
 [9] "tGravityAccMeanX"             "tGravityAccMeanY"             "tGravityAccMeanZ"             "tGravityAccStdX"             
[13] "tGravityAccStdY"              "tGravityAccStdZ"              "tBodyAccJerkMeanX"            "tBodyAccJerkMeanY"           
[17] "tBodyAccJerkMeanZ"            "tBodyAccJerkStdX"             "tBodyAccJerkStdY"             "tBodyAccJerkStdZ"            
[21] "tBodyGyroMeanX"               "tBodyGyroMeanY"               "tBodyGyroMeanZ"               "tBodyGyroStdX"               
[25] "tBodyGyroStdY"                "tBodyGyroStdZ"                "tBodyGyroJerkMeanX"           "tBodyGyroJerkMeanY"          
[29] "tBodyGyroJerkMeanZ"           "tBodyGyroJerkStdX"            "tBodyGyroJerkStdY"            "tBodyGyroJerkStdZ"           
[33] "tBodyAccMagMean"              "tBodyAccMagStd"               "tGravityAccMagMean"           "tGravityAccMagStd"           
[37] "tBodyAccJerkMagMean"          "tBodyAccJerkMagStd"           "tBodyGyroMagMean"             "tBodyGyroMagStd"             
[41] "tBodyGyroJerkMagMean"         "tBodyGyroJerkMagStd"          "fBodyAccMeanX"                "fBodyAccMeanY"               
[45] "fBodyAccMeanZ"                "fBodyAccStdX"                 "fBodyAccStdY"                 "fBodyAccStdZ"                
[49] "fBodyAccMeanFreqX"            "fBodyAccMeanFreqY"            "fBodyAccMeanFreqZ"            "fBodyAccJerkMeanX"           
[53] "fBodyAccJerkMeanY"            "fBodyAccJerkMeanZ"            "fBodyAccJerkStdX"             "fBodyAccJerkStdY"            
[57] "fBodyAccJerkStdZ"             "fBodyAccJerkMeanFreqX"        "fBodyAccJerkMeanFreqY"        "fBodyAccJerkMeanFreqZ"       
[61] "fBodyGyroMeanX"               "fBodyGyroMeanY"               "fBodyGyroMeanZ"               "fBodyGyroStdX"               
[65] "fBodyGyroStdY"                "fBodyGyroStdZ"                "fBodyGyroMeanFreqX"           "fBodyGyroMeanFreqY"          
[69] "fBodyGyroMeanFreqZ"           "fBodyAccMagMean"              "fBodyAccMagStd"               "fBodyAccMagMeanFreq"         
[73] "fBodyBodyAccJerkMagMean"      "fBodyBodyAccJerkMagStd"       "fBodyBodyAccJerkMagMeanFreq"  "fBodyBodyGyroMagMean"        
[77] "fBodyBodyGyroMagStd"          "fBodyBodyGyroMagMeanFreq"     "fBodyBodyGyroJerkMagMean"     "fBodyBodyGyroJerkMagStd"     
[81] "fBodyBodyGyroJerkMagMeanFreq"

# Activity labels
The activity labels and its corresponding values/IDs
* WALKING (value 1): The subject was walking 
* WALKING_UPSTAIRS (value 2): The subject was walking up a staircase 
* WALKING_DOWNSTAIRS (value 3): The subject was walking down a staircase
* SITTING (value 4): The subject was sitting
* STANDING (value 5): The subject was standing
* LAYING (value 6): The subject was laying down
