%include 'in_out.asm'
SECTION .data
prim db 'f(x)=17+5x',0
otv db 'Результат: ',0
SECTION .text
global _start
_start:
pop ecx 
pop edx 
sub ecx,1 
mov esi,0
mov eax,prim
call sprintLF
next:
cmp ecx,0
jz _end 
mov ebx,5
pop eax 
call atoi 
mul ebx
add eax, 17
add esi,eax
loop next
_end:
mov eax,otv
call sprint
mov eax, esi 
call iprintLF 
call quit
