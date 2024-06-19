#!/bin/bash

# directory="Negpod_6-q1" : To assings the string "Negpod_6-q1" to a virables named directory.

directory="Negpod_6-q1"

#To check if the directory specified by the $directory variable does NOT exist using the -d operator for directory check.

if [[ ! -d $directory ]]; then
    mkdir $directory

# 
    mv ../shell_programming/main.sh ../shell_programming/students-list_1023.txt ../shell_programming/select-emails.sh ../shell_programming/student-emails.txt $directory

    echo "Files moved successfully"

else

	echo "Files have already been moved! Please try adding new files."
fi
