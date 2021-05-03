SECTION "MEMORY_ASM", ROM0

; loadMemory
; arguments:
;	hl = destination address
;   de = source address
;	bc = data size
;--------------------------------------------------------------
loadMemory:
;--------------------------------------------------------------
	ld a, [de]            ; Grab 1 byte from the source
    ld [hli], a           ; Place it at the destination, incrementing hl
    inc de                ; Move to next byte
    dec bc                ; Decrement count
    ld a ,b               ; Check if count is 0, since `dec bc` doesn't update flags
    or c
    jr nz, loadMemory
	ret

	
;--------------------------------------------------------------
loadMemorySTAT:
;--------------------------------------------------------------
.waitVRAM
    ldh a, [rSTAT]
    and STATF_BUSY ; %0000_0010
    jr nz, .waitVRAM	
	
	; max. 18 cycles till  second jr .waitVRAM

	ld a, [de]        ; 2 cyc
	ld [hli], a       ; 2 cyc
	inc de            ; 2 cyc
	
	ld a, d           ; 1 cyc
	cp b              ; 1 cyc
	jr nz, .waitVRAM  ; 3/4 cyc
	ld a, e           ; 1 cyc
	cp c              ; 1 cyc
	
	jr nz, .waitVRAM
	
	ret

;--------------------------------------------------------------
clearVRAM:
;--------------------------------------------------------------
	ld hl, $8000
	ld bc, $9C00
	.waitVRAM
    ldh a, [rSTAT]
    and STATF_BUSY ; %0000_0010
    jr nz, .waitVRAM	
	
	; max. 18 cycles till  second jr .waitVRAM

	xor a             ; 1 cyc
	ld [hli], a       ; 2 cyc	
	
	ld a, h           ; 1 cyc
	cp b              ; 1 cyc
	jr nz, .waitVRAM  ; 3/4 cyc
	ld a, l           ; 1 cyc
	cp c              ; 1 cyc
	
	jr nz, .waitVRAM	
	ret
	
;--------------------------------------------------------------
initWRAM0:
;--------------------------------------------------------------
	ld hl, $C000
	ld bc, $E000	
	
	.loop
	; max. 18 cycles till  second jr .waitVRAM

	xor a         
	ld [hli], a   
	
	ld a, h       
	cp b          
	jr nz, .loop  
	ld a, l           
	cp c              
	
	jr nz, .loop
	ret
	