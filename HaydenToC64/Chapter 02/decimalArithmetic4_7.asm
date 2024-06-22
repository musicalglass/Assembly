*=828
        sed             ; set decimal mode
        clc             ; clear carry
        lda #2          ; load 2
        sta 900         ; store in memory 900
        lda #1          ; load 1
        adc 900         ; add to 2 in memory
        sta 1024        ; print "C"
        cld             ; clear decimal flag
        rts