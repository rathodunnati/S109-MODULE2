# 1
df <- read.csv("Student_Performance.csv", stringsAsFactors = FALSE)

# 2
colnames(df)

# 3
df$gender <- as.factor(df$gender)
df$final_grade <- as.factor(df$final_grade)

# 4
chi_table <- table(df$gender, df$final_grade)
print("Contingency Table:")
print(chi_table)

# 5
chi_result <- chisq.test(chi_table)

# 6
print("Chi-Square Test Result:")
print(chi_result)

# 7
print("Expected Frequencies:")
print(chi_result$expected)