*=828
        ldx #1          ; load starting value 1 into X register

        lda #42         ; load Asterisk char value 42 into Accumulator
        sta 1023,x      ; store in screen memory location 0, index X
        lda #1          ; load color value white
        sta 55295,x     ; store in screen color location 0, index X

        inx             ; increment X
        cpy 101         ; is X equal to 100?
        bne 830        ; (*-13) until it goes over 100, branch back to lda 42
        rts