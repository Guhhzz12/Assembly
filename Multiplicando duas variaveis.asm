#Programa para Multiplicar números
.data
n1: .asciz "Digite o Primeiro número: \n"
n2: .asciz "Digite o segundo número: \n"
resultado: .asciz "A multiplicação foi: "
.text
#Ler o primeiro número
li a7, 4
la a0, n1
ecall
li a7, 5
ecall
mv t0, a0
#Ler o segundo número
li a7, 4
la a0, n2
ecall
li a7, 5
ecall
mv t1, a0
#Multiplicar
mul t2, t0, t1
li a7, 4
la a0, resultado
ecall
mv a0, t2
li a7, 1
ecall

li a7, 10
ecall
