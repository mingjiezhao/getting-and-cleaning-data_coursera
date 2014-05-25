getting-and-cleaning-data_coursera
==================================
This readme.md file explains how the run_analysis.R script works.

-1. To successfully extract and clean data, all the data files should be placed in a folder named "UCIHARDataset" under the working directory: with the three "test" files in "~/UCIHARDataset/test" folder, and "training" files in "~/UCIHARDataset/training" folder, respectively. Otherwise, the arguments in the read.table functions from line 4-9 should be replaced.

-2. At first, the script reads the data, assign appropriate lables to activies, and merge the traning and test sets to create a new data set, from Line 4 to Line 22:

From line 4-9, the script reads all the data into corresponding tables.

From line 11-13, the activity codes are replaced with descriptive names, according to the relations in "activity_labels.txt" file.

From line 15-16, the two tables for test and training sets are combined with corresponding subject list, activity list and data.

From line 18-20, the column names of the tables are assigned.

At line 22, the two tables are merged to form a new data set.

-3. The script then extracts only the measurements on the mean and standard deviation for each measurement, from Line 24 to Line 30:

From line 24-25, data are selected based on their column name, and only ones that are about mean and std of measurements are selected, with their position in the colname list recorded in new colname lists, respectively.

From line 26-27, the two selected colname lists are combined and sorted in order.

From line 29-30, a new data set is formed with only mean and standard deviation for each measurement included.

-4. Finally, the new data set is reshaped to be a tidy data set with the average of each variable (66 in total) for each activity and each subject. The new tidy data set is written into a txt file named "tidy_data.txt", which is also included in the repository.
