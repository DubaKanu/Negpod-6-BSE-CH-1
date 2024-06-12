#!/bin/bash

#a command to select just the emails of the student
cut -d',' -f1 students-list_1023.txt | sort > student-emails.txt

echo "Student emails saved to student-emails.txt."
