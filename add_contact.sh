: '
/* @add_contact.sh
|| @version 2.0
|| @author Rami Hussen
|| @contact jayanderso@proton.me
||
|| @description
|| | Demonstrates Adding a contact in the csv file 
|| #
*/
'
#!/bin/bash

firstName=$(whiptail --inputbox "Enter the contacts first name: " 8 39 Name --title "Full Name" 3>&1 1>&2 2>&3)
lastName=$(whiptail --inputbox "Enter the contacts last name: " 8 39  Name --title "last Name" 3>&1 1>&2 2>&3)
phoneNumber=$(whiptail --inputbox "Enter the contacts phone number: " 8 39  Number --title "Phone Number" 3>&1 1>&2 2>&3)
emailAddress=$(whiptail --inputbox "Enter the contacts Email Address: " 8 39  Address --title "Email Address" 3>&1 1>&2 2>&3)
group=$(whiptail --inputbox "Enter the contacts group: " 8 39 Group  --title Group 3>&1 1>&2 2>&3)
{
for ((i = 0 ; i <= 100 ; i+=5)); do
    sleep 0.1
    echo $i
done
    } | whiptail --gauge "Loading the add script..." 6 50 0
echo $firstName,$lastName,$phoneNumber,$emailAddress,$group >> contacts.csv
whiptail --msgbox "Contact '$firstName'contact added successfully!" 10 50

sleep 0.5| whiptail --gauge "Please wait while we are loading up contact manager..." 6 50 0
./contact_manager.sh

