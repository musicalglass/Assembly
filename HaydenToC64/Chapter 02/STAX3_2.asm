*=828
        ldx #216        ; load starting value 216 into X register

        lda #42         ; load Asterisk char value 90 into Accumulator
        sta 808,x       ; store in screen memory -216, index X
        lda #1          ; load color value white
        sta 55080,x     ; store in screen color -216, index X

        inx             ; increment X
        bne 830        ; (*-11) until it goes over 255 and resets back to 0
        rts