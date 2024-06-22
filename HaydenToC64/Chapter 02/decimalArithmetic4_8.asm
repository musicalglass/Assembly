*=828
        sed             ; set decimal mode
        clc             ; clear carry
        lda #6          ; load 6
        sta 900         ; store in memory 900
        lda #6          ; load 6 again
        adc 900         ; add to 2 in memory with carry
        sta 1024        ; prints two nibbles as "R"
        cld             ; clear decimal flag
        rts