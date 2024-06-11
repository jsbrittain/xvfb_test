#!/usr/bin/env bash

Xvfb :99 & # -screen 0 1024x768x8 &
export DISPLAY=:99
sleep 1  # give xvfb some time to start

tracer &
