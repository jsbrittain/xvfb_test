FROM condaforge/mambaforge:24.3.0-0

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get install -y \
        xvfb \
        xdotool \
        x11-apps \
        imagemagick

RUN conda install -y -c bioconda tracer

WORKDIR /app
COPY app /app

ENV DISPLAY=:99
