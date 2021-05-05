; swap([bc], [de]) [10 cyc]
swapBytes: MACRO
	ld a, [bc]
    ld l, a
    ld a, [de]
    ld [bc], a
    ld a, l
    ld [de], a
ENDM
