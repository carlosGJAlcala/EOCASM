; multi-segment executable file template.

data segment
    ; add your data here!
pedirdatos DB 10,13,"Introducir 4 digitos: ",'$'
mensajeerro DB 10,13 ,"Error intrduca solo numeros ",10,13,'$'  
resultado DW ?
resfin DB '$'
salida DB 10,13,"Cadena introducida.",'$'
rescod DB 4 DUP(?),10,13,"Dato en memoria",'$'

code segment
start:
; set segment registers:
programa:
    MOV AX, @data
   
    MOV DS, AX
   
    JMP inicio
error:
    lea dx,mensajeerro
    mov ah,09h
    int 21h
inicio:
    lea dx, pedirdatos
    mov ah, 09h
    int 21h
    
    mov cx, 4 
    xor dx,dx
    mov bx,10
    mov si,0
bucledato:
    mov ax, dx
    mul bx
    mov dx, ax
    
    mov ah, 01h
    int 21h
    
    cmp al, 30h
    jb error
    cmp al, 39h
    ja error
    
    mov rescod[si], al
    sub al, 30h
    and ax, 000fh
    add dx, ax
    
    inc si 
    loop bucledato
    
    mov resultado,dx  
    
    lea dx,salida
    mov ah, 09h
    int 21h
    
    lea dx, resultado
    int 21h
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
