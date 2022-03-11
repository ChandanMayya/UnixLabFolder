file1=$1
if [ -e $file1 ]
then
set -- `ls -ld $file1`
echo " the creation time of $file1 is $6 $7 at $8 "
else
echo "file doesnot exists "
fi

