;; multi-segment executable file template.
;
;data segment
;    sayi1 db 5
;    sayi2 db 7
;ends
;
;extra segment
;    sayi3 db 6
;    sayi4 db 9
;ends    
;
;stack segment
;    dw   128  dup(0)
;ends
;
;code segment
;start:
;; set segment registers:
;    mov ax, data
;    mov ds, ax
;    mov ax, extra
;    mov es, ax
;    
;            
;    lea SI, sayi1
;    lea DI, sayi2
;    
;    mov al, [DI]
;    mov bl, DS:[DI]
;    mov cl, ES:[DI]  
;    
;    
;    
;    mov ax, 4c00h ; exit to operating system.
;    int 21h    
;ends
;
;end start ; set entry point and stop the assembler.    
    
    
    




;data segment
;    kaynak db 3,5,7,9
;ends
;
;extra segment
;    hedef db 4 dup(?) 
;ends    
;
;stack segment
;    dw   128  dup(0)
;ends
;
;code segment
;start:
;; set segment registers:
;    mov ax, data
;    mov ds, ax
;    mov ax, extra
;    mov es, ax
;    
;    cld
;    mov cx,4        
;    lea SI, kaynak
;    lea DI, hedef
;    
;    dongu:
;    movsb
;    loop dongu
;      
;
;    
;    mov ax, 4c00h ; exit to operating system.
;    int 21h    
;ends
;
;end start ; set entry point and stop the assembler.   


   
   
   


;data segment
;    kaynak dw 3,5,7,9
;ends
;
;extra segment
;    hedef dw 4 dup(?) 
;ends    
;
;stack segment
;    dw   128  dup(0)
;ends
;
;code segment
;start:
;; set segment registers:
;    mov ax, data
;    mov ds, ax
;    mov ax, extra
;    mov es, ax
;    
;    cld
;    mov cx,4        
;    lea SI, kaynak
;    lea DI, hedef
;    
;    dongu:
;    movsw
;    loop dongu
;      
;    
;    mov ax, 4c00h ; exit to operating system.
;    int 21h    
;ends
;
;end start ; set entry point and stop the assembler.

      
      
      
     


;
;data segment
;    kaynak db 3,5,7,9
;ends
;
;extra segment
;     
;ends    
;
;stack segment
;    dw   128  dup(0)
;ends
;
;code segment
;start:
;; set segment registers:
;    mov ax, data
;    mov ds, ax
;
;    
;    cld
;    mov cx,4        
;    lea SI, kaynak
;    
;    dongu:
;    lodsb
;    loop dongu
;      
;
;    mov ax, 4c00h ; exit to operating system.
;    int 21h    
;ends
;
;end start ; set entry point and stop the assembler. 






;data segment
;    kaynak dw 3,5,7,9
;ends
;
;extra segment
;     
;ends    
;
;stack segment
;    dw   128  dup(0)
;ends
;
;code segment
;start:
;; set segment registers:
;    mov ax, data
;    mov ds, ax
;
;    
;    cld
;    mov cx,4        
;    lea SI, kaynak
;    
;    dongu:
;    lodsw
;    loop dongu
;      
;
;    mov ax, 4c00h ; exit to operating system.
;    int 21h    
;ends
;
;end start ; set entry point and stop the assembler.   
  
  
  
  


;data segment
;    
;ends
;
;extra segment
;    hedef db 4 dup(?)  
;ends    
;
;stack segment
;    dw 128  dup(0)
;ends
;
;code segment
;start:
;; set segment registers:
;    mov ax, extra
;    mov es, ax
;
;    
;    cld
;    mov cx,4        
;    lea DI, hedef
;    
;    dongu:
;    mov al,cl
;    stosb
;    loop dongu
;      
;
;    mov ax, 4c00h ; exit to operating system.
;    int 21h    
;ends
;
;end start ; set entry point and stop the assembler.

    
    
    


;data segment
;    
;ends
;
;extra segment
;    hedef dw 4 dup(?)  
;ends    
;
;stack segment
;    dw 128  dup(0)
;ends
;
;code segment
;start:
;; set segment registers:
;    mov ax, extra
;    mov es, ax
;
;    
;    cld
;    mov cx,4        
;    lea DI, hedef
;    
;    dongu:
;    mov ax,cx
;    stosw
;    loop dongu
;      
;
;    mov ax, 4c00h ; exit to operating system.
;    int 21h    
;ends
;
;end start ; set entry point and stop the assembler.
                                                            
    
    
                                                            


