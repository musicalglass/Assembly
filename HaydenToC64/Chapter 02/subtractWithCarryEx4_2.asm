*=828
; subtract with carry
        cld             ; clear decimal
        sec             ; set carry to 1
        lda #32         ; load 32
        sbc #88         ; subtract 88 with carry
        sta 1036        ; print 200

        lda #3          ; load 3
        sbc #2          ; subtract 2 with carry
        sta 1034        ; print 0
        rts