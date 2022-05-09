if [ $# -ne 0 ]
then
	#if [ -d "/Home/mydir" ]
	#then
		find $HOME -name "$1" -print
		cat $1
		cp -f $1 $Home/mydir/$1
	#else
		#echo "Does not exits"
	#fi
else
	echo "Enter the proper arguments"
fi

