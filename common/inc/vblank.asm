;-INCLUDE------------------------------------------------------
IF !DEF(COMMON_VBLANK_ASM)
COMMON_VBLANK_ASM SET 1
;-------------------------------------------------------INCLUDE

INCLUDE "../common/inc/input.asm"
INCLUDE "../common/macros.inc"

SECTION "VBlank Interrupt", ROM0[$40]
	push af
    xor a
    ldh [hVBlankFlag], a
    pop af
    reti
	
SECTION "Vblank VARS", HRAM
hVBlankFlag:
	DS 1

SECTION "VBLANK_ASM", ROM0

waitForVBlank:
	ei
	ld a, 1
	ldh [hVBlankFlag], a
.loop
    halt    
    ldh a, [hVBlankFlag]
    and a
    jr nz, .loop
	ret	

	
; b = number of iterations (b != 0)
skipVBlanks:
	call waitForVBlank
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
	
