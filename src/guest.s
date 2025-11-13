; guest.s - 16-bit code, starts at offset 0
; Writes 'Z' to port 0xE9, then HLT.
[BITS 16]
[ORG 0x0000]

_start:
    mov dx, 0x00E9    ; port
    mov al, 'Z'
    out dx, al
    hlt

; pad to some bytes (optional)
times 16-($-$$) db 0
