#report assocaited in container
final_report.html: scripts/render_report.R final_report.Rmd descriptive_analysis
	Rscript scripts/render_report.R

# Descriptive analysis targets (tables and figures)

output/risk_level_summary.rds: scripts/create_table2.R data/Maternal_Health_Risk_Data_Set.csv
	Rscript scripts/create_table2.R

output/heart_rate_distribution.rds: scripts/create_table3.R data/Maternal_Health_Risk_Data_Set.csv
	Rscript scripts/create_table3.R

output/age_boxplot.png: scripts/create_figure1.R data/Maternal_Health_Risk_Data_Set.csv
	Rscript scripts/create_figure1.R

output/heart_rate_boxplot.png: scripts/create_figure2.R data/Maternal_Health_Risk_Data_Set.csv
	Rscript scripts/create_figure2.R 
	
.PHONY: descriptive_analysis
descriptive_analysis: output/risk_level_summary.rds output/heart_rate_distribution.rds output/age_boxplot.png output/heart_rate_boxplot.png

install:
	Rscript -e "renv::restore()"

# Clean-up target to remove all generated files
.PHONY: clean
clean:
	rm -f output/*.rds && rm -f output/*.png && rm -f output/*.html
	
# docker-associated rules(run on our local machine)
PROEJECTFILES = final_report.Rmd scripts/create_figure1.R scripts/create_figure2.R scripts/create_table2.R scripts/create_table3.R
RENVFILES = renv.lock renv/activate.R renv/settings.json


# rule to build image
hiv_docker_project: Dockerfile $(PROEJECTFILES) $(RENVFILES)
	docker build --platform linux/amd64 -t shangjunyao/hiv_docker_project .
	touch $@
	
# rule to build the report automatically in our container
final_report/final_report.html:
	docker run --platform linux/amd64 -v $(PWD)/final_report:/project/final_report shangjunyao/hiv_docker_project



