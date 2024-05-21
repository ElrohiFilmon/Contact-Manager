: ' 
/* @update_contact.sh
|| @version 2.0
|| @author Elrohi Filmon
|| @contact Elrohi@proton.me
||
|| @description
|| | Demonstrates Updates specified contact in the csv file.
|| #
*/
' 

#!/bin/bash

# Define the contacts file path
main_file="contacts.csv"
temp_file="temp.csv"

if [ ! -f $temp_file ]; then
    touch $temp_file
fi

# Get user input for contact name to update
sfName=$(whiptail --inputbox "Which contact do you want to update: " 8 39 Name --title "First Name" 3>&1 1>&2 2>&3)

# Check if name is empty
if [ -z "$sfName" ]; then
  whiptail --msgbox "Please enter a contact name to update." 10 50
  exit 1
fi

enter(){
  NFN=$(whiptail --inputbox "Enter the contact's first name : " 8 39 FirstName --title "First Name" 3>&1 1>&2 2>&3)
  NLN=$(whiptail --inputbox "Enter the contact's last name : " 8 39 LastName --title "Last Name" 3>&1 1>&2 2>&3)
  NPN=$(whiptail --inputbox "Enter the contact's phone number : " 8 39 Number  --title "Phone Number" 3>&1 1>&2 2>&3)
  NEA=$(whiptail --inputbox "Enter the contact's Email Address : " 8 39 Email  --title "Email Address" 3>&1 1>&2 2>&3)
  NG=$(whiptail --inputbox "Enter the contact's group : " 8 39 Group  --title "Grouping" 3>&1 1>&2 2>&3)
}
enter
if whiptail --title "Update Notice" --yesno "Are these your input values? \n $NFN \n$NLN \n $NPN \n $NEA \n $NG " 0 0; then
  while IFS=, read -r firstName lastName Phone Email Group; do
    if [ "$sfName" = "$firstName" ]; then
      echo "$NFN,$NLN,$NPN,$NEA,$NG" >> $temp_file
    else
     echo "$firstName,$lastName,$Phone,$Email,$Group">>$temp_file
    fi
  done <"$main_file"
  cat $temp_file>$main_file
  rm -rf $temp_file

else
    echo "Sure! Try again" 
    enter
fi

whiptail --msgbox "Contact '$sfName' updated successfully!" 10 50


sleep 0.5 | whiptail --gauge "Please wait while we are loading up contact manager..." 6 50 0
./contact_manager.sh