;data segment
;    bul db 0 
;ends
;
;extra segment    
;    sayi db -2,-1,-3,-1,9,-1  
;ends    
;
;stack segment                                                 
;    dw 128  dup(0)
;ends
;
;code segment
;start:
;; set segment registers:
;    mov ax, extra
;    mov es, ax
;    mov ax, data
;    mov ds, ax
;   
;    
;    mov cx,6
;    mov al,-1        
;    lea DI,sayi
;    
;    dongu:
;    JCXZ bitir
;    scasb
;    JE arttir
;    loop dongu
;       
;    
;    bitir:
;    mov ax, 4c00h ; exit to operating system.
;    int 21h 
;
;    arttir:
;    INC bul
;    JCXZ bitir
;    DEC cx
;    JMP dongu   
;ends
;
;end start ; set entry point and stop the assembler. 



   
   

;data segment
;    bul db 0 
;ends
;
;extra segment    
;    kelime db 'efelikk'  
;ends    
;
;stack segment                                                 
;    dw 128  dup(0)
;ends
;
;code segment
;start:
; set segment registers:
;    mov ax, extra
;    mov es, ax
;    mov ax, data
;    mov ds, ax
;   
;    
;    mov cx,7
;    mov al,'e'        
;    lea DI,kelime
;     
;  
;    
;    dongu:
;    JCXZ bitir
;    scasb
;    JE arttir
;    loop dongu
;                               
;  
;    bitir:
;    mov ax, 4c00h ; exit to operating system.
;    int 21h
;           
;    arttir:
;    INC bul
;    JCXZ bitir
;    DEC cx
;    JMP dongu        
;         
;    
;ends
;
;end start ; set entry point and stop the assembler.

 
 
 
 
;org 100h  
; MOV CX,4
; MOV SI,0 
; 
; dongu: 
; MOV AL, [sayilar+SI] 
; AND AL,00001111b     
; MOV sayilar2+SI,AL 
; INC SI
; LOOP dongu 
; 
;ret 
;sayilar db 10,20,30,40 
;sayilar2 db 4 dup(?)  




;org 100h
;
;  MOV CX, 4
;  MOV SI, 0
;  
;  dongu:
;  mov ax, 0
;  mov bx, 0 
;  
;  mov al, [sayilar+SI]
;  mov bl, [sayilar2+SI] 
;  div bl ; kalan ah icine
;  
;  mov [kalan+SI], ah
;  INC SI
;  loop dongu 
;
;ret
;
;sayilar db 10,20,30,40
;sayilar2 db 3,4,6,7
;kalan db 4 dup(0) 



;org 100h
;
; mov cx, 4
; mov SI, 0
; mov DI, 0
; 
; 
; dongu:
; mov bx, 0
; mov ax, 0
; 
; mov bx, [veri+SI]
; push bx
; pop ax
; 
; mov [dusuk+DI], al
; mov [yuksek+DI], ah
; 
; INC SI
; INC SI
; INC DI
; loop dongu
;
;ret
;
;
;veri dw 0BCDEh, 0AB03h, 1234h, 0FF06h
;dusuk db 4 dup(?)
;yuksek db 4 dup(?)


    ;org 100h       
;  
; MOV CX,4
; MOV SI,0
; 
; dongu: 
; MOV AX,0
; MOV BX,0      
;       
; MOV al, [sayilar+SI]
; MOV bl, [sayilar2+SI]
; DIV bl 
; MOV [kalan+SI],AH
; 
; INC SI 
; 
; LOOP dongu
;           
; ret
; 
;sayilar db 10,20,30,40
;sayilar2 db 3,4,7,6 
;kalan db 4 dup(?)          


;
;org 100h
; MOV CX,4
; MOV SI,0
; MOV DI,0 
; 
; dongu: 
; 
; MOV BX, [veri+SI] 
; PUSH BX
; POP AX
; MOV [dusuk+DI],AL
; MOV [yuksek+DI],AH
; INC SI
; INC SI
; INC DI   
; 
; LOOP dongu
; 
; ret   
;veri dw 0BCDEh, 0AB03h, 1234h, 0FF06h
;dusuk db 4 dup(?)
;yuksek db 4 dup(?)   


; org 100h
; MOV AX,2025h
; jmp label1   
; 
; label2:
; MOV AL,32h
; ret
; label1:
; MOV AH,0F3h
; jmp label2 
 
 
 
 
; org 100h
; MOV SI, 0
; MOV CX,12 
;MOV BH, 'e'
; dongu:
; MOV AH, [cumle+SI]
; CMP AH,BH
; JE earttir
; INC SI 
;JCXZ bitir
; LOOP dongu
; earttir:
; INC esayisi
; DEC CX 
;JCXZ bitir
; INC SI
; JMP dongu
; bitir:
; ret
; cumle db 'kelime eleme'
; esayisi db 0 
                           
                           
                           
