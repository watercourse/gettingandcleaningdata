# Coursera "Getting and Cleaning Data" Course Project
# Note: code run and tested in Ubuntu 14.04 LTS

#1. Downloads data if it hasn't been dowloaded yet and stores in variable "files" the list of files in the zip
if (!file.exists("harus.zip")) {
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",'harus.zip',method="curl")
}
files<-unzip("harus.zip")
files<-unlist(files,use.names=FALSE)

#2. Reads and merges training and test sets in one dataset
testset<-read.table(files[grep("X_test.txt",files)])
testlabels<-read.table(files[grep("test/y_test.txt",files)])
trainset<-read.table(files[grep("X_train.txt",files)])
trainlabels<-read.table(files[grep("train/y_train.txt",files)])
activityidlabel<-read.table(files[grep("activity_labels.txt",files)],stringsAsFactors=FALSE)
variablenames<-read.table(files[grep("features.txt",files)],stringsAsFactors=FALSE)
subjectstest<-read.table(files[grep("subject_test.txt",files)])
subjectstrain<-read.table(files[grep("subject_train.txt",files)])
testortrain<-c(rep("1",nrow(testset)),rep("2",nrow(trainset)))
df<-data.frame(testortrain,rbind(subjectstest,subjectstrain),rbind(testset,trainset),rbind(testlabels,trainlabels),stringsAsFactors=FALSE)

#3. Labels the data set with descriptive variable names. 
colnames(df)<-c("testortrain","subjects",variablenames$V2,"activity_id")

#4. Extracts only variables with means and standard deviations
#keeping variables testortrain,subjects and activity_id
vars<-sort(grep("-mean\\(\\)|-std\\(\\)",names(df),value=T))
df<-df[c("testortrain","subjects",vars,"activity_id")];

#5. Uses descriptive activity names to name the activities in the data set
names(activityidlabel)=c("activity_id","activity_label")
df<-merge(df,activityidlabel,by.x="activity_id",by.y="activity_id")

#6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
df2<-aggregate(df[vars],by=list(df$activity_label,df$subjects),FUN=mean)
names(df2)<-c("activity_label","subjects",vars)
df2<-df2[,c("subjects","activity_label",vars)]
write.csv(file="tidydataset.txt",df2,row.names=FALSE)

