%include "io.inc"


; Esse algoritmo resolve essa expressão
; Rval = Xval - (-Yval + Zval)

section .data
    Xval DD 26
    Yval DD 30
    Zval DD 40
    
section .bss
    Rval RESD 1

section .text

global main

main:
    mov ebp, esp; for correct debugging

    mov eax,[Yval]
    neg eax               ; EAX = -30
    mov ebx,[Zval]
    add eax,ebx           ; EAX = 10
    sub eax,[Xval]        ; EBX =-16
    
    mov [Rval],eax        ; -16


    ret
