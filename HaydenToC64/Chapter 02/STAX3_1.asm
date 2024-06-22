*=828
        ldx #100        ; load starting value 100 into X register

        lda #90         ; load diamond char value 90 into Accumulator
        sta 1023,x      ; store in screen memory location 0, index X
        lda #1          ; load color value white
        sta 55295,x     ; store in screen color location 0, index X

        dex             ; decrement X
        bne 830        ; (*-11) until it reaches 0, branch back to lda 90
        rts