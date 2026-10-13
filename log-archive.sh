#!/bin/bash

set -e

archive_dir="archive_logs"
log_file="${archive_dir}/archive.history.log"

echo "========================================="
echo "           LOG ARCHIVE TOOL              "
echo "========================================="

read -p "Enter the log directorypath to archive:" log_dir


#Check if the user entered anything

if [ -z "$log_dir" ]; then
	echo "Error: Path cannot be empty"
	exit 1
fi

#check if the path exists

if [ ! -d "$log_dir" ]; then
	echo "Error : $log_dir path is not a directory"
	exit 1
fi

#create archive storage directory
mkdir -p "$archive_dir"

#generate timestamp and archive filename 

timestamp=$(date +"%Y%m%d_%H%M%S")
archive_name="logs_archive_${timestamp}.tar.gz"
archive_path="${archive_dir}/${archive_name}"

#comress the directory

echo "compressing logs from '$log_dir' ......."
tar -czf "$archive_path" -C "$(dirname "$log_dir")" "$(basename "$log_dir")"

#write the history in history log
exec_time=$(date +"%Y-%m-%d %H:%M:%S")
echo "[${exec_time}] archived ${log_dir} to ${archive_path}" >> "$log_file"

# print the success details

echo -e "\n [SUCCESS] logs archieved successfully"
echo "archive file : ${archive_path}"
echo "history log: $log_file"
echo "==========================================="
