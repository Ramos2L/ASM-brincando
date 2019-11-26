; Soma
; Uso de Printf e Scanf

section .data
    msg1:  db " Digite um numero: ", 10, 0
    msg2:  db " Digite um numero para somar:", 10, 0
    msg3:  db " Valor da soma e: %d", 10, 0    
    valor1 dd 0
    valor2 dd 0
    soma   dd 0
    fmt:   db "%d", 0
    
section .text 
    extern printf, scanf
    global main
        main:
        
        push rbp
        mov rbp, rsp

        ; printf
        mov rdi, msg1
        mov rax, 0
        call printf

        ; scanf
        mov rdi, fmt
        mov rsi, valor1
        call scanf

        ; printf
        mov rdi, msg2
        mov rax, 0
        call printf

        ; scanf
        mov rdi, fmt
        mov rsi, valor2
        call scanf

        ; soma
        mov rax, [valor1]
        mov rbx, [valor2]
        add rax, rbx
        mov [soma], rax

        ; prinf 
        mov rdi, msg3
        mov rsi, [soma]
        call printf
        
        mov rax, 0
        ret
