@mostrarcadena MACRO cadena
    PUSH AX
    PUSH DX
    LEA DX, cadena
    MOV AH, 09H
    INT 21H
    POP DX
    POP AX
ENDM  
@invertircase MACRO original , invertida 
    PUSH AX
    PUSH CX
    ;Para que se repita el bucle cada vez que se llamama
LOCAL   bucle
    XOR AH,AH
    MOV AL, original[1]
    MOV  CX, AX
    
    MOV SI, 2
    XOR DI,DI

bucle: 
    MOV AH, original[SI] 
    XOR AH, 00100000b ;  camabiar case
    ;AND AH,11011111b;PASAR A mayus
    ; OR AH, 00100000b
    MOV invertida[DI], AH
    INC SI
    INC DI   
    LOOP bucle
    POP CX
    POP AX
ENDM


;DOSSEG
.MODEL smalll
.STACK 100H
.data
    saltolinea DB 10,13,'$' 
    pedircadena DB "Introduzca texto (max X cars): $"
    tamanomaximo EQU 9
    cadenaleida DB tamanomaximo,?,tamanomaximo DUP (?)
    ;              MAX representacion , null, cantidad memoria que se puede usar
    vercadena DB "Cadena leida: $"
    carleidos DB "caracteres leidos $"      
    cadenainvertida DB tamanomaximo DUP (?),'$'
    verinvertida DB "Cadena invertida $"
.CODE
inicio:
    MOV AX, @data
    MOV DS, AX
    
    MOV AH, tamanomaximo
    DEC AH
    ;para convertir assci es sumarle 30h 
    ;tambien se puede hacer
    ADD AH, '0'
    MOV pedircadena[22], AH 

    @mostrarcadena saltolinea
    @mostrarcadena pedircadena  
    
    ;para coger la cadena 
    LEA DX, cadenaleida
    MOV AH, 0Ah
    INT 21h 
    
    @mostrarcadena saltolinea
    MOV DL,cadenaleida[1]
    ADD DL, '0'
    MOV AH, 06h
    INT 21H
    @mostrarcadena carleidos
     
    XOR AH, AH
    MOV AL, cadenaleida[1] 
    MOV SI,AX
    ADD SI, 2
    MOV AH, '$'              
    MOV cadenaleida[SI],AH  
    @mostrarcadena saltolinea    
    @mostrarcadena vercadena 
    @mostrarcadena cadenaleida[2]  
    
    @invertircase cadenaleida, cadenainvertida
    @mostrarcadena saltolinea  
    @mostrarcadena verinvertida
    @mostrarcadena cadenainvertida
   ; @mostrarcadena cadenaleida
    
fin:
    MOV AH, 4Ch
    INT 21h 

END inicio
