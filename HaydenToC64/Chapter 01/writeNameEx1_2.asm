; 10 SYS (828)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $38, $32, $38, $29, $00, $00, $00

*=828
        ;jsr 58692      ; clear screen
        lda #1          ; load color white
        ;sta $0286      ; store value (white) in color RAM location 1
        ;sta 55297      ; store value (white) in color RAM location 2
        ;sta 55298      ; etc.

        jsr 58678       ; (E536) clear screen AND set text color

        lda #20         ; load value "T" into accumulator
        sta 1024        ; store in screen memory location 1

        lda #9          ; load value "I" into accumulator
        sta 1025        ; store in screen memory location 1

        lda #13         ; load value "M" into accumulator
        sta 1026        ; store in screen memory location 1

        lda #14        ; Default text color
        sta 646        ; $0286 Restore text color before exit

        rts