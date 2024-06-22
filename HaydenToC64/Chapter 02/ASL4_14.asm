*=828
        lda #149        ; load 10010101
        asl             ; shift left
        sta 1024        ; print 00101010
        rts