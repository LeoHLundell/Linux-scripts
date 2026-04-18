#!/bin/bash
# Purpose: Rotate log if size exceeds threshold

logfile="$HOME/logtests/autolog.log"
archived="$HOME/logtests/archive"
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
max_size=5120  # 5KB

mkdir -p "$archived"

if [ ! -f "$logfile" ]; then
  echo "No logfile found: $logfile"
  exit 1
fi

size=$(stat -c %s "$logfile")

if [ "$size" -gt "$max_size" ]; then
  new_name="${logfile}_${timestamp}.log"
  mv "$logfile" "$new_name" || { echo "Rename failed"; exit 1; }

  mv "$new_name" "$archived/" || { echo "Move failed"; exit 1; }

  touch "$logfile"
  echo "Log rotated at $timestamp"
else
  echo "No rotation needed (size: $size bytes)"
fi
