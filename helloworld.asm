global _main

section .text

_main:
    mov     rax, 4; write
    mov     rdi, 1 ; stdout
    mov     rsi, msg
    mov     rdx, msg.len
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

msg:    db      "Hello, world!", 0Ah, 0
.len:   equ     $ - msg
