#Code Book
This code book describes the variables used in the final tidy Dataset. Refer to the README markdown for more details on the purpose of this script and repo

========================================================
##Variables
###General Steps:

I removed all periods, underscores, and parentheses from the original variables, and converted all variables to lower case text. All abbreviated words were expanded to be understandable and intuitive. After running the R script, the final tidy data table shows the average of an activity for a subject. Below is a summary of the data set (features.txt), the original original variable name, the equivalent tidy data variable name, and additional descriptions of transformations not noted above. Two exceptions to the tidy data variable naming format were the subject and activity descriptor variables, detailed below.

activity_labels.txt      none      activitydescriptors      This variable was merged from the activity_labels set into the combined data set. I used the y_train and y_test variables (integers) to give the name of the activity instead of the number. The y_train/text variables were dropped form the tidy dataset as the activity_labels took the place.

subject_train.txt and subject_test.txt      none      subject      This variable was merged into the individual test and train data sets and then named subject. There were no additional transformations performed.

features.txt      tBodyAcc-mean()-X      timebodyaccelerationmeanx
features.txt      tBodyAcc-mean()-Y      timebodyaccelerationmeany
features.txt      tBodyAcc-mean()-Z      timebodyaccelerationmeanz
features.txt      tBodyAcc-std()-X      timebodyaccelerationstandarddeviationx
features.txt      tBodyAcc-std()-Y      timebodyaccelerationstandarddeviationy
features.txt      tBodyAcc-std()-Z      timebodyaccelerationstandarddeviationz
features.txt      tGravityAcc-mean()-X      timegravityaccelerationmeanx
features.txt      tGravityAcc-mean()-Y      timegravityaccelerationmeany
features.txt      tGravityAcc-mean()-Z      timegravityaccelerationmeanz
features.txt      tGravityAcc-std()-X      timegravityaccelerationstandarddeviationx
features.txt      tGravityAcc-std()-Y      timegravityaccelerationstandarddeviationy
features.txt      tGravityAcc-std()-Z      timegravityaccelerationstandarddeviationz
features.txt      tBodyAccJerk-mean()-X      timebodyaccelerationjerkmeanx
features.txt      tBodyAccJerk-mean()-Y      timebodyaccelerationjerkmeany
features.txt      tBodyAccJerk-mean()-Z      timebodyaccelerationjerkmeanz
features.txt      tBodyAccJerk-std()-X      timebodyaccelerationjerkstandarddeviationx
features.txt      tBodyAccJerk-std()-Y      timebodyaccelerationjerkstandarddeviationy
features.txt      tBodyAccJerk-std()-Z      timebodyaccelerationjerkstandarddeviationz
features.txt      tBodyGyro-mean()-X      timebodygyroscopicmeanx
features.txt      tBodyGyro-mean()-Y      timebodygyroscopicmeany
features.txt      tBodyGyro-mean()-Z      timebodygyroscopicmeanz
features.txt      tBodyGyro-std()-X      timebodygyroscopicstandarddeviationx
features.txt      tBodyGyro-std()-Y      timebodygyroscopicstandarddeviationy
features.txt      tBodyGyro-std()-Z      timebodygyroscopicstandarddeviationz
features.txt      tBodyGyroJerk-mean()-X      timebodygyroscopicjerkmeanx
features.txt      tBodyGyroJerk-mean()-Y      timebodygyroscopicjerkmeany
features.txt      tBodyGyroJerk-mean()-Z      timebodygyroscopicjerkmeanz
features.txt      tBodyGyroJerk-std()-X      timebodygyroscopicjerkstandarddeviationx
features.txt      tBodyGyroJerk-std()-Y      timebodygyroscopicjerkstandarddeviationy
features.txt      tBodyGyroJerk-std()-Z      timebodygyroscopicjerkstandarddeviationz
features.txt      tBodyAccMag-mean()      timebodyaccelerationmagnitudemean
features.txt      tBodyAccMag-std()      timebodyaccelerationmagnitudestandarddeviation
features.txt      tGravityAccMag-mean()      timegravityaccelerationmagnitudemean
features.txt      tGravityAccMag-std()      timegravityaccelerationmagnitudestandarddeviation
features.txt      tBodyAccJerkMag-mean()      timebodyaccelerationjerkmagnitudemean
features.txt      tBodyAccJerkMag-std()      timebodyaccelerationjerkmagnitudestandarddeviation
features.txt      tBodyGyroMag-mean()      timebodygyroscopicmagnitudemean
features.txt      tBodyGyroMag-std()      timebodygyroscopicmagnitudestandarddeviation
features.txt      tBodyGyroJerkMag-mean()      timebodygyroscopicjerkmagnitudemean
features.txt      tBodyGyroJerkMag-std()      timebodygyroscopicjerkmagnitudestandarddeviation
features.txt      fBodyAcc-mean()-X      freqbodyaccelerationmeanx
features.txt      fBodyAcc-mean()-Y      freqbodyaccelerationmeany
features.txt      fBodyAcc-mean()-Z      freqbodyaccelerationmeanz
features.txt      fBodyAcc-std()-X      freqbodyaccelerationstandarddeviationx
features.txt      fBodyAcc-std()-Y      freqbodyaccelerationstandarddeviationy
features.txt      fBodyAcc-std()-Z      freqbodyaccelerationstandarddeviationz
features.txt      fBodyAcc-meanFreq()-X      freqbodyaccelerationmeanfreqx
features.txt      fBodyAcc-meanFreq()-Y      freqbodyaccelerationmeanfreqy
features.txt      fBodyAcc-meanFreq()-Z      freqbodyaccelerationmeanfreqz
features.txt      fBodyAccJerk-mean()-X      freqbodyaccelerationjerkmeanx
features.txt      fBodyAccJerk-mean()-Y      freqbodyaccelerationjerkmeany
features.txt      fBodyAccJerk-mean()-Z      freqbodyaccelerationjerkmeanz
features.txt      fBodyAccJerk-std()-X      freqbodyaccelerationjerkstandarddeviationx
features.txt      fBodyAccJerk-std()-Y      freqbodyaccelerationjerkstandarddeviationy
features.txt      fBodyAccJerk-std()-Z      freqbodyaccelerationjerkstandarddeviationz
features.txt      fBodyAccJerk-meanFreq()-X      freqbodyaccelerationjerkmeanfreqx
features.txt      fBodyAccJerk-meanFreq()-Y      freqbodyaccelerationjerkmeanfreqy
features.txt      fBodyAccJerk-meanFreq()-Z      freqbodyaccelerationjerkmeanfreqz
features.txt      fBodyGyro-mean()-X      freqbodygyroscopicmeanx
features.txt      fBodyGyro-mean()-Y      freqbodygyroscopicmeany
features.txt      fBodyGyro-mean()-Z      freqbodygyroscopicmeanz
features.txt      fBodyGyro-std()-X      freqbodygyroscopicstandarddeviationx
features.txt      fBodyGyro-std()-Y      freqbodygyroscopicstandarddeviationy
features.txt      fBodyGyro-std()-Z      freqbodygyroscopicstandarddeviationz
features.txt      fBodyGyro-meanFreq()-X      freqbodygyroscopicmeanfreqx
features.txt      fBodyGyro-meanFreq()-Y      freqbodygyroscopicmeanfreqy
features.txt      fBodyGyro-meanFreq()-Z      freqbodygyroscopicmeanfreqz
features.txt      fBodyAccMag-mean()      freqbodyaccelerationmagnitudemean
features.txt      fBodyAccMag-std()      freqbodyaccelerationmagnitudestandarddeviation
features.txt      fBodyAccMag-meanFreq()      freqbodyaccelerationmagnitudemeanfreq
features.txt      fBodyBodyAccJerkMag-mean()      freqbodybodyaccelerationjerkmagnitudemean
features.txt      fBodyBodyAccJerkMag-std()      freqbodybodyaccelerationjerkmagnitudestandarddeviation
features.txt      fBodyBodyAccJerkMag-meanFreq()      freqbodybodyaccelerationjerkmagnitudemeanfreq
features.txt      fBodyBodyGyroMag-mean()      freqbodybodygyroscopicmagnitudemean
features.txt      fBodyBodyGyroMag-std()      freqbodybodygyroscopicmagnitudestandarddeviation
features.txt      fBodyBodyGyroMag-meanFreq()      freqbodybodygyroscopicmagnitudemeanfreq
features.txt      fBodyBodyGyroJerkMag-mean()      freqbodybodygyroscopicjerkmagnitudemean
features.txt      fBodyBodyGyroJerkMag-std()      freqbodybodygyroscopicjerkmagnitudestandarddeviation
features.txt      fBodyBodyGyroJerkMag-meanFreq()      freqbodybodygyroscopicjerkmagnitudemeanfreq
features.txt      angle(tBodyAccMean,gravity)      angletimebodyaccelerationmeangravity
features.txt      angle(tBodyAccJerkMean),gravityMean)      angletimebodyaccelerationjerkmeangravitymean
features.txt      angle(tBodyGyroMean,gravityMean)      angletimebodygyroscopicmeangravitymean
features.txt      angle(tBodyGyroJerkMean,gravityMean)      angletimebodygyroscopicjerkmeangravitymean
features.txt      angle(X,gravityMean)      anglexgravitymean
features.txt      angle(Y,gravityMean)      angleygravitymean
features.txt      angle(Z,gravityMean)      anglezgravitymean

