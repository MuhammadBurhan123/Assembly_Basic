.model small
.stack 100h

.data
    message db 'Learning Assembly is fun!', 13, 10, '$' ; String to print <message with CRLF>

.code
main proc
    mov ax, @data        ; Initialize data segment
    mov ds, ax

    ; Print message
    lea dx, message      ; Load address of message into DX
    mov ah, 09h          ; Set function for printing a string
    int 21h              ; Call DOS interrupt

    ; Terminate program
    mov ax, 4C00h        ; Terminate program
    int 21h              ; Call DOS interrupt
main endp
end main
