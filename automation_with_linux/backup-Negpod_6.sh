#!/bin/bash
# Backup the Negpod_6-q1 directory to the remote server

directory="Negpod_6-q1"
remote_host="8db086299c2d.51efc529.alu-cod.online"
remote_user="8db086299c2d"
remote_directory="/summative/0524-2024m"

if [[ -d $directory ]]; then
    
    timestamp=$(date +"%Y%m%d%H%M%S")


    scp -r "$directory" "$remote_user@$remote_host:$remote_directory/${directory}_$timestamp"
    
    echo "Backup to remote server completed successfully."
else
    echo "Directory $directory does not exist."
fi
