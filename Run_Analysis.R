
#You will be required to submit:  
#1) a tidy data set as described below, 

#2) a link to a Github repository with your script for performing the analysis, and  

#3) a code book that describes the variables, the data, and any transformations or work 
#that you performed to clean up the data called CodeBook.md. 

#4) You should also include a README.md in the repo with your scripts.  

#This repo explains how all of the scripts work and how they are connected.  


setwd("C:/Users/schung/Documents/1_Performance and Development/datasciencecoursera/data cleaning") 


#download data 
library(httr)  
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
file <- "UCI HAR Dataset.zip" 
download.file(url, file, method="curl") 


#unzip and create folder
datafolder <- "UCI HAR Dataset" 
resultsfolder <- "results" 
if(!file.exists(datafolder)){ 
  unzip(file, list = FALSE, overwrite = TRUE) 
}  
if(!file.exists(resultsfolder)){ 
  dir.create(resultsfolder) 
}  

readit <- function (filename,cols = NULL){ 
  f <- paste(datafolder,filename,sep="/") 
  data <- data.frame() 
  if(is.null(cols)){ 
    data <- read.table(f,sep="",stringsAsFactors=F) 
  } else { 
    data <- read.table(f,sep="",stringsAsFactors=F, col.names= cols) 
  } 
  data 
} 

# read in feature file to get variable names in main data I need
# The complete list of variables of each feature vector is available in 'features.txt'
features <- readit("features.txt",c("num","Var")) 
head(features)

#read in main data
#4. Appropriately labels the data set with descriptive variable names.  

getdata <- function(type){ 
  subject <- readit(paste(type,"/","subject_",type,".txt",sep=""),"id") 
  x <- readit(paste(type,"/","X_",type,".txt",sep=""),features$Var) 
  y <- readit(paste(type,"/","y_",type,".txt",sep=""),"activity") 
  return (cbind(subject,y,x)) 
} 

test <- getdata("test") 
train <- getdata("train") 

#1. Merges the training and the test sets to create one data set. 
library(plyr) 
dat <- rbind(test,train) 
dat <- arrange(dat, id) 

head(dat[,1:5])
#2. Extracts only the measurements on the mean and standard deviation for each measurement.  
mean_and_std <- dat[,c(1,2,grep("std...", colnames(dat)), grep("mean...", colnames(dat)))] 
#file <- paste(resultsfolder, "/", "mean_and_std",".csv" ,sep="") 
#write.csv(mean_and_std,file) 


#3.Uses descriptive activity names to name the activities in the data set
# merge to get activity name

act_label <- readit("activity_labels.txt",c("act_num","activity"))
mean_and_std$activity <- factor(mean_and_std$activity, levels=act_label$act_num, labels=act_label$activity) 

#5.From the data set in step 4, creates a second, 
# independent tidy data set with the average of each variable 
# for each activity and each subject.

tidy <- ddply(mean_and_std, .(id, activity), .fun=function(x){ colMeans(x[,-c(1:2)]) })
# QC : tidy[1:50,1:5]

colnames(tidy)[-c(1:2)] <- paste("mean_",colnames(tidy)[-c(1:2)], sep="") 

  file <- paste(resultsfolder, "/", "tidy",".csv",sep="") 
  write.csv(tidy,file,row.names = FALSE) 
  
  # Please upload your data set as a txt file created with write.table() using row.name=FALSE 
  # (do not cut and paste a dataset directly into the text box, as this may cause errors saving your submission).
  file <- paste(resultsfolder, "/", "tidy",".txt" ,sep="") 
  write.table(tidy,file,row.names=FALSE)

