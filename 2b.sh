if [ $# -eq 1 ]
then
	grep $1 /etc/passwd > file
	if [ $? -eq 0 ]
	then
		echo "Home directory of $1 is `cut -d ":" -f 6 file`"
	else
		echo "User does not exist"
	fi
else
	echo "Please give username"
fi
