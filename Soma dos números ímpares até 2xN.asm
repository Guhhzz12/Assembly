#Soma dos números ímpares
.data
n1: .asciz "Digite o número que você deseja: "
soma: .asciz "A soma dos números ímpares foi: "
.text
#Main
MAIN:
	li a7, 4
	la a0, n1
	ecall
	li a7, 5
	ecall
	mv t0, a0
	bltz t0, MAIN

#LOOP
addi t1, zero, 1   #Primeiro número ímpar
slli t0, t0, 1    #Contador, ele é o 2xN
li s0, 0	  #Soma = 0
LOOP:
	bgt t1, t0, FIM
	add s0, s0, t1
	addi t1, t1, 2
	j LOOP
#Fim do código
FIM:
	li a7, 4
	la a0, soma
	ecall
	li a7, 1
	mv a0, s0
	ecall
	li a7, 10
	ecall	