#!/bin/bash

for (( i=1 ; i<=10 ; i++ ))
do
    if [ $i -gt 8 ]
    then
      break
    fi
    echo "$i"
done

for (( i=1 ; i<=10 ; i++ ))
do
    if [ $i -eq 8 ]
    then
      continue
    fi
    echo "$i"
done