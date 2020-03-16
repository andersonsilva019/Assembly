%include "io.inc"

section .data
arrayD DD 10123300h, 11223344h; cada valor tem 4byte equivale a 8 digitos em hex
arrayB DB 10h,20h

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    MOV EAX,[arrayD]             ;Movendo o valor 10h --> arrayB[0]
   ;MOV AL,[arrayB-1]           ;Movendo o valor 10h --> arrayB[1]
   ;MOV AL,[arrayB+2]           ;Movendo o valor 10h --> arrayB[2]
   ;MOV AL,[arrayB+3]           ;Movendo o valor 10h --> arrayB[3] - Não existe valor nessa posição
    XCHG EBX,[arrayB]
    
    xor eax, eax
    ret