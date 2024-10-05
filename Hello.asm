.model small
.stack 100h

.data
    hello db 'Hello', 13, 10, '$' ; String to print <Hello with CRLF>

.code
main proc
    mov ax, @data        ; Initialize data segment
    mov ds, ax

    ; Print Hello
    lea dx, hello        ; Load the address of hello into DX
    mov ah, 09h          ; Set function for printing a string
    int 21h              ; Call DOS interrupt

    ; Terminate program
    mov ax, 4C00h        ; Terminate program
    int 21h              ; Call DOS interrupt
main endp
end main
