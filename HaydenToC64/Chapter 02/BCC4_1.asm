*=828
; Branch on Carry Clear
        clc             ; clear the carry flag
        lda #0          ; load 0
        adc #1          ; add 1
        bcc 831         ; keep adding til 255 flips to 0
        sta 1024        ; print Ampersand 0
        rts