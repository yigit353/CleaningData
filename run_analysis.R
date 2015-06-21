dataset.dir <- "./UCI HAR Dataset"

get.path <- function(path) paste(dataset.dir, path, sep = "/")

feature.labels <- read.table(get.path("features.txt"), 
                             col.names = c("featureNum", "featureName"),
                             stringsAsFactors = FALSE)
mean.features <- grep("mean()", feature.labels$featureName, fixed = T)
std.features <- grep("std()", feature.labels$featureName)
labels <- feature.labels[c(mean.features, std.features),]

col.classes <- rep("NULL", nrow(feature.labels))
col.classes[labels$featureNum] <- "double"

activity.labels <- read.table(get.path("activity_labels.txt"), 
                              col.names = c("activityNum", "activityName"))


X_test <- read.table(get.path("test/X_test.txt"), colClasses = col.classes)
activities.test <- read.table(get.path("test/y_test.txt"), col.names = "activityNum")
activities.test.labeled <- merge(activities.test, activity.labels, by = "activityNum")
subjects.test <- read.table(get.path("test/subject_test.txt"), col.names = "subject")
test.data <- cbind(X_test, activities.test.labeled$activityName, subjects.test$subject)
colnames(test.data) <- c(labels$featureName, "activityName", "subject")


X_train <- read.table(get.path("train/X_train.txt"), colClasses = col.classes)
activities.train <- read.table(get.path("train/y_train.txt"), col.names = "activityNum")
activities.train.labeled <- merge(activities.train, activity.labels, by = "activityNum")
subjects.train <- read.table(get.path("train/subject_train.txt"), col.names = "subject")
train.data <- cbind(X_train, activities.train.labeled$activityName, subjects.train$subject)
colnames(train.data) <- c(labels$featureName, "activityName", "subject")

combined.data <- rbind(test.data, train.data)
new.data <- aggregate(combined.data, FUN = mean, 
                      by = list(combined.data$activityName, combined.data$subject))
new.data$activityName <- NULL
new.data$subject <- NULL
colnames(new.data)[1:2] <- c("activityName", "subject")
write.table(x = new.data, file = "tidyData.txt", row.names = FALSE)
