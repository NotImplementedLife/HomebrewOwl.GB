rSCX EQU $FF43
rSCY EQU $FF42
rLY EQU $FF44
rLCDC EQU $FF40
rWY EQU $FF4A
rWX EQU $FF4B

rNR30 EQU $FF1A
rNR31 EQU $FF1B
rNR32 EQU $FF1C
rNR33 EQU $FF1D
rNR34 EQU $FF1E

rNR41 EQU $FF20
rNR42 EQU $FF21
rNR43 EQU $FF22
rNR44 EQU $FF23

rNR50 EQU $FF24
rNR51 EQU $FF25
rNR52 EQU $FF26

rBGPI EQU $FF68
rBGPD EQU $FF69
rOBPI EQU $FF6A
rOBPD EQU $FF6B


;SECTION----------------------------------------------------------------------------------------------
SECTION "HbOwl Palettes", ROM0, ALIGN[6]
;----------------------------------------------------------------------------------------------SECTION

hbOwlPalette0: DB $7F, $FF,  $7F, $FF,  $7F, $FF,  $7F, $FF
hbOwlPalette1: DB $7F, $FF,  $7F, $FF,  $7F, $FF,  $46, $31 
hbOwlPalette3: DB $7F, $FF,  $7F, $FF,  $46, $31,  $46, $31 
hbOwlPalette4: DB $7F, $FF,  $46, $31,  $46, $31,  $46, $31 
hbOwlPalette5: DB $7F, $FF,  $46, $31,  $46, $31,  $00, $00
hbOwlPalette6: DB $7F, $FF,  $46, $31,  $00, $00,  $00, $00
hbOwlPalettesEnd:

;SECTION----------------------------------------------------------------------------------------------
SECTION "Classic GB Palette", ROMX, BANK[1]
;----------------------------------------------------------------------------------------------SECTION

GameboyPalette: DB $F3, $06,  $B1, $06,  $86, $19,  $E1, $04

;SECTION----------------------------------------------------------------------------------------------
SECTION "HbOwl Logo", ROMX, BANK[1]
;----------------------------------------------------------------------------------------------SECTION

HbOwlLogoTiles:

DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $1c, $03
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2e, $f0
DB $00, $00, $00, $00, $00, $00, $00, $01, $03, $03, $07, $03, $04, $00, $00, $00
DB $00, $00, $06, $00, $8f, $7f, $fc, $ff, $fc, $ff, $05, $e1, $00, $01, $03, $01
DB $03, $00, $6f, $1f, $ff, $fc, $74, $80, $12, $ec, $ff, $ff, $b7, $cf, $03, $80
DB $1a, $ff, $bc, $c0, $00, $00, $00, $00, $00, $00, $80, $00, $80, $e0, $a0, $70
DB $87, $ff, $05, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $80, $00, $c0, $e0, $6d, $f0, $3d, $1f, $03, $0c, $00, $00, $00, $00, $0f, $00
DB $00, $00, $00, $00, $7c, $00, $f9, $ff, $bf, $7f, $07, $03, $01, $03, $0a, $fc
DB $00, $00, $00, $00, $00, $00, $60, $80, $e0, $e0, $e0, $f0, $c0, $f0, $40, $00
DB $02, $03, $02, $04, $0c, $00, $18, $00, $32, $13, $3b, $37, $7e, $67, $07, $4e
DB $00, $00, $00, $00, $00, $00, $bf, $7e, $b9, $ff, $80, $08, $3e, $0c, $fe, $7f
DB $1c, $18, $0c, $0e, $0f, $07, $03, $03, $42, $c1, $e0, $60, $30, $20, $28, $10
DB $00, $00, $01, $00, $c1, $01, $e3, $ff, $fe, $7f, $3a, $1c, $00, $00, $00, $00
DB $1f, $3f, $7e, $ff, $ec, $f0, $c0, $80, $80, $00, $00, $00, $06, $01, $0f, $1f
DB $fc, $f0, $a0, $70, $18, $20, $04, $00, $00, $00, $00, $00, $e0, $00, $48, $b0
DB $04, $04, $02, $02, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00, $00, $00, $00, $00, $00, $81, $81, $42, $42, $24, $24, $18, $18, $98, $d8
DB $20, $20, $40, $40, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $30, $00, $7e, $3d, $7f, $7f, $fb, $79, $f9, $61, $e1, $61, $c3, $61, $43, $61
DB $19, $8e, $05, $98, $05, $9f, $9e, $0f, $8d, $0e, $06, $85, $06, $83, $83, $83
DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fd, $ff, $7e, $ff, $7a, $3c, $88, $00
DB $80, $18, $18, $80, $09, $90, $91, $93, $33, $93, $12, $33, $66, $22, $e6, $42
DB $00, $00, $00, $00, $00, $00, $0c, $04, $ae, $dc, $f6, $fc, $04, $04, $00, $04
DB $38, $1f, $39, $46, $df, $4f, $bf, $5f, $bf, $3f, $ff, $3f, $ff, $3f, $bf, $1f
DB $10, $08, $08, $00, $c0, $84, $ec, $c4, $e4, $e4, $c0, $e4, $e8, $e4, $c4, $e8
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $06
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $00
DB $04, $04, $04, $00, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $08, $00, $08, $00, $08, $00, $ff, $ff, $00, $00, $04, $04, $04, $00, $18, $08
DB $00, $00, $00, $00, $00, $00, $80, $80, $40, $40, $00, $20, $20, $20, $20, $20
DB $01, $01, $03, $03, $02, $06, $01, $01, $02, $02, $04, $04, $00, $00, $00, $00
DB $a4, $a4, $42, $42, $81, $81, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00, $00, $00, $00, $00, $00, $80, $80, $40, $40, $20, $20, $00, $00, $00, $00
DB $6f, $61, $77, $61, $72, $61, $70, $63, $70, $73, $70, $33, $12, $3b, $12, $1e
DB $82, $81, $80, $80, $00, $c0, $40, $40, $40, $60, $60, $20, $30, $20, $00, $30
DB $8a, $c7, $ff, $fe, $58, $3c, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $46, $83, $03, $03, $01, $03, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00
DB $06, $04, $06, $0c, $1c, $8c, $98, $fc, $f8, $f0, $70, $60, $40, $60, $00, $00
DB $df, $1f, $4f, $4f, $2f, $67, $64, $3e, $14, $0e, $07, $00, $00, $00, $00, $00
DB $68, $c8, $90, $c8, $88, $10, $50, $20, $a0, $40, $80, $00, $00, $00, $00, $01
DB $3f, $0f, $7f, $3b, $31, $71, $60, $61, $c3, $61, $42, $c3, $c0, $c2, $84, $80
DB $80, $80, $00, $80, $00, $80, $00, $80, $00, $00, $00, $00, $00, $00, $00, $00
DB $00, $00, $00, $00, $01, $01, $02, $02, $04, $04, $04, $04, $00, $00, $00, $00
DB $20, $20, $00, $00, $ff, $ff, $08, $00, $08, $00, $00, $08, $00, $00, $00, $00
DB $00, $20, $c0, $40, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $1e, $1e, $1c, $1e, $1e, $1c, $0e, $1c, $0c, $1c, $08, $18, $18, $10, $10, $00
DB $00, $10, $10, $08, $04, $08, $05, $02, $02, $01, $01, $00, $07, $03, $07, $0f
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $40, $80, $e0, $f0, $f8, $f0
DB $03, $01, $01, $03, $01, $01, $01, $01, $03, $01, $21, $03, $02, $01, $02, $01
DB $84, $88, $18, $80, $00, $30, $60, $20, $40, $20, $20, $40, $00, $40, $40, $80
DB $05, $00, $6f, $1f, $7f, $ff, $ff, $ff, $f7, $ff, $d0, $e0, $40, $80, $00, $00
DB $00, $00, $9f, $f0, $ff, $ff, $ff, $ff, $ff, $ff, $7c, $03, $00, $00, $00, $00
DB $0c, $0c, $80, $08, $90, $e0, $f0, $ff, $fb, $f6, $ee, $f2, $3f, $00, $00, $00
DB $d8, $3c, $0c, $0e, $0c, $06, $dc, $04, $a6, $5c, $06, $5e, $33, $de, $fe, $1f
DB $00, $00, $00, $00, $00, $00, $22, $01, $07, $0f, $27, $1f, $3e, $ff, $fe, $fc
DB $00, $00, $00, $00, $07, $00, $7f, $ff, $ff, $ff, $e9, $ff, $c0, $00, $00, $00
DB $04, $03, $07, $07, $06, $0e, $bc, $fc, $f8, $fc, $f9, $fc, $0b, $05, $07, $00
DB $43, $81, $c1, $21, $01, $20, $10, $00, $0c, $00, $ee, $1f, $3f, $ff, $f7, $6f
DB $80, $80, $80, $80, $80, $00, $00, $00, $00, $00, $80, $00, $80, $c0, $c0, $e0
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $08, $00, $08, $18
DB $09, $07, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $e8, $f0, $e0, $e0, $f0, $70, $10, $30, $08, $10, $08, $00, $00, $00, $00, $00
DB $04, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $45, $23, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $e0, $e0, $f1, $f0, $3f, $7f, $3f, $1f, $0e, $0f, $02, $07, $01, $00, $00, $00
DB $58, $30, $60, $f0, $e0, $e0, $60, $c0, $60, $00, $00, $00, $00, $00, $00, $00
DB $00, $00, $00, $00, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
DB $00, $00, $00, $00, $c0, $c0, $40, $40, $40, $40, $40, $40, $40, $40, $7f, $7f
DB $00, $00, $00, $00, $80, $80, $80, $80, $80, $80, $80, $80, $83, $83, $84, $84
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $86, $86, $42, $42
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $22, $22, $66, $66
DB $00, $00, $00, $00, $01, $01, $00, $00, $00, $00, $00, $00, $38, $38, $40, $40
DB $00, $00, $00, $00, $80, $80, $80, $80, $80, $80, $80, $80, $b0, $b0, $c8, $c8
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $d8, $d8, $64, $64
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $73, $73, $81, $81
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $22, $22, $22, $22
DB $00, $00, $00, $00, $1e, $1e, $21, $21, $21, $21, $40, $40, $40, $40, $40, $40
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $99, $99, $89, $89
DB $00, $00, $00, $00, $03, $03, $00, $00, $00, $00, $00, $00, $10, $10, $10, $10
DB $00, $00, $00, $00, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
DB $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $00, $00, $00, $00, $00, $00
DB $88, $88, $88, $88, $88, $88, $84, $84, $c3, $c3, $00, $00, $00, $00, $00, $00
DB $22, $22, $23, $23, $22, $22, $42, $42, $82, $82, $00, $00, $00, $00, $00, $00
DB $aa, $aa, $32, $32, $22, $22, $22, $22, $22, $22, $00, $00, $00, $00, $00, $00
DB $40, $40, $30, $30, $40, $40, $40, $40, $38, $38, $00, $00, $00, $00, $00, $00
DB $84, $84, $84, $84, $84, $84, $c8, $c8, $b0, $b0, $00, $00, $00, $00, $00, $00
DB $81, $81, $61, $61, $80, $80, $80, $80, $70, $70, $00, $00, $00, $00, $00, $00
DB $22, $22, $32, $32, $aa, $aa, $66, $66, $22, $22, $00, $00, $00, $00, $00, $00
DB $40, $40, $40, $40, $21, $21, $21, $21, $1e, $1e, $00, $00, $00, $00, $00, $00
DB $89, $89, $89, $89, $05, $05, $03, $03, $01, $01, $00, $00, $00, $00, $00, $00
DB $10, $10, $90, $90, $50, $50, $30, $30, $10, $10, $00, $00, $00, $00, $00, $00
DB $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $00, $00, $00, $00, $00, $00


