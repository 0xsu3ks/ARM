.global _start

_start:

  MOV X0, #0
  LDR X1, =fname
  MOV X2, #0x41
  MOV X3, #0x1b6
  MOV W8, #56
  SVC #0
  MOV X9, X0

  MOV X0, X9
  LDR X1, =quote
  LDR X2, =qlen
  MOV W8, #64 
  SVC #0

  MOV X0, X9
  MOV W8, #57
  SVC #0

  MOV X0, #0
  MOV W8, #93
  SVC #0

fname:
  .asciz "/tmp/arm.txt"

quote:
  .asciz "Learn ARM!"
qlen = .-quote