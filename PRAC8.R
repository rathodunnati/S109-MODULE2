# =====================================================
# TWO-WAY ANOVA USING aov()
# Dataset: python_learning_exam_performance.csv
# =====================================================

# 1. Load the dataset
df <- read.csv("python_learning_exam_performance.csv")

# 2. Convert categorical variables to factors
df$prior_programming_experience <- as.factor(df$prior_programming_experience)
df$uses_kaggle <- as.factor(df$uses_kaggle)

# 3. Two-Way ANOVA Model
anova_model <- aov(
  final_exam_score ~ prior_programming_experience * uses_kaggle,
  data = df
)

# 4. Display ANOVA table
summary(anova_model)

# 5. Interaction Plot
interaction.plot(
  df$prior_programming_experience,
  df$uses_kaggle,
  df$final_exam_score,
  col = c("blue", "red"),
  lwd = 2,
  xlab = "Prior Programming Experience",
  ylab = "Mean Final Exam Score",
  trace.label = "Uses Kaggle"
)
