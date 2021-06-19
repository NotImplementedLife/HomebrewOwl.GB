; Thxx : https://gbdev.gg8.se/wiki/articles/OAM_DMA_tutorial

rDMA EQU $FF46

SECTION "OAM DMA routine", ROM0
CopyDMARoutine:
	ld  hl, DMARoutine
	ld  b, DMARoutineEnd - DMARoutine ; Number of bytes to copy
	ld  c, LOW(hOAMDMA) ; Low byte of the destination address
.copy
	ld  a, [hli]
	ldh [c], a
	inc c
	dec b
	jr  nz, .copy
	ret

DMARoutine:
	ldh [rDMA], a
	ld  a, 40
.wait
	dec a
	jr  nz, .wait
	ret
DMARoutineEnd:

SECTION "OAM DMA", HRAM

hOAMDMA::
  DS DMARoutineEnd - DMARoutine ; Reserve space to copy the routine to
