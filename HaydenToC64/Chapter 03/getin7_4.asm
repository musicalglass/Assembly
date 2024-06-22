; 10 SYS (4096)

*=$0801
        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00
*=$1000

        ;lda #0         ; initialize Accumulator
LOOP
        jsr 65508       ; ($FFE4) get keyboard input
        beq LOOP        ; if input=0 keep looping
        jsr 65490       ; ($FFD2) CHROUT

        rts