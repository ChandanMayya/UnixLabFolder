if [ $# -eq 1 ]
  then
if [ -d $1 ]
  then
      set -- `ls -Rl $1 | grep "^-" | tr -s " " | cut -d " " -f 5,9- | sort -n | tail -n 1`
      echo "File Size: $1"
      echo "File Name: $2"
else
      echo "Not a Directory"
fi
      else
      echo "Please Enter Directory Name"
fi
