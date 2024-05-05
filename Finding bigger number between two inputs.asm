.model small
.stack 100h
.data
first db 'Enter First Number: $'
second db 10,13,'Enter Second Number: $'  
biggest db 10,13,'Biggest Number is: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,first
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,second
    int 21h  
    
    mov ah,1
    int 21h
    mov bh,al
    
    level1:
    cmp bl,bh
    jg level2
    jmp level3
    
    level2:
    mov ah,9
    lea dx,biggest
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h 
    jmp exit 
    
    level3:
    mov ah,9
    lea dx,biggest
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
    