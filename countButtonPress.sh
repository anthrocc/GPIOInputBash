#!/bin/bash
i=0
while true
do  
    while true
    do
        b=$(gpio read 5)
        if [ $b -eq 0 ]
        then
            break
        fi
    done
    while true 
    do
        b=$(gpio read 5)
        if [ $b -eq 1 ]
        then
            let i=i+1
            ./setbits.sh $i
            if [ $i -eq 16 ]
            then
                gpio write 4 1
                sleep 1
                gpio write 4 0
                i=0
            fi
            break
        fi
    done
done
