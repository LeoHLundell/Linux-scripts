#!/bin/bash

echo "Watching $logfile for 'Failed' logins..."
echo "Press Ctrl+C to stop"

journalctl -f | grep --line-buffered "Failed"
