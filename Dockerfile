FROM rocker/tidyverse
MAINTAINER Xiaoyang Jin (jinxiaoyang@jinxiaoyang.cn)

RUN R -e 'install.packages("Rserve")'
ENV LD_LIBRARY_PATH /usr/local/lib/R/lib
ENV R_HOME /usr/local/lib/R
COPY Dockerfile /Dockerfile
COPY run-rserve.sh /run-rserve.sh
EXPOSE 6311
CMD bash /run-rserve.sh