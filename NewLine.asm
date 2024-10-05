.model small
.stack 100h

.data
    newline db 13, 10, '$' ; Carriage return (13) and line feed (10), followed by string terminator

.code
main proc
    mov ax, @data        ; Initialize data segment
    mov ds, ax

    ; Print newline
    lea dx, newline      ; Load the address of newline into DX
    mov ah, 09h          ; Set function for printing a string
    int 21h              ; Call DOS interrupt

    ; Terminate program
    mov ax, 4C00h        ; Terminate program
    int 21h              ; Call DOS interrupt
main endp
end main
