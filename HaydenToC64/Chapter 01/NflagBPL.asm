*=828
        lda #91         ; load diamond char 90 + 1
        sta 900         ; store in memory 900

        ldy #100        ; load Y starting value 100
        dey             ; decrease Y by 1
        cpy 900         ; compare to value in memory 900
        bpl 835         ; (*-4) if answer is positive, branch back to iny

        sty 1024        ; write char 90 to screen

        rts