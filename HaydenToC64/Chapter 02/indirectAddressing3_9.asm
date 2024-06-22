*=828
        ldx #0          ; load X immediate with 0
        lda 84,x        ; load Accumulator indirect 84+X
        sta 1024,x      ; write A to screen index X
        inx             ; increment X
        cpx #4          ; compare X immediate with 4
        bne 830         ; if not 4, branch back to lda 84,x
        rts