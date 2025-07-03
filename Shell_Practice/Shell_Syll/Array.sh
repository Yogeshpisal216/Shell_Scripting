#!/bin/bash

os=('ubuntu' 'windows' 'centos')

os[1]='kali' #Replace character.
#unset os[2] #Remove character.
echo "${os[@]}" # @ for all array.
echo "${os[0]}" #Put single value will print single character.
echo "${!os[@]}" # Print indexes of array.
echo "${#os[0]}" # Print total count of array.