========================================================

###Assumptions 
I assumed data columns within the test/train data files corresponded to the logical order of column names within the features.txt 

========================================================

###Data Transformation Steps
Notes: The steps I used to tidy the data from the original files are detailed below, along with any assumptions I made.
The Plyr package was required during the process. 

========================================================


Steps:

(1) Preliminary Actions - Load in data and perform setup operations to prepare for questions
    (1.1) Read in variables from the features.txt file 
    (1.2) Read in the test and train data files; add column names using data from (1.1)
    (1.3) Merge test and train data files to make one overall test data frame and one overall train data frame

(2) Step 1 - Merge Training and Test datasets into one dataset
    (2.1) My understanding of "merge" was to combine the test and train data sets, since the README file explains the datasets correspond with two different groups of individuals, rather than additional information on the same individuals. As a result, I used rbind to combine trainUCIMerge and testUCIMerge into the resulting combinedUCI table

(3) Step 2 - Extract only the mean and stdev variables (and corresponding data) from the table
    (3.1) Used the grepl function to find the variables with 'mean' or 'stdev' in the nomenclature 

(4) Step 3 - Renamed the activity names in the data set using descriptive/intuitive names
    (4.1) Read in activity names (labels) from activity_labels.txt
    (4.2) Changed the activity labels to lowercase text, and removed underscores
    (4.3) Added activity labels to dataset based on the matching index

(5) Step 4 - Renamed variable names in the data set using descriptive/intuitive names
    (5.1) Moved the colnames to new variables to ensure the primary file was preserved
    (5.2) Named all columns with lowercase, removed all periods, expanded any abbreviations
    (5.3) Afterwards, I applied these tidy colnames back to the file they came from

(6) Step 5 - Create a second (new) data set with the average of each variable for each activity and each subject
    (6.1) Dropped the unnecessary activity column since the descriptors are in place
    (6.2) Used aggregate function to get the mean for each activity descriptor and subject number

(7) Post-Questions - Save tidy data for use later on
    (7.1) Adjusted the working directory
    (7.2) Wrote the table to a delimited text file
