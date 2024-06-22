*=828
        lda #90         ; load diamond char 90
        sta 900         ; store in memory 900

        ldy #0          ; load Y starting value 0
        iny             ; increase Y by 1
        cpy 900         ; compare to value 90 in memory 900

        bmi 835         ; $343(*-4) if answer is negative, branch back to iny

        sty 1024        ; write char 90 to screen

        rts