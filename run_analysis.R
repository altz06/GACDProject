#Load in data and perform setup operations to prepare for questions
#Assumes data is downloaded, un zipped and saved in the ~/UCI HAR Dataset folder
setwd("C:/Users/558035/Documents/R/Coursera/Getting and Cleaning Data/Assignments/Course Project/UCI HAR Dataset")

##Reads in variables from the features.txt files from the working directory. 
varLabelsUCI <- read.table("features.txt", sep="", header=FALSE)

#Reads in all test UCI files (data, labels, subject) and applies column names to the data.  
#Note: varLabelsUCI table contains the column names, which are applied to the X/Y Test/Train files;  
#Assumes the order of column names match the order of the data in the X/Y Test/Train Files. 
library(plyr)
testUCI <- read.table("./test/X_test.txt", sep="", header=FALSE,col.names=varLabelsUCI[,2])
testUCILabels <- read.table("./test/y_test.txt", sep="", header=FALSE,col.names="activity")
testUCISubject <- read.table("./test/subject_test.txt", sep="", header=FALSE,col.names="subject")
#Binds all test files into a single file
testUCIMerge <- cbind(testUCISubject, testUCILabels, testUCI)

#Reads in all train UCI files (data, labels, subject) and applies column names to the data.
#Note: varLabelsUCI table contains the column names, which are applied to the X/Y Test/Train files;  
#Assumes the order of column names match the order of the data in the X/Y Test/Train Files.
trainUCI <- read.table("./train/X_train.txt", sep="", header=FALSE,col.names=varLabelsUCI[,2])
trainUCILabels <- read.table("./train/y_train.txt", sep="", header=FALSE,col.names="activity")
trainUCISubject <- read.table("./train/subject_train.txt", sep="", header=FALSE,col.names="subject")
#Bind all train files into a single file
trainUCIMerge <- cbind(trainUCISubject, trainUCILabels, trainUCI)

#Step 1: Merge the Training and Test datasets into one dataset
#Note: My understanding of "merge" was to combine the test and train data sets, since the README file explains the datasets correspond with two different
#groups of individuals, rather than additional information on the same individuals. 
#As a result, I used rbind to combine trainUCIMerge and testUCIMerge into the resulting combinedUCI table
combinedUCI <- rbind(trainUCIMerge,testUCIMerge)

#Step 2 - Extract only the mean and stdev variables (and corresponding data) from the table 
#Determine which variables these are using grepl function
combinedUCIMeanStd <- combinedUCI[,grepl("subject", colnames(combinedUCI),ignore.case=TRUE) | grepl("activity", colnames(combinedUCI),ignore.case=TRUE) | (grepl("mean", colnames(combinedUCI),ignore.case=TRUE)|grepl("std", colnames(combinedUCI),ignore.case=TRUE))]

#Step 3 - Rename the activity names in the data set using descriptive/intuitive names
#Code pulls in in activity names from the provided data file, changes the words to lowercase, and remove underscores
activityLabels <- read.table("activity_labels.txt", sep="", header=FALSE)
activityLabels[,2] <- gsub("_","",tolower(activityLabels[,2]))
combinedUCIMeanStdAct <- merge(combinedUCIMeanStd, activityLabels, by.x="activity", by.y="V1")

#Step 4 - Rename variable names in the data set using descriptive/intuitive names
#Moved the colnames to new variables to ensure the primary file was preserved; 
#named all columns with lowercase, removed all periods, expanded any abbreviations
colnamesUCI <- tolower(colnames(combinedUCIMeanStdAct))
colnamesUCI <- gsub("[.]","",colnamesUCI)
colnamesUCI <- gsub("tbody","timebody",colnamesUCI)
colnamesUCI <- gsub("tgravity","timegravity",colnamesUCI)
colnamesUCI <- gsub("fbody","freqbody",colnamesUCI)
colnamesUCI <- gsub("fgravity","freqgravity",colnamesUCI)
colnamesUCI <- gsub("acc","acceleration",colnamesUCI)
colnamesUCI <- gsub("gyro","gyroscopic",colnamesUCI)
colnamesUCI <- gsub("std","standarddeviation",colnamesUCI)
colnamesUCI <- gsub("mag","magnitude",colnamesUCI)
colnamesUCI <- gsub("v2","activitydescriptors",colnamesUCI)
#This code applies the new column names to the existing combinedUCIMeanStdAct dataset
colnames(combinedUCIMeanStdAct) <- colnamesUCI

#Step 5 - Create a second (new) data set with the average of each variable for each activity and each subject
#Also drop the unnecessary activity column since the descriptors are in place
tidyData <- subset(combinedUCIMeanStdAct,select=-c(1))
#Used aggregate function to get the mean for each activity descriptor and subject number
tidyData <- aggregate(.~activitydescriptors + subject, data=tidyData, mean)

#saved tidy data for use later on
#Adjusted working directory
#Wrote the table to a delimited text file
setwd("C:/Users/558035/Documents/R/Coursera/Getting and Cleaning Data/Assignments/Course Project")
write.table(tidyData,file="tidyData.txt", sep="\t")
