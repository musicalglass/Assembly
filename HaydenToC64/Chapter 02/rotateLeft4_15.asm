*=828
        lda #128        ; load 1000 0000
        sta 900         ; store in memory
        adc #128        ; add another  1000 0000
; value is now 256 and rolls over to 0
        rol 900         ; ROtate Left the carry flag
        lda 900         ; value should now be 0000 0001
        sta 1024        ; print an A (1)
        rts

; AKA 9 bit rotation