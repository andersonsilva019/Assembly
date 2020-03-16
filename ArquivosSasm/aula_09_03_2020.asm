%include "io64.inc"

section .data                   ; definido a secção de data(aqui onde são declaradasd as variaveis)
num  DB 3,7,8,9                 ; criando uma variavel(num)- definindo como Byte(DB) - aloca 1 byte
     DB 5                       ; criando uma variavel sem nome - definindo como Byte(DB) - aloca 1 byte
     DB 9                       ; criando uma variavel sem nome - definindo como Byte(DB) - aloca 1 byte
num2 DB 1                       ; criando uma variavel(num)- definindo como Byte(DB) - aloca 1 byte
num3 DB 5
sizeofnum EQU $-num          ; referenciando sizeofnum a posição atual - num. Assim eu consigo descobrir o tamanho do vetor
    

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging            
    ;write your code here
    MOV EAX, sizeofnum          ; movendo o contúdo de sizeofnum para a memoria
    xor EAX, EAX
 
    ret

