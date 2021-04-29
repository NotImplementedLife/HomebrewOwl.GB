SECTION "Tile Masks Vars", WRAM0

TileIndex:
	DS 2

SECTION "Tile Masks Logic", ROM0

RepaintTiles0:	
	ld a, $80
	ld [TileIndex], a
	xor a
	ld [TileIndex+1], a
	
.loop
	ld bc, TileMasks0
	ld de, Cube0Tiles
	
	ld h, b
	ld l, c
	ld a, [hl]
	cp 0
	
	jr .skipBrush
	
	inc bc
	ld hl, Brush0
	call PaintTile
	ld a, [TileIndex]
	ld h, a
	ld a, [TileIndex+1]
	ld l, a
	call CopyPaintedTile
	; to be continued
	
.skipBrush
	ret
	
	