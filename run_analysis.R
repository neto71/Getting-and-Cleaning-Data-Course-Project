#Cleaning and getting data script file
# Step 1 Requires this 2 libraries (plyr and reshape2)
library(plyr)
library(reshape2)
# Step 2 load data sets into memory
training_set<-read.table("./UCI HAR Dataset/train/X_train.txt", header=F)
training_labels<-read.table("./UCI HAR Dataset/train/y_train.txt", header=F)
training_subjects<-read.table("./UCI HAR Dataset/train/subject_train.txt", header=F)
test_set<-read.table("./UCI HAR Dataset/test/X_test.txt", header=F)
test_labels<-read.table("./UCI HAR Dataset/test/y_test.txt", header=F)
test_subjects<-read.table("./UCI HAR Dataset/test/subject_test.txt", header=F)
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt", header=F)
features<-read.table("./UCI HAR Dataset/features.txt", header=F)
#step 3 assign names to the activities and subjects   
names(training_labels)<-"activity"
training_activity<-factor(training_labels$"activity",labels=activity_labels[,2])
names(test_labels)<-"activity"
test_activity<-factor(test_labels$"activity",labels=activity_labels[,2])
names(test_activity)<-"activity"
names(training_subjects)<-"subjects"
names(test_subjects)<-"subjects"
rename1 <- function(table, features) {
  
  for (indx in 1:dim(features[1])){names(table)[indx]<-as.character(features$"V2"[indx])}
  return (table)
}
# step 4 rename training set using description from features and add 
# add subjects and labels data to data frame
training_set<-rename1(training_set,features)
training_set<-cbind(training_subjects,training_labels,training_set)
# step 5 rename training set using description from features and add 
# add subjects and labels data to data frame
test_set<-rename1(test_set,features)
test_set<-cbind(test_subjects,test_labels,test_set)
# step 6 merge datasets
complete_data<-rbind(training_set,test_set)
# step 7 generate Activity column as data frame as factor
complete_data$"Activity"<-factor(complete_data$"activity",labels=activity_labels[,2])

# step 8 Select only the variables that have the mean() and std() identifier
mean_and_std<-vector()
for (indx in 1:length(names(complete_data))){
  if (length(grep("mean()",names(complete_data[indx]),fixed=TRUE))>0){
    mean_and_std<-c(mean_and_std,names(complete_data[indx]))
    
  }
  if (length(grep("std()",names(complete_data[indx]),fixed=TRUE))>0){
    mean_and_std<-c(mean_and_std,names(complete_data[indx]))
    
  }
  
  }

complete_data<-subset(complete_data,select=c("subjects","Activity",mean_and_std))
#step 9 melt and suumarize
melted<-melt(complete_data,id=c("subjects","Activity"))
tidy_data<-ddply(melted,c("subjects","Activity","variable"),summarise,mean=mean(value))                      
head(tidy_data,10)
#step 10 write to text file
write.table(tidy_data, sep="       \t",file="tidy_data.txt",row.names=FALSE)