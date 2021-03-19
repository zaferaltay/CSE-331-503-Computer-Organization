#include<stdio.h>
#define MAX_SIZE 100


int sizeCounter;



int CheckSumPossibility(int num, int arr[], int size){
	
	if(num==0) return 1;
	if(num<0) return 0;
	if(sizeCounter-size+1==sizeCounter+1) return 0;
	
	
    /*if(num<arr[sizeCounter-size+1])CheckSumPossibility(num,arr,size-1);*/                                       
	
	int val1 = CheckSumPossibility(num,arr,size-1);
	if(val1==1){
	return 1;}
	int val2 = CheckSumPossibility(num-arr[sizeCounter-size+1],arr,size-1);
	if(val2==1)	return 1;
	return 0;
}


int main()
{
    
    
	int arraySize;
	int arr[MAX_SIZE];
 	int num;
	int returnVal;	
	
	printf("Enter the array size: ");
	scanf("%d",&arraySize);
	
	
	sizeCounter=arraySize-1;
	
	
	
	
	printf("Enter the target num: ");
	scanf("%d",&num);
	
	for(int i=0;i<arraySize;i++){
		scanf("%d",&arr[i]);
	}
		
    returnVal=CheckSumPossibility(num, arr, arraySize);
    if (returnVal == 1){
        printf("POSSIBLE!");
  
    }
    else
        printf("IMPOSSIBLE!");
    return 0;
}
