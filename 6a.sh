if [ $# -ge 1 ]
then
	if [ ! -e ~/mydir ]
	then
		mkdir ~/mydir
	fi	
	for k in $*
	do	
			if [ -f $k ]
			then
				find $HOME -name "$k">files
				while read line
				do
			
					num=`echo $line | grep -o "/" | wc -l`
					num=`expr $num + 1`
					file=`echo $line | cut -d "/" -f $num`
					cat $line
					echo "--------------------------------------------------------------"
					if [ `ls ~/mydir | grep $file | wc -l` -eq 0 ]
					then
						cp $line ~/mydir 
					fi
				done<files
			else
				echo "File doesn't exists"
			fi
	done
else
	echo "Give arguments"
fi
