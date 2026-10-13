Log Archive Tool

A simple Bash script that compresses a specified log directory into a .tar.gz archive and records each successful archive operation in a history log.

Features

Accepts a directory path from the user.

Validates that the path exists and is a directory.

Compresses the selected directory using tar and gzip.

Adds a timestamp to the archive filename.

Records successful archive operations in a history log.

Requirements

Linux

Bash

GNU tar

Standard utilities such as date, dirname, and basename

How to Run

Clone this repository:

git clone https://github.com/amaldev-devops/log-archive-tool.git

Enter the project directory:

cd log-archive-tool

Make the script executable:

chmod +x log-archive.sh

Run the script:

./log-archive.sh

Enter the path of the directory you want to archive when prompted.

Output

The script creates an archive_logs/ directory containing compressed archives and an archive history log.

Project Page

https://roadmap.sh/projects/log-archive-tool
