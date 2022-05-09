if [ -e $1 ]
then
	name=$1
	echo $name
        set -- `who`
	while(1)
	do
		if (name = $1)
			cd home/$1
		else
			shift(5)
			exit
		fi
	done
fi	