;org 100h
; MOV SI, 0
; MOV CX,12 
; MOV BH, 'e' 
; 
; dongu:
; MOV AH, [cumle+SI]
; CMP AH,BH
; JE earttir
; INC SI 
; JCXZ bitir
; LOOP dongu 
; 
; earttir:
; INC esayisi
; DEC CX 
; JCXZ bitir
; INC SI
; JMP dongu
; 
; bitir:
;ret
; cumle db 'kelime eleme'
; esayisi db 0 
                 
                 
                 
                 







    ;org 100h
; lea SI,metin
; mov CX, sayac-offset metin
; dongu: 
; PUSH CX  
;
; MOV AL,[SI]
; MOV BH,0
; MOV CX,1 
; INC SI  
; int 10h  
; 
; MOV AH,03h  ; imlecpozisyonunu okuma
; int 10h  
;   
; MOV AH,02h ; imlec pozisyonunu ayarlama
; INC DL   ; yanyanayazacagi icin DL degerini arttirmakgerekiyorimleci saga kaydirarakyazdiriyoruz
; int 10h  
;          
; POP CX
; loop dongu
; ret
; metin db "ekranayazdirma"
; sayac db 0  
; 
;
; ret
     
     
     
     

; org 100h
; MOV AH,0Eh
; MOV AL,'A'   ; ekrana A karakterinin yazilmasi
; int 10h
; ret  




 
 
; org 100h
; MOV AH, 13h
; MOV CX, sayac-offset mesaj
;
; MOV AL,0
; MOV BH,0      
; MOV DH,0
; MOV DL,0
; MOV BP,offset mesaj
; MOV BL,11110000b  ; 
; int 10h
; 
; ret
; mesaj db "yeni dizi" 
;sayac db 0   
                 
                 
                 
                 
                 

;org 100h
; MOV CX,5 
; mov ah,02h  ; imlec pozisyonunu ayarlama
; mov dh, 10h ;satir
; mov dl, 5h  ;sutun
; mov bh, 1 
; int 10h 
; 
; don:
; PUSH CX
; MOV AH,00h  ; klavyeden deger okuma
; int 16h ; burasi klavyeden bir degerin girilmesini bekler deger girildigi zaman bunu al ye atar
;        
; 
; MOV AH,09h  ; imleckarakteryazma
; MOV BH,0    ; sayfa numarasi     
; MOV CX,3    ; karakteri3 kezyazsin
; MOV BL, 00110000b  ; dusuk 4 bit(sagdaki) yazi rengini, yuksek 4 bit(soldaki) arka plan rengini
; int 10h     ; karakter yazdirilir
; 
; MOV AH,03h  ; imlecpozisyonokuma
; int 10h
;      
; MOV AH, 02h   ;imlecpozisyonayarlama
; INC DH ; satir numarasini arttir ve bir alt satira gec
; int 10h
; 
; POP CX
; loop don
;  
;ret
      
      


; org 100h
; MOV CX,5 
; mov ah,02h ; imlec pozisyonunuayarlama
; mov dh, 11h ;satir
; mov dl, 22h ;sutun
; mov bh, 0 
; int 10h  
; 
; don:
; PUSH CX
; MOV AH,00h
; int 16h 
;       
;; klavyeden veri al
; MOV AH,0Ah    ; imleckarakter yazma
; MOV BH,0         
; MOV CX,2      ; karakteri 2 kez yazsin
; int 10h 
; 
; MOV AH,03h  ; imlecpozisyonokuma
; int 10h 
;      ; DL de sutundegeri var
; MOV AH, 02h   ;imlec pozisyonayarlama
; INC DL ; sutun degerini toplamda 2 arttir bir sonraki klavyeden alinan veri icin
; INC DL
; int 10h
; 
; POP CX
; loop don
;  
;ret   




org 100h

mov ah, 02h
mov dh, 10h
mov dl, 5h
mov bh, 0
int 10h

mov ah, 00h
int 16h

mov temp, al       
mov ah, 09h
mov bh, 0
mov cx, 3
mov bl, 00110000b
int 10h

mov ah, 03h
int 10h

mov cx, 4

don:
JCXZ bitir
PUSH cx

mov ah, 00h
int 16h

cmp temp,al
je ayni
mov temp, al
mov ah, 03h
int 10h

mov ah, 02h
mov dl, 5h
inc dh
int 10h

mov ah, 09h
mov bh, 0
mov cx, 3
mov bl, 00110000b
int 10h

jmp devam

ayni:
mov ah, 03h
int 10h

mov ah, 02h
inc dl
inc dl
inc dl
int 10h

mov ah, 09h
mov bh, 0
mov cx, 3
mov bl, 00110000b
int 10h

devam:
pop cx 
loop don

bitir:


ret
temp db 0
      
     





    
                 