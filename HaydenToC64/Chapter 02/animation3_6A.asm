*=828
; add 4000 delay cycles
        ldx #0          ; first frame of animation
        lda #90         ; load diamond character
        sta 900         ; store diamond in memory 900
        lda #1          ; load color white
        sta 901         ; store in memory 901
        lda #32         ; load blank character
        sta 902         ; store in memory 902

        lda 900         ; load diamond from memory
        sta 1024,x      ; print to screen at X position
        lda 901         ; load color white
        sta 55296,x     ; set color of charcter at X position
        stx 903         ; save X register before delay loop

        ldx #20         ; set timimg outer loop repeat

        ldy #250        ; set inner loop repeat
        dey             ; burn one cycle
        bne 864         ; (*-1) repeat 250 times
 
        dex             ; start inner loop over again
        bne 862         ; (*-6) loop back to ldy #250

        ldx 903         ; load stored X value from memory
        lda 902         ; load blank character from memory
        sta 1024,x      ; print blank
        inx             ; advance one frame
        bne 845         ; (*-35) branch back to lda 900
        rts