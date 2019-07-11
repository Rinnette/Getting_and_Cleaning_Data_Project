
## Getting and Cleaning Data - Week 4 Course Project

The purpose of this project is to collect, work with and clean a data set.

The 'run_analysis.R' script saves the data in R, combines the data to forms one data set, extracts only the mean and standard deviation data, changes the activities and variable names to more decriptive names and finally creates a tidy data set of the averages of each variable for each activity and subject.  This file describes how this was done.  Note that the **dplyr** package was used to manipulate the data.

A code book was also created ('codebook.md') and it provides a description of the tidy data and what is stored in each variable.  


### 0. Get the data
The data used for this project is the UCI Human Activity Recognition dataset.  A description can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data is in the form of a zipped file and can be obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following was done:

* The file was unzipped in the working directory.  
* The data was contained in a folder called 'UCI HAR Dataset'.  This folder was renamed to eliminate the spaces, ie. 'UCI_HAR_Dataset'.

The following data is included in the UCI HAR Dataset:

* *test* folder containing test data text files: subject_test, x_test, y_test
* *training* folder containing training data text files: subject_train, x_train, y_train
* *activity_labels* text file - contains the activities that correspond with the numbers 1 to 6
* *features* text file - contains the list of variable names

All data was read into tables using read.table with header = FALSE.

| Data file             | Variable              |
| -----------           | ---------------       |
| subject_test.txt      | subject_test          |
| x_test.txt            | x_test                |
| y_test.txt            | y_test                |
| subject_train.txt     | subject_train         |
| x_train.txt           | x_train               |
| y_train.txt           | y_train               |
| activity_labels.txt   | activity_labels       |
| features.txt          | features              |  



### 1. Create one data set
The following is a description of how the data set was created.

**rbind** was used to combine

* subject_train and subject_test
* x_train and x_text
* y_train and y_test

**cbind** was then used to combine the the resulting subject data, x data and y data, in that order, to form one data set.

Variable names 'Activity' and 'Subject' were added to the front of the *features* table.  This table was then used to update the variable names in the data set.  



### 2. Extract mean and standard deviation measurements
The 'Activity' and 'Subject' variables, together with all variables containing 'mean()' and 'std() were selected and assigned to another table.  This table was manipulated in the activities described below.  



### 3. Use descriptive activity names
In the Activity column, the numbers 1 to 6 were replaced with the corresponding activity names obtained from the *activity_labels* file.  



### 4. Label the data set with descriptive variable names
To make the variable names more descriptive the following changes were made using the gsub() function:

* 't' was changed to 'Time' and 'f' to 'Frequency' to represent the time and frequency domain signals.
* 'Acc' and 'Gyro' were changes to 'Acceleration' and 'AngularVelocity' to show what was actually being measured and not the instrument used to take the measurement.
* 'Mag' was changed to the more descriptive 'Magnitude'
* The parentheses were removed: 'mean()' was changed to 'Mean' and 'std()' to 'StandardDeviation'
* Hyphens were also removed to make the variable names more command line friendly.


The type of measurement, as well as the exact way in which it was taken, can now be easily ascertained from the new variable names. For example, 'TimeBodyAngularVelocityMeanZ' shows that the measurement is a time domain signal and it is the mean of the body angular velocity measured in the Z direction. 'FrequencyBodyAccelerationStandardDeviationX' is a frequency domain signal and it is the standard deviation of the body acceleration measurement taken in the X direction and so on.  



### 5. Create a tidy data set with the average of each variable
To create the tidy data set, the data was grouped by 'Activity' and 'Subject' in that order.  The average of the variables for each combination of activity and subject was then found.

This data is tidy since each observation is a row, each column is a variable and it contains one type of observational unit. [[Hadley Wickham]](https://vita.had.co.nz/papers/tidy-data.pdf#page=23&zoom=100,0,182).

The tidy data was written to the text file, 'tidy_data.txt', using write.table with row.names = FALSE.  It can be read back into R for viewing using read.table("tidy_data.txt").  

