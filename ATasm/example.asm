; A simple test app to put some color on the screen
; Provided by CycoPH at https://github.com/CycoPH/atasm-altirra-bridge
COLPF2 = $d018
COLBK = $D01A
WSYNC = $d40a
VCOUNT = $d40b
RTCLOK = $14

    * = $2000
BOOT_THIS
loop
    lda RTCLOK
    tay
    clc
    adc VCOUNT
    tax

    tya
    asl
    sec
    sbc VCOUNT

    sta WSYNC

    sta COLBK
    stx COLPF2
    jmp loop

    *=$2e0
    .word BOOT_THIS