*=828
; initialization
        ldx #2          ; multiplyer
        stx 901
        ldy #8          ; multiplicand
        sty 902 ; <--- typo in book
        ;lda #0 ; <--- why initialize Accumulator?

        clc             ; clear carry
; check if multiplcation necessary
        lsr 902 ; <--- typo in book ; logical shift right
        bcc *+4         ; branch on carry clear
; multiply if necessary
        clc             ; clear carry
        adc 901         ; add with carry
; check if all bits checked
        asl 901         ; arithmetic shift left
        dey             ; update multiplyer
        bne *-14         ; if multiplyer not 0 repeat

        sta 1024        ; should print P (16) NOT D
        rts

