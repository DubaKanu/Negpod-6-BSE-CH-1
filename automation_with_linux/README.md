# Automation with Linux

This directory contains the scripts and files related to the "Automation with Linux" assignment.

## Files

1. `Move-to-directory.sh`: This script automatically moves all 4 files created in Question 1 to a directory named `Negpod_6-q1`.
2. `backup-Negpod_6.sh`: This script backs up the `Negpod_6-q1` directory to a remote server located at `ec1ebc754f75.a5efec7a.alu-cod.online`. The backup is stored in the `/summative/0524-2024m` directory on the remote server.
3. `main_2.sh`: This is the main script that provides a menu-driven interface for the user to either move the files to the `Negpod_6-q1` directory or back up the directory to the remote server.

## Usage

1. Run the `main_2.sh` script to access the main menu.
2. Choose the desired option (1. Move files to directory, 2. Back up files to the remote server, 3. Exit).
3. If you choose option 1, the `Move-to-directory.sh` script will be executed, and the files will be moved to the `Negpod_6-q1` directory.
4. If you choose option 2, the `backup-Negpod_6.sh` script will be executed, and the `Negpod_6-q1` directory will be backed up to the remote server.
5. If you choose option 3, the script will exit.

## Remote Server Details

- Host: `ec1ebc754f75.a5efec7a.alu-cod.online`
- Username: `ec1ebc754f75`
- Password: `ea1d8f222b11d7be18f6`
- Location for backing up: `/summative/0524-2024m`
