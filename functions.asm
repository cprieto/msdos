%define DOS_DISPLAY 0x2
%define DOS_PRINT 0x9

sprint:
  push bx
  mov bx, ax
  mov ah, DOS_DISPLAY
.next:
  cmp byte [bx], 0
  jz .done
  mov dl, [bx]
  int 0x21
  inc bx
  jmp .next
.done:
  pop bx
  ret
