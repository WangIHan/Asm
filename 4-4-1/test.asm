data segment
    display db 'VeryGood!','$'
data ends
code segment
    assume cs:code, ds: data
start:mov ax, seg display
    mov ds, ax
    lea dx, display
    mov ah, 9
    int 21h
code ends
    end start
