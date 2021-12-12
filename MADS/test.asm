org $2000

SAVMSC = $0058          ; Screen Memory
SDLSTL = $0230          ; Display list start

SCREEN = $4000          ; Screen Buffer Start
CHBAS = $02f4           ; CHAracter Base - Register - HERE store 
CHARSET = $3c00         ; Main character set start - Location

ANTIC_BLANK = $70       ; ANTIC - 8 Blank Lines
ANTIC_MODE_2 = 2        ; ANTIC - Mode 2
ANTIC_MODE_3 = 3        ; ANTIC - Mode 3
ANTIC_MODE_4 = 4        ; ANTIC - Mode 4
ANTIC_MODE_5 = 5        ; ANTIC - Mode 5
ANTIC_MODE_6 = 6        ; ANTIC - Mode 6
ANTIC_MODE_7 = 7        ; ANTIC - Mode 7
ANTIC_LMS = $40         ; ANTIC - Load memory scan
ANTIC_JVB = $41         ; ANTIC - Jump while vertical black

ANTIC_MODE = ANTIC_MODE_5 ; ANTIC MODE USED


; Main program
    MWA #displayList SDLSTL        ; Set DisplayList Register to point to our display list
    MVA #>CHARSET CHBAS                 ; Set CharacterBase Register to point to LowByte of CHARSET
    MVA characters CHARSET              ; Copy First byte of Characters to our CHARSET

    LDX #0
    copyLoop
        MVA characters,x CHARSET,x
        INX
        CPX #8
        BNE copyLoop

    JMP *


; Display List
displayList
    .byte ANTIC_BLANK, ANTIC_BLANK, ANTIC_BLANK                            ; 3 blank
    .byte ANTIC_MODE_2+ANTIC_LMS, <SCREEN, >SCREEN                         ; Set Mode + Load Memory; Memory address to load
    .byte ANTIC_MODE, ANTIC_MODE, ANTIC_MODE, ANTIC_MODE, ANTIC_MODE       ; 5 blank
    .byte ANTIC_MODE, ANTIC_MODE, ANTIC_MODE, ANTIC_MODE, ANTIC_MODE       ; 5 blank
    .byte ANTIC_MODE, ANTIC_MODE, ANTIC_MODE, ANTIC_MODE, ANTIC_MODE       ; 5 blank
    .byte ANTIC_MODE, ANTIC_MODE, ANTIC_MODE, ANTIC_MODE, ANTIC_MODE       ; 5 blank
    .byte ANTIC_MODE, ANTIC_MODE, ANTIC_MODE                               ; 3 blank
    .byte ANTIC_JVB, <displayList, >displayList                            ; Jump to beggining of displayList

; DATA SECTION
hello
    .sbyte "HELLO ATARI"

characters
    .byte ~00000001
    .byte ~00000010
    .byte ~00000100
    .byte ~10101010
    .byte ~00010000
    .byte ~00100000
    .byte ~01000000
    .byte ~10000000