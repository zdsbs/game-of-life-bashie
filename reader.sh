#!/bin/bash
F=""
while read line 
do
	F="$F$line"
done <$1


function readfile {
F=""
	while read line
	do
		F="$F$line"
	done <$1
echo $F
}

foo=$(readfile $1)
echo $foo

diff -q $1 $2
if [ $? == 0 ]; then 
	echo yay
else 
	echo boo
fi

