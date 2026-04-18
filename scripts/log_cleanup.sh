#!/bin/bash

src="$HOME/logtests"
report="$HOME/log_cleanup_report.log"
timestamp=$(date +%Y-%m-%d_%H-%M-%S)

echo "Starting clean-up..." && echo "[$timestamp] Starting cleanup in $src" >> "$report"

find "$src" -name "*.log" -size +1024k | while read -r file; do

 base=$(basename "$file" .log)
 dir=$(dirname "$file")
 newname="${base}_$timestamp.log"

 mv "$file" "$dir/$newname"
 gzip "$dir/$newname"
 touch "$file"

 echo "[$timestamp] Archived and compressed: $file to $dir/$newname.gz" >> "$report"

done

echo "[$timestamp] Cleanup complete." >> "$report"
echo "Cleanup Completed."
