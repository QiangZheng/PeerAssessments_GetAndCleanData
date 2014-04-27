# This is a CodeBook that describes the variables, the data, and any transformations or work that performed to clean up the data

# The current working directory is " ~/HCI HAR Dataset/ "


	x_test: the variable that store the data with reading the data from the file "X_test.txt"

	y_test: the variable that store the data with reading the data from the file "y_test.txt"

	subject_test: the variable that store the data with reading the data from the file "subject_test.txt"

	data_test: combine the columns of 3 datasets(x_test,y_test,subject_test), assign the result to data_test 

  x_train: the variable that store the data with reading the data from the file "X_train.txt"

	y_train: the variable that store the data with reading the data from the file "y_train.txt"

	subject_train: the variable that store the data with reading the data from the file "subject_train.txt"

	data_train: combine the columns of 3 datasets(x_train,y_train,subject_train), assign the result to data_train
      
  data_total: get the total data with combine the rows of test- and traindata,assign to the variable data_total

  features: get the feature names

	mean_index: find all the measurment with the name contains mean(),get the index (or position) of all features with mean() matched. 

	std_index:find all the measurment with the name contains std(),get the index (or position) of all features with std() matched.

	mean_std_index: combine mean_index and std_index,get the whole index

	data_mean_std: the dataset with mean and standard deviation  for each measurement

	names_mean: the vector with all the names contains mean()

	names_std: the vector with all the names contains std()

	names_mean_std: the vector with all the names contains mean() or std()

	names(data_mean_std): rename the dataset

	labels: the activity label 

	data_mean_std$Activity <- as.character(factor(data_mean_std$Activity,labels = labels$V2))
  (label the Activity, using the function factor() with the labels parameter.)

	melt_data: reshape the dataset

	tidy_data: aggregate the dataset with the average of each variable for each activity and each subject


	
