#!/usr/bin/env bash

Xvfb :99 &
export DISPLAY=:99

xeyes &
