;---------------------
;   Utility functions
;---------------------

length:
  push rbx

  mov rbx, rax

nextchar:
  cmp byte [rax], 0
  jz finished
  inc rax
  jmp nextchar

finished:
  sub rax, rbx

  pop rbx
  ret

;--------

print:
  push rdi
  push rsi

  push rax
  call length
  mov rdx, rax
  pop rax

  mov rsi, rax
  mov rdi, 1 ; stdout
  mov rax, 0x2000004 ; write
  syscall

  pop rsi
  pop rdi

  ret

;--------

exit:
  mov rbx, 0
  mov rax, 0x2000001
  syscall
  ret

;-------
