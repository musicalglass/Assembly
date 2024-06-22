; 10 SYS (4096)

*=$0801
        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00
*=$1000

        lda #42         ; load asterisk
        sta 1524        ; write to middle of screen
        ldx #1          ; load color white
        stx 55796       ; set to corresponding screen location
        jsr 65490       ; ($FFD2) print Accumulator at default position

        rts

; try setting lda #42 to 1
; prints an A in the middle of screen but no A at CHROUT
; because screen code A is 1 but PETSCII (CBM ASCII) value is 65