
i=1
declare -A  dict
while [ $i -le 50 ]
do
month=$(( RANDOM%12+1 ))
j=1
for (( j=1; j<=12; j++ ))
do
	if [ $month -eq $i ]
	then
		(( dict[$j]++ ))
	fi
done
i=$(( $i+1 ))
done
k=1
for (( k=1; k<=12; k++ ))
do
	echo "Month $k has birthday : ${dict[$k]} people"
done
