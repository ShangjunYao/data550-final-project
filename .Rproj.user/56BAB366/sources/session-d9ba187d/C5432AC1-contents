library(dplyr)
library(readr)  # Load readr to use read_csv
library(here)

data <- read_csv(here("data", "Maternal_Health_Risk_Data_Set.csv"))

# Table 3: Heart Rate Distribution by Risk Level
heart_rate_distribution <- data %>%
  group_by(RiskLevel) %>%
  summarise(
    Min_HeartRate = min(HeartRate, na.rm = TRUE),
    Q1_HeartRate = quantile(HeartRate, 0.25, na.rm = TRUE),
    Median_HeartRate = median(HeartRate, na.rm = TRUE),
    Q3_HeartRate = quantile(HeartRate, 0.75, na.rm = TRUE),
    Max_HeartRate = max(HeartRate, na.rm = TRUE)
  )

saveRDS(heart_rate_distribution, here("output", "heart_rate_distribution.rds"))
