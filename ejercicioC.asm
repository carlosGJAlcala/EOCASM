;DOGSEG
.MODEL small
.stack 100h
.data  
    arg1 dw 1
    arg2 dw 4
    arg3 dw 9
    resultado dw ?
  
.code
    ;paso los argumentos a la pila para llamar al metodo
    xor ax,ax
    mov ax, arg1
    push ax
    ;paso argumento 2
    mov ax, arg2
    push ax   
    ;paso argumento 3
    mov ax, arg3
    push ax
    
        
    call obtenerMayor
    mov resultado,ax
    
fin: 
    mov ah, 4ch
    int 21h
        
obtenerMayor proc
    push bp
    mov bp, sp
    push bx
    
    
    var3 EQU [bp+4]
    var2 EQU [bp+6]
    var1 EQU [bp+8]
    

    mov ax, [bp+4]
    pop ax 
    mov ax, [bp+6]
    pop ax
    call comparar2var
    pop ax
    mov ax, [bp+8]
    pop ax
    call comparar2var   
    mov sp, bp
    pop bx
    pop bp
    ret 6
obtenerMayor endp 

comparar2var proc
    push bp
    mov bp, sp    
    push bx
    
    mov ax, [bp+4]
    mov bx, [bp+6]
    cmp ax, bx
    jl esMenor 
    
    mov sp, bp
    pop bx
    pop bp
    ret 4

esMenor:  
    mov ax,[bp+6]
iret
comparar2var endp