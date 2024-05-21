: '
/* @remove_conatct.sh
|| @version 2.0
|| @author Ebenezer Samuel
|| @contact 
||
|| @description
|| | Demonstrates Removes specified contact in the csv file. 
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


sfName=$(whiptail --inputbox "Which contact do you want to delete: " 8 39 Name --title "First Name" 3>&1 1>&2 2>&3)


if [ -z "$sfName" ]; then
  whiptail --msgbox "Please enter a contact name to delete" 10 50
  exit 1
fi

if whiptail --title "Delete Notice" --yesno "Are you sure in deleting $sfName " 30 50; then
  while IFS=, read -r firstName lastName Phone Email Group; do #nternal Field Separator (IFS)
    if [ "$sfName" = "$firstName" ]; then
      echo "" >> $temp_file
    else
     echo "$firstName,$lastName,$Phone,$Email,$Group">>$temp_file
    fi
  done <"$main_file"
  cat $temp_file>$main_file
  rm -rf $temp_file

else
    echo "Sure! Try again" 
    exit 1
fi

whiptail --msgbox "Contact '$sfName' deleted successfully!" 10 30


sleep 0.5 | whiptail --gauge "Please wait while we are loading up contact manager..." 6 50 0
./contact_manager.sh
