; loadMemory
; arguments:
;	hl = destination address
;   de = source address
;	bc = data size
loadMemory:
	ld a, [de]            ; Grab 1 byte from the source
    ld [hli], a           ; Place it at the destination, incrementing hl
    inc de                ; Move to next byte
    dec bc                ; Decrement count
    ld a ,b               ; Check if count is 0, since `dec bc` doesn't update flags
    or c
    jr nz, loadMemory
	ret