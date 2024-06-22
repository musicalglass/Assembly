; program 3_4
; delay = 250*5=1250 cycles per execution (625 microseconds)
*=828
        ldx #250        ; burn 250 cycles
        dex
        bne *-1         ; loop back to dex
        rts

; program 3_5
; delay = 250*625 microseconds cycles per execution (1/8 second)
        ldy #200        ; replay inner loop 200 times

        ldx #250        ; loop 250 times
        dex
        bne *-1         ; loop back to dex

        dey
        bne *-6         ; loop back to ldx #250
        rts