#!/bin/bash

echo "Analyserar auth.log..."
grep "Failed password" /var/log/auth.log | wc -l
