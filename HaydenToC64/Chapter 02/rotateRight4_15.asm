*=828
        lda #1          ; load 1000 0000
        sta 900         ; store in memory
        ror 900         ; ROtate Right
; the carry flag should now be set to 1
        bcs *+5         ; if carry flag = 1, skip over jmp
        jmp 828         ; loop back to beginning
; print something to the screen to show it worked
        lda #1          ; load value A
        sta 1024        ; print to screen
        rts