; 10 SYS (4096)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00

*=$1000 ; <--- does NOT work from 828!

START
        ldx #32         ; load space char
        stx 900         ; store in memory
LOOP
        jsr 65508       ; ($FFE4) get input
        beq LOOP        ; loop until input is not = 0
        jsr 65490       ; print input to screen using CHROUT
        cmp 900         ; compare to space char in memory
        bne START       ; if not space, start over
        lda #13         ; load PETCII <return> code
        jsr 65490       ; CHROUT

        rts