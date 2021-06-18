;-INCLUDE------------------------------------------------------
IF !DEF(COMMON_SPLASH_ASM)
COMMON_SPLASH_ASM SET 1
;-------------------------------------------------------INCLUDE

INCLUDE "../common/res/HomebrewOwlLogo.asm"
INCLUDE "../common/inc/vblank.asm"

SPLASH_ANM_SKIPPED_VBLANKS SET  60
SPLASH_DSP_SKIPPED_VBLANKS SET  255
SPLASH_DLY_SKIPPED_VBLANKS SET  255

SECTION "SPLASH_ASM", ROM0
; use this at ROM Main Entry Point
doSplash:
	vBlankInit
	call initInputWRAM	
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
	
	call copyHbOwlLogo
	ld a, %00000000
    ld [rBGP], a	
    ld a, %10010001 ; turn screen on
    ld [rLCDC], a
	call animateHbOwlLogo
	
	call clearVRAM	
	ret

;--------------------------------------------------------------
ENDC
;-------------------------------------------------------INCLUDE