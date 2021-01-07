%define DOS_DISPLAY 0x2

org 0x100

section .data
  message db 'hello world!',0

section .text
start:
  mov ax, message
  call printit
  int 0x20

printit:
  mov bx, ax
  mov ah, DOS_DISPLAY
next:
  cmp byte [bx], 0
  jz done
  mov dl, [bx]
  int 0x21
  inc bx
  jmp next
done:
  ret