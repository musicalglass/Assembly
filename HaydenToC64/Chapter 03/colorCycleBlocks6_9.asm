; 10 SYS (4096)

*=$0801
        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00
*=$1000

        lda #0          ; store starting color value black in memory
        sta 1019
LOOP1
        ldx #200        ; number of blocks
LOOP2
        lda #160        ; load blank char
        sta 1023,x      ; draw to screen mem
        lda 1019        ; load color
        sta 55295,x     ; set color for blank char
        dex             ; next char X position
        bne LOOP2       ; loop 200 times

        lda #186        ; load timer interval of 1 second
        sta 162         ; set jiffy clock
DELAY
        lda 162         ; count jiffies
        bmi DELAY       ; loop til less than 0

        lda 1019        ; get current char color
        adc #1          ; add 1 to it
        cmp #16         ; check if it's gone over 15
        sta 1019        ; if not store new color value
        bne LOOP1       ; draw more blocks

        rts