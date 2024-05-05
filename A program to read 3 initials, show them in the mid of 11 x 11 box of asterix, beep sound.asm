.model small
.stack 100h
.data
star db 10,13,'***********$'
other db '****$'
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
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,9
    lea dx,star
    int 21h  
    int 21h 
    int 21h 
    int 21h 
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,other
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    mov ah,2
    mov dl,bh
    int 21h    
    
    mov ah,2
    mov dl,cl
    int 21h
    
    mov ah,9
    lea dx,other
    int 21h  
    
    mov cx,5
    mov ah,9
    lea dx,star
    level2:
    int 21h
    loop level2  
    
    mov ah,2
    mov dl,07
    int 21h
    
    
     
    
    