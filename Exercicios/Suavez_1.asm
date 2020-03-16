%include "io.inc"

section .data
arrayD DD 8,2,3


section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    ;Copie o primeiro valor em EAX e troque EAX com o
    ;valor da segunda posição
    MOV EAX,[arrayD+1]
    XCHG EAX,[arrayD]
    
    ;Troque EAX com o terceiro valor do array e copie o
    ;valor de EAX para a primeira posição do array.
    
    XCHG EAX,[arrayD]
    MOV [arrayD],EAX
               
            
    xor eax, eax
    ret