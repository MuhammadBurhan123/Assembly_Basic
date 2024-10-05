.model small
.stack 100h

.data
    newline db 13, 10, '$' ; Carriage return and line feed for new line
    line1 db '*', 13, 10, '$' ; First line
    line2 db '**', 13, 10, '$' ; Second line
    line3 db '***', 13, 10, '$' ; Third line

.code
main proc
    mov ax, @data        ; Initialize data segment
    mov ds, ax

    ; Print Line 1
    lea dx, line1        ; Load address of line1 into DX
    mov ah, 09h          ; Set function for printing a string
    int 21h              ; Call DOS interrupt

    ; Print Line 2
    lea dx, line2        ; Load address of line2 into DX
    mov ah, 09h          ; Set function for printing a string
    int 21h              ; Call DOS interrupt

    ; Print Line 3
    lea dx, line3        ; Load address of line3 into DX
    mov ah, 09h          ; Set function for printing a string
    int 21h              ; Call DOS interrupt

    ; Terminate program
    mov ax, 4C00h        ; Terminate program
    int 21h              ; Call DOS interrupt
main endp
end main
