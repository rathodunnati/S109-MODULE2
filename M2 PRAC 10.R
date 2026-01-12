library(ggplot2)
library(readr)

sleep_data <- read_csv("Sleep_health_and_lifestyle_dataset.csv")

str(sleep_data)
head(sleep_data)

ggplot(sleep_data, aes(x = `Sleep Duration`)) +
  geom_histogram(binwidth = 0.5, fill = "skyblue", color = "black") +
  labs(
    title = "Distribution of Sleep Duration",
    x = "Sleep Duration (Hours)",
    y = "Frequency"
  ) +
  theme_minimal()

ggplot(sleep_data, aes(x = `BMI Category`)) +
  geom_bar(fill = "lightgreen", color = "black") +
  labs(
    title = "BMI Category Distribution",
    x = "BMI Category",
    y = "Count"
  ) +
  theme_minimal()

ggplot(sleep_data, aes(x = Gender, y = `Stress Level`, fill = Gender)) +
  geom_boxplot() +
  labs(
    title = "Stress Level by Gender",
    x = "Gender",
    y = "Stress Level"
  ) +
  theme_minimal()

ggplot(sleep_data, aes(x = `Physical Activity Level`, y = `Quality of Sleep`)) +
  geom_point(color = "purple", size = 2) +
  labs(
    title = "Physical Activity vs Quality of Sleep",
    x = "Physical Activity Level",
    y = "Quality of Sleep"
  ) +
  theme_minimal()

ggplot(sleep_data, aes(x = Age, y = `Sleep Duration`)) +
  geom_line(color = "blue") +
  geom_point() +
  labs(
    title = "Age vs Sleep Duration",
    x = "Age",
    y = "Sleep Duration (Hours)"
  ) +
  theme_minimal()
