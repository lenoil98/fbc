	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWLABEL
ASTNEWLABEL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_007C:
push 0
push -2147483648
push 21
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 7
jne .Lt_007F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .Lt_0081
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [PARSER+108]
mov dword ptr [ebx+56], eax
.Lt_0081:
.Lt_0080:
.Lt_007F:
.Lt_007E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_007D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADLABEL
ASTLOADLABEL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0082:
cmp dword ptr [AST+136], 0
je .Lt_0085
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_0087
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call dword ptr [IR+64]
add esp, 4
jmp .Lt_0086
.Lt_0087:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call dword ptr [IR+68]
add esp, 4
.Lt_0086:
.Lt_0085:
.Lt_0084:
mov dword ptr [ebp-4], 0
.Lt_0083:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWLIT
ASTNEWLIT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0088:
push 0
push -2147483648
push 27
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
inc eax
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0089:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADLIT
ASTLOADLIT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_008A:
cmp dword ptr [AST+136], 0
je .Lt_008D
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [IR+92]
add esp, 4
.Lt_008D:
.Lt_008C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_008F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call free
add esp, 4
.Lt_008F:
.Lt_008E:
mov dword ptr [ebp-4], 0
.Lt_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTASMAPPENDTEXT
ASTASMAPPENDTEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0094:
push 0
push dword ptr [ebp+8]
call ASTASMAPPEND
add esp, 8
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
inc eax
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0095:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTASMAPPENDSYMB
ASTASMAPPENDSYMB:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0096:
push 1
push dword ptr [ebp+8]
call ASTASMAPPEND
add esp, 8
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0097:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWASM
ASTNEWASM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0098:
push 0
push -2147483648
push 28
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADASM
ASTLOADASM:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_009A:
cmp dword ptr [AST+136], 0
je .Lt_009D
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [IR+88]
add esp, 4
.Lt_009D:
.Lt_009C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
.Lt_009E:
cmp dword ptr [ebp-8], 0
je .Lt_009F
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_00A2
.Lt_00A3:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+4], 0
je .Lt_00A5
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call free
add esp, 4
.Lt_00A5:
.Lt_00A4:
.Lt_00A2:
.Lt_00A0:
push dword ptr [ebp-8]
lea ebx, [AST+200]
push ebx
call LISTDELNODE
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
jmp .Lt_009E
.Lt_009F:
mov dword ptr [ebp-4], 0
.Lt_009B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWDBG
ASTNEWDBG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A6:
cmp dword ptr [ENV+148], 0
jne .Lt_00A9
mov dword ptr [ebp-4], 0
jmp .Lt_00A7
.Lt_00A9:
.Lt_00A8:
push 0
push -2147483648
push 30
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADDBG
ASTLOADDBG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00AA:
cmp dword ptr [AST+136], 0
je .Lt_00AD
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
mov eax, dword ptr [AST+40]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call dword ptr [IR+172]
add esp, 16
.Lt_00AD:
.Lt_00AC:
mov dword ptr [ebp-4], 0
.Lt_00AB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWNOP
ASTNEWNOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00AE:
push 0
push -2147483648
push 0
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADNOP
ASTLOADNOP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B0:
mov dword ptr [ebp-4], 0
.Lt_00B1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWNIDXARRAY
ASTNEWNIDXARRAY:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B2:
push 0
push -2147483648
push 25
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADNIDXARRAY
ASTLOADNIDXARRAY:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B4:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREMOVENIDXARRAY
ASTREMOVENIDXARRAY:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B6:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
jne .Lt_00B9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], 0
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
.Lt_00B9:
.Lt_00B8:
.Lt_00B7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWLINK
ASTNEWLINK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BA:
cmp dword ptr [ebp+16], 1
je .Lt_00BD
cmp dword ptr [ebp+8], 0
je .Lt_00BF
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .Lt_00C1
push 0
push 0
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 12
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
.Lt_00BD:
.Lt_00BC:
cmp dword ptr [ebp+16], 2
je .Lt_00C3
cmp dword ptr [ebp+12], 0
je .Lt_00C5
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 9
jne .Lt_00C7
push 0
push 0
push dword ptr [ebp+12]
call ASTSETTYPE
add esp, 12
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
.Lt_00C3:
.Lt_00C2:
cmp dword ptr [ebp+8], 0
jne .Lt_00C9
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C9:
.Lt_00C8:
cmp dword ptr [ebp+12], 0
jne .Lt_00CB
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00CB:
.Lt_00CA:
cmp dword ptr [ebp+16], 0
jne .Lt_00CD
.Lt_00CE:
push 0
push 0
push 15
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_00CC
.Lt_00CD:
cmp dword ptr [ebp+16], 1
jne .Lt_00CF
.Lt_00D0:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 15
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_00CC
.Lt_00CF:
cmp dword ptr [ebp+16], 2
jne .Lt_00D1
.Lt_00D2:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 15
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_00D1:
.Lt_00CC:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADLINK
ASTLOADLINK:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D3:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 1
jne .Lt_00D7
.Lt_00D8:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00D5
.Lt_00D7:
cmp dword ptr [ebp-16], 2
jne .Lt_00D9
.Lt_00DA:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .Lt_00D5
.Lt_00D9:
mov dword ptr [ebp-4], 0
.Lt_00DB:
.Lt_00D5:
.Lt_00D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWLOAD
ASTNEWLOAD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DC:
push 0
push dword ptr [ebp+12]
push 1
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADLOAD
ASTLOADLOAD:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_00E1
mov dword ptr [ebp-4], 0
jmp .Lt_00DF
.Lt_00E1:
.Lt_00E0:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [AST+136], 0
je .Lt_00E3
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_00E5
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call dword ptr [IR+228]
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call dword ptr [IR+116]
add esp, 8
jmp .Lt_00E4
.Lt_00E5:
push dword ptr [ebp-12]
call dword ptr [IR+112]
add esp, 4
.Lt_00E4:
.Lt_00E3:
.Lt_00E2:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00DF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWFIELD
ASTNEWFIELD:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+112], 0
jle .Lt_00E9
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 1
jne .Lt_00EB
mov eax, dword ptr [ebp-12]
and eax, -512
or eax, 8
mov dword ptr [ebp-12], eax
jmp .Lt_00EA
.Lt_00EB:
mov eax, dword ptr [ebp-12]
and eax, -512
or eax, 9
mov dword ptr [ebp-12], eax
.Lt_00EA:
mov dword ptr [ebp-16], 0
inc dword ptr [AST+144]
.Lt_00E9:
.Lt_00E8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 19
jne .Lt_00ED
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00E7
.Lt_00ED:
.Lt_00EC:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 19
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTFORGETBITFIELDS
ASTFORGETBITFIELDS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00EE:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [AST+144]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00F1
jmp .Lt_00EF
.Lt_00F1:
.Lt_00F0:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 19
jne .Lt_00F2
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+112]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_00F6
.Lt_00F2:
mov dword ptr [ebp-4], 0
.Lt_00F6:
cmp dword ptr [ebp-4], 0
je .Lt_00F5
dec dword ptr [AST+144]
.Lt_00F5:
.Lt_00F4:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTFORGETBITFIELDS
add esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call ASTFORGETBITFIELDS
add esp, 4
.Lt_00EF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTUPDATEBITFIELDS
ASTUPDATEBITFIELDS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0116:
cmp dword ptr [AST+144], 0
jg .Lt_0119
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0117
.Lt_0119:
.Lt_0118:
cmp dword ptr [ebp+8], 0
jne .Lt_011B
mov dword ptr [ebp-4], 0
jmp .Lt_0117
.Lt_011B:
.Lt_011A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
jne .Lt_011E
.Lt_011F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 19
jne .Lt_0121
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+112], 0
jle .Lt_0123
dec dword ptr [AST+144]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+56]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+60]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+56]
push dword ptr [ebp-12]
call ASTSETBITFIELD
add esp, 12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
.Lt_0123:
.Lt_0122:
.Lt_0121:
.Lt_0120:
jmp .Lt_011C
.Lt_011E:
cmp dword ptr [ebp-8], 19
jne .Lt_0124
.Lt_0125:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp dword ptr [ecx+112], 0
jle .Lt_0127
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call ASTACCESSBITFIELD
add esp, 8
mov dword ptr [ebp-12], eax
dec dword ptr [AST+144]
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTUPDATEBITFIELDS
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0117
.Lt_0127:
.Lt_0126:
.Lt_0124:
.Lt_011C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTUPDATEBITFIELDS
add esp, 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+56], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTUPDATEBITFIELDS
add esp, 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0117:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADFIELD
ASTLOADFIELD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0128:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
cmp dword ptr [AST+136], 0
je .Lt_012B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_012B:
.Lt_012A:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0129:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWSTACK
ASTNEWSTACK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_012C:
cmp dword ptr [ebp+12], 0
jne .Lt_012F
mov dword ptr [ebp-4], 0
jmp .Lt_012D
.Lt_012F:
.Lt_012E:
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 11
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_012D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADSTACK
ASTLOADSTACK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0130:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0133
mov dword ptr [ebp-4], 0
jmp .Lt_0131
.Lt_0133:
.Lt_0132:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [AST+136], 0
je .Lt_0135
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [IR+120]
add esp, 8
.Lt_0135:
.Lt_0134:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0131:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDUMPOPTOSTR
ASTDUMPOPTOSTR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01E1:
mov eax, dword ptr [ebp+8]
cmp eax, 120
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01E4
push 0
push -1
push -1
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 4
push eax
push 4
push offset Lt_01E5
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01E2
.Lt_01E4:
.Lt_01E3:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [DBG_ASTNODEOPNAMES+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.Lt_01E2:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDUMPTREE
ASTDUMPTREE:
push ebp
mov ebp, esp
.Lt_0270:
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTDUMPTREEEX
add esp, 16
.Lt_0271:
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDUMPLIST
ASTDUMPLIST:
push ebp
mov ebp, esp
push ebx
.Lt_0272:
.Lt_0274:
cmp dword ptr [ebp+8], 0
je .Lt_0275
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTDUMPTREE
add esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp+8], ebx
jmp .Lt_0274
.Lt_0275:
.Lt_0273:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__astznodezmisc:
.Lt_0002:
.Lt_0003:
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_0012:
push 0
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
.Lt_0013:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
ASTASMAPPEND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0090:
lea eax, [AST+200]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .Lt_0093
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.Lt_0093:
.Lt_0092:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0091:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_Z13HMAKEUINTMASKm:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 64
jb .Lt_00FD
mov dword ptr [ebp-12], 4294967295
mov dword ptr [ebp-8], 4294967295
jmp .Lt_00FC
.Lt_00FD:
mov ebx, 1
mov eax, 0
push eax
push ebx
mov ecx, dword ptr [ebp+8]
mov eax, [esp+0]
mov edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .Lt_0276
mov edx, eax
xor eax, eax
.Lt_0276:
mov [esp+4], edx
mov [esp+0], eax
pop ebx
pop eax
add ebx, 4294967295
adc eax, 4294967295
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
.Lt_00FC:
call FBIS64BIT
not eax
test eax, eax
je .Lt_00FF
mov eax, dword ptr [ebp-12]
mov ecx, eax
mov ebx, 0
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-8], ebx
.Lt_00FF:
.Lt_00FE:
push 0
push 9
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_Z13HMAKEUINTMASKmm:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0100:
push 1
push 0
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, 0
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
call _Z13HMAKEUINTMASKm
add esp, 4
push eax
push 41
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0101:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
ASTSETBITFIELD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0102:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .Lt_0105
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, -512
or eax, 9
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 0
jmp .Lt_0104
.Lt_0105:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx+8], eax
.Lt_0104:
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp+12], eax
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+108]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call _Z13HMAKEUINTMASKmm
add esp, 8
push eax
push 52
call ASTNEWUOP
add esp, 8
push eax
push dword ptr [ebp+12]
push 34
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .Lt_0107
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 5
jne .Lt_0108
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_0277
.Lt_0108:
mov dword ptr [ebp-8], -1
.Lt_0277:
cmp dword ptr [ebp-8], 0
je .Lt_010B
push 0
push 0
push dword ptr [ebp+16]
push 0
push 1
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_010B:
.Lt_010A:
push 0
push 0
push dword ptr [ebp+16]
push 0
push 9
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+108]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call _Z13HMAKEUINTMASKmm
add esp, 8
push eax
push dword ptr [ebp+16]
push 34
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
jmp .Lt_0106
.Lt_0107:
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call _Z13HMAKEUINTMASKm
add esp, 4
push eax
push dword ptr [ebp+16]
push 34
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+108], 0
jle .Lt_010D
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+108]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 41
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_010D:
.Lt_010C:
.Lt_0106:
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 35
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0103:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
ASTACCESSBITFIELD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_010E:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .Lt_0111
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, -512
or eax, 2
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 0
mov dword ptr [ebp-8], -1
jmp .Lt_0110
.Lt_0111:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ecx+8], eax
mov dword ptr [ebp-8], 0
.Lt_0110:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+108], 0
jle .Lt_0113
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+108]
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
push 42
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
.Lt_0113:
.Lt_0112:
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call _Z13HMAKEUINTMASKm
add esp, 4
push eax
push dword ptr [ebp+12]
push 34
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
je .Lt_0115
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ecx+8], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
.Lt_0115:
.Lt_0114:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_010F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
DBG_ASTOUTPUT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0136:
cmp dword ptr [ebp+16], -1
jne .Lt_0139
.Lt_013A:
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov ebx, dword ptr [ebp+12]
sub ebx, eax
mov dword ptr [ebp-4], ebx
jmp .Lt_0138
.Lt_0139:
cmp dword ptr [ebp+16], 1
jne .Lt_013B
.Lt_013C:
mov ebx, dword ptr [ebp+12]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_0138
.Lt_013B:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.Lt_013D:
.Lt_0138:
cmp dword ptr [ebp+20], 0
jge .Lt_013F
push 0
mov ebx, dword ptr [ebp-4]
dec ebx
push ebx
call fb_SPACE
add esp, 4
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push dword ptr [ebp+8]
push 0
call fb_PrintString
add esp, 12
jmp .Lt_013E
.Lt_013F:
push 0
push dword ptr [ebp+20]
call fb_IntToStr
add esp, 4
push eax
push 0
call fb_PrintString
add esp, 12
push 0
mov eax, dword ptr [ebp-4]
dec eax
push -1
push dword ptr [ebp+20]
mov ebx, eax
call fb_IntToStr
add esp, 4
push eax
call fb_StrLen
add esp, 8
sub ebx, eax
push ebx
call fb_SPACE
add esp, 4
push eax
push 0
call fb_PrintString
add esp, 12
push 1
push dword ptr [ebp+8]
push 0
call fb_PrintString
add esp, 12
.Lt_013E:
.Lt_0137:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HASTNODECLASSTOSTR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01E9:
mov eax, dword ptr [ebp+8]
cmp eax, 44
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01EC
push 0
push -1
push -1
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 4
push eax
push 7
push offset Lt_01ED
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01EA
.Lt_01EC:
.Lt_01EB:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [DBG_ASTNODECLASSNAMES+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.Lt_01EA:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSYMBTOSTR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01EF:
cmp dword ptr [ebp+8], 0
jne .Lt_01F2
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01F0
.Lt_01F2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_01F4
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01F0
jmp .Lt_01F3
.Lt_01F4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_01F5
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.Lt_01F5:
.Lt_01F3:
.Lt_01F0:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HASTNODETYPETOSTR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01F6:
cmp dword ptr [ebp+8], 0
jne .Lt_01F9
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01F7
.Lt_01F9:
push 0
push -1
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBTYPETOSTR
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.Lt_01F7:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
HASTNODETOSTR:
push ebp
mov ebp, esp
sub esp, 104
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01FA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_01FD
.Lt_01FF:
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call HSYMBTOSTR
add esp, 4
push eax
push -1
push 6
push offset Lt_0200
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call ASTDUMPOPTOSTR
add esp, 4
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_0203:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call ASTDUMPOPTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_0204:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0205
mov dword ptr [ebp-20], 24
jmp .Lt_027B
.Lt_0205:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_027B:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_0208
push 0
push -1
push -1
push 2
push offset Lt_020A
push -1
push -1
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset Lt_0209
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_DoubleToStr
add esp, 8
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
.Lt_0208:
.Lt_0207:
push 0
push -1
push -1
push 2
push offset Lt_020A
push -1
push -1
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset Lt_0209
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_0211:
push 0
push -1
push -1
push 2
push offset Lt_020A
push -1
push -1
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset Lt_0209
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push 3
push offset Lt_0216
push -1
push 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0214
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-20], eax
jmp .Lt_027C
.Lt_0214:
mov eax, offset Lt_0213
mov dword ptr [ebp-20], eax
.Lt_027C:
push dword ptr [ebp-20]
push 6
push offset Lt_0212
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_021C:
push 0
push -1
push -1
push 2
push offset Lt_020A
push -1
push -1
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset Lt_0209
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push 3
push offset Lt_0216
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 8
push offset Lt_021D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_0223:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0225
push 0
push -1
push 3
push offset Lt_0216
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 7
push offset Lt_0226
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
.Lt_0225:
.Lt_0224:
push 0
push -1
push -1
push 2
push offset Lt_020A
push -1
push -1
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset Lt_0209
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push 5
push offset Lt_0159
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_022C:
push 0
push -1
push 3
push offset Lt_0216
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 7
push offset Lt_022D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_0230:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HSYMBTOSTR
add esp, 4
push eax
push 8
push offset Lt_0231
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_0233:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call HSYMBTOSTR
add esp, 4
push eax
push -1
push 2
push offset Lt_0235
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call ASTDUMPOPTOSTR
add esp, 4
push eax
push 9
push offset Lt_0234
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_0239:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HSYMBTOSTR
add esp, 4
push eax
push 13
push offset Lt_023A
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_023C:
push 0
push -1
push 3
push offset Lt_0216
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_LongintToStr
add esp, 8
push eax
push 24
push offset Lt_023D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_0240:
push 0
push -1
push -1
push 2
push offset Lt_020A
push -1
push -1
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset Lt_0209
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push 2
push offset Lt_0235
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call ASTDUMPOPTOSTR
add esp, 4
push eax
push 8
push offset Lt_0241
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_0247:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-104], ebx
cmp dword ptr [ebp-104], 1
jne .Lt_024A
.Lt_024B:
push 0
push 2
push offset Lt_024C
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
jmp .Lt_0248
.Lt_024A:
cmp dword ptr [ebp-104], 2
jne .Lt_024D
.Lt_024E:
push 0
push 2
push offset Lt_024F
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 20
.Lt_024D:
.Lt_0248:
push 0
push -1
push -1
lea ebx, [ebp-28]
push ebx
push -1
push 2
push offset Lt_018B
push -1
push -1
push 2
push offset Lt_020A
push -1
push -1
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset Lt_0209
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HASTNODECLASSTOSTR
add esp, 4
push eax
push 2
push offset Lt_018C
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_01FB
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_01FC
.Lt_0256:
push 0
push -1
push -1
push 2
push offset Lt_020A
push -1
push -1
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset Lt_0209
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HASTNODECLASSTOSTR
add esp, 4
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_01FB
jmp .Lt_01FC
.Lt_01FD:
mov eax, dword ptr [ebp-16]
add eax, 4294967293
cmp eax, 41
ja .Lt_0256
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_025A+eax*4-12]
.LT_025A:
.int .Lt_01FF
.int .Lt_0203
.int .Lt_0256
.int .Lt_0256
.int .Lt_0233
.int .Lt_0256
.int .Lt_022C
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0247
.int .Lt_0204
.int .Lt_0211
.int .Lt_0256
.int .Lt_021C
.int .Lt_0256
.int .Lt_0230
.int .Lt_0256
.int .Lt_0256
.int .Lt_0223
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0239
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_023C
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0256
.int .Lt_0240
.Lt_01FC:
.Lt_01FB:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
ASTDUMPTREEEX:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_025B:
mov eax, dword ptr [ebp+12]
cmp eax, 4
setle al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
cmp ebx, 76
setge bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_025E
mov dword ptr [ebp+12], 40
.Lt_025E:
.Lt_025D:
cmp dword ptr [ebp+8], 0
jne .Lt_0260
push 1
push 6
push offset Lt_0213
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 12
jmp .Lt_025C
.Lt_0260:
.Lt_025F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push dword ptr [ebp+8]
call HASTNODETOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-12]
push eax
call DBG_ASTOUTPUT
add esp, 16
inc dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_0262
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0264
push -1
push 0
mov eax, dword ptr [ebp+12]
add eax, -2
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 4
push offset Lt_0265
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call DBG_ASTOUTPUT
add esp, 16
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_0263
.Lt_0264:
push -1
push 0
mov eax, dword ptr [ebp+12]
add eax, -2
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset Lt_0019
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call DBG_ASTOUTPUT
add esp, 16
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.Lt_0263:
jmp .Lt_0261
.Lt_0262:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0268
push -1
push 0
mov eax, dword ptr [ebp+12]
add eax, -2
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 4
push offset Lt_0269
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call DBG_ASTOUTPUT
add esp, 16
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_0261
.Lt_0268:
push -1
push 0
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call DBG_ASTOUTPUT
add esp, 16
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.Lt_0261:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_026D
push dword ptr [ebp+20]
push -1
mov eax, dword ptr [ebp+12]
add eax, -2
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDUMPTREEEX
add esp, 16
.Lt_026D:
.Lt_026C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_026F
push dword ptr [ebp+20]
push 1
mov eax, dword ptr [ebp+12]
add eax, 2
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDUMPTREEEX
add esp, 16
.Lt_026F:
.Lt_026E:
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.Lt_025C:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0019:	.ascii	"/\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	Lt_007B,36

