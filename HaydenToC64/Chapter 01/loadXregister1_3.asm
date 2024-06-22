*=828
        jsr 58692       ; $e544 clear screen

        lda #1          ; load "A" value into accumulator
        sta 1024        ; store in screen memory location 1
        sta 55296       ; store value (white) in color RAM location 1

        ldx 1024        ; load x register with value from screen memory
        stx 1026        ; store in screen memory location 3
        stx 55298       ; store same value (white) in color RAM location 3

        rts