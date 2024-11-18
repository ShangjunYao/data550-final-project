# Maternal Health Risk Analysis Project

## Project Overview
This project aims to analyze a dataset on maternal health risks collected from rural areas of Bangladesh, specifically from hospitals and clinics. The dataset includes 1,013 instances with six features, such as Age, Systolic Blood Pressure, Diastolic Blood Pressure, Blood Sugar levels, Body Temperature, and Heart Rate. The target variable, **Risk Level**, is categorized into "low risk," "mid risk," and "high risk."

## Data
The dataset, named `Maternal_Health_Risk_Data_Set.csv`, is located in the `data/` folder within this repository. 

## Repository Structure
This repository includes the following folders and files:
- `data/`: Contains the dataset (`Maternal_Health_Risk_Data_Set.csv`).
- `output/`: Stores the generated analysis files, such as `.rds` files for tables and `.png` files for figures.
- `scripts/`: Contains R scripts for generating tables and figures.
- `final_project.Rmd`: The main R Markdown file for generating the project report.
- `Makefile`: Automates the process of generating the final report and associated outputs.
- `README.md`: Documentation for the project, including instructions for running the analysis.

## Prerequisites
Ensure you have R installed the following packages:
- `dplyr`
- `readr`
- `kableExtra`
- `here`
- `ggplot2`
- `knitr`

## How to Run the Project
1. Clone the repository:
In the bash:
   git clone https://github.com/ShangjunYao/data550-final-project
   
2. Navigate to the project directory:
In the bash:
   cd final_report
3. Generate the Final Report:
In the bash:
   make final_report.html

# Description of Scripts and Outputs
## Scripts
--scripts/create_table1.R: Creates the summary statistics table.

--scripts/create_table2.R: Generates the table of average physiological features by risk level.

--scripts/create_table3.R: Produces the heart rate distribution table by risk level.

--scripts/create_figure1.R: Generates the boxplot for age distribution by risk level.

--scripts/create_figure2.R: Generates the boxplot for heart rate distribution by risk level.

# Outputs:
## *Tables*:
output/summary_stats.rds: Summary statistics table.

output/risk_level_summary.rds: Table of average physiological features by risk level.

output/heart_rate_distribution.rds: Heart rate distribution by risk level.

## *Figures*:
output/age_boxplot.png: Boxplot of age distribution by risk level.

output/heart_rate_boxplot.png: Boxplot of heart rate distribution by risk level.

# How to Generate Each Table and Figure:

Table 1 (Summary Statistics): scripts/create_table1.R.

Table 2 (Average Physiological Features by Risk Level):scripts/create_table2.R.

Table 3 (Heart Rate Distribution by Risk Level):scripts/create_table3.R.

Figure 1 (Age Distribution Boxplot): scripts/create_figure1.R.

Figure 2 (Heart Rate Distribution Boxplot): scripts/create_figure2.R.


