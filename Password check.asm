.model small
.stack 100h
.data
msg db 'Enter Your Password: $'
password db 'Shuvo29$'
size dw 7
right db 10,13,'Successfully Login$'
wrong db 10,13,'Sorry! Wrong Password - Try Again$'
.code
main proc  
    mov ax,@data
    mov ds,ax
    
    mov cx,size
    mov bx,offset password  
    
    mov ah,9
    lea dx,msg
    int 21h
    
    level1:
    mov ah,8
    int 21h
    
    cmp al,[bx]
    jne level2
    inc bx
    loop level1 
    
    mov ah,9
    lea dx,right
    int 21h
    jmp exit
    
    level2:
    mov ah,9
    lea dx,wrong  
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    