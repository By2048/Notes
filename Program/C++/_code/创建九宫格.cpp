#include <string>
#include <iostream>
using namespace std;
void Build (int n)
{
	int i,j;
		cout<<"┌";
		for(i=0;i<n-2;i++)
			cout<<"┬";
		cout<<"┐"<<endl;	// 第一行
		
		for(i=0;i<n-2;i++)
		{
			cout<<"├";
			for(j=0;j<n-2;j++)
				cout<<"┼";
			cout<<"┤"<<endl;
		}
		
		cout<<"└";
		for(i=0;i<n-2;i++)
			cout<<"┴";
		cout<<"┘"<<endl;	// 倒数第一行
}

int main ()	// ●○ 2=<n<=37 n*n 格子
{
	int i,j,n;
	while(cin>>n)
	{	
		Build(n);		
	}
	return 0;
}

