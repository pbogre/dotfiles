#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# LOL NOPE
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar top -c ~/.config/polybar/config.ini &
