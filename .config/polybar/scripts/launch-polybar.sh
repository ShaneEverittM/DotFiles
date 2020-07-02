#!/bin/bash
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

i=1
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	if [ $i -eq 1 ]; then
	    MONITOR=$m TRAY_POS=right polybar --reload --config="/home/shane/.config/polybar/polybar-config" spartan &
	else 
	    MONITOR=$m polybar --reload --config="/home/shane/.config/polybar/polybar-config" spartan &
	fi
	((i++))
  done
else
  polybar --reload spartan &
fi
