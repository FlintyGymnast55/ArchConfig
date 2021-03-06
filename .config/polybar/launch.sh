#!/usr/bin/env bash

DIR="$HOME/.config/polybar/"

# Kill running polybar instances
killall -q polybar

# Wait for processes to be shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar -q example -c "$DIR"/config.ini 2>&1 | tee -a /tmp/polybar2.log &
