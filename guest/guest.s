; guest.s - 16-bit code that writes a NUL-terminated string to port 0xE9
; then halts.
[BITS 16]
[ORG 0x0000]

_start:
    mov si, msg      ; SI -> string pointer
.next_char:
    lodsb            ; AL = [SI], SI++
    test al, al
    jz .done         ; if zero -> done
    mov dx, 0x00E9   ; port 0xE9
    out dx, al       ; send character
    jmp .next_char

.done:
    hlt

; string (NUL terminated)
msg:    db "Hello, host!", 10, "This is the guest.", 10, 0
