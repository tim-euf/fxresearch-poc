FROM rocker/r-base:latest

RUN ls -la

# install R packages required 
# Change the packages list to suit your needs
RUN R -e "install.packages('readr', repos='http://cran.rstudio.com/')"

RUN Rscript ./process_market_data.R

#FROM r-base

# Create and change to the app directory.
#WORKDIR /usr/src/app

# Copy local code to the container image.
#COPY . .

# Install any R packages
#RUN Rscript -e "install.packages('plumber')"

# Run the web service on container startup.
#CMD [ "Rscript", "server.R"]