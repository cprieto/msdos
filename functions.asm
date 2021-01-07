%define DOS_DISPLAY 0x2
%define DOS_PRINT 0x9

; Prints a null terminated string to the console
; @param ax address of null terminated string to print
; @returns ax number of printed characters
sprint:
  push bx
  push cx               ; We are going to use bx, cx so save it in the stack

  mov bx, ax            ; This is going to be our counter
  mov cx, ax            ; We will need original ax value
  mov ah, DOS_DISPLAY
.next:
  cmp byte [bx], 0      ; Compare the content referenced by bx with 0
  jz .done              ; If they are the same, jump to done
  mov dl, [bx]
  int 0x21
  inc bx                ; increment bx by 1
  jmp .next             ; loop
.done:
  sub bx, cx            ; Current value of bx - cx (original value in ax)
  mov ax, bx
  
  pop cx                ; we return registers to the previous values
  pop bx
  ret                   ; return from the subroutine
