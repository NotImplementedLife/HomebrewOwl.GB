rBGPI EQU $FF68
rBGPD EQU $FF69
rOBPI EQU $FF6A
rOBPD EQU $FF6B

SECTION "Palette Manager", ROM0

loadPaletteFromHL::
	REPT(8)
		ld a, [hli]
		ldh [rBGPD], a
	ENDR
	ret
	
loadPaletteFromHLd::
	REPT(8)
		ld a, [hli]
		ldh [rBGPD], a
	ENDR
	push bc
	ld bc, -16
	add hl, bc
	pop bc
	ret

loadObjPaletteFromHL::
	REPT(8)
		ld a, [hli]
		ldh [rOBPD], a
	ENDR
	ret
