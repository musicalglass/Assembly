; 10 SYS (4096)

*=$0801
        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00
*=$1000

        clc             ; clear carry
        ldx #11         ; X position
        ldy #17         ; Y position
        jsr 65520       ; ($FFF0)
        lda #7          ; load color yellow
        sta 646         ; set CHROUT color
        lda #42         ; load asterisk
        ldy #4          ; number of loops
LOOP
        jsr 65490       ; ($FFD2) CHROUT
        dey             ; next char
        bne LOOP        ; print 3 more. X position does not need to be updated

        lda #14         ; restore char color to default before exit
        sta 646
        rts