*=828
; add with carry
        cld             ; clear decimal
        clc             ; clear carry flag
; add LSBs
        lda #$2C        ; load 44 hex
        adc #$90        ; add 144
        sta 900         ; store in memory 900
; add MSBs
        lda #$01        ; load 1
        adc #$01        ; subtract 1
        sta 901         ; store in memory 901

        sec             ; set carry flag for subtraction
; subtract LSBs
        lda 900         ; load memory 900
        sbc #$F4        ; subtract 244
        sta 1041        ; print LSB
; subtract MSBs
        lda 901         ; load memory 901
        sbc #$01        ; subtract 1
        sta 1040        ; print MSB

        rts