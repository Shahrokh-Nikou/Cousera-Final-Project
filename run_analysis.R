##################### Below we load activity labels file and select the second column where the labels are #############################
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]


# Below we load the data (features) and again selecting the second column where the labels are
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

# Below, we select (from the features) only the measurements in relation to the mean and standard deviation ##############
# and save the results on a new variable called exact_measures ###########
exact_measures <- grepl("mean|std", features)

# Next, in the following we load the data on test data (X_text.txt & y_test.txt) as well as loading data for subject_test.txt ########
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

########### Here we assings the same lable (feature) to our X_test file #########################
names(X_test) = features

# Extracting only the measurements on the mean and standard deviation for each measurement
X_test = X_test[,exact_measures]

###################### Below we load activity data for y_test data and provide labels for two columns (Activity ID (numeric values 
############ for each activities and Activity labels (e.g., Sitting & Sleeping) ############################
y_test[,2] = activity_labels[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Label")
names(subject_test) = "subject"

# Now, after loading of all the data (i.e., X_test & y_test) we attempt to bind data in a new variable called
############### test_data ##############
test_data <- cbind(as.data.table(subject_test), y_test, X_test)

# Now we process the train data as we did with test data, loading and processing X_train & y_train data & subject_train
#assigning the featuers to the X-trian data ####################
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(X_train) = features

# Extracting only the measurements on the mean and standard deviation for each measurement
X_train = X_train[,exact_measures]

# Next, in the following, we label y_train and subject_train ########
y_train[,2] = activity_labels[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"

# Now, after loading of all the data (i.e., X_train & y_train) we attempt to bind data in a new variable called
############### train_data ##############
train_data <- cbind(as.data.table(subject_train), y_train, X_train)

########################### Finally we merge both the test data and the train data
data = rbind(test_data, train_data)
############ We then change the "all" column names to descriptive names
dataNames <- colnames(data)

dataNames <- gsub("^f", "FrequencyDomain", dataNames)
dataNames <- gsub("^t", "TimeDomain", dataNames)
dataNames <- gsub("Acc", "Accelerometer", dataNames)
dataNames <- gsub("Gyro", "Gyroscope", dataNames)
dataNames <- gsub("Mag", "Magnitude", dataNames)
dataNames <- gsub("Freq", "Frequency", dataNames)
dataNames <- gsub("mean", "Mean", dataNames)
dataNames <- gsub("std", "Standard Deviation", dataNames)
dataNames <- gsub("BodyBody", "Body", dataNames)

colnames(data) <- dataNames

########### Finally we generate a tidy dataset with the average of each variable for each activity and each subject
dataGroup <- group_by(data, subject, Activity_Label)
dataMean <- summarise_all(dataGroup, mean)
dataMean <- dataMean[, -c(3)]
write.table(dataMean, "tidy_data.txt", row.names = FALSE, quote = FALSE)
