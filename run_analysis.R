#Preapring names for files and variables
Names1<-"volunteer.id"
Names2<-
  c("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z",  "tBodyAcc-std()-X", "tBodyAcc-std()-Y",
    "tBodyAcc-std()-Z", "tBodyAcc-mad()-X", "tBodyAcc-mad()-Y", "tBodyAcc-mad()-Z", "tBodyAcc-max()-X",
    "tBodyAcc-max()-Y", "tBodyAcc-max()-Z", "tBodyAcc-min()-X", "tBodyAcc-min()-Y", "tBodyAcc-min()-Z",
    "tBodyAcc-sma()", "tBodyAcc-energy()-X","tBodyAcc-energy()-Y","tBodyAcc-energy()-Z", "tBodyAcc-iqr()-X",
    "tBodyAcc-iqr()-Y","tBodyAcc-iqr()-Z","tBodyAcc-entropy()-X", "tBodyAcc-entropy()-Y","tBodyAcc-entropy()-Z",
    "tBodyAcc-arCoeff()-X1", "tBodyAcc-arCoeff()-X2","tBodyAcc-arCoeff()-X3", "tBodyAcc-arCoeff()-X4",
    "tBodyAcc-arCoeff()-Y1","tBodyAcc-arCoeff()-Y2","tBodyAcc-arCoeff()-Y3","tBodyAcc-arCoeff()-Y4","tBodyAcc-arCoeff()-Z1",
    "tBodyAcc-arCoeff()-Z2","tBodyAcc-arCoeff()-Z3","tBodyAcc-arCoeff()-Z4","tBodyAcc-correlation()-XX","tBodyAcc-correlation()-XY",
    "tBodyAcc-correlation()-YZ","tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X",
    "tGravityAcc-std()-Y","tGravityAcc-std()-Z","tGravityAcc-mad()-X","tGravityAcc-mad()-Y","tGravityAcc-mad()-Z",
    "tGravityAcc-max()-X","tGravityAcc-max()-Y","tGravityAcc-max()-Z","tGravityAcc-min()-X","tGravityAcc-min()-Y",
    "tGravityAcc-min()-Z","tGravityAcc-sma()","tGravityAcc-energy()-X", "tGravityAcc-energy()-Y", "tGravityAcc-energy()-Z",
    "tGravityAcc-iqr()-X","tGravityAcc-iqr()-Y","tGravityAcc-iqr()-Z","tGravityAcc-entropy()-X","tGravityAcc-entropy()-Y",
    "tGravityAcc-entropy()-Z","tGravityAcc-arCoeff()-X1", "tGravityAcc-arCoeff()-X2", "tGravityAcc-arCoeff()-X3",
    "tGravityAcc-arCoeff()-X4", "tGravityAcc-arCoeff()-Y1", "tGravityAcc-arCoeff()-Y2", "tGravityAcc-arCoeff()-Y3",
    "tGravityAcc-arCoeff()-Y4", "tGravityAcc-arCoeff()-Z1", "tGravityAcc-arCoeff()-Z2", "tGravityAcc-arCoeff()-Z3",
    "tGravityAcc-arCoeff()-Z4","tGravityAcc-correlation()-XY","tGravityAcc-correlation()-XZ","tGravityAcc-correlation()-YZ",
    "tBodyAccJerk-mean()-X","tBodyAccJerk-mean()-Y","tBodyAccJerk-mean()-Z","tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y",
    "tBodyAccJerk-std()-Z", "tBodyAccJerk-mad()-X", "tBodyAccJerk-mad()-Y", "tBodyAccJerk-mad()-Z", "tBodyAccJerk-max()-X",
    "tBodyAccJerk-max()-Y", "tBodyAccJerk-max()-Z", "tBodyAccJerk-min()-X", "tBodyAccJerk-min()-Y","tBodyAccJerk-min()-Z",
    "tBodyAccJerk-sma()","tBodyAccJerk-energy()-X", "tBodyAccJerk-energy()-Y","tBodyAccJerk-energy()-Z","tBodyAccJerk-iqr()-X",
    "tBodyAccJerk-iqr()-Y", "tBodyAccJerk-iqr()-Z", "tBodyAccJerk-entropy()-X",  "tBodyAccJerk-entropy()-Y",
    "tBodyAccJerk-entropy()-Z", "tBodyAccJerk-arCoeff()-X1","tBodyAccJerk-arCoeff()-X2","tBodyAccJerk-arCoeff()-X3",
    "tBodyAccJerk-arCoeff()-X4","tBodyAccJerk-arCoeff()-Y1","tBodyAccJerk-arCoeff()-Y2","tBodyAccJerk-arCoeff()-Y3",
    "tBodyAccJerk-arCoeff()-Y4","tBodyAccJerk-arCoeff()-Z1","tBodyAccJerk-arCoeff()-Z2","tBodyAccJerk-arCoeff()-Z3",
    "tBodyAccJerk-arCoeff()-Z4","tBodyAccJerk-correlation()-XY","tBodyAccJerk-correlation()-XZ","tBodyAccJerk-correlation()-YZ",
    "tBodyGyro-mean()-X",  "tBodyGyro-mean()-Y","tBodyGyro-mean()-Z",  "tBodyGyro-std()-X",  "tBodyGyro-std()-Y",
    "tBodyGyro-std()-Z","tBodyGyro-mad()-X","tBodyGyro-mad()-Y","tBodyGyro-mad()-Z","tBodyGyro-max()-X",
    "tBodyGyro-max()-Y","tBodyGyro-max()-Z","tBodyGyro-min()-X","tBodyGyro-min()-Y","tBodyGyro-min()-Z",
    "tBodyGyro-sma()","tBodyGyro-energy()-X", "tBodyGyro-energy()-Y", "tBodyGyro-energy()-Z", "tBodyGyro-iqr()-X",
    "tBodyGyro-iqr()-Y","tBodyGyro-iqr()-Z","tBodyGyro-entropy()-X","tBodyGyro-entropy()-Y","tBodyGyro-entropy()-Z",
    "tBodyGyro-arCoeff()-X1","tBodyGyro-arCoeff()-X2","tBodyGyro-arCoeff()-X3", "tBodyGyro-arCoeff()-X4", "tBodyGyro-arCoeff()-Y1",
    "tBodyGyro-arCoeff()-Y2", "tBodyGyro-arCoeff()-Y3", "tBodyGyro-arCoeff()-Y4",  "tBodyGyro-arCoeff()-Z1",
    "tBodyGyro-arCoeff()-Z2", "tBodyGyro-arCoeff()-Z3", "tBodyGyro-arCoeff()-Z4", "tBodyGyro-correlation()-XY",
    "tBodyGyro-correlation()-XZ", "tBodyGyro-correlation()-YZ", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y",
    "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z",
    "tBodyGyroJerk-mad()-X","tBodyGyroJerk-mad()-Y","tBodyGyroJerk-mad()-Z","tBodyGyroJerk-max()-X",
    "tBodyGyroJerk-max()-Y","tBodyGyroJerk-max()-Z","tBodyGyroJerk-min()-X","tBodyGyroJerk-min()-Y",
    "tBodyGyroJerk-min()-Z","tBodyGyroJerk-sma()","tBodyGyroJerk-energy()-X", "tBodyGyroJerk-energy()-Y",
    "tBodyGyroJerk-energy()-Z", "tBodyGyroJerk-iqr()-X","tBodyGyroJerk-iqr()-Y","tBodyGyroJerk-iqr()-Z",
    "tBodyGyroJerk-entropy()-X","tBodyGyroJerk-entropy()-Y","tBodyGyroJerk-entropy()-Z","tBodyGyroJerk-arCoeff()-X1",
    "tBodyGyroJerk-arCoeff()-X2", "tBodyGyroJerk-arCoeff()-X3", "tBodyGyroJerk-arCoeff()-X4", "tBodyGyroJerk-arCoeff()-Y1",
    "tBodyGyroJerk-arCoeff()-Y2", "tBodyGyroJerk-arCoeff()-Y3", "tBodyGyroJerk-arCoeff()-Y4", "tBodyGyroJerk-arCoeff()-Z1",
    "tBodyGyroJerk-arCoeff()-Z2", "tBodyGyroJerk-arCoeff()-Z3", "tBodyGyroJerk-arCoeff()-Z4", "tBodyGyroJerk-correlation()-XY",
    "tBodyGyroJerk-correlation()-XZ", "tBodyGyroJerk-correlation()-YZ", "tBodyAccMag-mean()", "tBodyAccMag-std()",
    "tBodyAccMag-mad()","tBodyAccMag-max()","tBodyAccMag-min()","tBodyAccMag-sma()",
    "tBodyAccMag-energy()", "tBodyAccMag-iqr()","tBodyAccMag-entropy()","tBodyAccMag-arCoeff()1",
    "tBodyAccMag-arCoeff()2", "tBodyAccMag-arCoeff()3", "tBodyAccMag-arCoeff()4", "tGravityAccMag-mean()",
    "tGravityAccMag-std()", "tGravityAccMag-mad()", "tGravityAccMag-max()", "tGravityAccMag-min()",
    "tGravityAccMag-sma()", "tGravityAccMag-energy()","tGravityAccMag-iqr()", "tGravityAccMag-entropy()",
    "tGravityAccMag-arCoeff()1","tGravityAccMag-arCoeff()2","tGravityAccMag-arCoeff()3",
    "tGravityAccMag-arCoeff()4","tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()","tBodyAccJerkMag-mad()",
    "tBodyAccJerkMag-max()","tBodyAccJerkMag-min()","tBodyAccJerkMag-sma()","tBodyAccJerkMag-energy()",
    "tBodyAccJerkMag-iqr()","tBodyAccJerkMag-entropy()","tBodyAccJerkMag-arCoeff()1", "tBodyAccJerkMag-arCoeff()2",
    "tBodyAccJerkMag-arCoeff()3", "tBodyAccJerkMag-arCoeff()4",  "tBodyGyroMag-mean()",  "tBodyGyroMag-std()",
    "tBodyGyroMag-mad()",  "tBodyGyroMag-max()","tBodyGyroMag-min()", "tBodyGyroMag-sma()", "tBodyGyroMag-energy()",
    "tBodyGyroMag-iqr()", "tBodyGyroMag-entropy()", "tBodyGyroMag-arCoeff()1","tBodyGyroMag-arCoeff()2",
    "tBodyGyroMag-arCoeff()3","tBodyGyroMag-arCoeff()4","tBodyGyroJerkMag-mean()","tBodyGyroJerkMag-std()",
    "tBodyGyroJerkMag-mad()", "tBodyGyroJerkMag-max()", "tBodyGyroJerkMag-min()", "tBodyGyroJerkMag-sma()",
    "tBodyGyroJerkMag-energy()","tBodyGyroJerkMag-iqr()", "tBodyGyroJerkMag-entropy()", "tBodyGyroJerkMag-arCoeff()1",
    "tBodyGyroJerkMag-arCoeff()2","tBodyGyroJerkMag-arCoeff()3","tBodyGyroJerkMag-arCoeff()4","fBodyAcc-mean()-X",
    "fBodyAcc-mean()-Y","fBodyAcc-mean()-Z","fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z",
    "fBodyAcc-mad()-X", "fBodyAcc-mad()-Y", "fBodyAcc-mad()-Z", "fBodyAcc-max()-X", "fBodyAcc-max()-Y", "fBodyAcc-max()-Z",
    "fBodyAcc-min()-X", "fBodyAcc-min()-Y", "fBodyAcc-min()-Z", "fBodyAcc-sma()", "fBodyAcc-energy()-X",
    "fBodyAcc-energy()-Y","fBodyAcc-energy()-Z","fBodyAcc-iqr()-X", "fBodyAcc-iqr()-Y", "fBodyAcc-iqr()-Z",
    "fBodyAcc-entropy()-X", "fBodyAcc-entropy()-Y", "fBodyAcc-entropy()-Z", "fBodyAcc-maxInds-X",
    "fBodyAcc-maxInds-Y", "fBodyAcc-maxInds-Z", "fBodyAcc-meanFreq()-X","fBodyAcc-meanFreq()-Y",
    "fBodyAcc-meanFreq()-Z","fBodyAcc-skewness()-X","fBodyAcc-kurtosis()-X","fBodyAcc-skewness()-Y",
    "fBodyAcc-kurtosis()-Y","fBodyAcc-skewness()-Z",  "fBodyAcc-kurtosis()-Z","fBodyAcc-bandsEnergy()-18",
    "fBodyAcc-bandsEnergy()-916", "fBodyAcc-bandsEnergy()-1724","fBodyAcc-bandsEnergy()-2532",
    "fBodyAcc-bandsEnergy()-3340","fBodyAcc-bandsEnergy()-4148","fBodyAcc-bandsEnergy()-4956",
    "fBodyAcc-bandsEnergy()-5764","fBodyAcc-bandsEnergy()-116", "fBodyAcc-bandsEnergy()-1732",
    "fBodyAcc-bandsEnergy()-3348","fBodyAcc-bandsEnergy()-4964","fBodyAcc-bandsEnergy()-124",
    "fBodyAcc-bandsEnergy()-2548","fBodyAcc-bandsEnergy()-18","fBodyAcc-bandsEnergy()-916",
    "fBodyAcc-bandsEnergy()-1724","fBodyAcc-bandsEnergy()-2532","fBodyAcc-bandsEnergy()-3340",
    "fBodyAcc-bandsEnergy()-4148","fBodyAcc-bandsEnergy()-4956","fBodyAcc-bandsEnergy()-5764",
    "fBodyAcc-bandsEnergy()-116", "fBodyAcc-bandsEnergy()-1732","fBodyAcc-bandsEnergy()-3348",
    "fBodyAcc-bandsEnergy()-4964","fBodyAcc-bandsEnergy()-124", "fBodyAcc-bandsEnergy()-2548",
    "fBodyAcc-bandsEnergy()-18","fBodyAcc-bandsEnergy()-916",  "fBodyAcc-bandsEnergy()-1724",
    "fBodyAcc-bandsEnergy()-2532","fBodyAcc-bandsEnergy()-3340","fBodyAcc-bandsEnergy()-4148",
    "fBodyAcc-bandsEnergy()-4956","fBodyAcc-bandsEnergy()-5764","fBodyAcc-bandsEnergy()-116",
    "fBodyAcc-bandsEnergy()-1732","fBodyAcc-bandsEnergy()-3348","fBodyAcc-bandsEnergy()-4964",
    "fBodyAcc-bandsEnergy()-124", "fBodyAcc-bandsEnergy()-2548","fBodyAccJerk-mean()-X",
    "fBodyAccJerk-mean()-Y","fBodyAccJerk-mean()-Z","fBodyAccJerk-std()-X",
    "fBodyAccJerk-std()-Y",  "fBodyAccJerk-std()-Z","fBodyAccJerk-mad()-X",  "fBodyAccJerk-mad()-Y",
    "fBodyAccJerk-mad()-Z", "fBodyAccJerk-max()-X", "fBodyAccJerk-max()-Y", "fBodyAccJerk-max()-Z",
    "fBodyAccJerk-min()-X","fBodyAccJerk-min()-Y","fBodyAccJerk-min()-Z", "fBodyAccJerk-sma()",
    "fBodyAccJerk-energy()-X","fBodyAccJerk-energy()-Y","fBodyAccJerk-energy()-Z","fBodyAccJerk-iqr()-X",
    "fBodyAccJerk-iqr()-Y", "fBodyAccJerk-iqr()-Z", "fBodyAccJerk-entropy()-X", "fBodyAccJerk-entropy()-Y",
    "fBodyAccJerk-entropy()-Z", "fBodyAccJerk-maxInds-X", "fBodyAccJerk-maxInds-Y", "fBodyAccJerk-maxInds-Z",
    "fBodyAccJerk-meanFreq()-X","fBodyAccJerk-meanFreq()-Y","fBodyAccJerk-meanFreq()-Z","fBodyAccJerk-skewness()-X",
    "fBodyAccJerk-kurtosis()-X","fBodyAccJerk-skewness()-Y","fBodyAccJerk-kurtosis()-Y","fBodyAccJerk-skewness()-Z",
    "fBodyAccJerk-kurtosis()-Z","fBodyAccJerk-bandsEnergy()-18","fBodyAccJerk-bandsEnergy()-916",
    "fBodyAccJerk-bandsEnergy()-1724","fBodyAccJerk-bandsEnergy()-2532","fBodyAccJerk-bandsEnergy()-3340",
    "fBodyAccJerk-bandsEnergy()-4148","fBodyAccJerk-bandsEnergy()-4956","fBodyAccJerk-bandsEnergy()-5764",
    "fBodyAccJerk-bandsEnergy()-116",  "fBodyAccJerk-bandsEnergy()-1732", "fBodyAccJerk-bandsEnergy()-3348",
    "fBodyAccJerk-bandsEnergy()-4964","fBodyAccJerk-bandsEnergy()-124", "fBodyAccJerk-bandsEnergy()-2548",
    "fBodyAccJerk-bandsEnergy()-18","fBodyAccJerk-bandsEnergy()-916", "fBodyAccJerk-bandsEnergy()-1724",
    "fBodyAccJerk-bandsEnergy()-2532","fBodyAccJerk-bandsEnergy()-3340","fBodyAccJerk-bandsEnergy()-4148",
    "fBodyAccJerk-bandsEnergy()-4956","fBodyAccJerk-bandsEnergy()-5764","fBodyAccJerk-bandsEnergy()-116",
    "fBodyAccJerk-bandsEnergy()-1732","fBodyAccJerk-bandsEnergy()-3348","fBodyAccJerk-bandsEnergy()-4964",
    "fBodyAccJerk-bandsEnergy()-124", "fBodyAccJerk-bandsEnergy()-2548","fBodyAccJerk-bandsEnergy()-18",
    "fBodyAccJerk-bandsEnergy()-916",  "fBodyAccJerk-bandsEnergy()-1724", "fBodyAccJerk-bandsEnergy()-2532",
    "fBodyAccJerk-bandsEnergy()-3340","fBodyAccJerk-bandsEnergy()-4148","fBodyAccJerk-bandsEnergy()-4956",
    "fBodyAccJerk-bandsEnergy()-5764","fBodyAccJerk-bandsEnergy()-116",  "fBodyAccJerk-bandsEnergy()-1732",
    "fBodyAccJerk-bandsEnergy()-3348","fBodyAccJerk-bandsEnergy()-4964","fBodyAccJerk-bandsEnergy()-124",
    "fBodyAccJerk-bandsEnergy()-2548","fBodyGyro-mean()-X", "fBodyGyro-mean()-Y","fBodyGyro-mean()-Z",
    "fBodyGyro-std()-X","fBodyGyro-std()-Y","fBodyGyro-std()-Z","fBodyGyro-mad()-X","fBodyGyro-mad()-Y",
    "fBodyGyro-mad()-Z","fBodyGyro-max()-X","fBodyGyro-max()-Y","fBodyGyro-max()-Z","fBodyGyro-min()-X",
    "fBodyGyro-min()-Y","fBodyGyro-min()-Z","fBodyGyro-sma()","fBodyGyro-energy()-X","fBodyGyro-energy()-Y",
    "fBodyGyro-energy()-Z","fBodyGyro-iqr()-X","fBodyGyro-iqr()-Y","fBodyGyro-iqr()-Z","fBodyGyro-entropy()-X",
    "fBodyGyro-entropy()-Y","fBodyGyro-entropy()-Z","fBodyGyro-maxInds-X","fBodyGyro-maxInds-Y",
    "fBodyGyro-maxInds-Z","fBodyGyro-meanFreq()-X", "fBodyGyro-meanFreq()-Y", "fBodyGyro-meanFreq()-Z",
    "fBodyGyro-skewness()-X", "fBodyGyro-kurtosis()-X","fBodyGyro-skewness()-Y","fBodyGyro-kurtosis()-Y",
    "fBodyGyro-skewness()-Z", "fBodyGyro-kurtosis()-Z", "fBodyGyro-bandsEnergy()-18", "fBodyGyro-bandsEnergy()-916",
    "fBodyGyro-bandsEnergy()-1724", "fBodyGyro-bandsEnergy()-2532", "fBodyGyro-bandsEnergy()-3340",
    "fBodyGyro-bandsEnergy()-4148", "fBodyGyro-bandsEnergy()-4956", "fBodyGyro-bandsEnergy()-5764",
    "fBodyGyro-bandsEnergy()-116","fBodyGyro-bandsEnergy()-1732", "fBodyGyro-bandsEnergy()-3348",
    "fBodyGyro-bandsEnergy()-4964", "fBodyGyro-bandsEnergy()-124","fBodyGyro-bandsEnergy()-2548",
    "fBodyGyro-bandsEnergy()-18", "fBodyGyro-bandsEnergy()-916","fBodyGyro-bandsEnergy()-1724",
    "fBodyGyro-bandsEnergy()-2532","fBodyGyro-bandsEnergy()-3340","fBodyGyro-bandsEnergy()-4148",
    "fBodyGyro-bandsEnergy()-4956", "fBodyGyro-bandsEnergy()-5764","fBodyGyro-bandsEnergy()-116",
    "fBodyGyro-bandsEnergy()-1732" , "fBodyGyro-bandsEnergy()-3348", "fBodyGyro-bandsEnergy()-4964",
    "fBodyGyro-bandsEnergy()-124", "fBodyGyro-bandsEnergy()-2548","fBodyGyro-bandsEnergy()-18",
    "fBodyGyro-bandsEnergy()-916","fBodyGyro-bandsEnergy()-1724", "fBodyGyro-bandsEnergy()-2532",
    "fBodyGyro-bandsEnergy()-3340", "fBodyGyro-bandsEnergy()-4148", "fBodyGyro-bandsEnergy()-4956",
    "fBodyGyro-bandsEnergy()-5764",  "fBodyGyro-bandsEnergy()-116", "fBodyGyro-bandsEnergy()-1732",
    "fBodyGyro-bandsEnergy()-3348", "fBodyGyro-bandsEnergy()-4964", "fBodyGyro-bandsEnergy()-124",
    "fBodyGyro-bandsEnergy()-2548", "fBodyAccMag-mean()",  "fBodyAccMag-std()", "fBodyAccMag-mad()",
    "fBodyAccMag-max()","fBodyAccMag-min()","fBodyAccMag-sma()","fBodyAccMag-energy()","fBodyAccMag-iqr()",
    "fBodyAccMag-entropy()","fBodyAccMag-maxInds","fBodyAccMag-meanFreq()", "fBodyAccMag-skewness()",
    "fBodyAccMag-kurtosis()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()",
    "fBodyBodyAccJerkMag-mad()","fBodyBodyAccJerkMag-max()","fBodyBodyAccJerkMag-min()","fBodyBodyAccJerkMag-sma()",
    "fBodyBodyAccJerkMag-energy()", "fBodyBodyAccJerkMag-iqr()","fBodyBodyAccJerkMag-entropy()",
    "fBodyBodyAccJerkMag-maxInds","fBodyBodyAccJerkMag-meanFreq()", "fBodyBodyAccJerkMag-skewness()",
    "fBodyBodyAccJerkMag-kurtosis()", "fBodyBodyGyroMag-mean()","fBodyBodyGyroMag-std()",
    "fBodyBodyGyroMag-mad()", "fBodyBodyGyroMag-max()", "fBodyBodyGyroMag-min()", "fBodyBodyGyroMag-sma()",
    "fBodyBodyGyroMag-energy()","fBodyBodyGyroMag-iqr()","fBodyBodyGyroMag-entropy()",
    "fBodyBodyGyroMag-maxInds","fBodyBodyGyroMag-meanFreq()", "fBodyBodyGyroMag-skewness()",
    "fBodyBodyGyroMag-kurtosis()","fBodyBodyGyroJerkMag-mean()","fBodyBodyGyroJerkMag-std()",
    "fBodyBodyGyroJerkMag-mad()", "fBodyBodyGyroJerkMag-max()", "fBodyBodyGyroJerkMag-min()",
    "fBodyBodyGyroJerkMag-sma()", "fBodyBodyGyroJerkMag-energy()","fBodyBodyGyroJerkMag-iqr()",
    "fBodyBodyGyroJerkMag-entropy()", "fBodyBodyGyroJerkMag-maxInds", "fBodyBodyGyroJerkMag-meanFreq()",
    "fBodyBodyGyroJerkMag-skewness()","fBodyBodyGyroJerkMag-kurtosis()","angle(tBodyAccMeangravity)",
    "angle(tBodyAccJerkMean)gravityMean)","angle(tBodyGyroMeangravityMean)","angle(tBodyGyroJerkMeangravityMean)",
    "angle(XgravityMean)","angle(YgravityMean)","angle(ZgravityMean)")
    
