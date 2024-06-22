*=828
        loopChars 1,0,250
        loopChars 1,250,250
        loopChars 1,500,250
        loopChars 1,750,250
        rts

; params: char, offset, loops
defm    loopChars
        ldx #0
        lda #/1
@loop   
        sta 1024,x + #/2
        inx
        cpx #/3
        bne @loop
        endm