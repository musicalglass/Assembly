; 10 SYS (4096)

*=$0801
        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00
*=$1000

LOOPCONST = 900         ; create label for memory location

        ldx #4          ; number of times to loop
STORE
        stx LOOPCONST   ; store X in memory
GET
        jsr $FFE4       ; get input
        beq GET         ; continue if 0

        jsr $FFD2       ; output to screen
        ldx LOOPCONST   ; store in memory

        dex             ; update loop repeat
        bne STORE       ; store X if loop hasn't finished yet

        rts