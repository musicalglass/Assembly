*=828
        lda #3          ; load letter "C"
        jsr 900         ; jump to subroutine at memory location 900
        sta 1024        ; store in screen memory location 1
        lda #1          ; load color white
        sta 55296       ; set color for 1st location
        rts             ; exit to BASIC