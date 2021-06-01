FROM rocker/r-base:latest

RUN ls -la

# Copy local code to the container image.

RUN mkdir /tmp/fxresearch

COPY . /tmp/fxresearch

RUN ls -la /tmp/fxresearch

# install R packages required 
# Change the packages list to suit your needs
RUN R -e "install.packages('readr', repos='http://cran.rstudio.com/')"

WORKDIR /tmp/fxresearch/market_data

RUN Rscript /tmp/fxresearch/process_market_data.R

#FROM r-base

# Create and change to the app directory.
#WORKDIR /usr/src/app

# Install any R packages
#RUN Rscript -e "install.packages('plumber')"

# Run the web service on container startup.
#CMD [ "Rscript", "server.R"]