#!/usr/bin/env bash

# Estimates
xdotool mousemove 429 43 click 1
sleep 1
xwd -root -silent | convert xwd:- png:/app/screenshots/estimates.png

# Marginal density
xdotool mousemove 568 43 click 1
sleep 1
xwd -root -silent | convert xwd:- png:/app/screenshots/marginal_density.png

# Joint-marginal
xdotool mousemove 715 43 click 1
sleep 1
xwd -root -silent | convert xwd:- png:/app/screenshots/joint_marginal.png

# Trace
xdotool mousemove 823 43 click 1
sleep 1
xwd -root -silent | convert xwd:- png:/app/screenshots/trace.png