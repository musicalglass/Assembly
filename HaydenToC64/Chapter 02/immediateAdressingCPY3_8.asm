*=828
; prints 255 characters to screen
        ldx #0          ; starting at 0
        txa             ; transfer X to Accumulator
        inx             ; increment X
        sta 1023,x      ; print Accumulator to the screen
        cpx #255        ; if X hasn't reached 255...
        bne 830         ; $33E(*-7) branch back to txa
        rts