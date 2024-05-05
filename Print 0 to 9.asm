.model small
.stack 100h
.code
main proc
    mov cx,10    
    mov ah,2
    mov dl,'0'
    
    level1:
    int 21h
    inc dl
    loop level1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    