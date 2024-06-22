; SYS 49152

*=$C000

screen = $0400
        sei
        lda #<userint
        sta $0314
        lda #>userint
        sta $0315
        cli
        rts

        ldy #$00 
userint
        lda screen,y 
loop
        eor #%10000000
        sta screen,y
        iny
        cpy #40
        bne loop
        jmp $EA31