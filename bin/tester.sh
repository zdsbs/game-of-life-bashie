#!/bin/bash
actual=/tmp/tmp.$$
./gol.sh $1 > $actual
diff -q $actual $2 > /dev/null 2>&1
if [ $? == 0 ]; then 
	echo yay
else 
	echo boo
fi

