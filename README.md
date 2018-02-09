# Cousera-Final-Project


Readme

There are several files in this repository.

With the README.md, file I plan to explain how did I create a data and show also explaining other files included in the repository.
In the "tidy_data.txt",  I show the codes and includes the final dataset.

In the file "CodeBook.md", I included all the codebook, as also I expalin and describe all the activities I employed to create the data, and variables. It also expalins any transformations used to generate the data.

In the "run_analysis.R", which is a "R script" I show how I created dataset
The R script run_analysis.R can actually be used for creating dataset and I show how I retrieved the source dataset and made the necessary changes to create the final dataset. In particular, I made the following:

After reading and loading data, I merged the test and the train data in order to create a unique dataset.
I only, as requested, selected the measurments on the mean and standard deviation for each measurement.
The activities's name were changed with descriptive and the I labled the dataset with descriptive variable names.
I also created an independent "tidy" set with the mean of each variable for each activity of every subject.
Wrote the information into dataset "tidy_data.txt" file.

This file is created by running the run_analysis.R script using RStudio. 
This script requires the dplyr package.
