%include "io.inc"

;little endian

section .bss ;conteudo não inicializado

num RESD 1 ; reservando um espaço na memoria de 4bytes (RESD) D- DoubleWord

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    GET_HEX 4, num ;42243172 ; Pegando um numero hexadecimal de tamanho 4 bytes
    mov EAX, [num]
    mov [num], EAX
    ;mov AX, [num] ;pega os menos siginficativos do msm jeito
    ;mov [num], AX
    ;mov AX, [num+2] vai pegar o mais significativo
    PRINT_HEX 2, num ;little endian; pega o primeiro byte do numero(parte menos significativa) e imprime no output
    xor eax, eax
    ret
