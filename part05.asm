org 0x100

section .data
  message db 'hello world!',0

%include 'functions.asm'

section .text
  mov ax, message
  call sprint
  int 0x20
