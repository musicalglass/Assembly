; 10 SYS (4096)

*=$0801
        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00
*=$1000

        ldx #4
LOOP
        jsr $FFE4
        beq LOOP
        stx 1024
        jsr $FFD2
        stx 1026
        dex
        bne LOOP

        rts