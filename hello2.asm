org 0x100

section .data
  message db 'hello world!$'

section .text
  mov ah, 0x9
  mov dx, message
  int 0x21
  int 0x20

