FROM continuumio/miniconda3
MAINTAINER Chen Yuelong <yuelong.chen.btr@gmail.com>

RUN conda install -c bioconda mirdeep2

CMD bash