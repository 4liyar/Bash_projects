#! /bin/bash

set -e

if [ "$EUID" -ne 0 ]; then
	echo "This file should be run using sudo."
	exit 1
fi

#stroring users input in dir.
read -p "Please enter any logs directory path you want compress: " dir

#Creating unique file name using timestamp.
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
archive_name=log_backup_$timestamp.tar.gz


#creating a new directory for compressed files.
dest_dir=/home/admin/adv_bash/logs
mkdir -p $dest_dir

#compressing files form inside the directory provided by user.
tar -czvf $dest_dir/$archive_name -c $dir

echo "log files compressed and saved in /home/admin/adv_bash/logs successfully."
echo "Abdul Musawer omery"
