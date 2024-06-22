*=828
        ldy #0          ; initialize loop
        ldx #2          ; load divisor
        stx 900         ; store in memory
        lda #30         ; load dividend
        sec             ; set carry
        sbc #2          ; subtract with carry
        iny             ; increment loop
        cmp 900         ; is the current value less than the divisor in memory?
        bcs 837         ; if not loop back to sec
        sty 1024        ; print MSB
        sta 1026        ; print LSB
        rts