.section .data
.balign 4
DBG_ASTNODECLASSNAMES:
.int Lt_0141
.int Lt_0142
.int Lt_0143
.int Lt_0144
.int Lt_0145
.int Lt_0146
.int Lt_0147
.int Lt_0148
.int Lt_0149
.int Lt_014A
.int Lt_014B
.int Lt_014C
.int Lt_014D
.int Lt_014E
.int Lt_014F
.int Lt_0150
.int Lt_0151
.int Lt_0152
.int Lt_0153
.int Lt_0154
.int Lt_0155
.int Lt_0156
.int Lt_0157
.int Lt_0158
.int Lt_0159
.int Lt_015A
.int Lt_015B
.int Lt_015C
.int Lt_015D
.int Lt_015E
.int Lt_015F
.int Lt_0160
.int Lt_0161
.int Lt_0162
.int Lt_0163
.int Lt_0164
.int Lt_0165
.int Lt_0166
.int Lt_0167
.int Lt_0168
.int Lt_0169
.int Lt_016A
.int Lt_016B
.int Lt_016C
.int Lt_016D
.balign 4
Lt_0141:	.ascii	"NOP\0"
.balign 4
Lt_0142:	.ascii	"LOAD\0"
.balign 4
Lt_0143:	.ascii	"ASSIGN\0"
.balign 4
Lt_0144:	.ascii	"BOP\0"
.balign 4
Lt_0145:	.ascii	"UOP\0"
.balign 4
Lt_0146:	.ascii	"CONV\0"
.balign 4
Lt_0147:	.ascii	"ADDROF\0"
.balign 4
Lt_0148:	.ascii	"BRANCH\0"
.balign 4
Lt_0149:	.ascii	"JMPTB\0"
.balign 4
Lt_014A:	.ascii	"CALL\0"
.balign 4
Lt_014B:	.ascii	"CALLCTOR\0"
.balign 4
Lt_014C:	.ascii	"STACK\0"
.balign 4
Lt_014D:	.ascii	"MEM\0"
.balign 4
Lt_014E:	.ascii	"LOOP\0"
.balign 4
Lt_014F:	.ascii	"COMP\0"
.balign 4
Lt_0150:	.ascii	"LINK\0"
.balign 4
Lt_0151:	.ascii	"CONST\0"
.balign 4
Lt_0152:	.ascii	"VAR\0"
.balign 4
Lt_0153:	.ascii	"IDX\0"
.balign 4
Lt_0154:	.ascii	"FIELD\0"
.balign 4
Lt_0155:	.ascii	"DEREF\0"
.balign 4
Lt_0156:	.ascii	"LABEL\0"
.balign 4
Lt_0157:	.ascii	"ARG\0"
.balign 4
Lt_0158:	.ascii	"OFFSET\0"
.balign 4
Lt_0159:	.ascii	"DECL\0"
.balign 4
Lt_015A:	.ascii	"NIDXARRAY\0"
.balign 4
Lt_015B:	.ascii	"IIF\0"
.balign 4
Lt_015C:	.ascii	"LIT\0"
.balign 4
Lt_015D:	.ascii	"ASM\0"
.balign 4
Lt_015E:	.ascii	"DATASTMT\0"
.balign 4
Lt_015F:	.ascii	"DBG\0"
.balign 4
Lt_0160:	.ascii	"BOUNDCHK\0"
.balign 4
Lt_0161:	.ascii	"PTRCHK\0"
.balign 4
Lt_0162:	.ascii	"SCOPEBEGIN\0"
.balign 4
Lt_0163:	.ascii	"SCOPEEND\0"
.balign 4
Lt_0164:	.ascii	"SCOPE_BREAK\0"
.balign 4
Lt_0165:	.ascii	"TYPEINI\0"
.balign 4
Lt_0166:	.ascii	"TYPEINI_PAD\0"
.balign 4
Lt_0167:	.ascii	"TYPEINI_ASSIGN\0"
.balign 4
Lt_0168:	.ascii	"TYPEINI_CTORCALL\0"
.balign 4
Lt_0169:	.ascii	"TYPEINI_CTORLIST\0"
.balign 4
Lt_016A:	.ascii	"TYPEINI_SCOPEINI\0"
.balign 4
Lt_016B:	.ascii	"TYPEINI_SCOPEEND\0"
.balign 4
Lt_016C:	.ascii	"PROC\0"
.balign 4
Lt_016D:	.ascii	"MACRO\0"
.balign 4
DBG_ASTNODEOPNAMES:
.int Lt_016F
.int Lt_0170
.int Lt_0171
.int Lt_0172
.int Lt_0173
.int Lt_0174
.int Lt_0175
.int Lt_0176
.int Lt_0177
.int Lt_0178
.int Lt_0179
.int Lt_017A
.int Lt_017B
.int Lt_017C
.int Lt_017D
.int Lt_017E
.int Lt_017F
.int Lt_0180
.int Lt_0181
.int Lt_0182
.int Lt_0183
.int Lt_0184
.int Lt_0147
.int Lt_0185
.int Lt_0186
.int Lt_0187
.int Lt_0188
.int Lt_0189
.int Lt_018A
.int Lt_018B
.int Lt_018C
.int Lt_0019
.int Lt_018D
.int Lt_018E
.int Lt_018F
.int Lt_0190
.int Lt_0191
.int Lt_0192
.int Lt_0193
.int Lt_0194
.int Lt_0195
.int Lt_0196
.int Lt_0197
.int Lt_0198
.int Lt_0199
.int Lt_019A
.int Lt_019B
.int Lt_019C
.int Lt_019D
.int Lt_019E
.int Lt_019F
.int Lt_01A0
.int Lt_01A1
.int Lt_018A
.int Lt_01A2
.int Lt_01A3
.int Lt_01A4
.int Lt_01A5
.int Lt_01A6
.int Lt_01A7
.int Lt_01A8
.int Lt_01A9
.int Lt_01AA
.int Lt_01AB
.int Lt_01AC
.int Lt_01AD
.int Lt_01AE
.int Lt_01AF
.int Lt_01B0
.int Lt_01B1
.int Lt_01B2
.int Lt_01B3
.int Lt_01B4
.int Lt_01B5
.int Lt_01B6
.int Lt_01B7
.int Lt_0155
.int Lt_01B8
.int Lt_01B9
.int Lt_01BA
.int Lt_01BB
.int Lt_01BC
.int Lt_01BD
.int Lt_01BE
.int Lt_01BF
.int Lt_0142
.int Lt_01C0
.int Lt_01C1
.int Lt_01C2
.int Lt_01C3
.int Lt_01C4
.int Lt_01C5
.int Lt_01C6
.int Lt_01C7
.int Lt_01C8
.int Lt_01C9
.int Lt_01CA
.int Lt_01CB
.int Lt_01CC
.int Lt_014A
.int Lt_0156
.int Lt_01CD
.int Lt_01CE
.int Lt_01CF
.int Lt_01D0
.int Lt_01D1
.int Lt_01D2
.int Lt_01D3
.int Lt_01D4
.int Lt_01D5
.int Lt_01D6
.int Lt_01D7
.int Lt_01D8
.int Lt_01D9
.int Lt_01DA
.int Lt_01DB
.int Lt_01DC
.int Lt_01DD
.int Lt_01DE
.int Lt_01DF
.int Lt_01E0
.balign 4
Lt_016F:	.ascii	"=\0"
.balign 4
Lt_0170:	.ascii	"+=\0"
.balign 4
Lt_0171:	.ascii	"-=\0"
.balign 4
Lt_0172:	.ascii	"*=\0"
.balign 4
Lt_0173:	.ascii	"/=\0"
.balign 4
Lt_0174:	.ascii	"\\=\0"
.balign 4
Lt_0175:	.ascii	"MOD=\0"
.balign 4
Lt_0176:	.ascii	"AND=\0"
.balign 4
Lt_0177:	.ascii	"OR=\0"
.balign 4
Lt_0178:	.ascii	"ANDALSO=\0"
.balign 4
Lt_0179:	.ascii	"ORELSE=\0"
.balign 4
Lt_017A:	.ascii	"XOR=\0"
.balign 4
Lt_017B:	.ascii	"EQV=\0"
.balign 4
Lt_017C:	.ascii	"IMP=\0"
.balign 4
Lt_017D:	.ascii	"SHL=\0"
.balign 4
Lt_017E:	.ascii	"SHR=\0"
.balign 4
Lt_017F:	.ascii	"^=\0"
.balign 4
Lt_0180:	.ascii	"&=\0"
.balign 4
Lt_0181:	.ascii	"new=\0"
.balign 4
Lt_0182:	.ascii	"new[]=\0"
.balign 4
Lt_0183:	.ascii	"del=\0"
.balign 4
Lt_0184:	.ascii	"del[]=\0"
.balign 4
Lt_0185:	.ascii	"PTRINDEX\0"
.balign 4
Lt_0186:	.ascii	"FOR\0"
.balign 4
Lt_0187:	.ascii	"STEP\0"
.balign 4
Lt_0188:	.ascii	"NEXT\0"
.balign 4
Lt_0189:	.ascii	"CAST\0"
.balign 4
Lt_018A:	.ascii	"+\0"
.balign 4
Lt_018B:	.ascii	"-\0"
.balign 4
Lt_018C:	.ascii	"*\0"
.balign 4
Lt_018D:	.ascii	"\\\0"
.balign 4
Lt_018E:	.ascii	"MOD\0"
.balign 4
Lt_018F:	.ascii	"AND\0"
.balign 4
Lt_0190:	.ascii	"OR\0"
.balign 4
Lt_0191:	.ascii	"ANDALSO\0"
.balign 4
Lt_0192:	.ascii	"ORELSE\0"
.balign 4
Lt_0193:	.ascii	"XOR\0"
.balign 4
Lt_0194:	.ascii	"EQV\0"
.balign 4
Lt_0195:	.ascii	"IMP\0"
.balign 4
Lt_0196:	.ascii	"SHL\0"
.balign 4
Lt_0197:	.ascii	"SHR\0"
.balign 4
Lt_0198:	.ascii	"^\0"
.balign 4
Lt_0199:	.ascii	"&\0"
.balign 4
Lt_019A:	.ascii	"==\0"
.balign 4
Lt_019B:	.ascii	">\0"
.balign 4
Lt_019C:	.ascii	"<\0"
.balign 4
Lt_019D:	.ascii	"<>\0"
.balign 4
Lt_019E:	.ascii	">=\0"
.balign 4
Lt_019F:	.ascii	"<=\0"
.balign 4
Lt_01A0:	.ascii	"IS\0"
.balign 4
Lt_01A1:	.ascii	"NOT\0"
.balign 4
Lt_01A2:	.ascii	"NEG\0"
.balign 4
Lt_01A3:	.ascii	"HADD\0"
.balign 4
Lt_01A4:	.ascii	"ABS\0"
.balign 4
Lt_01A5:	.ascii	"SGN\0"
.balign 4
Lt_01A6:	.ascii	"SIN\0"
.balign 4
Lt_01A7:	.ascii	"ASIN\0"
.balign 4
Lt_01A8:	.ascii	"COS\0"
.balign 4
Lt_01A9:	.ascii	"ACOS\0"
.balign 4
Lt_01AA:	.ascii	"TAN\0"
.balign 4
Lt_01AB:	.ascii	"ATAN\0"
.balign 4
Lt_01AC:	.ascii	"ATAN2\0"
.balign 4
Lt_01AD:	.ascii	"SQRT\0"
.balign 4
Lt_01AE:	.ascii	"RSQRT\0"
.balign 4
Lt_01AF:	.ascii	"RCP\0"
.balign 4
Lt_01B0:	.ascii	"LOG\0"
.balign 4
Lt_01B1:	.ascii	"EXP\0"
.balign 4
Lt_01B2:	.ascii	"FLOOR\0"
.balign 4
Lt_01B3:	.ascii	"FIX\0"
.balign 4
Lt_01B4:	.ascii	"FRAC\0"
.balign 4
Lt_01B5:	.ascii	"LEN\0"
.balign 4
Lt_01B6:	.ascii	"CONVFD2FS\0"
.balign 4
Lt_01B7:	.ascii	"SWZREP\0"
.balign 4
Lt_01B8:	.ascii	"FLDDEREF\0"
.balign 4
Lt_01B9:	.ascii	"NEW\0"
.balign 4
Lt_01BA:	.ascii	"NEW_VEC\0"
.balign 4
Lt_01BB:	.ascii	"DEL\0"
.balign 4
Lt_01BC:	.ascii	"DEL_VEC\0"
.balign 4
Lt_01BD:	.ascii	"TOINT\0"
.balign 4
Lt_01BE:	.ascii	"TOFLT\0"
.balign 4
Lt_01BF:	.ascii	"TOBOOL\0"
.balign 4
Lt_01C0:	.ascii	"LOADRES\0"
.balign 4
Lt_01C1:	.ascii	"SPILLREGS\0"
.balign 4
Lt_01C2:	.ascii	"PUSH\0"
.balign 4
Lt_01C3:	.ascii	"POP\0"
.balign 4
Lt_01C4:	.ascii	"PUSHUDT\0"
.balign 4
Lt_01C5:	.ascii	"STACKALIGN\0"
.balign 4
Lt_01C6:	.ascii	"JEQ\0"
.balign 4
Lt_01C7:	.ascii	"JGT\0"
.balign 4
Lt_01C8:	.ascii	"JLT\0"
.balign 4
Lt_01C9:	.ascii	"JNE\0"
.balign 4
Lt_01CA:	.ascii	"JGE\0"
.balign 4
Lt_01CB:	.ascii	"JLE\0"
.balign 4
Lt_01CC:	.ascii	"JMP\0"
.balign 4
Lt_01CD:	.ascii	"RET\0"
.balign 4
Lt_01CE:	.ascii	"CALLFUNCT\0"
.balign 4
Lt_01CF:	.ascii	"CALLPTR\0"
.balign 4
Lt_01D0:	.ascii	"JUMPPTR\0"
.balign 4
Lt_01D1:	.ascii	"MEMMOVE\0"
.balign 4
Lt_01D2:	.ascii	"MEMSWAP\0"
.balign 4
Lt_01D3:	.ascii	"MEMCLEAR\0"
.balign 4
Lt_01D4:	.ascii	"STKCLEAR\0"
.balign 4
Lt_01D5:	.ascii	"VA_START\0"
.balign 4
Lt_01D6:	.ascii	"VA_END\0"
.balign 4
Lt_01D7:	.ascii	"VA_COPY\0"
.balign 4
Lt_01D8:	.ascii	"VA_ARG\0"
.balign 4
Lt_01D9:	.ascii	"DBG_LINEINI\0"
.balign 4
Lt_01DA:	.ascii	"DBG_LINEEND\0"
.balign 4
Lt_01DB:	.ascii	"DBG_SCOPEINI\0"
.balign 4
Lt_01DC:	.ascii	"BDG_SCOPEEND\0"
.balign 4
Lt_01DD:	.ascii	"LIT_COMMENT\0"
.balign 4
Lt_01DE:	.ascii	"LIT_ASM\0"
.balign 4
Lt_01DF:	.ascii	"TOSIGNED\0"
.balign 4
Lt_01E0:	.ascii	"TOUNSIGNED\0"
.balign 4
Lt_01E5:	.ascii	"OP:\0"
.balign 4
Lt_01ED:	.ascii	"CLASS:\0"
.balign 4
Lt_0200:	.ascii	" =-= \0"
.balign 4
Lt_0209:	.ascii	" (\0"
.balign 4
Lt_020A:	.ascii	")\0"
.balign 4
Lt_0212:	.ascii	"VAR( \0"
.balign 4
Lt_0213:	.ascii	"<NULL>\0"
.balign 4
Lt_0216:	.ascii	" )\0"
.balign 4
Lt_021D:	.ascii	"FIELD( \0"
.balign 4
Lt_0226:	.ascii	"DECL( \0"
.balign 4
Lt_022D:	.ascii	"CALL( \0"
.balign 4
Lt_0231:	.ascii	"LABEL: \0"
.balign 4
Lt_0234:	.ascii	"BRANCH: \0"
.balign 4
Lt_0235:	.ascii	" \0"
.balign 4
Lt_023A:	.ascii	"SCOPEBEGIN: \0"
.balign 4
Lt_023D:	.ascii	"TYPEINI_ASSIGN( offset=\0"
.balign 4
Lt_0241:	.ascii	"MACRO: \0"
.balign 4
Lt_024C:	.ascii	"L\0"
.balign 4
Lt_024F:	.ascii	"R\0"
.balign 4
Lt_0265:	.ascii	"/ \\\0"
.balign 4
Lt_0269:	.ascii	"  \\\0"

.section .ctors
.int fb_ctor__astznodezmisc
