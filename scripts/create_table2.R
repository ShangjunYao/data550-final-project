library(dplyr)
library(readr)  # Load readr to use read_csv
library(here)
data <- read_csv(here("data", "Maternal_Health_Risk_Data_Set.csv"))

# Table2 Average Physiological Features by Risk Level
risk_level_summary <- data %>%
  group_by(RiskLevel) %>%
  summarise(
    Average_Age = mean(Age, na.rm = TRUE),
    Average_SystolicBP = mean(SystolicBP, na.rm = TRUE),
    Average_DiastolicBP = mean(DiastolicBP, na.rm = TRUE),
    Average_BS = mean(BS, na.rm = TRUE),
    Average_BodyTemp = mean(BodyTemp, na.rm = TRUE),
    Average_HeartRate = mean(HeartRate, na.rm = TRUE)
  )

saveRDS(risk_level_summary, here("output", "risk_level_summary.rds"))
print(risk_level_summary)