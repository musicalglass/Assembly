
*=828

        LDX #0          ; start at zero
LOOP 
        TXA             ; move number to A
        ORA #48         ; convert to ASCII
        JSR 65490       ; print it
        INX             ; go to next number
        CPX #10         ; equal to ten?
        BCC LOOP        ; if no, print more
        RTS