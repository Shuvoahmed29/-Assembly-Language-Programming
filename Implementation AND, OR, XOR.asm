.model small
.stack 100h
.data
a db 10,13,'For OR = $' 
b db 10,13,'For AND = $'
c db 10,13,,'For XOR = $'
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    ;OR Operation
    mov bl,101b
    or bl,110b
    add bl,48 
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h    
    
    ;and operation
    mov bl,101b
    and bl,110b
    add bl,48 
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;XOR Operation
    mov bl,101b
    xor bl,110b
    add bl,48 
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main

    