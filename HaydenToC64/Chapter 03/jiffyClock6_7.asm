; 10 SYS (4096)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00

*=$1000
        ;ldy #15
;BORDER
        ;sty 53280       ; ($d020)
        ldx #15
SCREEN
        stx 53281       ; ($d021) set screen color 0 to 15
        lda #250        ; set timer duration 128 to 255
        sta 162
LOOP
        lda 162
        bmi LOOP
        dex
        bne SCREEN
        ;dey
        ;bne BORDER
ENDLESS
        ;ldx #15
        ;jmp SCREEN

        rts
; 3 byte Jiffy Clock at 160 to 162
; Binary couter uses Jiffies (1/60th of a second)
; 162 is incrementd by 1 every jiffy and rolls into 161 every 256 jiffies
; 161 rolls into 160 every 65536 jiffies
; lda #186 = 60 jiffies ( 1 second )
