Getting-and-Cleaning-Data-Course-Project
========================================

Repository for Cleaning Data Course Project

Script name : run_analysis.R
Will need to have the plyr and reshape2

Relevant information:
R version 3.1.1 (2014-07-10)
Platform: i386-w64-mingw32/i386 (32-bit)
other attached packages:
[1] reshape2_1.4.1 plyr_1.8.1

Note: I'm running from a portable setup


First make sure that you have downloaded the
following file that contains all the relevant
data for the project (this is the raw dat)

Raw data location:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Unzip into your R Working directory:
In my case my workig directory is:
"E:/R-Portable"
After unzip I have now the following directories:
E:/R-Portable/UCI HAR Dataset" 
Here is a list of the subdirectoris and file generated:
list.files(path="./UCI HAR Dataset")
[1] "activity_labels.txt" "features.txt"        "features_info.txt"   "README.txt"         
[5] "test"                "train"              

The script is commented but in general:

step 1.- Load plyr and reshape2 packages
step 2.-Step 2 load data sets into memory

Here we load the following files:
./UCI HAR Dataset/train/X_train.txt
./UCI HAR Dataset/train/y_train.txt
./UCI HAR Dataset/train/subject_train.txt
./UCI HAR Dataset/test/X_test.txt
./UCI HAR Dataset/test/y_test.txt
./UCI HAR Dataset/test/subject_test.txt
./UCI HAR Dataset/activity_labels.txt
./UCI HAR Dataset/features.txt

step 3.- assign names to the activities and subjects

step 4.- rename training set using description from features

and adds subjects and labels data to data frame

step 5.- rename test set using description from features

and adds subjects and labels data to data frame

step 6.- merges training set and test set using rbind 

step 7 .- generate Activity column as data frame as factor

step 8 .- Select only the variables that have the mean() and 
std() identifier

step 9 .-melt and suumarize

step 10 .- write tidy data set to text file named "tidy_data.txt"


