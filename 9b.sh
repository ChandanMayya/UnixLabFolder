if [ $# -ne 0 ]
then
	if [ -e $1 ]
	then
		n=40
		while read line
		do
			len=`expr length "$line"`
			if [ $len -lt $n ]
			then
				echo $line
			else
				s=1
				e=$n
				echo "`echo $line | cut -c $s-$e` \\"
				rcl=`expr $len - $e`
				while [ $rcl -ge $n ]
				do
					s=`expr $e + 1`
					e=`expr $e + $n`
					echo "`echo $line | cut -c $s-$e` \\"
					rec=`expr $len - $e`
				done
				s=`expr $e + 1`
				echo $line | cut -c $s-
			fi
		done < $1
	else
		echo "No such file"
	fi
else
	echo "Enter proper parameters"
fi