HbOwlLogoTilesEnd:


HbOwlLogo:

DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $03, $04, $05, $06, $07, $08, $09, $0a, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $0b, $0c, $0d, $0e, $0f, $10, $00, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $11, $12, $13, $00, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $00, $00, 
DB $00, $00, $20, $21, $22, $00, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $2f, $30, $31, $00, $00, $00, $32, $33, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $00, $3e, $3f, $00, $40, $41, $42, $43, $00, $00, $00, $00, $00, 
DB $00, $00, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $00, $00, $4e, $4f, $50, $51, $00, $00, 
DB $00, $00, $00, $52, $53, $54, $55, $56, $57, $52, $58, $59, $00, $00, $5a, $5b, $5c, $5d, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, 


HbOwlLogoEnd:

;SECTION----------------------------------------------------------------------------------------------
SECTION "HbOwl Logic", ROMX, BANK[1]
;----------------------------------------------------------------------------------------------SECTION

waitForVBlank:	
	ldh a, [rLY]          ; Load the current scanline
	cp 144                ; 144 - 153 are within vblank
	jr nz, waitForVBlank  ; Loop if != 144
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
	ld a, $80
	push hl
	ld hl, hbOwlPalette0
	ldh [rBGPI], a
	call loadPaletteFromHL
	pop hl
	ld c, 1	
	ret

