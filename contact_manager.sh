: ' 
/* @contact_manager.sh
|| @version 2.0
|| @author Elrohi Filmon
|| @contact Elrohi@proton.me
||
|| @description
|| | Demonstrates Main script for running all the CRUD and other scripts.
|| #
*/
' 
#!/bin/bash

export NEWT_COLORS=' root=, blue window=, black shadow=, blue border=blue, black title=blue, black textbox=blue, black radiolist=black, black Label=black, blue checkbox=black, blue compactbutton=black, blue button=black, red'


CHOICE=$(
whiptail --title "Contact Manager Menu" --menu "Choose an option" 25 78 16 \
"Add contact" "Add a new contact ." \
"Edit contact" "Update an existing contact." \
"Remove contact" "Remove a contact " \
"Search contacts" "search all existing contacts." \
"Display contacts" "Display all existing contacts." \
"<-- Exit" "Exit the system" 3>&2 2>&1 1>&3	
)

case $CHOICE in
    "Add contact")
        ./add_contact.sh
        ;;
    "Edit contact")
        ./update_contact.sh
        ;;
    "Remove contact")
        ./remove_contact.sh
        ;;
    "Search contacts")
        ./search_contact.sh
        ;;
    "Display contacts")
        ./display_contacts.sh
        ;;
    "<-- Exit")
        ;;
esac




