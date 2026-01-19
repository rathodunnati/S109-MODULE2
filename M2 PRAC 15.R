

library(readr)
library(writexl)
library(ggplot2)
data <- read_csv("Students Social Media Addiction.csv")
data$Affects_Academic_Performance <- as.factor(data$Affects_Academic_Performance)

model <- glm(Affects_Academic_Performance ~ Avg_Daily_Usage_Hours,
             data = data,
             family = binomial)
results <- as.data.frame(summary(model)$coefficients)
write.csv(results,
          "Logistic_Regression_Results.csv",
          row.names = TRUE)
write_xlsx(results,
           "Logistic_Regression_Results.xlsx")
pdf("Logistic_Regression_Plot.pdf")

ggplot(data, aes(x = Avg_Daily_Usage_Hours,
                 y = as.numeric(Affects_Academic_Performance) - 1)) +
  geom_point() +
  stat_smooth(method = "glm",
              method.args = list(family = "binomial"),
              se = FALSE)

dev.off()
