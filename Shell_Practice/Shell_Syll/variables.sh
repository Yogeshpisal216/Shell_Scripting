#! /bin/bash

echo Our shell name is $BASH
echo Our shell version name is $BASH_VERSION
echo Our home directory is $HOME
echo Our current working directory is $PWD

name="Mark" #System variables
val=10
echo "The name is $name"
echo "Value $val"

#-------------------------------------------------------

echo "Enter name :- "
read  name1
echo "Entered name :- " $name1

#Read Options.
#-p = Prompt before reading input.
#-s = Silent mode (no echo, useful for password)
#-t = Timeout (waits for N seconds, then aborts)
#-n = Read only N characters
#-r = Raw input mode (blackshlashes not escaped)
#-a = Store input into an array.
#-e = Allow editing input using arrow keys (bash only, rarely used)
#-d = Specify a custom delimiter

# 1. Simple read

read name
echo "Hello, $name"

# 2. With prompt

read -p "Enter your name: " name
echo "Welcome, $name"

# 3. Silent input (e.g., passwords)

read -sp "Enter password: " password
echo -e "\nPassword captured"

# 4. Timeout after 5 seconds

read -t 5 -p "Enter something in 5 seconds: " input
echo "You entered: $input"

# 5. Read only 1 character

read -n 1 -p "Press any key to continue..."
echo

# 6. Raw input (disable escape character interpretation)

read -r -p "Enter path: " path
echo "Path: $path"

# 7. Read into an array

read -a items -p "Enter space-separated items: "
echo "First item: ${items[0]}"

# 8. Custom delimiter (bash 4.4+)

read -d ':' -p "Enter text (ends with colon): " input
echo "Captured: $input"