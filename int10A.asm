; multi-segment executable file template.

@pintar macro color,caracter
    mov al,caracter
    mov ah,09h
    mov bh,0
    mov cx,01h
    mov bl,color
    int 10h
endm
@pintarNoAtributo macro caracter
    mov al,caracter
    mov bh,0
    mov cx,1
    mov ah,0AH
    int 10h
endm
@movercursor macro x,y
    mov bh, 0
    mov dh,y
    mov dl,x
    mov ah,02h
    int 10h
endm    
data segment
    ; add your data here!
    pkey db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    ;servicio 00h modo vide borra pantalla 

    mov al, 03h ;modo 3 (texto 80x25 16 colores)
    mov ah, 00h
    int 10h 
    ;servio 02h 
    mov cx,0FH
    mov SI, 00H
    mov DI,00H
bucle: 
    push cx
    @movercursor cl,cl  
    
    @pintar 07h,'*' 
    pop cx
    inc di
    inc si
loop bucle
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
