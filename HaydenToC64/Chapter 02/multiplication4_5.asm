*=828
        clc             ; clear carry flag
        ldy #3          ; load 3 multiplicand
        lda #0          ; load 0
        adc #2          ; add 2 multipier with carry
        dey             ; subtract 1 from multiplicand
        bne 833         ; (*-3) loop back to adc #2
        sta 1024        ; print "F"
        rts