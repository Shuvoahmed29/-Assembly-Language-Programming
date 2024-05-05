.model small
.stack 100h
.data
star db '**********',10,13,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,10
    level:
    mov ah,9
    lea dx,star
    int 21h
    loop level  
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    