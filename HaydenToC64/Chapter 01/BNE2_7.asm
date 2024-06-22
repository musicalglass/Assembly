*=828
        lda #42         ; load value for asterisk
        ldy #100        ; starting at 100
        dey             ; subtract 1 each loop
        bne 832         ; $340(*-1) loop back to dex if not equal to Accumulator
        sta 1024        ; print 42 to screen memory location 1
        lda #1          ; load color white
        sta 55296       ; set color of location 1
        rts