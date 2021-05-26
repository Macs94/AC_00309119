; MAIN
        org     100h

        section .text

        mov     BP, array
        
        call    Separar        
            

        int     20h

        section .data

array  db      01,02,03,04,05,06,07,08,09,07,0xA   

; FUNCIONES

; funcion para separar numeros pares de numeros 
Separar:
        xor     SI, SI          ; SI = 0
while:
        mov AL,[BP+SI]
        cmp AL, 0xA
        je  end

        mov AX,[BP+SI]
        mov AH, 0
        mov CX, 2
        div CX
        cmp AH, 0 
        je  even
        
        mov BX, 320h
        mov AL,[BP+SI]
        mov [BX+SI],AL
        inc SI
    
       
even:

        mov BX, 310h
        mov AL,[BP+SI]
        mov [BX+SI],AL
        inc SI
        jmp while

end:
        ret
