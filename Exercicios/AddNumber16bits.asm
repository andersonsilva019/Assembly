%include "io.inc"

section .data
myBytes DB 80h,66h,0A5h


section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ax,[myBytes]; 0x00006680
    add ax,[myBytes+1] ; 0x00000be6
    add ax,[myBytes+2] ; 0x00000c8d -> nesse caso o 1 será perdido
            
    xor eax, eax
    ret
