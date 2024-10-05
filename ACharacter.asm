.model small
.stack 100h

.data
    character db 'A', 13, 10, '$' ; String to print <A with CRLF>

.code
main proc
    mov ax, @data        ; Initialize data segment
    mov ds, ax

    ; Print character 'A'
    lea dx, character    ; Load the address of character into DX
    mov ah, 09h          ; Set function for printing a string
    int 21h              ; Call DOS interrupt

    ; Terminate program
    mov ax, 4C00h        ; Terminate program
    int 21h              ; Call DOS interrupt
main endp
end main
