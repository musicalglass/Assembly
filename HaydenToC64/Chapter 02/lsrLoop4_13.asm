*=828
        ldy #18         ; load 10010
        sty 900         ; store it
        ldy #4          ; # of times to loop
        lsr 900         ; shift value in memory right
        dey             ; update counter
        bne 835         ; (*-4) loop back to lsr 900
        lda 900         ; grab result from memory
        sta 1024        ; print A (1)
        rts

; shift right 4 times
; 00010010
; 00001001
; 00000100
; 00000010
; 00000001