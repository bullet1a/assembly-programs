include 'win32ax.inc'
   str1 dw 20 dup (?)
   str2 dw 01,17,18,19,20,21,22,23
           ,24,25,26,27,28,29,30,31,32
           ,33,34,35,36,37,38,13,14
           ,15,16
   str3 dw 20 dup(?)
  .code
  start :
 mov si,offset str1
 mov di,offset str3
 mov bx,offset str2
 mov dx,offset str1
 mov ah,0ah
 int 21h
 mmov si,offset str1
 mov cx,00
 bach:mov al,[si]
 cmp al,61h
 jae test2
 cmp al,41h
 jae test3
 jmp exit
 test2:cmp al,7ah
 jbe dl
 jmp exit
 test3:cmp al,5ah
 jbe dll
 jmp exit
 dl:sub al,60h
 jmp ll
 dll:sub al,40h
 jmp ll
 ll:cmp al,09h
 ja dt
 mov al,cx
 mul 10
 mov cx,al
 jmp h
 dt:sub al,09h
 inc cx
 jmp ll
 h:sub al,01h
 inc cx
 cmp al,00h
 je l
 jne h
 l:mov al,cx
 inc bx
 cmp bx,al
 jne l
 mov [di],[bx]
 inc di
 mov bx,offset str2
 inc si
 jmp bach
 inc di
 mov [di],$
 mov dx,offset str2
 mov ah,09h
 int 21h


.end start 
