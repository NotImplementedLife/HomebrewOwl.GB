;-INCLUDE------------------------------------------------------
IF !DEF(COMMON_VBLANK_ASM)
COMMON_VBLANK_ASM SET 1
;-------------------------------------------------------INCLUDE

INCLUDE "../common/inc/input.asm"

SECTION "VBLANK_ASM", ROM0
waitForVBlank:
	ldh a, [rLY]          ; Load the current scanline
	cp 144                ; 144 - 153 are within vblank
	jr nz, waitForVBlank  ; Loop if != 144
	ret
	
; b = number of iterations (b != 0)
skipVBlanks:
	call waitForVBlank
	ld a, b	
	cp 0	
	dec b
	jr nz, skipVBlanks	
	ret

	
; b = number of iterations (b != 0)
skipVBlanksButBreakOnKey:
	call waitForVBlank	
	push hl
	push bc
	call updateJoypadState
	pop bc
	pop hl	
	ld a, [wJoypadState]
	cp a, 0
	jr nz, .breakLoop
	ld a, b	
	cp 0	
	dec b
	jr nz, skipVBlanksButBreakOnKey
	ret
.breakLoop
	ld c, 1	
	ret
	
;--------------------------------------------------------------
ENDC
;-------------------------------------------------------INCLUDE
	
