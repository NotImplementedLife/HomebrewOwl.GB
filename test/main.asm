INCLUDE "../common/hardware.inc"

INCLUDE "inc/header.asm"

SECTION "Main", ROM0

INCLUDE "../common/inc/vblank.asm"
INCLUDE "../common/inc/memory.asm"
	
Start:
    ; Turn off the LCD
	call waitForVBlank	
    xor a                 
    ld [rLCDC], a  
			
	
	; Init display registers
	ld a, %11100100    
    ld [rBGP], a
    xor a ; ld a, 0
    ld [rSCX], a
    ld [rSCY], a    
	
	call copyNotImpOwlLogo
	ld a, %00000000
    ld [rBGP], a
	
	 ; Turn screen on, display background
    ld a, %10010001
    ld [rLCDC], a
	REPT 200
	call waitForVBlank	
	ENDR
	
	ld a, %01000000
    ld [rBGP], a
	REPT 80
	call waitForVBlank	
	ENDR

	ld a, %01010000
    ld [rBGP], a
	REPT 80
	call waitForVBlank	
	ENDR
	
	ld a, %01010100
    ld [rBGP], a
	REPT 80
	call waitForVBlank	
	ENDR
	
	ld a, %10010100
    ld [rBGP], a
	REPT 80
	call waitForVBlank	
	ENDR
	
	ld a, %10100100
    ld [rBGP], a
	REPT 80
	call waitForVBlank	
	ENDR
	
	ld a, %11100100
    ld [rBGP], a	
	
	; main loop
.loop
	
.draw			
    
.vblank
	call waitForVBlank
	
    jr .loop              ; while(1) 

SECTION "FONT", ROM0

INCLUDE "../common/res/NotImpOwlLogo.asm"
	