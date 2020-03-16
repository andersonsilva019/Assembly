%include "io.inc"

section .data
teste DB "Teste", 0Ah, 0, "hahaha",0
                                ;0AH siginifica uma quebra de linha
                                ;0 significa o fim da String

section .bss                    ; Secção onde são declaradas as variaveis dinâmicas
var1 RESB 20                    ;reservando 20bytes na memória

section .text
global CMAIN
CMAIN:
    mov ebp, esp                ; for correct debugging
    GET_STRING var1, 20         ; pega um string de tamanho 20 do input
    PRINT_STRING var1           ; imprime no output o valor de var1
    PRINT_STRING teste          ; imprime no output o valor de teste
    PRINT_STRING [teste+7]      ; acessando o "hahaha"
    xor eax, eax
    ret