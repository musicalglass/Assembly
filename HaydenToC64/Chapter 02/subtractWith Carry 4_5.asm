*=828
; Subtract with Carry
        sec             ; set carry to 1      
        lda #130          ; load 4
        sbc #128          ; subtract 2 with carry
        sta 1024        ; print a "B"
        rts