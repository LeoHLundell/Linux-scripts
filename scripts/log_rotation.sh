#!/bin/bash

logfile="$HOME/Documents/test_folder4/autolog.log"
archived="$HOME/Documents/test_folder4/archivedlogs"
timestamp=$(date +%Y-%m-%d_%H-%M-%S )

if [ -f "$logfile" ] && [ $(stat -c %s "$logfile") -gt 1024 ]; then
 mv "$logfile" "${logfile}_${timestamp}"
result1=$?
fi

if [ "$result1" = 0 ]; then
 mv "${logfile}_${timestamp}" "$archived"
result2=$?
elif ! [ "$result1" = 0 ]; then
 echo "failed to rename logfile at $timestamp in $0"
 echo "cancelling to prevent error..."
 exit 1
fi

if [ "$result2" = 0 ]; then
 touch "$logfile"
 echo "Log rotated at $timestamp"
elif ! [ "$result2" = 0 ]; then
 echo "failed to move logfile to archives at $timestamp in $0"
fi

