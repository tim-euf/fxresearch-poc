FROM rocker/shiny:latest

RUN ls -la
RUN ls -la /srv/
RUN ls -la /etc/shiny-server/

# copy files
COPY ./* /opt/shiny-server/

RUN ls -la /opt/shiny-server/

# system libraries
# Try to only install system libraries you actually need
# Package Manager is a good resource to help discover system deps
# system libraries of general use
RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev

# install R packages required 
# Change the packages list to suit your needs
RUN R -e "install.packages('shiny', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('shinydashboard', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggplot2', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('datasets', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('stats', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('utils', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('graphics', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('base', repos='http://cran.rstudio.com/')"

EXPOSE 8080