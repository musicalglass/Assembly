*=828
; Branch on Carry Set
        clc             ; clear the carry flag
        lda #0          ; load 0 into Accumulator
        adc #1          ; add 1
        bcs *+5         ; when 225 flips to 0, skip over jmp loop
        jmp *-4         ; (*-4) loop back to add 1
        sta 1024        ; print Ampersand
        rts