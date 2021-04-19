		org 100h

		section .text

		mov     byte [200h], "M"
		mov     byte [201h], "A"
		mov     byte [202h], "C"
		mov     byte [203h], "S"

;Direccionamiento directo

                mov     AX, [200h]
                mov     BX,  201h
                mov     SI,  001h

;Direccionamiento indirecto

                mov     CX, [BX]

;Direccionamiento Indirecto base + indice

                mov     DX, [BX+SI]

;Direccionamiento relativo
                mov     DI,[BX+002h]

                int     20h
                