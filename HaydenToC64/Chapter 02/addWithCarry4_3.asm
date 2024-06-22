*=828
; Add with Carry
        clc             ; clear carry
        cld             ; clear decimal
        lda #133        ; load LSB 133
        adc #133        ; add 133 with carry
        sta 1026        ; print a "J"
        nop             ; no operation
        lda #4          ; load MSB with carry
        adc #4          ; add 4
        sta 1024        ; print a 9 "I"
        rts