%include 'utils/functions.asm'

global _main

section .text

_main:
  mov rax, msg1
  call printLF

  mov rax, msg2
  call printLF

  mov rax, msg3
  call printLF

  call exit

section .data
msg1:    db      "One", 0
msg2:    db      "Two", 0
msg3:    db      "Three", 0

