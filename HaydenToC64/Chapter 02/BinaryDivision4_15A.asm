*=828
        ldx #31         ; load dividend
        stx 900         ; store in 900
        ldx #2          ; load divisor
        stx 901         ; store in 901
        ldy #8          ; # of digits in 8 bit
        lda #0          ; initialize remainder

        asl 900         ; arithmetic shift left dividend
        rol             ; rotate left
        cmp 901         ; compare to divisor
        bcc 857         ; *+6 if no carry, skip to dey
        sbc 901         ; subtract divisor
        inc 900         ; increment dividend count
        dey             ; next binary bit
        bne 842         ; *-16 branch back to asl 900

        ldx 900         ; load final quotient
        stx 1024        ; print quotient
        sta 1026        ; print remainder
        rts