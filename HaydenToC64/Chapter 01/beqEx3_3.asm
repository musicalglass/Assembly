*=828
        lda #83         ; load value 83
        sta 890         ; store in memory location 890

        ldy #0          ; starting at 0
        iny             ; increment Y by 1
        cpy 890         ; compare to value 90 stored in memory

        beq 844   ; (*+5) branch forward out of loop to print line if A-X=0

        jmp 835         ; (*-6) loop back to iny

        sty 1034        ; print 90 to screen memory location 10
        lda #4          ; load color value (purple)
        sta 55306       ; set color of location 10
        rts