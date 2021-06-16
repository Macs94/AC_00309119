org 100h

    section .text
    xor AX, AX
    xor SI, SI
    xor BX, BX
    XOR CX, CX
    xor DX, DX

    MOV SI, 0
    MOV DI, 0d
    
    call modotexto
    call movercursor
    call escribirprimern
    call esperartecla
    call movercursor2
    call escribirsegundon
    call esperartecla
    call movercursor3
    call escribirprimera
    call esperartecla
    call movercursor4
    call escribirsegundoa
    call esperartecla
    call exit

    modotexto: 
        MOV AH, 0h 
        MOV AL, 03h 
        INT 10h
        RET
    movercursor:
        MOV AH, 02h 
        MOV DH, 10 
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET
    movercursor2:
        MOV AH, 02h 
        MOV DH, 12 
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET
    movercursor3:
        MOV AH, 02h 
        MOV DH, 14 
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET    
    movercursor4:
        MOV AH, 02h 
        MOV DH, 16 
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET
    escribirprimern: 
        MOV AH, 09h 
        MOV DX, primernombre 
        INT 21h
        RET
    escribirsegundon: 
        MOV AH, 09h 
        MOV DX, segundonombre 
        INT 21h
        RET
    escribirprimera: 
        MOV AH, 09h 
        MOV DX, primerapellido
        INT 21h
        RET    
    escribirsegundoa: 
        MOV AH, 09h 
        MOV DX, segundoapellido 
        INT 21h
        RET
    esperartecla:
        MOV AH, 00h 
        INT 16h

        ret
    exit:
        int 20h

section .data

primernombre DB "Mario $"
segundonombre DB "Andres $"
primerapellido DB "Calix $"
segundoapellido DB "Sosa $"