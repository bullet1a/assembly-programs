;a program that do arithmetic operations


include 'win32ax.inc' 
  x db 9
  y db 7
  z db ?
  l1 db ?
  b dw ?
  l2 dw ?
  l4 db ?
  l3 db 4
  l37 db 4

 .code
 start:
mov bl ,16
mov bh ,00
mul1: mov ax,00
 mov al,[x]
 mul [y]
 mov [z],al
 jmp l31
div1:mov al,00
 mov al,[x]
 div[y]
 mov [z],al
 jmp l31
add1:mov al,00
 mov al,[x]
 add al,[y]
 mov [z],al
 jmp l31
sub1:mov al,00
 mov al,[x]
 sub al,[y]
 cmp al,00
 jmp l31
 l:add bl,16
   add bh,16
 inc di
 l31:cmp [z],bl
 ja l
 je l32
 jb l32
 l32:cmp [z],bh
 ja bach1
 je bach1
 jmp e
 bach1:mov ax,di
       sub ax,1
       mov [l4],al
       mov al,16
       mul [l4]
       mov [l4],al
      ; jmp e13
  bach2:sub [z],al
        inc si
        sub [z],1
        cmp [z],0
        jnz bach2
        mov ax,si
        add ax,30h
        jmp l
e: invoke  MessageBox,HWND_DESKTOP,"error",invoke GetCommandLine,MB_OK
        invoke  ExitProcess,0
 l34: mov [b],si
    add [b],30h
  ; mov [l1],al
  ; mov ah ,[l4]
    mov ax ,[b]
    mov ah ,[l4]
    mov [l2],ax

           cmp [l3],4
           je l12
           cmp [l3],3
           je l13
           cmp [l3],2
           je l14
           cmp [l3],1
           je l17
           sub [l3],1


      l12: invoke  MessageBox,HWND_DESKTOP,"multiplication answer is",invoke GetCommandLine,MB_OK
         invoke  MessageBox,HWND_DESKTOP,l2,invoke GetCommandLine,MB_OK
         invoke  ExitProcess,0
      l13: invoke  MessageBox,HWND_DESKTOP,"division answer is",invoke GetCommandLine,MB_OK
         invoke  MessageBox,HWND_DESKTOP,l2,invoke GetCommandLine,MB_OK
         invoke  ExitProcess,0
      l14: invoke  MessageBox,HWND_DESKTOP,"addition  answer is",invoke GetCommandLine,MB_OK
         invoke  MessageBox,HWND_DESKTOP,l2,invoke GetCommandLine,MB_OK
         invoke  ExitProcess,0
      l17: invoke  MessageBox,HWND_DESKTOP,"subtraction answer is",invoke GetCommandLine,MB_OK
         invoke  MessageBox,HWND_DESKTOP,l2,invoke GetCommandLine,MB_OK
         invoke  ExitProcess,0
         sub [l37],1
         cmp [l37],3
         je div1
         cmp [l37],2
         je add1
         cmp [l37],1
         je sub1
         jmp exit
       e13 : invoke  MessageBox,HWND_DESKTOP,"subtraction answer is",invoke GetCommandLine,MB_OK
         invoke  MessageBox,HWND_DESKTOP,l4,invoke GetCommandLine,MB_OK
         invoke  ExitProcess,0

exit :
.end start
                 
