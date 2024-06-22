; 10 SYS (4096)

*=$0801
        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00
*=$1000

        clc             ; clear carry
        ldy #2          ; X position
        ldx #24         ; Y position
        jsr 65520       ; ($FFF0) call PLOT to position cursor
        lda #7          ; load char color
        sta 646         ; set CHROUT color
        lda #42         ; load asterisk
        jsr 65490       ; ($FFD2) CHROUT

        lda #14         ; restore char color to default before exit
        sta 646
        rts