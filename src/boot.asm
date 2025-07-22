[BITS 16]
[ORG 0x7C00]

start:
    cli
    mov ax, 0x0000
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7C00
    sti

    mov si, msg
print:
    lodsb
    cmp al, 0
    je done
    mov ah, 0x0E
    int 0x10
    jmp print

done:
    cli
    hlt

msg db 'Hello, World!', 0

times 510 - ($ - $$) db 0
dw 0xAA55
