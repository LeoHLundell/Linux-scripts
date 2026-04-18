#!/bin/bash

process_name="sleep"
logfile=~/Documents/cronlab/process_monitor.log

if ! pgrep "$process_name" > /dev/null>2&1; then
  echo "$(date): $process_name was not running. Restarting..." >> "$logfile"
  sleep 100 &
else
  echo "$(date): $process_name is running." >> "$logfile"
fi


