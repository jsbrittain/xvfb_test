FROM ubuntu:latest

RUN apt-get update && apt-get install -y xvfb x11-apps imagemagick

WORKDIR /app
COPY app /app

ENV DISPLAY=:99
