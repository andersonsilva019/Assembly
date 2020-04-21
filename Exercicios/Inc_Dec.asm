%include "io.inc"

section .data

    myWord dw 1000h

    myDword dd 10000000h

section .text

global main

main:

    mov ebp, esp                ; for correct debugging

    inc byte [myWord]           ; 1001h

    dec byte [myWord]           ; 1000h

    inc dword [myDword]         ; 10000001h

    mov ax,00FFh

    inc ax                      ; AX = 0100h

    mov ax,00FFh

    inc al                      ; AX = 0000h

    xor eax, eax

    ret
