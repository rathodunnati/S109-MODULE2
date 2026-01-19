library(readr)

data <- read_csv("student_learning_trajectory.csv")

data_30 <- data[1:30, ]

model <- lm(performance_index ~ study_hours, data = data_30)

summary(model)

plot(data_30$study_hours, data_30$performance_index,
     xlab = "Study Hours",
     ylab = "Performance Index",
     main = "Linear Regression: Study Hours vs Performance Index (First 30 Records)")

abline(model)
