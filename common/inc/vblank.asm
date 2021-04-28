SECTION "VBLANK_ASM", ROM0
waitForVBlank:
	ldh a, [rLY]          ; Load the current scanline
	cp 144                ; 144 - 153 are within vblank
	jr nz, waitForVBlank  ; Loop if != 144
	ret
	
; b = number of iterations (b != 0)
skipVBlanks:
	call waitForVBlank
	ld a,b	
	cp 0	
	dec b
	jr nz, skipVBlanks	
	ret
