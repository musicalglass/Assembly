*=828
        ldx #100        ; starting at 100
        dex             ; subtract 1 each loop
        beq 836         ; (*+5) branch forward if zero flag set to 1
        jmp 830         ; (*-3) loop back to dex line
        stx 1024        ; print zero to screen memory location 1
        stx 55296       ; set color to zero (black)
        rts