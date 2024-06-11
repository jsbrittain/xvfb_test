#!/usr/bin/env bash

xwd -root -silent | convert xwd:- png:/app/screenshot.png
