%define DOS_PRINT 0x9

org 0x100

section .data
  message db 'hello world!$'

section .text
  mov ah, DOS_PRINT
  mov dx, message
  int 0x21
  int 0x20
