*=828
; labels for memory locations
LSB1 = 900
MSB1 = 901
LSB2 = 902
MSB2 = 903
ANSLSB = 904
ANSMSB = 905
; store values in memory using labels
        lda #10
        sta MSB1
        lda #200
        sta LSB1
        lda #3
        sta MSB2
        lda #180
        ;sta LSB2        ; unused

        clc             ; clear carry
        ; ( LSB2 is still in Accumulator from lda #180 )
        adc LSB1        ; add with carry 
        ;sta ANSLSB      ; store sum (unused)
        sta 1025        ; <--- typo print 124 NOT [

        lda MSB1        ; load value into Accumulator
        adc MSB2        ; add
        ;sta ANSMSB      ; save sum (unused)
        sta 1024        ; print N

        ldx #2          ; color red
        stx 55296
        stx 55297

        rts