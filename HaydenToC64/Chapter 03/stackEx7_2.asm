; 10 SYS (4096)

*=$0801

        BYTE $0E, $08, $0A, $00, $9E, $20, $28, $34, $30, $39, $36, $29, $00, $00, $00

*=$1000 ; <---- will NOT run from 828

        ldx #4          ; set up loop constant in X
START
        txa             ; transfer X to Accumulator
        pha             ; transfer to the Stack
        php
LOOP
        jsr 65508       ; ($FFE4) get input
        beq LOOP        ; loop until input
        jsr 65490       ; ($FFD2) output to screen

        plp
        pla             ; pull value from the Stack to Accumulator
        tax             ; transfer Accumulator to X
        dex             ; subtract 1 from X
        bne START       ; branch back to START

        rts