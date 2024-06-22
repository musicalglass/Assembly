; 10 SYS (828)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $38, $32, $38, $29, $00, $00, $00

*=828
        jsr 58692       ; $E544 clear screen

        lda #1          ; load "A" value into accumulator
        sta 1024        ; store in screen memory location 1
        sta 55296       ; store value (white) in color RAM location 1
        tax             ; transfer accumulator value to X register
        sta 1026        ; store in screen memory location 3
        stx 55298       ; store same value (white) in color RAM location 3

        rts