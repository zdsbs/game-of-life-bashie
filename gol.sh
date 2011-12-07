#!/bin/bash
source func.sh
board=

while read line
do
	board=$board$line
done <$1



j=0
while [ $j -lt 3 ]; do
	a=`expr $j \* 3 + 1`
	b=`expr $a + 2`
	echo $board | cut -c $a-$b
	j=`expr $j + 1`
done


