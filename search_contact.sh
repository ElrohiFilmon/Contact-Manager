: '
/* @search_contact.sh
|| @version 2.0
|| @author Ahmed Umer
|| @contact 
||
|| @description
|| | Demonstrates Searching a specified contact in the csv file.
|| #
*/
' 

#!/bin/bash 
main_file="contacts.csv"
fName=$(whiptail --inputbox "Enter the contacts first name to search: " 8 39 First Name --title "Search" 3>&1 1>&2 2>&3)
{
for ((i = 0 ; i <= 100 ; i+=5)); do
    sleep 0.1
    echo $i
done
} | whiptail --gauge "We're searching for your contact" 6 50 0 3>&2 2>&1 1>&3
contact_info=$(grep -n "$fName" $main_file)
whiptail --msgbox "Contact '$fName' found successfully! \n $contact_info" 0 0 3>&2 2>&1 1>&3

sleep 0.5 | whiptail --gauge "Please wait while we are loading up contact manager..." 6 50 0
./contact_manager.sh
