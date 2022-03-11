if [ $# -ne 0 ]
then
	p=`echo $1 | tr "/" " "`
	for i in $p
	do
		mkdir $i
		cd $i
	done
	echo "Directories Created"
else
	echo "Please enter proper Parameters!"
fi
	 
