# Contact Manager

_Read this in other languages:_
[_አማርኛ_](README.am-AM.md) [_English_](README.md)\
## 
In computer systems, a contact manager plays an important role in storing user data.
This can be further implemented in our servers for storing client data and so on.
It's fluid working make it easy for the user to add any Faster
access, such as searching.

![Contact Manager](./contact_manager.png)

## Prerequsites

### Whiptail
- We have to install whiptail inorder for the app to work 
### Installation
#### so run the following install commands on
**Debin based Linux devices**

```bash
sudo apt install whiptail
```
**Arch based Linux devices**

```bash
sudo packman -Syu whiptail
```
**Red Hat based Linux devices**

```bash
sudo yum install whiptail
```

**Mac Os**

```bash
brew install whiptail
```

## Running Contact Manager
### Get the appication first by cloning it from github
```bash
git clone "https://github.com/ElrohiFilmon/Contact-Manager
```

### Run it using it main script
```bash
./contact_manager.sh
```


## Code Structure

1. **Contact Manager**
    - Has mimilist menu for users to choose from 
    - Has exit menu

2. **Add Contact**
    - Adds first name, last name, phone number, email address and group of the contact

3. **Update Contact**
    - Takes a search value of a name
    - Accepts the new values.  
    - Double check if the users input is correct
    - updates the contact with the searched name and imputed values 
4. **Remove Contact**
    - Takes a search value of a name  
    - Double check if the users input is correct
    - Deletes the contact with the searched name 
5. **Search Contact**
    - Takes a search value of a name
    - If it doesn't find it it gives out an error value
    - Then outputs the searched value with it's data

6. **Display Contacts**
    - Make a 10 by 50 message box to display all of the contacts in our file



## Limitations and Possible Improvements
    1. Only limitaition is the display funtions limited space
    2. No search function

## FAQs
**Q**: Can I search have mutiple contacts show on the message box?
**A**: No, this functionality is not present in this version.

**Q**: How can we enter a record without overwriting it?
**A**: By using the update contact menu.

## Future Enhancements
    - There are some features that are not in but inconsideration for the next version
    1. Better display menu implimenation might be solved in new whiptail versions


## References

- [Wikibooks](https://en.wikibooks.org/wiki/Bash_Shell_Scripting/Whiptail)
- [YouTube](https://www.youtube.com/watch?v=gtbX8J0jNkQ)
- [YouTube](https://www.youtube.com/watch?v=KsiPYMKSHU8)
- [GitHub](https://docs.github.com/en/get-started/writing-on-github)