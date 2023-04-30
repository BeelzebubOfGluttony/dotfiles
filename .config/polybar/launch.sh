#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar bspwm -c ~/.config/polybar/config.ini &
polybar weather -c ~/.config/polybar/config.ini &
polybar title -c ~/.config/polybar/config.ini &
polybar right -c ~/.config/polybar/config.ini &
