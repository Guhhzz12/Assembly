#Dobro e metade
###############
#
#
##############

.data
Dobro: .asciz "Dobro:"
Metade: .asciz"\nMetade:"
.text
li a7, 5
ecall
mv t0, a0          #t0 = input q eu receber
#Dobro
addi t1, zero, 2    #t1 = 2
mul t2, t0, t1      #t2 = valor da multiplicação
li a7, 4            # chamando para printar a string
la a0, Dobro        #Definindo a string que vai ser printada
ecall
li a7, 1            #Função que printa um inteiro
mv a0, t2           #Definindo o inteiro que vai ser printado, no caso o t2
ecall

#Metade
div t3, t0, t1   #t3 = divisão inteira
li a7, 4
la a0, Metade
ecall
li a7, 1
mv a0, t3
ecall

li a7, 10
ecall




