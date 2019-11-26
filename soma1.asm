; Soma
section .data
    msg1:  db "Soma é:  %d", 10, 0
    msg2:  db "Valor 1: %d", 10, 0
    msg3:  db "Valor 2: %d", 10, 0
    msg4:  db "Voce somou!", 10, 0
    valor1 dd 10
    valor2 dd 20
    soma   dd 0
    

section .text
    extern printf
    global main
        main:   

            push rbp
            mov rbp, rsp

            mov rax, [valor1]
            mov rbx, [valor2]
            add rax, rbx
            mov [soma], rax

            ; printf
            mov rdi, msg2
            mov rsi, [valor1]
            mov rax, 0
            call printf

            ; printf
            mov rdi, msg3
            mov rsi, [valor2]
            mov rax, 0
            call printf

            ; printf
            mov rdi, msg1
            mov rsi, [soma] 
            mov rax, 0 
            call printf
            
            ; printf  
            mov rdi, msg4
            mov rax, 0
            call printf

            mov rax, 0
        ret 0

            