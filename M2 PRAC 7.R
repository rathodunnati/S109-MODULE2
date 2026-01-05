
# 1
df <- read.csv("Exam_Score_Prediction.csv")

# 2
str(df)

# 3
df$course <- as.factor(df$course)

#4
anova_model <- aov(exam_score ~ course, data = df)

# 5
summary(anova_model)

# 6
boxplot(
  exam_score ~ course,
  data = df,
  col = c("lightblue", "lightgreen", "lightpink"),
  main = "Exam Score Comparison Across Courses",
  xlab = "Course",
  ylab = "Exam Score"
)

# 7.
TukeyHSD(anova_model)