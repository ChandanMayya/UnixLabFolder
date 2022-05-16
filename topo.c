#include<stdio.h>
int a[100][100],n,visited[10],count=0,top[10],k=0;
void dfs(int v){
int w;
	count++;
	visited[v]=count;
	for(w=0;w<n;w++){
		if(visited[w]==0 && a[v][w]==1)
		dfs(w);
	}
	printf("%d\t",v);
	top[k++]=v;
	
}
void main(){
int i,j;
	printf("Enter the numbr of verteces:\t");
	scanf("%d",&n);

	printf("Enter the Adjacency matrix:\n");
	for(i=0;i<n;i++)
		for(j=0;j<n;j++)
			scanf("%d",&a[i][j]);

	printf("The Adjacency Matrix values are:\n");
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
			printf("\t%d\t",a[i][j]);
		printf("\n");
	}
	
	for(i=0;i<n;i++)
		visited[i]=0;
	printf("\n....DFS Traversal:.....\n");
	//for(i=0;i<n;i++){
	//if(visited[i]=0)
	dfs(0);//}
	printf("\n....Topological Sorting:.....\n");
	for(i=n-1;i>=0;i--)
		printf("%d\t",top[i]);
	
}
