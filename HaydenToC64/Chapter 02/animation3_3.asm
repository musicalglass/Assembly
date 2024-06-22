*=828
; animation speed per frame: 41 cycles (20.5 micro seconds)
        ldx #0          ; start of animation
        ldy #32         ; load blank character
        sty 900         ; store in memory 900

        lda #90         ; load diamond character
        sta 901         ; store in memory slot 900

        sta 1024,x      ; print to screen at position X
        lda #1          ; load color white
        sta 55296,x     ; store color at screen position X
        tya             ; transfer blank from memory 900 to Accumulator
        sta 1023,x      ; draw one space behind to cover up previous diamond
        lda 901         ; get diamond from memory
        inx             ; go to next frame
        bne 840         ; branch back to sta 1024
        rts