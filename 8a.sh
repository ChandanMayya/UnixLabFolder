if [ $# -gt 0 ]
then
	who | grep -w $1 >s
	if [ $? -eq 0 ]
	then
		ch=`date +%H`   #CURRENT TIME
		cm=`date +%M`
		set -- `cat s | tr -s " " | cut -d " " -f 4 | tr ":" " "`
		lh=$1		#LOGIN TIME
		lm=$2
		hr=`expr $ch - $lh`
		mn=`expr $cm - $lm`	#WORKING TIME
		if [ $mn -lt 0 ]
		then
			mn=`expr $mn + 60`
			hr=`expr $hr - 1`
		fi
		echo "Specified user worked $hr : $mn "
	else	
		echo "User not Logged in!"
	fi
else
	echo Enter Username as parameter
fi
