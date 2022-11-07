


ejemplo de procedimiento  pueden ser de tipo de lejano 
intruciones
PROC
CALL
RET
push and pop solo trabajan con registros de 16 bits
PROC  NEAR | FAR


CUANDO HACEMOS PUSH  R  HACE SP =-2
MOV [SP ], 

POP R
	MOV R
	SP =+2
	
CALL NEAR Hace un push  del ip y lo cambia por el ip del procedimiento
CALL FAR hace un push del ip y lo cambia por el ip del procedimiento más el cs
		
	para proteger el ip lo que se hace es subir el sp al bp para proteger ip que se encontraría abajo 
	* problema para volver ( la proteccion solo sirve para el pop, pero la memoria es un array ,
	para mover  el sp hacía abajo hacemos un mov bx, `[bp+4], esto se puede hacer porque no modifica el ip
	mov bx, `[bp+4] los corchetes es para la ubicación  la posción no el dato que se encuentra
	
	mov ax, [bp+4 || bp+8]para los argumentos de la función
	
	ejemplo
	 el mov bx y mov  ax es para recuperar los argumentos 
	 para no ser un coñazo utilizamso los registros
	 