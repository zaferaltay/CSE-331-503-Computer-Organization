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
	la $a0,input_str 	#Ekrana array size için yazdýk
	syscall   


	li $v0,5 		#	scanf("%d",&arraySize);
	syscall			#Kullanýcýdan aldýðýmýz sayýyý kaydettik
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
	sw $v0,target          #targeti memory'e yazdýk
#-----------------------------------------------------------------
	li $t0,0 #for için atama (i)
	lw $t1,arrSize
	la $t3,arr  #arrayin adresini aldýk
	add $t5,$zero,$t3 #adresi t5 e kopyaladýk
forLoop:
	slt $t2,$t0,$t1         	#eðer i arrSizedan küçükse
	beq $t2,$zero,endLoop 		#eðer i küçük olmazsa t2 0 olur ve çýkar
	li $v0,5			#kullanýcýya sayýyý sorduk
	syscall
	sw $v0,0($t5) 			#array indeksine sayýyý yazdýk
	addi $t5,$t5,4 			# adrese sürekli 4 ekleedik
	addi $t0,$t0,1
	j forLoop
endLoop:
	lw $a0,arrSize 			#array size'ý a0 a aldýk (1. argüman)
	lw $a1,target  			#target'ý a1'e aldýk (2.argüman)
	la $a3,arr     			#array adresini de 3. argüman olarak aldýk
	jal CheckSumPossibility		  
	

resultRecursive:
	beq $v0,1,resultPos    #Eðer v0 1 eþitse ekrana possible yazmak için
				# resultPos'a gider
		
			
resultNeg:	
	li $v0,4
	la $a0,str2 			# Impossible'ý ekrana yazdýk
	syscall	
 	
 	li $v0,10		#Ekrana yazdýktan sonra devam etmesin diye çýkýþ yaptýk
 	syscall	
 resultPos:
 	li $v0,4
	la $a0,str1 			# Possible'ý ekrana yazdýk
	syscall	
	
	li $v0,10	#Ekrana yazdýktan sonra devam etmesin diye çýkýþ yaptýk
 	syscall	





#-----------------------------------------

CheckSumPossibility:
	bne $a1,$zero,State2 	#ilk base
	li $v0,1	     	#ilk base saðlarsa v0'ý 1 yap
	jr $ra			#if(num==0) return 1;
State2:	
	slt $t1,$a1,$zero	#ikinci base 
	beq $t1,$zero,State3	#if(num<0) return 0;
	li $v0,0
	jr $ra	
State3:	
	lw $t2,sizeCounter #sizecounter aldýk
	addi $t0,$t2,1   #(sizeCounter+1) eþittir koþulu için
	sub $t2,$t0,$a0   #sizecounter+1-size
	bne $t2,$t0,Continue #	if(sizeCounter-size+1==sizeCounter+1) return 0;
	li $v0,0
	jr $ra	
	  
Continue:#int val1 = CheckSumPossibility(num,arr,size-1);

	addi $sp,$sp,-8  #Verilere tekrar eriþmek için stackte sakladýk
	sw $a0,0($sp)    #Sadece size deðiþtiði için size'ý ve return adresini sakladýk
	sw $ra,4($sp)    #
	addi $a0,$a0,-1  #size-1
	jal CheckSumPossibility  #CheckSumPossibility(num,arr,size-1);

FirstComing:	
	addi $t1,$zero,1       #dönüþ kontolü için 1 kullandýk
	beq $t1,$v0,resultRecursive  # #if(val1==1) return 1;
	
	lw $a0,0($sp)          #sakladýðýmýz ifadeleri geri aldýk
	lw $ra,4($sp)
	addi $sp,$sp,8
	addi $sp,$sp,-12       #Sonraki fonksiyon için ifadeleri sakladýk
	sw $a1,0($sp)
	sw $a0,4($sp)
	sw $ra,8($sp)
	lw $t2,sizeCounter     #sizecounter aldýk
	sub $t2,$t2,$a0        #size counter-size
	addi $t2,$t2,1         #sizecounter-size+1
	
	
	#int val2 = CheckSumPossibility(num-arr[sizeCounter-size+1],arr,size-1);
	la $t1,arr	
	sll $t2,$t2,2          # 4 katýný aldýk çünkü indeksin 4 katý olarak artýyor.1 word =4 bit
	add $t1,$t1,$t2
	lw $t4,($t1)		#arr[sizeCounter-size+1]
	
	sub $a1,$a1,$t4		#num-arr[sizeCounter-size+1]
	addi $a0,$a0,-1        #size-1
	jal CheckSumPossibility
	
	addi $t1,$zero,1
	beq $t1,$v0,resultRecursive #if(val2==1) return 1;
	
	lw $a1,0($sp)		#sakladýðýmýz elemanalrý geri aldýk sonra stacki serbest býraktýk
	lw $a0,4($sp)
	lw $ra,8($sp)
	addi $sp,$sp,12
	jr $ra			#önceki yere döndük
	
	
result:	
	li $v0,1
	j resultRecursive
 			
 				
 					
 						
 								
