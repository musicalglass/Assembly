*=828
        ldy #0          ; set up 905 to receive carry bits
        sty 905

        ldy #17         ; set up number of times to loop
        lda #0          ; clear Accumulator to receive sum of LSBs
        clc             ; clear carry prior to adding
        adc #16         ; add 16 to A once
        bcc *+3         ; if no carry then skip inc
        inc 905         ; increment carry record
        dey             ; update count
        bne 837         ; (*-9) check if Y decremented to 0, loop to clc
        sta 1026        ; display LSB sum
        lda 905         ; load MSB
        sta 1024        ; print MSB
        rts