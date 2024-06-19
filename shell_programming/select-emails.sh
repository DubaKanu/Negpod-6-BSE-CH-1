#!/bin/bash

#a command to select just the emails of the student
#cut : this command extract specific parts of each line from a text
#-d ',' : to tell cut to use a comma (,) as the delimiter to seperate fields within each line.
#-f1 : Option specifies that we only want the first field before the comma from each line.

cut -d',' -f1 students-list_1023.txt | sort > student-emails.txt

echo "Student emails saved to student-emails.txt."
