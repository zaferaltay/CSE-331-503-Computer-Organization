.data

arr:
	.space 400
arrSize:
	.space 4	
target:
	.space 4	
input_str :
	.asciiz "Enter the array size"	
target_str:
	.asciiz "Enter the target num"	
str1:
	.asciiz "Possible!"
str2:   
	.asciiz "Impossible!"
sizeCounter:
	.space 4	
 
.text 
.globl main

main:
#--------------------------------------------
	li $v0,4		#	printf("Enter the array size: ");
	la $a0,input_str 	#Ekrana array size i�in yazd�k
	syscall   


	li $v0,5 		#	scanf("%d",&arraySize);
	syscall			#Kullan�c�dan ald���m�z say�y� kaydettik
	sw $v0,arrSize 
#-------------------------------------------------------------	
	addi $t0,$v0,-1
	sw $t0,sizeCounter   	#	sizeCounter=arraySize-1;
#-------------------------------------------------------------
	li $v0,4		# targeti sorduk
	la $a0,target_str      #   printf("Enter the target num: ");
	syscall      

	li $v0,5 		#   scanf("%d",&num);
	syscall
	sw $v0,target          #targeti memory'e yazd�k
#-----------------------------------------------------------------
	li $t0,0 #for i�in atama (i)
	lw $t1,arrSize
	la $t3,arr  #arrayin adresini ald�k
	add $t5,$zero,$t3 #adresi t5 e kopyalad�k
forLoop:
	slt $t2,$t0,$t1         	#e�er i arrSizedan k���kse
	beq $t2,$zero,endLoop 		#e�er i k���k olmazsa t2 0 olur ve ��kar
	li $v0,5			#kullan�c�ya say�y� sorduk
	syscall
	sw $v0,0($t5) 			#array indeksine say�y� yazd�k
	addi $t5,$t5,4 			# adrese s�rekli 4 ekleedik
	addi $t0,$t0,1
	j forLoop
endLoop:
	lw $a0,arrSize 			#array size'� a0 a ald�k (1. arg�man)
	lw $a1,target  			#target'� a1'e ald�k (2.arg�man)
	la $a3,arr     			#array adresini de 3. arg�man olarak ald�k
	jal CheckSumPossibility		  
	

resultRecursive:
	beq $v0,1,resultPos    #E�er v0 1 e�itse ekrana possible yazmak i�in
				# resultPos'a gider
		
			
resultNeg:	
	li $v0,4
	la $a0,str2 			# Impossible'� ekrana yazd�k
	syscall	
 	
 	li $v0,10		#Ekrana yazd�ktan sonra devam etmesin diye ��k�� yapt�k
 	syscall	
 resultPos:
 	li $v0,4
	la $a0,str1 			# Possible'� ekrana yazd�k
	syscall	
	
	li $v0,10	#Ekrana yazd�ktan sonra devam etmesin diye ��k�� yapt�k
 	syscall	





#-----------------------------------------

CheckSumPossibility:
	bne $a1,$zero,State2 	#ilk base
	li $v0,1	     	#ilk base sa�larsa v0'� 1 yap
	jr $ra			#if(num==0) return 1;
State2:	
	slt $t1,$a1,$zero	#ikinci base 
	beq $t1,$zero,State3	#if(num<0) return 0;
	li $v0,0
	jr $ra	
State3:	
	lw $t2,sizeCounter #sizecounter ald�k
	addi $t0,$t2,1   #(sizeCounter+1) e�ittir ko�ulu i�in
	sub $t2,$t0,$a0   #sizecounter+1-size
	bne $t2,$t0,Continue #	if(sizeCounter-size+1==sizeCounter+1) return 0;
	li $v0,0
	jr $ra	
	  
Continue:#int val1 = CheckSumPossibility(num,arr,size-1);

	addi $sp,$sp,-8  #Verilere tekrar eri�mek i�in stackte saklad�k
	sw $a0,0($sp)    #Sadece size de�i�ti�i i�in size'� ve return adresini saklad�k
	sw $ra,4($sp)    #
	addi $a0,$a0,-1  #size-1
	jal CheckSumPossibility  #CheckSumPossibility(num,arr,size-1);

FirstComing:	
	addi $t1,$zero,1       #d�n�� kontol� i�in 1 kulland�k
	beq $t1,$v0,resultRecursive  # #if(val1==1) return 1;
	
	lw $a0,0($sp)          #saklad���m�z ifadeleri geri ald�k
	lw $ra,4($sp)
	addi $sp,$sp,8
	addi $sp,$sp,-12       #Sonraki fonksiyon i�in ifadeleri saklad�k
	sw $a1,0($sp)
	sw $a0,4($sp)
	sw $ra,8($sp)
	lw $t2,sizeCounter     #sizecounter ald�k
	sub $t2,$t2,$a0        #size counter-size
	addi $t2,$t2,1         #sizecounter-size+1
	
	
	#int val2 = CheckSumPossibility(num-arr[sizeCounter-size+1],arr,size-1);
	la $t1,arr	
	sll $t2,$t2,2          # 4 kat�n� ald�k ��nk� indeksin 4 kat� olarak art�yor.1 word =4 bit
	add $t1,$t1,$t2
	lw $t4,($t1)		#arr[sizeCounter-size+1]
	
	sub $a1,$a1,$t4		#num-arr[sizeCounter-size+1]
	addi $a0,$a0,-1        #size-1
	jal CheckSumPossibility
	
	addi $t1,$zero,1
	beq $t1,$v0,resultRecursive #if(val2==1) return 1;
	
	lw $a1,0($sp)		#saklad���m�z elemanalr� geri ald�k sonra stacki serbest b�rakt�k
	lw $a0,4($sp)
	lw $ra,8($sp)
	addi $sp,$sp,12
	jr $ra			#�nceki yere d�nd�k
	
	
result:	
	li $v0,1
	j resultRecursive
 			
 				
 					
 						
 								
