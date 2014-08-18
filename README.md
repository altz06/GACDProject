GACDProject
===========

Codebook, Readme, and R Script for the Getting and Cleaning data course project

Summary: This file is built from the Human Activity Recognition Using Smartphones Data Set, located at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#


Purpose: This repo contains the following files:

1) "run_analysis.R" script, which tidys up the "test" and "train" files in the initial UCI data set.  When this script is run, a new tidy data set is created, which contains only the mean and standard deviation of the variables, averaged across activity and subject.  

2) A code book describing the transformations performed on the variables in the final tidy data set, as well as the specific steps used throughout. 

3) A readme file, which explains how the scripts work and their general purpose.


Notes: In order to retrace the steps used in this process, it is assumed that the user 

1) Has R software installed

2) Has downloaded and unzipped the UCI data set (URL above) 

3) Has the plyr package in their library

4) Has updated the working directory in the script (as appropriate) to interact with the data files
