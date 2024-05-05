.model small
.stack 100h
.data  
a db ?
b db ?
first db 'Enter First Digit: $'
second db 10,13,'Enter Second Digit: $'
result db 10,13,'Multiplication Result: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,first
    int 21h
    
    mov ah,1
    int 21h  
    mov a,al
    sub a,48
    
    mov ah,9
    lea dx,second
    int 21h
    
    mov ah,1
    int 21h
    mov b,al 
    sub b,48 
    
    ;Multiplication 
    mov ah,9
    lea dx,result
    int 21h
    
    mov al,a
    mul b
    
    
    mov ah,2
    mov dl,al
    add dl,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
