; multi-segment executable file template

@pedirnumero  macro
 push dx
 push ax
 lea dx, mensaje
 mov ah, 09h
 int 21h 
 mov ah,01h
 int 21h
 mov aux, al
 pop ax
 pop dx
endm

@comprobarNumero macro cadena 
    cmp cadena,30h ;si es mas pequeno que 30
    jl error
    cmp cadena,40h;positivo
    jg error

endm
@guardarnumero macro cadena
endm

data segment
   mensaje  db 10,13,'Escriba un numero',10,13,'$' 
   mensajeError  db 10,13,'no es un numero$' 
   aux db dup(0)

stack segment
    dw   128  dup(0)
ends

code segment
start:
   mov ax, @data
   mov ds,ax
     
   
   xor dx,dx
   xor cx,cx
   ;creamos en el bucle  
   mov cx,4
   
   
   bucle:
   xor ax,ax
   mov ax,dx
   mov dx,0AH
   mul dx
   mov dx,ax
   
   @pedirnumero
   @comprobarNumero aux  
   mov al, aux
   sub al, 30H
   add dx, ax
  
      
loop bucle
 mov ah,9h 
 int 21h 
jmp fin       
error: 
lea dx, mensajeError
mov ah, 09h
int 21h
jmp fin   

fin:    
    mov ax, 4c00h ; 
    int 21h    
ends

end start 
