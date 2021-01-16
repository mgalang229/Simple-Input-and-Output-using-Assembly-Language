.model small
.data   ; variables
    prompt db "Enter favorite number: $"
    heading1 db "Favorite number: $"
    heading2 db "Favorite Song: $"
    message db "Monster - Katie Sky $"
    num db ?  
      
.code       
main proc  
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    mov dx, offset prompt
    int 21h
    
    mov ah, 1   ; input number
    int 21h
    mov bl, al
    mov num, al ; transfer to 'num'
    
    mov dl, 10  ; print newline
    mov ah, 2h
    int 21h
    mov dl, 13
    mov ah, 2h
    int 21h
    
    mov ah, 9   ; print heading 1
    mov dx, offset heading1
    int 21h
               
    mov dl, num ; print number
    mov ah, 2
    int 21h
    
    mov dl, 10  ; print newline
    mov ah, 2h
    int 21h
    mov dl, 13
    mov ah, 2h
    int 21h
    
    mov ah, 9   ; print heading 2
    mov dx, offset heading2
    int 21h      
    
    mov ah, 9   ; print favorite song
    mov dx, offset message
    int 21h
    
    mov ah, 4ch ; end program
    int 21h 
endp

end main