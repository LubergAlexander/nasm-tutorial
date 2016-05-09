%include 'utils/functions.asm'

global _main

section .text

_main:
  mov rcx, 0

nextNumber:
  inc rcx
  mov rax, rcx
  add rax, 48
  push rax
  mov rax, rsp
  call printLF
  ; Does not print 10 correctly, itoa is required
  cmp rcx, 10
  jne nextNumber

  call exit
