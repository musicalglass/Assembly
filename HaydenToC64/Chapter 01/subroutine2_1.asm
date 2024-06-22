*=900
        sta 950         ; store Accumulator to memory location 950
        adc 950         ; add value to itself (C becomes F)
        rts             ; exit to BASIC