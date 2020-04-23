%include "io.inc"

section .data
    array1 times 10*10 Dw 10h
    ;sizeOfIntArray1 db ($-array1)/2

section .bss
    count RESd 1
    sum resd 2
    
section .text
global CMAIN
CMAIN:
    mov ebp, esp                ; for correct debugging
    mov ecx,10              
    mov esi, array1
    mov eax, 0                  ; Zerando o eax
    
L1:
    mov [count],ecx        
    mov ecx,10                  ; 
    
L2:
    add ax, [esi]               ; Efetuando a soma
    add esi,2                   ; Acessando a posição seguinte
    loop L2 
    mov ecx,[count]             ; Pegando o contador externo      
    add [sum],ax                ; Salvando o resultado da soma toda vez que o loop interno termina
    mov ax,0                    ; Zerando o contador
    loop L1                
    
       
