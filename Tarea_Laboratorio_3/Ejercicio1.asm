            org 100h

            section .text

            mov     byte [201h], 03d
            mov     byte [202h], 09d
            mov     byte [203h], 01d
            mov     byte [204h], 01d
            mov     byte [205h], 09d

            mov CX,08d
            mov AX,0000d
            mov BX,0000d
            mov SI,200h

            iterar:
                    mov BL,[SI]
                    add AX,BX
                    inc SI
                    dec CX
                    jnz iterar

            mov DI,[210h]
            mov [DI],AX
            mov BX,08d
            div BX
            mov [20Ah],AX


            int 20h