#!/bin/bash

source func.sh

board="654321"
#654
#321
z=2
echo $(assert $(getcoord 1 1) "5")
echo $(assert $(getcell $board 1 1) "2")
echo $(assert $(getcell $board 0 0) "6")
echo $(assert $(neighbors $board 0 0) "532")
echo expr $[++z]
echo $z
./tester.sh dead.in dead.out 
./tester.sh lonely.in dead.out