; copyHbOwlLogo
; 
; copies tileset and tilemap to VRAM
; dependencies: memory.asm
;
copyHbOwlLogo:

	ld hl, hbOwlPalette0
	call loadPaletteFromHL
	
	; copy digital tilemap to VRAM
	ld hl, $8000
	ld de, HbOwlLogoTiles
	ld bc, HbOwlLogoTilesEnd-HbOwlLogoTiles
	call loadMemory		
	
	ld hl, $9800
	ld de, HbOwlLogo
	
.cpy
	ld b, 0
	ld c, 20
	call loadMemory		
	ld c, $C
	add hl, bc	
	ld a, h
	cp $9B
	jr nz, .cpy
	
	ret
	
	
; animateHbOwlLogo
animateHbOwlLogo:
	ld b, SPLASH_DLY_SKIPPED_VBLANKS
	call skipVBlanks
	
	ld c, 0
	ld hl, hbOwlPalette0
	ld a, -6
	ld [rSCY], a
.asc: ; fade in
	; init GBC palette
	ld a, $80
	ldh [rBGPI], a
	call loadPaletteFromHL
	ld b, SPLASH_ANM_SKIPPED_VBLANKS	
	call skipVBlanks	
	
	xor a
	ldh [rNR30], a ; sound 3 channel off
	ld a, $80
	ldh [rNR30], a ; sound 3 channel on
	ld a, $40
	ldh [rNR31], a
	ld a, %01000000
	ldh [rNR32], a
	ld a, c
	add $10
	ld c, a
	ldh [rNR33], a
	ld a, %11000111
	ldh [rNR34], a
	
	ld a, [rSCY]
	inc a
	ld [rSCY], a
	ld a, l
	and 63
	cp hbOwlPalettesEnd-hbOwlPalette0
	jr nz, .asc

	ld c, 0
	
	ld b, SPLASH_DSP_SKIPPED_VBLANKS
	call skipVBlanksButBreakOnKey	
	ld a, c
	ret nz	
	
	REPT(8)
	dec l
	ENDR
.desc: ; fade out
	ld a, $80
	ldh [rBGPI], a
    call loadPaletteFromHLd
	ld b, SPLASH_ANM_SKIPPED_VBLANKS
	call skipVBlanks
	ld a, l		
	cp -8
	jr nz, .desc
		
	ld b, SPLASH_ANM_SKIPPED_VBLANKS
	call skipVBlanks		
	ret

	
SPLASH_ANM_SKIPPED_VBLANKS SET  30
SPLASH_DSP_SKIPPED_VBLANKS SET  120
SPLASH_DLY_SKIPPED_VBLANKS SET  30

SECTION "Sound Samples", ROMX, BANK[1]

;Sound_HbOwlGB::
Sound_Sample::
DB $33, $A2, $B4, $01, $64, $A2, $B4, $01, $64, $A2, $B4, $01, $64, $A2, $B4, $01
;DB $00, $11, $22, $33, $44, $55, $66, $77, $88, $99, $AA, $BB, $CC, $DD, $EE, $FF
DB $01, $23, $45, $67, $89, $AB, $CD, $EF, $FE, $DC, $BA, $98, $76, $54, $32, $10
;DB $00, $00, $23, $F4, $32, $03, $45, $55, $54, $30, $03, $4A, $C4, $30, $0F, $00

Sound_GBCompo::

DB $64, $A2, $B4, $01, $64, $A2, $B4, $01, $64, $A2, $B4, $01, $64, $A2, $B4, $01

