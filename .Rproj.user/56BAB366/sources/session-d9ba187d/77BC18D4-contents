library(dplyr)
library(readr)
library(kableExtra)
library(here)
library(knitr)
data <- read_csv(here("data", "Maternal_Health_Risk_Data_Set.csv"))

# Table1 Summary kable

summary_stats <- data.frame(
  Variable = c("Age", "SystolicBP", "DiastolicBP", "BS", "BodyTemp", "HeartRate"),
  Min = sapply(data[, c("Age", "SystolicBP", "DiastolicBP", "BS", "BodyTemp", "HeartRate")], min, na.rm = TRUE),
  Q1 = sapply(data[, c("Age", "SystolicBP", "DiastolicBP", "BS", "BodyTemp", "HeartRate")], quantile, 0.25, na.rm = TRUE),
  Median = sapply(data[, c("Age", "SystolicBP", "DiastolicBP", "BS", "BodyTemp", "HeartRate")], median, na.rm = TRUE),
  Mean = sapply(data[, c("Age", "SystolicBP", "DiastolicBP", "BS", "BodyTemp", "HeartRate")], mean, na.rm = TRUE),
  Q3 = sapply(data[, c("Age", "SystolicBP", "DiastolicBP", "BS", "BodyTemp", "HeartRate")], quantile, 0.75, na.rm = TRUE),
  Max = sapply(data[, c("Age", "SystolicBP", "DiastolicBP", "BS", "BodyTemp", "HeartRate")], max, na.rm = TRUE)
)
saveRDS(summary_stats, here("output", "summary_stats.rds"))

print(summary_stats)