; 10 SYS (4096)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00

*=$1000
        jsr 58692       ; $E544 clear screen

        cld            ; clear decimal
        clc             ; clear carry
        lda #1          ; load 1st value into accumulator
        sta 900         ; $083 store value in memory location 900

        lda #2          ; load second value into accumulator
        adc 900         ; add accumulator value with value in memory

        ORA #48         ; $30 convert to ASCII (value must be less than 10)
        JSR 65490       ; $FFD2 print it
        rts