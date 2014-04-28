# combine the test data
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")
data_test <- cbind(x_test,y_test,subject_test)

# combine the train data
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")
data_train <- cbind(x_train,y_train,subject_train)

# get the total data
data_total <- rbind(data_test,data_train)

#load the features file
features <- read.table("features.txt")

# find the Variable with mean()
mean_index <- grep("mean\\(\\)",features$V2)


# find the Variable with std()
std_index <- grep("std\\(\\)",features$V2)

# append two list
mean_std_index <-append(mean_index,std_index)

# Extracts the measurements on the mean and standard devition
data_mean_std <- data_total[,c(mean_std_index,562,563)]

# get the names of mean() and std()
names_mean <-as.character(features[mean_index,2])

names_std <-as.character(features[std_index,2])

names_mean_std <- append(names_mean,names_std)

# names the dataset 
names(data_mean_std) <- c(names_mean_std,"Activity","Subject")

# label the activity name
labels <- read.table("activity_labels.txt")
data_mean_std$Activity <- as.character(factor(data_mean_std$Activity,labels = labels$V2))

# reshape and aggregate the dataset
library(reshape2)
melt_data <-melt(data_mean_std,id=c("Activity","Subject"),measure.vars=c(names_mean_std))
tidy_data <- dcast(melt_data, Activity+Subject ~ variable,mean)

# export the data set
write.table(tidy_data,"tidy_data.txt")






