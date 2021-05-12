         org 100h

            section .text

            mov CX,05d
            mov AX,01d
            mov DX,0000

            loop:
                mul CX
                LOOP loop

            mov [0200],AX
            mov [0201],DX
            mov AX,[20Bh]

            int 20
