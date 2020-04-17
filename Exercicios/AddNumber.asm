 
%include "io.inc"

section .data
myBytes DB 80h,66h,0A5h


section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov al,[myBytes]; 0x00000080
    add al,[myBytes+1] ; 0x000000e6
    add al,[myBytes+2] ; 0x0000008d -> nesse caso o 1 será perdido
            
    xor eax, eax
    ret
