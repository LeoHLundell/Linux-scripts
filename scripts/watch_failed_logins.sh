#!/bin/bash
# Purpose: Watch failed login attempts in real time

echo "Watching for failed login attempts (Ctrl+C to stop)..."

journalctl -f | grep --line-buffered "Failed password"
