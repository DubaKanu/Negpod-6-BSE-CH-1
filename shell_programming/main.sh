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
	read -p "Enter student email: " email
        read -p "Enter student age: " age
        read -p "Enter student ID: " ID
        echo "$email, $age , $ID" >> students-list_1023.txt
}   

View_all_students (){
	cat students-list_1023.txt
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
    echo
    echo "Updating student record..."
    echo
    read -p "Enter student ID to update: " ID
    read -p "Enter student new email: " new_email
    read -p "Enter student new age: " new_age
    sed -i "s/\(.*\), \($ID\)/\1, $new_email, $new_age, \2/" students-list_1023.txt
    echo
    echo "Student record updated successfully."
    return
}
Save_student_emails_sorted_in_ASC (){
	echo "saving the emails in ASC order"
	./select-emails.sh
}

View_all_emails_only_in_ASC_order (){
	echo "sorting the emails in ASC order" 
	cat student-emails.txt
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

