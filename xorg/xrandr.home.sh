#!/bin/sh
xrandr --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --primary\
  --output VIRTUAL1 --off \
  --output eDP1 --mode 1920x1080 --pos 904x1080 --rotate normal \
  --output VGA1 --mode 1920x1080 --pos 1920x0 --rotate normal \
