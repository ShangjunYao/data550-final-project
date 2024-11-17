library(ggplot2)
library(readr)
library(here)

# Load data
data <- read_csv(here("data", "Maternal_Health_Risk_Data_Set.csv"))


# Figure 1: Distribution of Age by Risk Level
age_plot <- ggplot(data, aes(x = RiskLevel, y = Age)) +
  geom_boxplot(fill = "skyblue") +
  labs(
    title = "Distribution of Age by Risk Level",
    x = "Risk Level",
    y = "Age"
  ) +
  theme_minimal()
ggsave(here("output", "age_boxplot.png"), 
       plot = age_plot, width = 8, height = 5)
