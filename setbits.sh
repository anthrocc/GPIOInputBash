#!/bin/bash
#Bit1
((($1&1)==1)) && gpio write 0 1 || gpio write 0 0
#Bit2
(((($1>>1)&1==1))) && gpio write 1 1 || gpio write 1 0
#Bit3
(((($1>>2)&1==1))) && gpio write 2 1 || gpio write 2 0
#Bit4
(((($1>>3)&1==1))) && gpio write 3 1 || gpio write 3 0
