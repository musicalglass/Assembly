; 10 SYS (828)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $38, $32, $38, $29, $00, $00, $00

*=828
        lda #1          ; load color white
        jsr 58678       ; (E536) clear screen AND set text color

        lda #24          ; load value "X" into accumulator

        sta 1024         ; store in screen memory location 1
        sta 1063         ; store in screen memory right corner
        sta 1984         ; store in screen memory bottom left
        sta 2023         ; store in screen memory bottom right

        lda #14         ; Default text color
        sta 646       ; $0286 Restore text color before exit

        rts