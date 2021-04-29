
;--------------------------------------------------------------
;--------------------------------------------------------------
;                         Main SECTION
;--------------------------------------------------------------
;--------------------------------------------------------------


SECTION "Main", ROM0

;-Entry--------------------------------------------------------
SplashScreen:
;--------------------------------------------------SplashScreen
	call doSplash	
	jp Start	
;--------------------------------------------------SplashScreen


;-Entry--------------------------------------------------------	
Start:	
;---------------------------------------------------------Start	
	call initWRAM0
	call waitForVBlank
	ld a, %10010001 
	ld a, %10001001 
    ld [rLCDC], a	
	ld a, %11100100
	ld [rBGP], a		
	call copyCubesSTAT
	ld hl, Brush0
	ld bc, TestMask+1
	ld de, Cube0Tiles + $30	
	call PaintTile		
	ld hl, $8030
	call CopyPaintedTile
.loop	
	REPT(200)
	call waitForVBlank	
	ENDR
	ld a, [rLCDC]
	xor %00011000
	ld [rLCDC], a		
    jp .loop    
;---------------------------------------------------------Start



;--------------------------------------------------------------
;--------------------------------------------------------------
;                         Dependencies
;--------------------------------------------------------------
;--------------------------------------------------------------


; Header
INCLUDE "header.asm"

; Resources
INCLUDE "../common/res/HomebrewOwlLogo.asm"
INCLUDE "../common/res/AuthorCredit.asm"

INCLUDE "res/cube.asm"
INCLUDE "res/masks.asm"

; Routines
INCLUDE "../common/inc/vblank.asm"
INCLUDE "../common/inc/memory.asm"
INCLUDE "../common/inc/splash.asm"

INCLUDE "inc/brush.asm"
INCLUDE "inc/cube.asm"
INCLUDE "inc/masks.asm"
	