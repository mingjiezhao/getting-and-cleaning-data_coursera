# Install reshape2 package if needed.
library (reshape2)
# At first read the two test tables from "UCIHARDataset" folder, as well as their corresponding subjects and activity labels 
table1 <- read.table("UCIHARDataset/test/X_test.txt")
subject1 <- read.table("UCIHARDataset/test/subject_test.txt")
label1 <- read.table("UCIHARDataset/test/y_test.txt")
table2 <- read.table("UCIHARDataset/train/X_train.txt")
label2 <- read.table("UCIHARDataset/train/y_train.txt")
subject2 <- read.table("UCIHARDataset/train/subject_train.txt")
# Replace activity lables with descriptive activity names
act_code <- data.frame (code = 1:6, act = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
activity1 <- as.vector(act_code$act[match(label1[,1],act_code$code)])
activity2 <- as.vector(act_code$act[match(label2 [,1],act_code$code)])
#recombine the two tables with subjects, activities and data included, respectively.
table1 <- cbind(subject1,activity1,table1)
table2 <- cbind(subject2,activity2,table2)
#read names of the columns from the "features.txt",and assign names of columns to the tables
features <- read.table("UCIHARDataset/features.txt")
colnames(table1) <- c("Subject","Activity",as.vector(features$V2))
colnames(table2) <- c("Subject","Activity",as.vector(features$V2))
# combine the two tables 
combined_table <- rbind(table1,table2)
# Select the columns that are about mean/std of the measurement
sel_list_m <- grep("-mean()",colnames(combined_table),fixed = TRUE)
sel_list_std <- grep("-std()",colnames(combined_table),fixed = TRUE)
sel_list <- c(sel_list_m,sel_list_std)
sel_list <-sort(sel_list)
# Construct new tables based on the selection: one with both mean and std, the other with only average values
tidy_table <- combined_table[,c(1,2,sel_list)]
tidy_table_m <-combined_table[,c(1,2,sel_list_m)]
#Reshape the results based on Subject and Activity
tidy_data_melt <- melt(tidy_table, id.vars = c("Subject","Activity"), measure.vars=colnames(combined_table)[sel_list] )
tidy_data <- dcast(tidy_data_melt,Subject + Activity ~ variable, mean)
# Write data into txt file
write.table(tidy_data,"tidy_data.txt")
