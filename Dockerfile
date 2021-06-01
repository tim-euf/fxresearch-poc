FROM rocker/r-base:latest

RUN ls -la

# install R packages required 
# Change the packages list to suit your needs
RUN R -e "install.packages('readr', repos='http://cran.rstudio.com/')"

RUN Rscript ./process_market_data.R