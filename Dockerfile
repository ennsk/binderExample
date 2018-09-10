FROM rocker/binder:3.4.2

# Copy repo into ${HOME}, make user own $HOME
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

## run any install.R script we find
# RUN if [ -f install.R ]; then R --quiet -f install.R; fi


RUN apt-get update -qq \
  && apt-get -y --no-install-recommends install \
  unixodbc-dev \ 
  libcurl4-openssl-dev \
  libssl-dev \
  zlib1g-dev \
  libpng-dev \
  libxml2-dev \ 
  tcl tk tk-dev\
  pandoc \
  libx11-dev \ 
  libglu1-mesa-dev mesa-common-dev \
  libfreetype6-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libssh2-1-dev \
  libmagick++-dev \
  libudunits2-dev \
  git-core \
  vim \
  software-properties-common \ 
  && apt-get -y --no-install-recommends install gdal-bin libgdal-dev \
  && R -e "source('https://bioconductor.org/biocLite.R')" \
  && install2.r --error \
    --deps TRUE \
    BH \
    FNN \
    R6 \
    RColorBrewer \
    RODBC \
    RandomFields \
    RandomFieldsUtils \
    Rcpp \
    WriteXLS \
    assertthat \
    backports \
    base64enc \
    bindr \
    bindrcpp \
    boot \
    cellranger \
    cli \
    clipr \
    colorspace \
    crayon \
    crosstalk \
    curl \
    devtools \
    dichromat \
    digest \
    dplyr \
    evaluate \
    ezknitr \
    fitdistrplus \
    gdata \
    geoR \
    ggplot2 \
    git2r \
    glue \
    gridExtra \
    gtable \
    gtools \
    highr \
    hms \
    htmltools \
    htmlwidgets \
    httpuv \
    httr \
    jsonlite \
    kableExtra \
    kernlab \
    knitr \
    ks \
    labeling \
    lazyeval \
    leaflet \
    magrittr \
    markdown \
    mclust \
    memoise \
    mime \
    multicool \
    munsell \
    mvtnorm \
    openssl \
    pander \
    pillar \
    pkgconfig \
    plogr \
    plyr \
    png \
    raster \
    readr \
    readxl \
    rematch \
    reshape2 \
    rgeos \
    rgdal \
    rlang \
    rmarkdown \
    rprojroot \
    rstudioapi \
    rvest \
    scales \
    selectr \
    shiny \
    sourcetools \
    sp \
    splancs \
    stringi \
    tibble \
    utf8 \
    viridis \
    viridisLite \
    whisker \
    withr \
    xml2 \
    xtable \
    yaml \
    zoo \
