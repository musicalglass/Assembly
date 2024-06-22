; 10 SYS (4096)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00

*=$1000
        lda #83         ; load value for a heart into Accumulator
        cmp #83         ; compare to value 83 stored in Accumulator

        bne NOTEQL         ; $340(*-7) if not the same, branch back to inx
EQUAL
        stx 1024        ; print heart to screen memory location 1
        lda #1          ; load color value (white)
        sta 55296       ; set color of location 1
        rts

NOTEQL
        stx 1024        ; print heart to screen memory location 1
        lda #0          ; load color value (white)
        sta 55296       ; set color of location 1
        rts