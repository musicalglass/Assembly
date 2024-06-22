; 10 SYS (4096)

*=$0801
        BYTE $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00
*=$1000

        ;ldx #1         ; for coloring chars white
; check if number is less than 200. If so, branch
        lda #152        ; value to print
        cmp #200        ; is it more than 200?
        bcc ONEHUND     ; if no branch on carry clear
; subtract 200 from number and print out digit '2'
        sbc #200        ; subtract 200
        pha             ; put it on the Stack
        lda #50         ; load char 2
        sta 1024        ; print to screen in hundred's place
        ;stx 55296
        pla             ; pull from Stack
        jmp TENS        ; if we didn't branch to ONEHUND earlier, skip it now

ONEHUND
; check if number less than 100. If so, branch
        clc             ; clear carry flag
        cmp #100        ; is it more than 100?
        bcc TENS        ; if no branch to TENS
; subtract 100 from number and print out digit '1'
        sbc #100        ; subtract 100
        pha             ; put it on the Stack
        lda #49         ; load char 1
        sta 1024        ; print to screen in hundred's
        ;stx 55296
        pla             ; pull from Stack

TENS
; check if remainder is less than or equal to 9. If so, branch
        clc             ; clear carry flag
        ldy #0          ; initialize Y
        cmp #9          ; is it more than 9?
        bcc ZEROTENS    ; if no, go to single digits

LOOP
; count number of 10s left in remainder and print 10's digit
        iny             ; add 1 to Y previously initialized to 0
        sbc #10         ; subtract 10

        cmp #9          ; compare to 9
        bcs LOOP

ZEROTENS
        pha             ; put it on the Stack
        tya             ; transfer Y to Accumulator
        adc #48         ; convert numeric value to screen char

        sta 1025        ; print A in the 10's place
        ;stx 55297
; print remainder in single digits
        pla             ; pull from Stack
        adc #48         ; convert number to screen char
        sta 1026        ; print in 1's place
        ;stx 55298

        rts             ; phew!