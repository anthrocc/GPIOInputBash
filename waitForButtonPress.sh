#!/bin/bash
while true
do
    b=$(gpio read 5)
    if [ $b -eq 0 ]
    then
        echo 0
        break         
    fi
done
