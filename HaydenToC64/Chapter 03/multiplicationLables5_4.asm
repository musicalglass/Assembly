*=828

MPR = 900               ; define label for memory location of multiplyer
        lda #255        ; load value
        sta MPR         ; <---typo Store in MultiPlyeR
MPD = 904               ; label memory MultiPlicanD
        lda #255        ; value
        sta MPD         ; store
TEMP = 902              ; self explanatory
RESLSB = 906            ; label mem REsult Most Significant Bit
RESMSB = 907            ; Result Least Significant Bit
        lda #0          ; initialize TEMP
        sta TEMP
        sta RESLSB      ; initialize RESLSB
        sta RESMSB      ; initialize RESMSB

        ldy #8          ; set loop counter for 8 bits
algo
        lsr MPR         ; Logical Shift Right MultiPlyeR
        bcc noCarry     ; check if right most bit of multiplyer=0
        lda RESLSB      ; load Accumulator with Result Least Significant Bit
        clc             ; CLear Carry
        adc MPD         ; add MultiPlicanD with carry
        sta RESLSB      ; store in Result Least Significant Bit
        lda RESMSB      ; load Result Most Significant Bit
        adc TEMP        ; add to TEMP
        sta RESMSB      ; store in Result Most Significant Bit

noCarry         ; current partial=0, set up next loop
        asl MPD         ; Arithmetic Shift Left MultiPlicanD
        rol TEMP        ; ROtate Left TEMP
        dey             ; update counter to next bimary bit
        bne algo        ; loop back
; display result
        lda RESLSB      ; load Result Least Significant Bit
        sta 1025        ; print last first
        lda RESMSB      ; load Result Most Significant Bit
        sta 1024        ; print first last

        rts