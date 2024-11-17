final_report.html: scripts/render_report.R final_report.Rmd descriptive_analysis
	Rscript scripts/render_report.R

# Descriptive analysis targets (tables and figures)
output/summary_stats.html: scripts/create_table1.R data/Maternal_Health_Risk_Data_Set.csv
	Rscript scripts/create_table1.R

output/risk_level_summary.rds: scripts/create_table2.R data/Maternal_Health_Risk_Data_Set.csv
	Rscript scripts/create_table2.R

output/heart_rate_distribution.rds: scripts/create_table3.R data/Maternal_Health_Risk_Data_Set.csv
	Rscript scripts/create_table3.R

output/age_boxplot.png: scripts/create_figure1.R data/Maternal_Health_Risk_Data_Set.csv
	Rscript scripts/create_figure1.R

output/heart_rate_boxplot.png: scripts/create_figure2.R data/Maternal_Health_Risk_Data_Set.csv
	Rscript scripts/create_figure2.R

.PHONY: descriptive_analysis
descriptive_analysis: output/summary_stats.html output/risk_level_summary.rds output/heart_rate_distribution.rds output/age_boxplot.png output/heart_rate_boxplot.png

# Clean-up target to remove all generated files
.PHONY: clean
clean:
	rm -f output/*.rds && rm -f output/*.png && rm -f output/*.html
