;los procedimientos  
proc [near/far]
ins 1
ins1 
ret[n]
procedimiento endp

;las macroc
MACRO [PAR1,PAR2]
	INS1
	INS2
NOMBRE ENDM
;PARA LLAMAR LA MACRO 
nombre var1,var2
;LAS macros tienen paramentros de entrada y lo procedimienots solo de salida
;los procedimientos tienen que ver con las interrupciones que son paradas (procedimientos lejanos IRET)
;para llamar procedimeintos es con  call
call procedimiento
;esto implica que se cambia el ip[near]  y cs:ip (procedimeinto lejano o para interrupción)

;las interrupciones son procedimientos lejanos 

;en los call solo se guardan el cs:ip  y el ipnear los flag no se guardan  