%include 'utils/functions.asm'

global _main

section .data
msg1  db 'Please enter your name', 0
msg2  db 'Hi, ', 0

section .bss
user_input: resb 255

section .text

_main:
  mov rax, msg1
  call printLF

  mov rax, 0x2000003        ; 3 = sys_read
  mov rdi, 0                ; 0 = stdin
  mov rsi, user_input
  mov rdx, 255
  syscall

  mov rax, msg2
  call print

  mov rax, user_input
  call print

  call exit

