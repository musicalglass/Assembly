*=828
        ldx #90         ; load starting value 90

        dex             ; decrease X by 1
        cpx 900         ; compare to value in memory 900 
        bpl 830         ; $33E if answer is positive, branch back to dex
        ; or use Relative Addressing (*-4)
        stx 1024        ; write X value to screen
        rts
; Author claims this prints a zero
; In fact it prints -1 rolling back to 255