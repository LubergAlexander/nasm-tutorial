global _main

section .text

_main:
    mov rbx, msg ; load msg address
    mov rax, rbx

nextchar:
    cmp byte [rax], 0 ; check if it is the end of the string
    jz finished
    inc rax ; move to the next char
    jmp nextchar

finished:
    sub rax, rbx ; calculate the string length

    mov rdx, rax
    mov     rax, 4; write
    mov     rdi, 1 ; stdout
    mov     rsi, msg
    call _syscall

    mov     rax, 1; exit
    mov     rdi, 0
    call _syscall

_syscall:
    ; on Mac OS syscalls are partitioned
    ; SYSCALL_CLASS_UNIX start at 0x2000000
    add rax, 0x2000000
    syscall
    ret

section .data
msg:    db      "Hello, world test!", 0Ah, 0

