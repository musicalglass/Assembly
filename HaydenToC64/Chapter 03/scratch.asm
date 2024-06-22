; 10 SYS (4096)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $30, $39, $36, $29, $00, $00, $00

*=$1000

LOOP
        jsr 65508       ; ($FFE4) call GETIN subroutine
        cmp #13         
        beq END 
        jmp LOOP        ; wait for input

END