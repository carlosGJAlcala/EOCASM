;DOGSEG
.MODEL small
.stack 100h
.data  
    base db 5
    altura db 6
    area dw ?
.code
    mov ax, @data
    mov ds,ax 
   
    ;paso los argumentos a la pila para llamar al metodo
    xor ax,ax
    mov al, altura
    push ax
    ;paso argumento base
    mov al,base
    push ax
    call area_rectangulo
    mov area,ax
     
    
fin: 
    mov ah, 4ch
    int 21h
        
area_rectangulo proc
    push bp ;salvo marco de la pila
    mov bp, sp ;nuevo marco de la pila
    ;salvo registro bx
    push bx
    ;copio en ax la base
    mov bx, [bp +4]
    ;copio la altura
    mov ax, [bp+6]    
    
    mul bl
    ;el registro ax tiene ya el resutado   
    ; recupero bx
    pop bx
    mov sp, bp ; borro locales
      ;ejercicio b 
    ;modifico la base
    mov [bp+4],8
    ;modifico la altura
    mov [bp+6],23
    
    pop bp 
  
    
    ret 4
area_rectangulo endp