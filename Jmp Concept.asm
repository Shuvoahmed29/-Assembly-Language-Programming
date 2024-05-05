.model small
.stack 100h
.data
msg1 db 'Jump Concept $'
msg2 db 'Assembly Language $'
msg3 db 'Programming $'
msg4 db 'Coded by Shuvo Ahmed $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h   
    
    ;Print newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    level1:
    mov ah,9
    lea dx,msg2
    int 21h
    jmp level3
    
    level2:
    mov ah,9
    lea dx,msg4
    int 21h
    jmp exit 
    
    level3:
    mov ah,9
    lea dx,msg3
    int 21h
    jmp level2
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main