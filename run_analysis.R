library(data.table)
library(dplyr)

# STEP 0: Read all data

        # Read the test data
        x_test <- read.table("./UCI_HAR_Dataset/test/X_test.txt", header = FALSE)
        y_test <- read.table("./UCI_HAR_Dataset/test/y_test.txt", header = FALSE)
        subject_test <- read.table("./UCI_HAR_Dataset/test/subject_test.txt", header = FALSE)

        # Read the train data
        x_train <- read.table("./UCI_HAR_Dataset/train/X_train.txt", header = FALSE)
        y_train <- read.table("./UCI_HAR_Dataset/train/y_train.txt", header = FALSE)
        subject_train <- read.table("./UCI_HAR_Dataset/train/subject_train.txt", header = FALSE)

        # Read Features and Activity Labels
        features <- read.table("./UCI_HAR_Dataset/features.txt")
        activity_labels <- read.table("./UCI_HAR_Dataset/activity_labels.txt")


# STEP 1: Merge the training and test datasets to create one dataset
        
        # Combine all data
        subject_data <- rbind(subject_train, subject_test)
        x_data <- rbind(x_train, x_test)
        y_data <- rbind(y_train, y_test)
        all_data <- cbind(subject_data, y_data, x_data)

        # Add Activity and Subject column names
        features <- add_row(features, V2 = "Activity", .before = 1)
        features <- add_row(features, V2 = "Subject", .before = 1)
        features_vect <- as.vector(features[["V2"]], mode = "character")
        names(all_data) <- features_vect

        
#STEP 2: Extract measurements on the mean and standard deviation
        
        mean_std_cols <- grep("Subject|Activity|(mean|std)\\(\\)", features_vect)
        mean_std_data <- all_data[mean_std_cols]

        
#STEP 3: Use descriptive activity names to name the activities in the data set
        mean_std_data[, "Activity"] <- activity_labels[mean_std_data[, "Activity"], 2]

        
#STEP 4: Label the data set with descriptive variable names
        names(mean_std_data) <- gsub("^t", "Time", names(mean_std_data))
        names(mean_std_data) <- gsub("^f", "Frequency", names(mean_std_data))
        names(mean_std_data) <- gsub("Acc", "Acceleration", names(mean_std_data))
        names(mean_std_data) <- gsub("Gyro", "AngularVelocity", names(mean_std_data))
        names(mean_std_data) <- gsub("Mag", "Magnitude", names(mean_std_data))
        names(mean_std_data) <- gsub("-mean\\(\\)", "Mean", names(mean_std_data))
        names(mean_std_data) <- gsub("-std\\(\\)", "StandardDeviation", names(mean_std_data))
        names(mean_std_data) <- gsub("-X", "X", names(mean_std_data))
        names(mean_std_data) <- gsub("-Y", "Y", names(mean_std_data))
        names(mean_std_data) <- gsub("-Z", "Z", names(mean_std_data))
        names(mean_std_data) <- gsub("BodyBody", "Body", names(mean_std_data))

        
#STEP 5: Create a tidy data set with the average of each variable for each activity and each subject
        
        Groupby_Act_Subj <- group_by(mean_std_data, Activity, Subject)
        tidy_data <- summarize_all(Groupby_Act_Subj, list(Average = mean))
        
        #Write tidy data to a text file
        write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)