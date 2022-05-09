BEGIN{
FS="-"
}
{
split($0,a,"-")
}
END{
      if((a[2]>0 && a[2]<=12) && (a[1]>0 && a[1]<=31))
        {
        if(a[2]==1 ||a[2]==3 ||a[2]==5 ||a[2]==7 ||a[2]==8 ||a[2]==10 ||a[2]==12 )
   system("date +%B%t%e%t%Y -d  "a[3]"-"a[2]"-"a[1]"")
   else if(a[2]==4 ||a[2]==6 ||a[2]==9 ||a[2]==11) 
   {
   if(a[1]>0 && a[1]<=30)
system("date +%B%t%e%t%Y -d  "a[3]"-"a[2]"-"a[1]"")
}
else if (a[2]==2)
 {
if(a[1]>0 && a[1]<=28 && (a[3]%4)!=0)
system("date +%B%t%e%t%Y -d  "a[3]"-"a[2]"-"a[1]"")
else if(a[1]>0 && a[1]<=29 && (a[3]%4)==0)
system("date +%B%t%e%t%Y -d  "a[3]"-"a[2]"-"a[1]"")
else
printf "invalid date \n"
}
}
else 
   printf "invalid! please enter correct month or date \n"
  }
