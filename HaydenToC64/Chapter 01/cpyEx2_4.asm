*=828
        ldy #80         ; load value for character 80
        ldx #0          ; starting at 0
        inx             ; add 1 to X each loop
        stx 900         ; store X in memory
        cpy 900         ; compare X in memory to Y
        bne 832         ; (*-7) loop back to inx if not equal

        sty 1024        ; print character 80 to screen memory location 1
        lda #1          ; load color white
        sta 55296       ; set color of location 1
        rts