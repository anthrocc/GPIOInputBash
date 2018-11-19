#!/bin/bash
i=0
while true
do  
    b=$(./waitForButtonPress.sh)
    echo $b
    while [ $b -eq 0 ]
    do
        sleep 0.1
        b=$(./waitForButtonPress.sh)
        if [ $b -eq 0 ]
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
