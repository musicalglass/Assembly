; 10 SYS (4096)

*=$0801
        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00
*=$1000

        ldx #44         ; load char value for comma into memory
        stx 820
LOOP
        jsr 65508       ; ($FFE4) call GETIN subroutine
        beq LOOP        ; wait for input

        jsr 65490       ; ($FFD2) print input to screen

        cmp 820         ; compare to comma in memory
        bne LOOP        ; if not char #44, go back and get more input

        lda #13         ; load a <return>...
        jsr 65490       ; ($FFD2) to screen

        rts