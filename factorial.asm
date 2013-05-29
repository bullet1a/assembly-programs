
x db 7
factorial db ?
.code
start
main proc far
mov ax,@data
mov ds,ax
mov cx,6        ;cx =6
mov ax,x        ;ax =7
bach:mul cx     ;ax = ax*cx=7*6
dec cx          ;cx=6-1=5
jnz bach
mov factorial,ax ;after cx reach zero ax=7*6*5*4*3*2*1
mov ah,4ch
int 21h

.end start
