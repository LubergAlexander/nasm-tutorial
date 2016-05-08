%include 'utils/functions.asm'

global _main

section .text

_main:
  mov rax, msg1
  call print

  mov rax, msg2
  call print

  mov rax, msg3
  call print
  call exit

section .data
msg1:    db      "One", 0Ah, 0
msg2:    db      "Two", 0Ah, 0
msg3:    db      "Three", 0Ah, 0

