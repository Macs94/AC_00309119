
	org 	100h

	section	.text

	mov 	BP, contraUsu
	call  	LeerCadena
    call    Modotexto
    call    Comparar
	call    exitFull	

; FUNCIONES


 Modotexto: 
        MOV AH, 0h 
        MOV AL, 03h 
        INT 10h
        RET

EsperarTecla:
        mov     AH, 01h         
        int     21h
        ret

LeerCadena:
        xor     SI, SI          
while:  
        call    EsperarTecla    
        cmp     AL, 0x0D        
        je      exit            
        mov     [BP+SI], AL   	
        inc     SI              
        jmp     while           
exit:
	mov 	byte [BP+SI], "$"	
        ret


EscribirCadena:
	mov 	AH, 09h
	int 	21h
	ret
    
Comparar:
    mov cx, 5
    mov al, contraseña
    mov bl, contraUsu
    cmp al, bl
    cmp al, bl
    jne Incorrecto

    repe cmpsb
    jne Incorrecto
    jmp Bienvenido



Bienvenido:
        mov AH, 09h 
        mov DX, msg1
        int 21h
        jmp exitFull
Incorrecto:
        mov AH, 09h 
        mov DX, msg2
        int 21h
        jmp exitFull
exitFull:
        int 20h
section .data
    contraseña DB "uca12 $"
    msg1 DB "Bienvenido $"
    msg2 DB "Incorrecto $"
    contraUsu 	times 	10  	DB	" "   
