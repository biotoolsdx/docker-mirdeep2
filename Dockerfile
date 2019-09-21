FROM continuumio/miniconda3
MAINTAINER Chen Yuelong <yuelong.chen.btr@gmail.com>


RUN conda install -c bioconda mirdeep2
RUN apt update && apt install git && \
    cd /tmp/ && \
    git clone https://github.com/Drmirdeep/mirdeep2_patch.git && \
    cd mirdeep2_patch && cp *.pl /usr/local/bin && \
    chmod +x /usr/local/bin/* && \
    rm -rf /tmp/*

CMD bash