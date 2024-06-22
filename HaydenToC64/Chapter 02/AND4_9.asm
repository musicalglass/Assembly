*=828
        ldx #15         ; enter binary 1111
        stx 900         ; store it
        lda #18         ; enter 10010
        and 900         ; AND them
        sta 1024        ; print result B 0010
        rts

; 0001111
; 0010010
; 0000010

; alternative
; lda #18
; and #15