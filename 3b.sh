# Program to implement terminal locking
echo "Enter the password:"
stty -echo
read pw1
stty echo
echo "Enter the confirm password:"
stty -echo
read pw2
stty echo
while [ "$pw1" != "$pw2" ]
do
	clear
	echo "passwords does not match"
	echo "Enter the Password"
	stty -echo
	read pw2
	stty echo
done
clear
echo "Terminal Locked!"
echo -n "Enter password to Unlock:"
stty -echo
read pw3
stty echo
while [ "$pw1" != "$pw3" ]
do
	clear
	echo "passwords does not match"
	echo "Reenter the Password"
	stty -echo
	read pw3
	stty echo
done
clear






