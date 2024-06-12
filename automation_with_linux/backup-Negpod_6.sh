#!/bin/bash
#Backup the negpod_id-q1 directory to the remote server

directory="Negpod_6-q1"
remote_host="ec1ebc754f75.a5efec7a.alu-cod.online"
remote_user="ec1ebc754f75"
remote_password="ea1d8f222b11d7be18f6"
remote_directory="/summative/0524-2024m"

if [[ -d $directory ]]; then

	sshpass -p $remote_password scp -r $directory $remote_user@$remote_host:$remote_directory
	echo "Backup to remote server completed successfully."
else
    echo "Directory $directory does not exist."
fi
