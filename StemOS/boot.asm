org 0x7c00
;bios loading address
BITS 16

start:
    mov ah,0eh
    mov al,'A'
    mov bx,0
    int 0x10
    ;bios is like in kernal itself
    ;interrupt jump table
    ;jmp to the loop
    jmp $

times 510-($ - $$) db 0
dw 0xAA55
