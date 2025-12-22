# =====================================================
# PRACTICAL: One-Way ANOVA using aov()
# Dataset: Exam_Score_Prediction.csv
# =====================================================

# 1. Load the dataset
df <- read.csv("Exam_Score_Prediction.csv")

# 2. View structure of the dataset
str(df)

# 3. Convert course to factor (important for ANOVA)
df$course <- as.factor(df$course)

# 4. One-Way ANOVA
anova_model <- aov(exam_score ~ course, data = df)

# 5. Display ANOVA table
summary(anova_model)

# 6. Visualize group differences using boxplot
boxplot(
  exam_score ~ course,
  data = df,
  col = c("lightblue", "lightgreen", "lightpink"),
  main = "Exam Score Comparison Across Courses",
  xlab = "Course",
  ylab = "Exam Score"
)

# 7. Post-hoc test (Tukey HSD) if ANOVA is significant
TukeyHSD(anova_model)
