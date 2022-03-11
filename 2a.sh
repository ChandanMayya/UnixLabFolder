file1=$1
file2=$2
if [ -e $file1 ]
then
	set -- `ls -dl $file1`
	file1per=$1
else
	echo "$file1 doesnot exists"
	exit
fi
if [ -e $file2 ]
then	
	set -- `ls -dl $file2`
	file2per=$1
else
	echo "$file2 doesnot exists"
	exit
fi
if [ $file1per = $file2per ]
then
	echo "File permissions are identical"
	echo "Permissions of $file1 are $file1per"
else
	echo "File permissions are not identical!"
	echo "Permissions of $file1 are: $file1per"
	echo "Permissions of $file2 are: $file2per"
fi
