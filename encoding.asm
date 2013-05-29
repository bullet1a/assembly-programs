;a program that encodes a user input word into a number and print it
include 'win32ax.inc'
   str1 dw 20 dup (?)
   str2 dw 01,17,18,19,20,21,22,23
           ,24,25,26,27,28,29,30,31,32
           ,33,34,35,36,37,38,13,14
           ,15,16
   str3 dw 20 dup(?)
  .code
  start :                                            13 w
 mov si,offset str1                                  14 x
                                                     15 y
 mov di,offset str3                                  16 z
 mov bx,offset str2                                  17 a
 mov dx,offset str1                                  18 b
 mov ah,0ah                                          19 c
 int 21h                                             20 d
 mmov si,offset str1                                 21 e
 mov cx,00                                           22 f
 bach:mov al,[si]                                    23 g
 cmp al,61h                                          24 h
 jae test2                                           25 i
 cmp al,41h                                          26 j
 jae test3                                           27 k
 jmp exit                                            28 l
 test2:cmp al,7ah                                    29 m
 jbe dl                                              30 n
 jmp exit                                            31 o
 test3:cmp al,5ah                                    32 p
 jbe dll                                             33 q
 jmp exit                                            34 r
 dl:sub al,60h                                       35 s
 jmp ll                                              36 t
 dll:sub al,40h                                      37 u
 jmp ll                                              38 v
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
