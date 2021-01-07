org 0x100

section .data
  message db 'hello world!',0

section .text
  mov ah, 0x2
  mov bx, message
next:
  cmp byte [bx], 0
  jz done
  mov dl, [bx]
  int 0x21
  inc bx
  jmp next
done:
  int 0x20
