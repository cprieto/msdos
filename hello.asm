org 0x100

mov ah, 0x9
mov dx, message
int 0x21
int 0x20

message db 'hello world!$'
