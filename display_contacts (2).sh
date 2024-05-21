: '
/* @display_contacts.sh
|| @version 2.0
|| @author Ebenezer Samuel
|| @contact 
||
|| @description
|| | Demonstrates Displays all the contact in the csv file 
|| #
*/
' 
#!/bin/bash
main_file="contacts.csv"
{
for ((i = 0 ; i <= 100 ; i+=5)); do
    sleep 0.1
    echo $i
done
} | whiptail --gauge "Hold up we're loading up your contacts" 6 50 0

contacts=$(sed 's/,,/, ,/g' "$main_file" | column -s, -t
)
whiptail --title "Contacts" --msgbox "$contacts \n" 0 0 3>&2 2>&1 1>&3
{
for ((i = 0 ; i <= 100 ; i+=5)); do
    sleep 0.1
    echo $i
done
    } | whiptail --gauge "Please wait till we load the contact manager..." 6 50 0
./contact_manager.sh


