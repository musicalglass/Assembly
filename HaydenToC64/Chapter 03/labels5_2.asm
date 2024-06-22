*=828
        ldx #160        ; number of chars
        ldy #1          ; load color white
        jmp loop2       ; go to label loop2
loop1
        lda #83         ; load heart char
        sta 1183,x      ; starting at screen mem line 5, index X
        tya             ; grab black from memory
        sta 55455,x     ; set color of char in screen mem
        dex             ; update number of times to loop
        bne loop1       ; continue till 0
        jmp end         ; go to label end
loop2
        lda #90         ; load diamond
        sta 1023,x      ; write to screen, index X
        tya             ; grab color white from memory
        sta 55295,x     ; set diamonds color
        dex             ; subtract number of times to loop
        bne loop2       ; keep looping till 0
        ldx #120        ; initialize number of chars
        dey             ; subtract from 1 color to make black 0
        jmp loop1       ; go to label loop1
end
        rts