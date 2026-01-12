library(ggplot2)

df <- read.csv("Sleep_health_and_lifestyle_dataset.csv")
#SCATTER PLOT
ggplot(df, aes(x = Sleep.Duration, y = Quality.of.Sleep)) +
  geom_point(color = "blue", size = 3) +
  theme_minimal()

#PIE- CHART

sleep_counts <- as.data.frame(table(df$Sleep.Disorder))
colnames(sleep_counts) <- c("Sleep.Disorder", "Count")

ggplot(sleep_counts, aes(x = "", y = Count, fill = Sleep.Disorder)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  theme_void()

#HIGH -LOW GRAPH
hl <- aggregate(Heart.Rate ~ Gender, df, function(x) c(min = min(x), max = max(x)))
hl <- data.frame(Gender = hl$Gender, Min = hl$Heart.Rate[,1], Max = hl$Heart.Rate[,2])

ggplot(hl, aes(x = Gender, ymin = Min, ymax = Max)) +
  geom_linerange(size = 1.2, color = "purple") +
  theme_minimal()
