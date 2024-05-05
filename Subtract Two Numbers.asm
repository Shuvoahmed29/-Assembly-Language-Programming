.model small
.stack 100h
.data
positive db ' - $' 
equal db ' = $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;Input First Number
    mov ah,1
    int 21h
    mov bl,al
    
    ;Print Newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    ;Input Second number
    mov ah,1
    int 21h
    mov bh,al
    
    ;Print Newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;Print a+b = 
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,9
    lea dx,positive
    int 21h 
    
    mov ah,2
    mov dl,bh
    int 21h  
    
    mov ah,9
    lea dx,equal
    int 21h
    
    ;Subtract two number
    mov ah,2
    sub bl,bh  
    add bl,48
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main