;SECTION----------------------------------------------------------------------------------------------
SECTION "SPLASH_ASM", ROMX, BANK[1]
;----------------------------------------------------------------------------------------------SECTION
nop
; used as ROM Main Entry Point
HbOwlSplashScreen::	
	xor a
	ld [wJoypadState], a
	ld [wJoypadPressed], a
	; Turn off the LCD
	call waitForVBlank	
    xor a                 
    ld [rLCDC], a  
	
	; Init display registers
    xor a ; ld a, 0
    ld [rSCX], a
    ld [rSCY], a    
	
	
	call copyHbOwlLogo
    ld a, %10010001 ; turn screen on
    ldh [rLCDC], a
	
	; load sound	
	ld a, $80
	ldh [rNR52], a
		
	ld a, $44
	ldh [rNR51], a
		
	ld a, $77
	ldh [rNR50], a
		
	xor a
	ldh [rNR30], a ; Sound 3 channel off
		
		
	ld de, Sound_Sample
	ld hl, $FF30
	ld bc, 16
	call loadMemory    
	
	call animateHbOwlLogo
	
	call clearVRAM	
	
	ld hl, $8000 
	ld de, GBCompo21Tiles
	ld bc, GBCompo21TilesEnd
	call loadMemoryDOUBLE
	
	ld hl, $9880
	ld de, GBCompo21TM
	ld bc, GBCompo21TMEnd
	call loadMemoryDOUBLE
	
	ld hl, $8D00
	ld de, GbCompo21WindowTiles
	ld bc, GbCompo21WindowTilesEnd
	call loadMemoryDOUBLE
	
	ld hl, $9C80
	ld de, GbCompo21Wnd
	ld bc, GbCompo21WndEnd
	call loadMemoryDOUBLE
	
	ld hl, $8800
	ld de, GbCompo21OamTiles
	ld bc, GbCompo21OamTilesEnd
	call loadMemoryDOUBLE
	
	call CopyDMARoutine
	
	call waitForVBlank
	ld a, HIGH(GbCompo21Oam)
	call hOAMDMA
	
	xor a
	ldh [rWY], a
	ld a, 87
	ld [rWX], a
	
	ldh a, [rLCDC]
	set 5, a ; window
	set 6, a ; window $9C00
	set 1, a ; OBJ on
	set 2, a ; 8x16
	ldh [rLCDC], a
	
	ld a, $80
	ldh [rBGPI], a
	ldh [rOBPI], a
	ld hl, GameboyPalette
	call loadPaletteFromHL
	ld hl, GameboyPalette
	call loadObjPaletteFromHL
	
	
	ld b, 13
.lp
	call waitForVBlank
	call waitForVBlank
	call waitForVBlank
	dec b
	jr nz, .lp
	

	call waitForVBlank
	
	ld b, 230
.xlp
	call waitForVBlank
	dec b
	jr nz, .xlp
	
	; fsssssssss
	ld a, $80
	ldh [rNR52], a
	
	ld a, $88
	ldh [rNR51], a
	
	ld a, $77
	ldh [rNR50], a
	
	ld  a, $3f
	ldh [rNR41], a
	ld  a, $f7
	ldh [rNR42], a
	ld  a, $11
	ldh [rNR43], a
	ld  a, $80
	ldh [rNR44], a
	
	
	ld b, 78
.lp2
	ld c, 2
	.waitloop
		call waitForVBlank
		push bc
		call updateJoypadState
		pop bc
		ld a, [wJoypadPressed]
		or a
		jr nz, .endGBCompoAnimation
		dec c
		jr nz, .waitloop
	
	ld hl, $FE00
	ld a, 40
	.innerLoop
		inc l
		dec [hl] ; coordX
		inc l
		inc l
		inc l
		dec a
		jr nz, .innerLoop
	ldh a, [rWX]
	inc a
	ldh [rWX], a
	call waitForVBlank
	dec b
	jp nz, .lp2
	
.endGBCompoAnimation:
	call waitForVBlank
	ld hl, $FE00
	ld a, 40
.lastOamLoop
	inc l
	ld b, $00
	ld [hl], b
	inc l
	inc l
	inc l
	dec a
	jr nz, .lastOamLoop
	
	ld a, 170
	ldh [rWX], a
	
	ld b, 0
.lp3
	call waitForVBlank
	call waitForVBlank
	call waitForVBlank
	dec b
	jr nz, .lp3
	
	ld b, 16
.vblanks
	call waitForVBlank
	dec b
	jr nz, .vblanks
	
	ldh a, [rLCDC]
	res 5, a ; window
	res 6, a ; window $9C00
	res 1, a ; OBJ on
	res 2, a ; 8x16
	ldh [rLCDC], a
	
	call clearVRAM	
	ret
