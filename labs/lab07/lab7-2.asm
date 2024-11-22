%include 'in_out.asm'

section .data
A1 db 'Введите A: ',0h
B1 db 'Введите B: ', 0h
C1 db 'Введите C: ',0h
otv db "Наименьшее число: ",0h
section .bss
min resb 20
A resb 20
B resb 20
C resb 20
section .text
global _start
_start:

mov eax,A1
call sprint

mov ecx,A
mov edx,20
call sread

mov eax,A
call atoi 
mov [A],eax 

xor eax,eax

mov eax,B1
call sprint

mov ecx,B
mov edx,20
call sread

mov eax,B
call atoi
mov [B],eax

xor eax,eax

mov ecx,[A]
mov [min],ecx
mov ecx,[min]

cmp ecx,[B]
jl check_C
mov [min],ecx

check_C:

mov eax,C1
call sprint

mov ecx,C
mov edx, 10
call sread

mov eax, C
call atoi
mov[C],eax

xor eax,eax

mov ecx,[min]
cmp ecx,[C]
jl fin
mov ecx,[C]
mov [min],ecx

fin:

mov eax, otv
call sprint
mov eax, [min]
call iprintLF
call quit


