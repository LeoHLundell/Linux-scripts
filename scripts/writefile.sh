#!/bin/bash

if [ -f "log.txt" ]; then
echo "Appended: script ran at current date to log"
echo "Script ran at: $(date)" >> log.txt
else
echo "Log created at $(date)" > log.txt
echo "log didn't exist and was created"
fi

echo "Reading log file:"
while IFS= read -r line; do
    echo "$line"
done < log.txt


