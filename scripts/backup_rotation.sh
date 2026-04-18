#!/bin/bash

src="$HOME/Documents/test_folder4"
dest="$HOME/backups"
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
backup_dir="$dest/test_folder4_$timestamp"

mkdir -p "$backup_dir"
rsync -a "$src/" "$backup_dir"

cd "$dest" || { echo "No such directory: "$dest" found" >> rotation.log; exit 1 }

backups=( $(ls -dt test_folder4_*) )

if [ "${backups[@]}" -gt 5 ]; then
 to_delete=( "${backups[@]:5}" )
  for dir in "${to_delete[@]}"; do
   rm -rf "$dir"
   echo "Deleted old backup: $dir" && echo "Deleted old backup: $dir at $(date)" >> rotation.log
  done
fi

