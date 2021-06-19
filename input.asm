rP1 EQU $FF00

; https://github.com/pinobatch/libbet/blob/49b27830bbce3092df4cdb50342f53724227e14b/src/pads.z80#L45-L95

P1F_NONE     EQU $30
P1F_BUTTONS  EQU $10
P1F_DPAD     EQU $20

SECTION "Input Memory", WRAM0
	wJoypadState::   ; Contains the current state of the joypad.
	cur_keys::
	DS 1            ; Use the PADF_* or PADB_* constants to check for specific buttons.
	wJoypadPressed:: ; Contains newly pressed buttons of the joypad, for only 1 frame.
	new_keys::
	DS 1            ; Use the PADF_* or PADB_* constants to check for specific buttons.
	
SECTION "Input Routine", ROM0

MACRO initInputWRAM
	xor a
	ld [wJoypadState], a
	ld [wJoypadPressed], a
ENDM

updateJoypadState::
    ; Poll half the controller
    ld a,P1F_BUTTONS
    call .onenibble
    ld b,a  ; B7-4 = 1; B3-0 = unpressed buttons

    ; Poll the other half
    ld a,P1F_DPAD
    call .onenibble
    swap a   ; A3-0 = unpressed directions; A7-4 = 1
    xor b    ; A = pressed buttons + directions
    ld b,a   ; B = pressed buttons + directions

    ; And release the controller
    ld a,P1F_NONE
    ld [rP1],a

    ; Combine with previous cur_keys to make new_keys
    ld a,[cur_keys] 
    xor b    ; A = keys that changed state
    and b    ; A = keys that changed to pressed
    ld [new_keys],a 
    ld a,b
    ld [cur_keys],a
    ret

.onenibble:
    ldh [rP1],a     ; switch the key matrix
    call .knownret  ; burn 10 cycles calling a known ret
    ldh a,[rP1]     ; ignore value while waiting for the key matrix to settle
    ldh a,[rP1]
    ldh a,[rP1]     ; this read counts
    or $F0   ; A7-4 = 1; A3-0 = unpressed keys
.knownret:
    ret
	
