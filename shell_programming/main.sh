#!/usr/bin/env bash
#This script is going to create student record, view student lists, delete student record
#This script will also update student record, save student emails in sorted manner and view all sorted emails

Display_the_app_menu (){
        echo	
        echo "***************************************************************************"
        echo "************** Welcome to ALU's BSE student registration portal ***********"
        echo "***************************************************************************"
        echo
        echo "                       What would you like to do today                     "
        echo
        echo "                                 MAIN MENU                                 "
        echo
        echo
        echo "                          1. Create student record                         "
        echo "                          2. View all students                             "
        echo "                          3. Delete student record                         "
        echo "                          4. Update student record                         "
        echo "                          5. Save student emails sorted in ASC             "
        echo "                          6. View all emails only in ASC order             "
        echo "                          7. Exit                                          "
	echo
        echo -n "Enter your choice here [1-7]: "
	
} 

Create_student_record (){
	read -p "Enter student ID: " ID
        read -p "Enter student Email: " email
        read -p "Enter student Age: " age
        echo "$ID,$email,$age" >> students-list_1023.txt
}   

View_all_students (){
	cat students-list_1023.txt
	sleep 2
} 

Delete_student_record (){
	read -p "Enter student ID to delete: " ID

	if [ $(grep -c "$ID" students-list_1023.txt) -eq 1 ]; then

		sed -i "/$ID/d" students-list_1023.txt

		echo "The ID: $ID has been succesffuly deleted."

	else
		echo "Unable to find $ID ID.";
	
	fi

}


Update_student_record (){
	
	read -p "What's your ID: " ID

echo #empty line for readability

if [[ $(grep -c $ID students-list_1023.txt) -eq 1 ]]; then

        echo "The provided ID record is available!"
        echo #empty line

        read -p "What do you want to update? [email/age]: "
        echo #empty line

        if [[ $REPLY = email ]]; then

                echo "is your email $(grep "$ID" students-list_1023.txt | cut -d ',' -f2)"
                echo #empty line

                read -p "[yes/no]: "
                echo #empty line

                if [[ $REPLY = yes ]]; then

                        old_email="$(grep "$ID" students-list_1023.txt | cut -d ',' -f2)"

                        read -p "Enter your new email: " new_email
                        echo #empty line

                        sed -i "s/$old_email/$new_email/g" students-list_1023.txt

                        echo "Email changed successfully!" 
                        echo
                else
                        echo "System Error! Retry."
                        echo 

                fi
	 elif [[ $REPLY = age ]]; then

                old_age="$(grep "$ID" students-list_1023.txt | cut -d ',' -f3)"

                number_line="$(grep -n "$ID" students-list_1023.txt | cut -d ':' -f1)"

                read -p "Enter your new age: " new_age
                echo #empty line

                sed -i "${number_line}s/,$old_age/,$new_age/" students-list_1023.txt

                echo "Age changed successfully!"
		sleep 2

        else
                echo "Wrong choice: Choose and Type between email and age"

        fi

else
        echo "Invalid student ID";
	sleep 2

        exit 1;

fi

}	
Save_student_emails_sorted_in_ASC (){
	echo "saving the emails in ASC order"
	./select-emails.sh
	sleep 2
}

View_all_emails_only_in_ASC_order (){
	echo "sorting the emails in ASC order" 
	cat student-emails.txt
	sleep 2
}

Exit (){

        echo "Exiting the application..."
  exit 0
}

# Main logic
while true; do
    Display_the_app_menu
    read choice

    case $choice in
        1) Create_student_record ;;
        2) View_all_students ;;
        3) Delete_student_record ;;
	4) Update_student_record ;;
	5) Save_student_emails_sorted_in_ASC ;;
	6) View_all_emails_only_in_ASC_order ;;
	7) Exit ;;
        *) echo "Invalid choice, please try again: " ;;
    esac

    echo # Print a blank line for readability
done

