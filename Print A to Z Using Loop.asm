.model small
.stack 100h
.data
msg db 'Using Loop Print A to Z $'
.code
main proc  
    ;Initialize data segment here
    mov ax,@data
    mov ds,ax
           
    ;Print Message
    mov ah,9
    lea dx,msg
    int 21h
    
    ;Print Newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;Loop Concept to Print A to Z
    mov cx,26
    mov ah,2
    mov dl,'A' 
    
    level1:
    int 21h
    inc dl
    loop level1   
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    