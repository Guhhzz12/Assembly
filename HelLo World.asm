.data
FRASE: .string "Hello World!!\n"
.text
li a7, 4        
la a0, FRASE
ecall
li a7, 10
ecall
