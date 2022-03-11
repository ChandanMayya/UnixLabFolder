for i in $*
do
if [ -f $i ]
then
echo " --------- $i contents are ---- "
cat $i | tr "[a-g]" "[A-Z]"
echo " -------------------------------------------- "
else
echo " $i file does not exit "
fi
done
