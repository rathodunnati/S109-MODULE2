# TWO-WAY ANOVA USING aov()
# 1
df <- read.csv("python_learning_exam_performance.csv")

# 2
df$prior_programming_experience <- as.factor(df$prior_programming_experience)
df$uses_kaggle <- as.factor(df$uses_kaggle)

# 3
anova_model <- aov(
  final_exam_score ~ prior_programming_experience * uses_kaggle,
  data = df
)

# 4
summary(anova_model)

# 5
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