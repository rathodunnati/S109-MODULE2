# =====================================================
# CHI-SQUARE TEST OF INDEPENDENCE
# Dataset: Student_Performance.csv
# =====================================================

# 1. Load dataset
df <- read.csv("Student_Performance.csv", stringsAsFactors = FALSE)

# 2. Check column names
colnames(df)

# 3. Convert EXISTING categorical variables to factors
df$gender <- as.factor(df$gender)
df$final_grade <- as.factor(df$final_grade)

# 4. Create contingency table
chi_table <- table(df$gender, df$final_grade)
print("Contingency Table:")
print(chi_table)

# 5. Perform Chi-square test
chi_result <- chisq.test(chi_table)

# 6. Display test results
print("Chi-Square Test Result:")
print(chi_result)

# 7. Display expected frequencies
print("Expected Frequencies:")
print(chi_result$expected)
