BEGIN{
	FS="|"
	printf("\n");
	print("Sl_no\tEmpID\t Name\t         Designation\t   DOJ\t        Salary\tHRA\t DA\t Gross");
	printf("----------------------------------------------------------------------------------------  \n");
}

{
	sno++
	if($5 < 10000)
	{
		da=0.45*$5
		hra=0.15*$5
		gs=$5 + da + hra
	}
	else
	{
		da=0.5*$5
		hra=0.2*$5
		gs=$5 + da + hra
	}

	printf("%d\t%d\t%s\t%s\t%s\t%d\t%d\t%d\t%d\n",sno,$1,$2,$3,$4,$5,hra,da,gs);
	thra+=hra
	tda+=da
	tgross+=gs
}

END{
	printf("-------------------------------------------------------------\n");
	printf("Total HRA=%d\t Total DA=%d\t Total Gross %d\n",thra,tda,tgross);
	printf("-------------------------------------------------------------\n");
}
