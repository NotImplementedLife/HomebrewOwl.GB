SECTION "Tile masks Res", ROM0

TileMasks0:
; ~ $8000
DB $00 ; brush 1 inactive
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8010
DB $01 ; brush 1 active
DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8020
DB $01 ; brush 1 active
DB $00, $00, $00, $00, $07, $07, $0f, $0f, $1f, $1f, $7f, $7f, $ff, $ff, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

; ~ $8030
TestMask:
DB $01 ; brush 1 active
DB $00, $00, $00, $00, $80, $80, $c0, $c0, $e0, $e0, $f8, $f8, $fc, $fc, $ff, $ff
DB $00 ; brush 2 inactive
DB $00 ; brush 3 inactive

TileMasksEnd:

TileBrushesIndexes0:

; ~ $8010
DB 0
; ~ $8020
DB 0
; ~ $8030
DB 0


TileBrushesIndexesEnd: