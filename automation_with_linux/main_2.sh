#!/usr/bin/env bash
#This script is going to create student record, view student lists, delete student record
#This script will also update student record, save student emails in sorted manner and view all sorted emails

Display_the_app_menu (){
        echo
        echo "***************************************************************************"
        echo "************* Welcome to ALU's BSE student record backup portal ***********"
        echo "***************************************************************************"
        echo
        echo "                       What would you like to do today                     "
        echo
        echo "                                 MAIN MENU                                 "
        echo
        echo
        echo "                    1. Move files to directory                             "
        echo "                    2. Back up files to the remote server                  "
        echo "                    3. Exit                                                "
        echo
        echo -n "Enter your choice here [1-3]: "
}

Backup_the_student_record_to_your_PC() {
    echo "Moving files to directory"
    ./Move-to-directory.sh
    echo
    echo "Files moved successfully!"
    echo
    sleep 2
    echo "What would you like to do next?"
    echo "1. Move files to directory again"
    echo "2. Go back to main menu"
    echo "3. Exit"
    echo -n "Enter your choice here [1-3]: "
    read next_choice

    case $next_choice in
        1) Backup_the_student_record_to_your_PC ;;
        2) return ;;
        3) Exit ;;
        *) echo "Invalid choice, please try again." && Backup_the_student_record_to_your_PC ;;
    esac
}

Back_up_the_student_record_to_the_remote_server() {
    echo "Backing up files to the remote server"
    ./backup-Negpod_6.sh
    echo
    echo "Files backed up successfully!"
    echo
    sleep 2
    echo "What would you like to do next?"
    echo "1. Go back to main menu"
    echo "2. Exit"
    echo -n "Enter your choice here [1-2]: "
    read next_choice

    case $next_choice in
        1) return ;;
        2) Exit ;;
        *) echo "Invalid choice, please try again." && Back_up_the_student_record_to_the_remote_server ;;
    esac
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
        1) Backup_the_student_record_to_your_PC ;;
        2) Back_up_the_student_record_to_the_remote_server ;;
        3) Exit ;;
        *) echo "Invalid choice, please try again: " ;;
    esac
done
