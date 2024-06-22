; 10 SYS (4096)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00

*=$1000
        jsr 58692       ; $e544 clear screen

        ;cld            ; clear decimal
        ;clc             ; clear carry
        lda #1          ; load 1st value into accumulator
        sta 1024        ; store in screen memory location 1
        sta 55296       ; store value (white) in color RAM location 1

        lda #2          ; load second value into accumulator
        adc 1024        ; add accumulator value to screen memory location
        sta 1026        ; store in screen memory location 3
        sta 55298       ; store value (blue) in color RAM location 3

        rts