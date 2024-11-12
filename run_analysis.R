library(dplyr)

train_data <- read.table("D:/College/Sem 5/Data Science/Coursera/UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("D:/College/Sem 5/Data Science/Coursera/UCI HAR Dataset/train/y_train.txt")
train_subjects <- read.table("D:/College/Sem 5/Data Science/Coursera/UCI HAR Dataset/train/subject_train.txt")

test_data <- read.table("D:/College/Sem 5/Data Science/Coursera/UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("D:/College/Sem 5/Data Science/Coursera/UCI HAR Dataset/test/y_test.txt")
test_subjects <- read.table("D:/College/Sem 5/Data Science/Coursera/UCI HAR Dataset/test/subject_test.txt")

train <- cbind(train_subjects, train_labels, train_data)
test <- cbind(test_subjects, test_labels, test_data)
data <- rbind(train, test)

features <- read.table("D:/College/Sem 5/Data Science/Coursera/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
mean_std_features <- grep("-(mean|std)\\(\\)", features$V2)

data <- data[, c(1, 2, mean_std_features + 2)]

activity_labels <- read.table("D:/College/Sem 5/Data Science/Coursera/UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
data$V2 <- factor(data$V2, levels = activity_labels$V1, labels = activity_labels$V2)

colnames(data) <- c("subject", "activity", features$V2[mean_std_features])

tidy_data <- data %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), mean))

write.table(tidy_data, "tidy_data.txt", row.names = FALSE)

print("Tidy data created successfully!")
