#!/bin/bash

read -p "Enter full directory path, to backup and archive:" input

if [ ! -d "$input" ]; then
  echo "Not a valid Directory."
   exit 1
fi

 failsafe() {
 echo "Please wait until backup is completed to ensure file integrity"
 }

src="$input"
dest="$HOME/backups"
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
name="$(basename "$src")_${timestamp}.tar.gz"

echo "starting backup..."

trap failsafe SIGINT

if [ -d "$src" ] && [ -d "$dest" ]; then
 tar -czf "$dest/$name" "$src"
elif [ -d "$src" ] && ! [ -d "$dest" ]; then
 mkdir -p "$dest"
 tar -czf "$dest/$name" "$src"
else
 echo "Unexpected Error occured while searching for source: $src and Destination: $dest Script $0 ran at $(date)" >> barchive.log
 exit 1
fi

sleep 5

echo "Archive and Compression completed: $dest/$name"

