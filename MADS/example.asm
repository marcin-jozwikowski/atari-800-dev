	org $2000

SAVMSC = $0058

	ldy #0
loop
	lda text,y
	sta (SAVMSC),y
	iny
	cpy #12
	bne loop
	jmp *

text
	.byte "HELLO ATARI!"