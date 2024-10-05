.model small
.stack 100h

.data
    line1 db 'Line 1', 13, 10, '$' ; String for Line 1
    line2 db 'Line 2', 13, 10, '$' ; String for Line 2
    line3 db 'Line 3', 13, 10, '$' ; String for Line 3

.code
main proc
    mov ax, @data        ; Initialize data segment
    mov ds, ax

    ; Print Line 1
    lea dx, line1        ; Load address of Line 1 into DX
    mov ah, 09h          ; Set function for printing a string
    int 21h              ; Call DOS interrupt
                         
    ; Print Line 2
    lea dx, line2        ; Load address of Line 2 into DX
    mov ah, 09h          ; Set function for printing a string
    int 21h              ; Call DOS interrupt

    ; Print Line 3
    lea dx, line3        ; Load address of Line 3 into DX
    mov ah, 09h          ; Set function for printing a string
    int 21h              ; Call DOS interrupt

    ; Terminate program
    mov ax, 4C00h        ; Terminate program
    int 21h              ; Call DOS interrupt
main endp
end main
