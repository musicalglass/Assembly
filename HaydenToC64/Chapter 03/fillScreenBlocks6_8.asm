; 10 SYS (4096)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00

*=$1000
        ldx #180        ; number of blocks to fill
LOOP
        lda #8          ; load color value
        sta $D7FF,x
        lda #160        ; load blank character
        sta 1023,x
        dex
        bne LOOP
        rts