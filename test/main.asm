INCLUDE "../common/hardware.inc"

INCLUDE "inc/header.asm"

SECTION "Main", ROM0

INCLUDE "../common/inc/vblank.asm"
INCLUDE "../common/inc/memory.asm"

INCLUDE "../common/inc/splash.asm"
	
Start:
	call doSplash
	jr Start
	; main loop
.loop
	
.draw			
    
.vblank
	call waitForVBlank
	
    jr .loop              ; while(1) 

INCLUDE "../common/res/HomebrewOwlLogo.asm"
INCLUDE "../common/res/AuthorCredit.asm"
	