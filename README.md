# Documentation of the program run_analysis.R
run_analysis.R is an R program made as a Course project in the Coursera course "Getting and Cleaning Data". The main objective is to merge and reshape accelerometer data from the "Human Activity Recognition Using Smartphones" dataset [1].

References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012. [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Program description
### 1 - Downloading the data

The program downloads the data and saves it to a file called harus.zip if it hasn't been downloaded yet. The ZIP file is then uncompressed and the relative paths of the uncompressed files are stored in variable "files".

### 2 - Merging test and train datasets

The program creates a new dataframe with the accelerometer data from the test and train sets. Auxiliary data is also read, namely:

testlabels and trainlabels -> Store the activity class labels for each observation in numeric form (1 to 6)

activityidlabel -> Links the activity class labels (1 to 6) with their activity name (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

variablenames -> There are 561 variables stored in the test and train datasets. A short description of all of these variables is read to variablenames.

subjectstest and subjectstrain -> Numeric identification (1 to 30) of the observed subject in each row of the datasets.

testortrain -> binary variable which will be used in the merged dataset to distinguish between test and train datasets (not used to produce the final tidy dataset).

### 3 - Give all the variables descriptive names

### 4 -  Extracts only variables with means and standard deviations

The program extracts only variables with means and standard deviations. Note that as you can see in the forums not everyone agrees which variables should be in fact included. In my interpretation, only variables in the original codebook ending in -mean() and -std() were considered. Also note at this point that the dataframe also has the variables: testortrain (1 or 2); subjects (1 to 30); activity_id (1 to 6).

### 5 -  Uses descriptive activity names to name the activities in the data set

Up until this point the dataframe has only activity class labels (1 to 6). In this step the data from activityidlabel is merged with the dataframe with the objective of also having a textual description of the activity: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

### 6 -   Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

In each activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), each subject is measured several times. At this point the program calculates the mean of those measurements and writes out the result in file "tidydataset.txt".

## Codebook
Please read the file [CODEBOOK.md](CODEBOOK.md) to see the meaning of all the variables in the tidy dataset.
