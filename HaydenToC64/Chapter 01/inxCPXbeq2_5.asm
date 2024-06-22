*=828
        lda #90         ; load value 90
        sta 890         ; store in memory location 890

        ldx #0          ; starting at 0
        inx             ; increment X by 1
        cpx 890         ; compare to value 90 stored in memory

        beq 844   ; (*+5) branch forward to print line if A-X=0

        jmp 835         ; (*-6) loop back to inx

        stx 1024        ; print 90 to screen memory location 1
        lda #1          ; load color value (white)
        sta 55296       ; set color of location 1
        rts