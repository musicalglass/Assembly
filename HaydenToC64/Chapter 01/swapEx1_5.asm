; 10 SYS (828)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $38, $32, $38, $29, $00, $00, $00

*=828

        lda #1          ; load color white
        jsr 58678       ; (E536) clear screen AND set text color

        lda #90         ; load diamond value into Accumulator
        ldx #42         ; load asterisk value into X Register
        ldy #5          ; load "E" value into Y Register

        stx 900         ; store X to memory
        tax             ; transfer Accumulator to X register
        tya             ; transfer Y register to Accumulator
        ldy 900         ; load Y from memory

        sta 1024         ; store Accumulator in screen memory location 1
        sta 1063         ; store Accumulator in screen memory right corner
        stx 1984         ; store X Register in screen memory bottom left
        sty 2023         ; store Y Register in screen memory bottom right

        lda #14         ; Default text color
        sta 646       ; $0286 Restore text color before exit
        rts
