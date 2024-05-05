.model small
.stack 100h 
.data
msg db 10,13,'Biggest Number is: $'
.code
main proc  
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    int 21h
    mov bh,al
    
    int 21h
    mov cl,al
    
    biggest:
    cmp bl,bh
    jg level1
    jmp level2
    
    level1:
    cmp bl,cl
    jg level3
    jmp level4
    
    level3:
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    level4: 
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit 
    
    level2:
    cmp bh,cl
    jg level5
    jmp level4
    
    level5: 
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main