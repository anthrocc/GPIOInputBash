#!/bin/bash
while true
do  
    while true
    do
        b=$(gpio read 5)
        echo "up"
        if [ $b -eq 0 ]
        then
            break
        fi
    done
    while true 
    do
        b=$(gpio read 5)
        echo "down"
        if [ $b -eq 1 ]
        then
            break
        fi
    done
done
