library(ggplot2)
library(readr)

data <- read_csv("Gaming_Hours_vs_Performance_1000_Rows.csv")

ggplot(data, aes(x = Daily_Gaming_Hours)) +
  geom_histogram(binwidth = 0.5, fill = "steelblue", color = "black") +
  labs(
    title = "Histogram of Daily Gaming Hours",
    x = "Daily Gaming Hours",
    y = "Frequency"
  ) +
  theme_minimal()

ggplot(data, aes(x = Academic_or_Work_Score)) +
  geom_histogram(binwidth = 5, fill = "orange", color = "black") +
  labs(
    title = "Histogram of Academic or Work Score",
    x = "Academic or Work Score",
    y = "Frequency"
  ) +
  theme_minimal()

ggplot(data, aes(x = Game_Type, y = Daily_Gaming_Hours, fill = Game_Type)) +
  geom_boxplot() +
  labs(
    title = "Daily Gaming Hours by Game Type",
    x = "Game Type",
    y = "Daily Gaming Hours"
  ) +
  theme_minimal()

ggplot(data, aes(x = Gender, y = Academic_or_Work_Score, fill = Gender)) +
  geom_boxplot() +
  labs(
    title = "Academic or Work Score by Gender",
    x = "Gender",
    y = "Academic or Work Score"
  ) +
  theme_minimal()
