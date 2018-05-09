data segment
    mess1 db 'Input x:', '$'
    mess2 db 0ah, 0dh, 'Output y:$'
data ends
code segment 
    assume cs:code, ds:data
    start:mov ax, data
    mov ds, ax
    mov dx, offset mess1
    mov ah, 9
    int 21h
    mov dx, offset mess2
    mov ah, 9
    int 21h
    mov ah, 4ch
    int 21h
code ends
    end start
