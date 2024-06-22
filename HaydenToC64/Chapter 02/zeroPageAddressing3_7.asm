*=828
        lda 160         ; $A0 load Accumulator Zero Page Mode
        sta 1024        ; write Asterisk 0 to screen
        rts