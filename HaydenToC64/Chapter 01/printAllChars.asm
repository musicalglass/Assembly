; 10 SYS (828)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $38, $32, $38, $29, $00, $00, $00

*=828
bob
        lda #1
        sta 1024
        inc 1
        bne bob