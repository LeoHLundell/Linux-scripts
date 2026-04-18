#!/bin/bash
# Purpose: Count failed login attempts

echo "Analyzing failed login attempts..."
count=$(grep "Failed password" /var/log/auth.log | wc -l)

echo "Failed login attempts: $count"
