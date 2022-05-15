echo ‘Enter the login name of the user:”
read user
period=0
while [ true ]
do
var=`who | grep –w “$user”`
len=`echo “$var | wc –c`
if [ $len –gt 1 ]
then
echo “$user logged in $tm seconds”
exit
else
sleep 1
tm=`expr $tm + 1`
fi
if [ $tm –eq 61 ]
then
echo “$user did not login within 1 minute”
exit
fi
done
