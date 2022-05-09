BEGIN{
	FS="-"
	print("Book\t         sold\t")
	print("---------------------------")
}

{
	arr[$1]+= $2
	total+= $2 
}

END{
	for (k in arr)
	{
		printf("%s\t %d\n",k,arr[k])
	}
	print("--------------------------")
	printf("Total book sold: %d ",total)
	}
