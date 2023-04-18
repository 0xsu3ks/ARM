.global _start

_start:

  MOV X0, #1
  LDR X1, =hello
  LDR X2, =hello_len
  MOV W8, #64 
  SVC #0

  MOV X0, #0
  MOV W8, #93
  SVC #0

hello:
  .asciz "Hello World!\n"
hello_len = .-hello