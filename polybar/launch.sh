#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x "polybar -c $HOME/.config/polybar/config" >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar dp0 &
polybar dp2 &

echo "Bars launched..."
