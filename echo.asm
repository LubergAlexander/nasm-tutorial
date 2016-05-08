%include 'utils/functions.asm'

global _main

section .text

_main:
  ; argc, argv, envp
  ; rdi - argc
  ; rsi - argv

  add rsi, 8 ; skip program name(the first argv)
  dec rdi
  jz noArgs

  mov rax, [rsi]
  call printLF

  jmp _main

noArgs:
  call exit

