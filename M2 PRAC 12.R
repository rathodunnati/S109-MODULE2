library(ggplot2)
library(readr)
library(reshape2)

data <- read_csv("Heart_Disease_Prediction.csv")

numeric_data <- data[, sapply(data, is.numeric)]

cor_matrix <- cor(numeric_data, use = "complete.obs")

print(cor_matrix)

cor_melted <- melt(cor_matrix)

ggplot(cor_melted, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_gradient2(
    low = "red",
    mid = "white",
    high = "blue",
    midpoint = 0,
    limit = c(-1, 1),
    name = "Correlation"
  ) +
  labs(
    title = "Correlation Matrix Heatmap (Heart Disease Dataset)",
    x = "",
    y = ""
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )
