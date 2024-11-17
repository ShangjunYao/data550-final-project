# Figure 2: Heart Rate Distribution by Risk Level
library(ggplot2)
library(readr)
library(here)

data <- read_csv(here("data", "Maternal_Health_Risk_Data_Set.csv"))
hr_plot <- ggplot(data, aes(x = RiskLevel, y = HeartRate, fill = RiskLevel)) +
  geom_boxplot() +
  labs(
    title = "Heart Rate Distribution by Risk Level",
    x = "Risk Level",
    y = "Heart Rate (beats per minute)"
  ) +
  scale_fill_manual(values = c("lightblue", "lightgreen", "salmon")) +
  theme_minimal() +
  theme(legend.position = "none")

ggsave(here("output", "heart_rate_boxplot.png"),
       plot = hr_plot, width = 8, height = 5)