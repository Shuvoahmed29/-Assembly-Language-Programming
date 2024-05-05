.model small
.stack 100h
.code
main proc   
    ;First Input
    mov ah,1
    int 21h
    mov bl,al
    
    ;Print Newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;Second Input
    mov ah,1
    int 21h
    mov bh,al 
    
    ;Print Newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    ;Print First Input->bl
    mov ah,2
    mov dl,bl
    int 21h
    
    ;Print Newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    ;Print Second Input->bh
    mov ah,2
    mov dl,bh
    int 21h     
    
    ;Beep Sound
    mov ah,2
    mov dl,07
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    