*=828
        ldx #0          ; starting X at 0

        lda #90         ; load a diamond
        sta 900         ; store it in memory 900
        lda #1          ; load color white
        sta 901         ; store in memory 901
        lda #32         ; load blank character
        sta 902         ; store in 902

        ldy #250        ; number of times to loop Y

        lda 900         ; load diamond
        sta 1024,x      ; print to screen at X index position
        lda 901         ; load color
        sta 55296,x     ; set color at position X
        ; timing delay
        dey             ; subtract 1 from Y loop
        bne 859         ; (*-1) if not 0, loop back to dey

        lda 902         ; load blank character
        sta 1024,x      ; print blank at X position to erase char
        inx             ; advance to next frame
        bne 847         ; (*-22) loop back to lda 900
        rts