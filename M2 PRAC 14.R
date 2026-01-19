library(readr)
library(ggplot2)

data <- read_csv("Students Social Media Addiction.csv")

data$Affects_Academic_Performance <- as.factor(data$Affects_Academic_Performance)

model <- glm(Affects_Academic_Performance ~ Avg_Daily_Usage_Hours,
             data = data,
             family = binomial)

summary(model)

ggplot(data, aes(x = Avg_Daily_Usage_Hours,
                 y = as.numeric(Affects_Academic_Performance) - 1)) +
  geom_point() +
  stat_smooth(method = "glm",
              method.args = list(family = "binomial"),
              se = FALSE) +
  labs(
    x = "Average Daily Usage Hours",
    y = "Probability of Academic Impact",
    title = "Logistic Regression: Social Media Usage vs Academic Performance"
  )
