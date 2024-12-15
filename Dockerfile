FROM rocker/r-ubuntu

RUN Rscript -e "install.packages('gtsummary')"
RUN Rscript -e "install.packages('dplyr')"
RUN Rscript -e "install.packages('ggplot2')"
RUN Rscript -e "install.packages('tidyr')"
RUN Rscript -e "install.packages('readr')"
RUN Rscript -e "install.packages('knitr')"
RUN Rscript -e "install.packages('here')"
RUN Rscript -e "install.packages('rmarkdown')"
RUN Rscript -e "install.packages('kableExtra')"
RUN Rscript -e "install.packages('kableExtra', repos = 'http://cran.r-project.org')"
RUN Rscript -e "install.packages('xml2', repos = 'http://cran.r-project.org')"




RUN apt-get update && apt-get install -y pandoc
RUN apt-get update && apt-get install -y libfontconfig1-dev
RUN apt-get update && apt-get install -y \
    libfontconfig1-dev \
    libfreetype6-dev \
    libpng-dev \
    libjpeg-dev \
    zlib1g-dev \
    && apt-get clean
RUN apt-get update && apt-get install -y \
    libxml2-dev \
    && apt-get clean




RUN mkdir /project
WORKDIR /project

RUN mkdir scripts output final_report data

COPY scripts scripts
COPY Makefile .
COPY final_report.Rmd .
COPY data data

CMD make && mv final_report.html final_report/





