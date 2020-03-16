%include "io.inc"

section .data
arrayD DB 10h,20h,30h,      ;Definindo 1byte(equivale a 8 bits) 


section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    ;Copie o primeiro valor em EAX e troque EAX com o
    ;valor da segunda posição
    MOV AL,[arrayD]            ;copiando o primeiro valor do array
    XCHG AL,[arrayD+2]         ;trocando os valores do EAX com arrayD+2
    
    ;Troque EAX com o terceiro valor do array e copie o
    ;valor de EAX para a primeira posição do array.
    
    XCHG AL,[arrayD]           ;Trocando os valores de AL(parte menos significatica do register) com o valor da primeira posição do arrayD
    MOV AH,[arrayD+1]          ;Movendo o valor da segunda posição para AH(parte mais significatica do register)
    MOV [arrayD+1],AL          ;Movendo o valor de AL para a segunda posição do array
    MOV [arrayD+2],AH          ;Movendo o valor de AH para a terceira posição do array
    
               
            
    xor eax, eax
    ret