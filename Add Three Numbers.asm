.model small
.stack 100h
.data
first db 'Enter First Number: $'
second db 10,13,'Enter Second Number: $'
third db 10,13,'Enter Third Number: $' 
result db 10,13,'--------- Result ------------$'
positive db ' + $'
equal db ' = $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;Input First Number
    mov ah,9
    lea dx,first
    int 21h            
    
    mov ah,1
    int 21h
    mov bl,al  
    
    ;Input Second Number
    mov ah,9
    lea dx,second
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    ;Input Third Number
    mov ah,9
    lea dx,third
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    ;Add Three Numbers
    mov ah,9
    lea dx,result
    int 21h
    
    ;Print Newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;Print a + b + c = 
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
    lea dx,positive
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h 
    
    mov ah,9
    lea dx,equal
    int 21h
    
    ;Final Result
    mov ah,2
    add bl,bh 
    sub bl,48
    add bl,cl
    sub bl,48
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
    
    