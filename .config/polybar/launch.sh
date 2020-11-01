#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main >>/tmp/polybar1.log 2>&1 &
polybar secondary >>/tmp/polybar2.log 2>&1 &

echo "Bars launched..."
