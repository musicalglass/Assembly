*=828

        lda #1          ; load color white
        jsr 58678       ; (E536) clear screen AND set text color

        lda #26         ; load "A" value into accumulator
        ldx #1          ; load "Z" value into X register

        sta 900         ; transfer acumulator to memory
        txa             ; transfer X register to accumulator
        lda 900         ; load accumulator from memory

        sta 1024        ; store accumulator in screen memory location 1
        stx 1063        ; store X value in screen location 39

        lda #14         ; Default text color
        sta 646         ; $0286 Restore text color before exit
        rts
