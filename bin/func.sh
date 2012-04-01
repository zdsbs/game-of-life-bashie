
function getcoord {
expr $1 \* 3 + $2 + 1
}

function getcell {
coord=$(getcoord $2 $3)
echo $1 | cut -c $coord
}

function neighbors {
board=$1
x=$2
y=$3
out=
i=-1
j=-1

while [ $i -lt 2 ]; do
	while [ $j -lt 2 ]; do
		out="$out$(getcell $board $i $j)"
		j=$[++j]
	done
	i=$[++i]
done
echo $out
}

function assert {
if [ $1 == $2 ]; then
	echo yay: $1 == $2
else
	echo "boo - value was $1 expected $2"
fi
}