Names3<-"activity.id"

#Selecting variables with mean and std
columns<-grepl("mean\\(|std\\(",Names2)


#Reading training set and creating trainig data

File1<-"./train/subject_train.txt"
File2<-"./train/X_train.txt"
File3<-"./train/Y_train.txt"



train1<-read.table(File1)
names(train1)<-Names1

train2<-read.table(File2)
names(train2)<-Names2
train2<-train2[,columns]

train3<-read.table(File3)
names(train3)<-Names3

train<-cbind(train1, train3, train2)

rm(train1)
rm(train2)
rm(train3)

#Reading testing set and creating trainig data

File1<-"./test/subject_test.txt"
File2<-"./test/X_test.txt"
File3<-"./test/Y_test.txt"


test1<-read.table(File1)
names(test1)<-Names1

test2<-read.table(File2)
names(test2)<-Names2
test2<-test2[,columns]

test3<-read.table(File3)
names(test3)<-Names3

test<-cbind(test1, test3, test2)

rm(test1)
rm(test2)
rm(test3)


#Merging the two files
dataSamsung<-rbind(train, test)

#Assigning readable labels to activities
dataSamsung$activity.label<-factor(dataSamsung$activity.id,labels=c("WALKING",
                          "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                          "SITTING","STANDING","LAYING"))

#Assigning descriptive names to variables
Names2<-names(dataSamsung)
Names2<-sub("tBodyAcc","Body.component.acceleration.", Names2)
Names2<-sub("tGravityAcc","Gravity.component.acceleration.", Names2)
Names2<-sub("Jerk","Jerk.Signals.", Names2)
Names2<-sub("Mag","Magnitude.", Names2)
Names2<-sub("tBodyGyro","Angular.velocity.", Names2)
Names2<-sub(".-",".", Names2)
Names2<-sub(")-",").Direction.", Names2)
Names2<-sub("fBodyAcc","FFT.Body.component.acceleration.", Names2)
Names2<-sub("fBodyGyro","FFT.Angular.velocity.", Names2)
Names2<-sub("fBodyBodyAcc","FFT.Body.component.acceleration.", Names2)
Names2<-sub("fBodyBodyGyro","FFT.Angular.velocity.", Names2)
names(dataSamsung)<-Names2

#Creating data frame with the average of each variable for each activity and each subject
library(plyr)
library(reshape2)
meltDataSamsung<-melt(dataSamsung, id.vars=c("volunteer.id", "activity.id", "activity.label"), 
                      variable.name="signal", value.name="value")
avgMeltDataSamsung<-ddply(meltDataSamsung, c("volunteer.id", "activity.id", "activity.label", "signal"),
                           summarize, avg=mean(value, na.rm=TRUE))
avgDataSamsung<-dcast(avgMeltDataSamsung, volunteer.id + activity.id + activity.label ~ signal)

#writing tidy plain file
write.table(avgDataSamsung, file="avgDataSamsung.txt", row.name=FALSE)
