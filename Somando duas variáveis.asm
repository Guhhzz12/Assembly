.data
n1: .asciz "Digite o n�mero que voc� deseja: \n"
n2: .asciz "Digite o segundo n�mero que voc� deseja: \n"
resultado: .asciz "A soma foi: "
.text
#Leitura do Primeiro n�mero
li a7, 4
la a0, n1
ecall

li a7, 5
ecall

mv t0, a0

#Leitura do Segundo n�mero
li a7, 4
la a0, n2
ecall

li a7, 5
ecall

mv t1, a0

#Soma
add t2, t0, t1

li a7, 4
la a0, resultado
ecall

li a7, 1
mv a0, t2
ecall

li, a7, 10
ecall
