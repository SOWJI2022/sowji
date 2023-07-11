#!/bin/bash
source_file="F:/my-docker-sample/test2/names.txt"
destination_dir="F:/my-docker-sample/backup"
timestamp=$(date +"%Y-%m-%d_%H.%M.%S")
mkdir -p "$destination_dir"
backup_file="$destination_dir/backup_names_${timestamp}.txt"
cp "$source_file" "$backup_file"
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $backup_file"
else
    echo "Backup failed!"
fi