; MAIN
        org     100h

        section .text

        mov     BP, array
        mov     CX, length
        call    Separar        
            

        int     20h

        section .data

array  db      01,02,03,04,05,06,07,08,09,07   
length db      $-array

; FUNCIONES

; funcion para separar numeros pares de numeros 
Separar:
        xor     SI, SI          ; SI = 0
for:
        mov AX,[BP+SI]
        test AX,1
        jz even
        mov BX, 320h
        mov AX,[BX+SI]
        inc SI
        loop for
        ret
       
even:
        mov BX, 310h
        mov [BX+SI],AX
        inc SI
        jmp for