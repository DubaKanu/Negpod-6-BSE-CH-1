#!/bin/bash

directory="Negpod_id-q1"

if [[ ! -d $directory ]]; then
    mkdir $directory

    mv ../shell_programming/main.sh ../shell_programming/students-list_1023.txt ../shell_programming/select-emails.sh ../shell_programming/student-emails.txt $directory

    echo "Files moved successfully"

else

	echo "Files have already been moved! Please try adding new files."
fi
