PeerAssessments_GetAndCleanData
===============================

The Script "run_analysis.R" does work like following:

1. read the 3 test data, combine the columns with cbind()
2. read the 3 train data,combine the columns with cbind()
3. combine the rows of test data and train data with rbind(),get the total data
4. find the position of the mean for the measurment with function grep(), with "mean()" matched,assign the result to a vector
5. find the position of the standard devition for the measurment with function grep(), with "std()" matched,assign the result to a vector
6. combine the 2 vector to get the whole position vector
7. Extracts the measurements on the mean and standard devition
8. get the names of mean() and std()
9. rename the dataset
10. read the labels file
11. using the function factor() with the parameter "labels" to label the activity
12. reshape the dataset
13. aggregate the dataset


