#!/bin/bash

DIRECTORY="Negpod_id-q1"

if [[ ! -d $DIRECTORY ]]; then
    mkdir $DIRECTORY
fi

mv main.sh students-list_0524.txt select-emails.sh student-emails.txt $DIRECTORY
echo "Files moved to $DIRECTORY."
