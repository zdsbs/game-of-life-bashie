#!/bin/bash
STR="hi"
echo $STR

if [ $STR = "hi" ]; then
	echo "its true"
fi

for i in $( ls ); do
	echo item: $i
done


COUNTER=0
while [ $COUNTER -lt 10 ]; do
	echo c $COUNTER
	let COUNTER=COUNTER+1
done

function quit {
	exit
}

function hello {
	echo hello! $1
}	
hello 
hello "yo"
quit
echo foo
