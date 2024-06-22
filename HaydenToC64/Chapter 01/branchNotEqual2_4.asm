*=828
        ldx #100        ; starting at 100
        dex             ; subtract 1 each loop
        bne 830         ; (*-1) branch back to dex if zero flag set to 1
        stx 1024        ; print zero to screen memory location 1
        stx 55296       ; set color to X value zero (black)
        rts