.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,2
    add cl,32
    mov dl,cl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main