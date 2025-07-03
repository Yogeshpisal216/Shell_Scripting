#!/bin/bash

select name in Mark John Tom Ben 
do
    case $name in
    Mark)
        echo mark selected
        ;;
    John)
        echo john selected
        ;;
    Tom)
        echo tom selected
        ;;
    Ben)
        echo ben selected
        ;;
    *)
        echo "Error please provide the no. between 1..4"
        ;;
    esac
done


#Run this using bash command.
#-->bash select_loop.sh