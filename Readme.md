# Cleaning Data 

## Introduction

This is the course project for cleaning Samsung activity[data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The goal of this project is to merge, clean and name the fields of the activity data so that it can be used for other data science tasks. Also a tidy data set is created for demonstration purposes.

## Raw Data

Raw data is organised as a directory containing a feature set file of X, activity file y, and a subject file containing which subject performed the task. Also the data has been split into two sets and organised in two subfolders train and test. 

## Cleaning Data

1. First of all, it is important to set the working directory to where **run_analysis.R** and the **UCI HAR Dataset** folder are located. 
2. Feature names are read from **"features.txt"** in the **UCI HAR Dataset** folder.
3. Only features containing **mean()** and **std()** are selected using **grep()** function.
4. Activity labels (such as *WALKING*, *LAYING*) are read from **"activity_labels.txt"** file from the same directory. 
5. For test data set it is read from the **test** folder and **X_test.txt** file. Only the selected columns are read from the file by setting **colClasses** parameter.
6. Activities are read from the **"y_test.txt"** from the same folder.
7. Activities are labeled using **merge()** function.
8. Also, subjects are read from the **"subjects_test.txt"** from the same folder
9. Test data is created by combining **test features**, **activities**, and **subjects** using **cbind()** function.
10. Lastly, column names are set.
11. Steps 5 to 10 are repeated for the training data set.
12. Both **training** and **test** data set are combined into **combined.data** using **rbind()** function.

## Creating Tidy Data Set

After cleaning the data another data set should be created.

1. **combined.data** is aggregated by taking means for both activity and subject using **aggregate()** function.
2. Activity and subject fields are removed from the **new.data** that has been created.
3. Also the first columns names are changed to **activityName** and **subject**.
4. Lastly, the new data set has been saved to **"tidyData.txt"** using **write.table()** function.

> Code Book can be read from CodeBook.md