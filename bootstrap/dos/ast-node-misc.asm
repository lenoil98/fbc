	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWLABEL
_ASTNEWLABEL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_007D:
push 0
push -2147483648
push 21
call _ASTNEWNODE
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
jne .Lt_0080
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .Lt_0082
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_PARSER+108]
mov dword ptr [ebx+56], eax
.Lt_0082:
.Lt_0081:
.Lt_0080:
.Lt_007F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_007E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADLABEL
_ASTLOADLABEL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0083:
cmp dword ptr [_AST+136], 0
je .Lt_0086
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_0088
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call dword ptr [_IR+64]
add esp, 4
jmp .Lt_0087
.Lt_0088:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call dword ptr [_IR+68]
add esp, 4
.Lt_0087:
.Lt_0086:
.Lt_0085:
mov dword ptr [ebp-4], 0
.Lt_0084:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWLIT
_ASTNEWLIT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0089:
push 0
push -2147483648
push 27
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADLIT
_ASTLOADLIT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_008B:
cmp dword ptr [_AST+136], 0
je .Lt_008E
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [_IR+92]
add esp, 4
.Lt_008E:
.Lt_008D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_0090
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _free
add esp, 4
.Lt_0090:
.Lt_008F:
mov dword ptr [ebp-4], 0
.Lt_008C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTASMAPPENDTEXT
_ASTASMAPPENDTEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0095:
push 0
push dword ptr [ebp+8]
call _ASTASMAPPEND
add esp, 8
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTASMAPPENDSYMB
_ASTASMAPPENDSYMB:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0097:
push 1
push dword ptr [ebp+8]
call _ASTASMAPPEND
add esp, 8
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWASM
_ASTNEWASM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0099:
push 0
push -2147483648
push 28
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADASM
_ASTLOADASM:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_009B:
cmp dword ptr [_AST+136], 0
je .Lt_009E
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [_IR+88]
add esp, 4
.Lt_009E:
.Lt_009D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
.Lt_009F:
cmp dword ptr [ebp-8], 0
je .Lt_00A0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_00A3
.Lt_00A4:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+4], 0
je .Lt_00A6
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call _free
add esp, 4
.Lt_00A6:
.Lt_00A5:
.Lt_00A3:
.Lt_00A1:
push dword ptr [ebp-8]
lea ebx, [_AST+200]
push ebx
call _LISTDELNODE
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
jmp .Lt_009F
.Lt_00A0:
mov dword ptr [ebp-4], 0
.Lt_009C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWDBG
_ASTNEWDBG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A7:
cmp dword ptr [_ENV+148], 0
jne .Lt_00AA
mov dword ptr [ebp-4], 0
jmp .Lt_00A8
.Lt_00AA:
.Lt_00A9:
push 0
push -2147483648
push 30
call _ASTNEWNODE
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
.Lt_00A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADDBG
_ASTLOADDBG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00AB:
cmp dword ptr [_AST+136], 0
je .Lt_00AE
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
mov eax, dword ptr [_AST+40]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call dword ptr [_IR+172]
add esp, 16
.Lt_00AE:
.Lt_00AD:
mov dword ptr [ebp-4], 0
.Lt_00AC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWNOP
_ASTNEWNOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00AF:
push 0
push -2147483648
push 0
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADNOP
_ASTLOADNOP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B1:
mov dword ptr [ebp-4], 0
.Lt_00B2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWNIDXARRAY
_ASTNEWNIDXARRAY:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B3:
push 0
push -2147483648
push 25
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADNIDXARRAY
_ASTLOADNIDXARRAY:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B5:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTREMOVENIDXARRAY
_ASTREMOVENIDXARRAY:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B7:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
jne .Lt_00BA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], 0
push dword ptr [ebp+8]
call _ASTDELTREE
add esp, 4
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWLINK
_ASTNEWLINK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BB:
cmp dword ptr [ebp+16], 1
je .Lt_00BE
cmp dword ptr [ebp+8], 0
je .Lt_00C0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .Lt_00C2
push 0
push 0
push dword ptr [ebp+8]
call _ASTSETTYPE
add esp, 12
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
.Lt_00BD:
cmp dword ptr [ebp+16], 2
je .Lt_00C4
cmp dword ptr [ebp+12], 0
je .Lt_00C6
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 9
jne .Lt_00C8
push 0
push 0
push dword ptr [ebp+12]
call _ASTSETTYPE
add esp, 12
.Lt_00C8:
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
.Lt_00C3:
cmp dword ptr [ebp+8], 0
jne .Lt_00CA
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_00BC
.Lt_00CA:
.Lt_00C9:
cmp dword ptr [ebp+12], 0
jne .Lt_00CC
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00BC
.Lt_00CC:
.Lt_00CB:
cmp dword ptr [ebp+16], 0
jne .Lt_00CE
.Lt_00CF:
push 0
push 0
push 15
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_00CD
.Lt_00CE:
cmp dword ptr [ebp+16], 1
jne .Lt_00D0
.Lt_00D1:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 15
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_00CD
.Lt_00D0:
cmp dword ptr [ebp+16], 2
jne .Lt_00D2
.Lt_00D3:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 15
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_00D2:
.Lt_00CD:
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
.Lt_00BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADLINK
_ASTLOADLINK:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D4:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 1
jne .Lt_00D8
.Lt_00D9:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00D6
.Lt_00D8:
cmp dword ptr [ebp-16], 2
jne .Lt_00DA
.Lt_00DB:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .Lt_00D6
.Lt_00DA:
mov dword ptr [ebp-4], 0
.Lt_00DC:
.Lt_00D6:
.Lt_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWLOAD
_ASTNEWLOAD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DD:
push 0
push dword ptr [ebp+12]
push 1
call _ASTNEWNODE
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
.Lt_00DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADLOAD
_ASTLOADLOAD:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_00E2
mov dword ptr [ebp-4], 0
jmp .Lt_00E0
.Lt_00E2:
.Lt_00E1:
push dword ptr [ebp-8]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [_AST+136], 0
je .Lt_00E4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_00E6
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call dword ptr [_IR+228]
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call dword ptr [_IR+116]
add esp, 8
jmp .Lt_00E5
.Lt_00E6:
push dword ptr [ebp-12]
call dword ptr [_IR+112]
add esp, 4
.Lt_00E5:
.Lt_00E4:
.Lt_00E3:
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00E0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWFIELD
_ASTNEWFIELD:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+112], 0
jle .Lt_00EA
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 1
jne .Lt_00EC
mov eax, dword ptr [ebp-12]
and eax, -512
or eax, 8
mov dword ptr [ebp-12], eax
jmp .Lt_00EB
.Lt_00EC:
mov eax, dword ptr [ebp-12]
and eax, -512
or eax, 9
mov dword ptr [ebp-12], eax
.Lt_00EB:
mov dword ptr [ebp-16], 0
inc dword ptr [_AST+144]
.Lt_00EA:
.Lt_00E9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 19
jne .Lt_00EE
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
jmp .Lt_00E8
.Lt_00EE:
.Lt_00ED:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 19
call _ASTNEWNODE
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
.Lt_00E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTFORGETBITFIELDS
_ASTFORGETBITFIELDS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00EF:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_AST+144]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00F2
jmp .Lt_00F0
.Lt_00F2:
.Lt_00F1:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 19
jne .Lt_00F3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+112]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_00F7
.Lt_00F3:
mov dword ptr [ebp-4], 0
.Lt_00F7:
cmp dword ptr [ebp-4], 0
je .Lt_00F6
dec dword ptr [_AST+144]
.Lt_00F6:
.Lt_00F5:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _ASTFORGETBITFIELDS
add esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call _ASTFORGETBITFIELDS
add esp, 4
.Lt_00F0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTUPDATEBITFIELDS
_ASTUPDATEBITFIELDS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0117:
cmp dword ptr [_AST+144], 0
jg .Lt_011A
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_011A:
.Lt_0119:
cmp dword ptr [ebp+8], 0
jne .Lt_011C
mov dword ptr [ebp-4], 0
jmp .Lt_0118
.Lt_011C:
.Lt_011B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
jne .Lt_011F
.Lt_0120:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 19
jne .Lt_0122
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+112], 0
jle .Lt_0124
dec dword ptr [_AST+144]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELNODE
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
call _ASTSETBITFIELD
add esp, 12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
.Lt_0124:
.Lt_0123:
.Lt_0122:
.Lt_0121:
jmp .Lt_011D
.Lt_011F:
cmp dword ptr [ebp-8], 19
jne .Lt_0125
.Lt_0126:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp dword ptr [ecx+112], 0
jle .Lt_0128
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _ASTACCESSBITFIELD
add esp, 8
mov dword ptr [ebp-12], eax
dec dword ptr [_AST+144]
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTUPDATEBITFIELDS
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0128:
.Lt_0127:
.Lt_0125:
.Lt_011D:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTUPDATEBITFIELDS
add esp, 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+56], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTUPDATEBITFIELDS
add esp, 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0118:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADFIELD
_ASTLOADFIELD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0129:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
cmp dword ptr [_AST+136], 0
je .Lt_012C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_012C:
.Lt_012B:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_012A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWSTACK
_ASTNEWSTACK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_012D:
cmp dword ptr [ebp+12], 0
jne .Lt_0130
mov dword ptr [ebp-4], 0
jmp .Lt_012E
.Lt_0130:
.Lt_012F:
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 11
call _ASTNEWNODE
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
.Lt_012E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADSTACK
_ASTLOADSTACK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0131:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0134
mov dword ptr [ebp-4], 0
jmp .Lt_0132
.Lt_0134:
.Lt_0133:
push dword ptr [ebp-8]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [_AST+136], 0
je .Lt_0136
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [_IR+120]
add esp, 8
.Lt_0136:
.Lt_0135:
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0132:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDUMPOPTOSTR
_ASTDUMPOPTOSTR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01E3:
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
je .Lt_01E6
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push 4
push offset _Lt_01E7
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01E4
.Lt_01E6:
.Lt_01E5:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [_DBG_ASTNODEOPNAMES+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
.Lt_01E4:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDUMPTREE
_ASTDUMPTREE:
push ebp
mov ebp, esp
.Lt_0272:
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTDUMPTREEEX
add esp, 16
.Lt_0273:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDUMPLIST
_ASTDUMPLIST:
push ebp
mov ebp, esp
push ebx
.Lt_0274:
.Lt_0276:
cmp dword ptr [ebp+8], 0
je .Lt_0277
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTDUMPTREE
add esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp+8], ebx
jmp .Lt_0276
.Lt_0277:
.Lt_0275:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__astznodezmisc:
.Lt_0002:
.Lt_0003:
ret
.balign 16
__ZN11TSTRSETITEMaSERKS_:
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
call _fb_StrAssign
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
_ASTASMAPPEND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0091:
lea eax, [_AST+200]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .Lt_0094
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.Lt_0094:
.Lt_0093:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0092:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__Z13HMAKEUINTMASKm:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FB:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 64
jb .Lt_00FE
mov dword ptr [ebp-12], 4294967295
mov dword ptr [ebp-8], 4294967295
jmp .Lt_00FD
.Lt_00FE:
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
jz .Lt_0278
mov edx, eax
xor eax, eax
.Lt_0278:
mov [esp+4], edx
mov [esp+0], eax
pop ebx
pop eax
add ebx, 4294967295
adc eax, 4294967295
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
.Lt_00FD:
call _FBIS64BIT
not eax
test eax, eax
je .Lt_0100
mov eax, dword ptr [ebp-12]
mov ecx, eax
mov ebx, 0
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-8], ebx
.Lt_0100:
.Lt_00FF:
push 0
push 9
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__Z13HMAKEUINTMASKmm:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0101:
push 1
push 0
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, 0
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
call __Z13HMAKEUINTMASKm
add esp, 4
push eax
push 41
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0102:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ASTSETBITFIELD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0103:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .Lt_0106
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, -512
or eax, 9
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 0
jmp .Lt_0105
.Lt_0106:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx+8], eax
.Lt_0105:
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
mov dword ptr [ebp+12], eax
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+108]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call __Z13HMAKEUINTMASKmm
add esp, 8
push eax
push 52
call _ASTNEWUOP
add esp, 8
push eax
push dword ptr [ebp+12]
push 34
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .Lt_0108
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 5
jne .Lt_0109
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_0279
.Lt_0109:
mov dword ptr [ebp-8], -1
.Lt_0279:
cmp dword ptr [ebp-8], 0
je .Lt_010C
push 0
push 0
push dword ptr [ebp+16]
push 0
push 1
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_010C:
.Lt_010B:
push 0
push 0
push dword ptr [ebp+16]
push 0
push 9
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+108]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call __Z13HMAKEUINTMASKmm
add esp, 8
push eax
push dword ptr [ebp+16]
push 34
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
jmp .Lt_0107
.Lt_0108:
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call __Z13HMAKEUINTMASKm
add esp, 4
push eax
push dword ptr [ebp+16]
push 34
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+108], 0
jle .Lt_010E
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 41
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_010E:
.Lt_010D:
.Lt_0107:
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 35
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0104:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ASTACCESSBITFIELD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_010F:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .Lt_0112
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, -512
or eax, 2
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 0
mov dword ptr [ebp-8], -1
jmp .Lt_0111
.Lt_0112:
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
.Lt_0111:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+108], 0
jle .Lt_0114
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
push 42
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
.Lt_0114:
.Lt_0113:
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call __Z13HMAKEUINTMASKm
add esp, 4
push eax
push dword ptr [ebp+12]
push 34
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
je .Lt_0116
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
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
.Lt_0116:
.Lt_0115:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_0110:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_DBG_ASTOUTPUT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0137:
cmp dword ptr [ebp+16], -1
jne .Lt_013A
.Lt_013B:
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov ebx, dword ptr [ebp+12]
sub ebx, eax
mov dword ptr [ebp-4], ebx
jmp .Lt_0139
.Lt_013A:
cmp dword ptr [ebp+16], 1
jne .Lt_013C
.Lt_013D:
mov ebx, dword ptr [ebp+12]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_0139
.Lt_013C:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.Lt_013E:
.Lt_0139:
cmp dword ptr [ebp+20], 0
jge .Lt_0140
push 0
mov ebx, dword ptr [ebp-4]
dec ebx
push ebx
call _fb_SPACE
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push dword ptr [ebp+8]
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_013F
.Lt_0140:
push 0
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
push 0
mov eax, dword ptr [ebp-4]
dec eax
push -1
push dword ptr [ebp+20]
mov ebx, eax
call _fb_IntToStr
add esp, 4
push eax
call _fb_StrLen
add esp, 8
sub ebx, eax
push ebx
call _fb_SPACE
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push dword ptr [ebp+8]
push 0
call _fb_PrintString
add esp, 12
.Lt_013F:
.Lt_0138:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HASTNODECLASSTOSTR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01EB:
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
je .Lt_01EE
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push 7
push offset _Lt_01EF
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01EC
.Lt_01EE:
.Lt_01ED:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [_DBG_ASTNODECLASSNAMES+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
.Lt_01EC:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSYMBTOSTR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01F1:
cmp dword ptr [ebp+8], 0
jne .Lt_01F4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01F2
.Lt_01F4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_01F6
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01F2
jmp .Lt_01F5
.Lt_01F6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_01F7
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
.Lt_01F7:
.Lt_01F5:
.Lt_01F2:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HASTNODETYPETOSTR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01F8:
cmp dword ptr [ebp+8], 0
jne .Lt_01FB
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01F9
.Lt_01FB:
push 0
push -1
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBTYPETOSTR
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
.Lt_01F9:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HASTNODETOSTR:
push ebp
mov ebp, esp
sub esp, 104
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01FC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_01FF
.Lt_0201:
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call _HSYMBTOSTR
add esp, 4
push eax
push -1
push 6
push offset _Lt_0202
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _ASTDUMPOPTOSTR
add esp, 4
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_0205:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _ASTDUMPOPTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_0206:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0207
mov dword ptr [ebp-20], 24
jmp .Lt_027D
.Lt_0207:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_027D:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_020A
push 0
push -1
push -1
push 2
push offset _Lt_020C
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset _Lt_020B
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call _fb_DoubleToStr
add esp, 8
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
.Lt_020A:
.Lt_0209:
push 0
push -1
push -1
push 2
push offset _Lt_020C
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset _Lt_020B
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call _fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_0213:
push 0
push -1
push -1
push 2
push offset _Lt_020C
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset _Lt_020B
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push 3
push offset _Lt_0218
push -1
push 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0216
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-20], eax
jmp .Lt_027E
.Lt_0216:
mov eax, offset _Lt_0215
mov dword ptr [ebp-20], eax
.Lt_027E:
push dword ptr [ebp-20]
push 6
push offset _Lt_0214
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_021E:
push 0
push -1
push -1
push 2
push offset _Lt_020C
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset _Lt_020B
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push 3
push offset _Lt_0218
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 8
push offset _Lt_021F
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_0225:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0227
push 0
push -1
push 3
push offset _Lt_0218
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 7
push offset _Lt_0228
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
.Lt_0227:
.Lt_0226:
push 0
push -1
push -1
push 2
push offset _Lt_020C
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset _Lt_020B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 5
push offset _Lt_015A
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_022E:
push 0
push -1
push 3
push offset _Lt_0218
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 7
push offset _Lt_022F
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_0232:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSYMBTOSTR
add esp, 4
push eax
push 8
push offset _Lt_0233
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_0235:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _HSYMBTOSTR
add esp, 4
push eax
push -1
push 2
push offset _Lt_0237
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _ASTDUMPOPTOSTR
add esp, 4
push eax
push 9
push offset _Lt_0236
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_023B:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSYMBTOSTR
add esp, 4
push eax
push 13
push offset _Lt_023C
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_023E:
push 0
push -1
push 3
push offset _Lt_0218
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call _fb_LongintToStr
add esp, 8
push eax
push 24
push offset _Lt_023F
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_0242:
push 0
push -1
push -1
push 2
push offset _Lt_020C
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset _Lt_020B
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push 2
push offset _Lt_0237
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _ASTDUMPOPTOSTR
add esp, 4
push eax
push 8
push offset _Lt_0243
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_0249:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-104], ebx
cmp dword ptr [ebp-104], 1
jne .Lt_024C
.Lt_024D:
push 0
push 2
push offset _Lt_024E
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_024A
.Lt_024C:
cmp dword ptr [ebp-104], 2
jne .Lt_024F
.Lt_0250:
push 0
push 2
push offset _Lt_0251
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_024F:
.Lt_024A:
push 0
push -1
push -1
lea ebx, [ebp-28]
push ebx
push -1
push 2
push offset _Lt_018C
push -1
push -1
push 2
push offset _Lt_020C
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset _Lt_020B
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HASTNODECLASSTOSTR
add esp, 4
push eax
push 2
push offset _Lt_018D
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_01FD
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_01FE
.Lt_0258:
push 0
push -1
push -1
push 2
push offset _Lt_020C
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR
add esp, 4
push eax
push 3
push offset _Lt_020B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HASTNODECLASSTOSTR
add esp, 4
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_01FD
jmp .Lt_01FE
.Lt_01FF:
mov eax, dword ptr [ebp-16]
add eax, 4294967293
cmp eax, 41
ja .Lt_0258
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_025C+eax*4-12]
_.LT_025C:
.int .Lt_0201
.int .Lt_0205
.int .Lt_0258
.int .Lt_0258
.int .Lt_0235
.int .Lt_0258
.int .Lt_022E
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0249
.int .Lt_0206
.int .Lt_0213
.int .Lt_0258
.int .Lt_021E
.int .Lt_0258
.int .Lt_0232
.int .Lt_0258
.int .Lt_0258
.int .Lt_0225
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_023B
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_023E
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0258
.int .Lt_0242
.Lt_01FE:
.Lt_01FD:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ASTDUMPTREEEX:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_025D:
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
je .Lt_0260
mov dword ptr [ebp+12], 40
.Lt_0260:
.Lt_025F:
cmp dword ptr [ebp+8], 0
jne .Lt_0262
push 1
push 6
push offset _Lt_0215
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_025E
.Lt_0262:
.Lt_0261:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push dword ptr [ebp+8]
call _HASTNODETOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-12]
push eax
call _DBG_ASTOUTPUT
add esp, 16
inc dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_0264
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0266
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
push offset _Lt_0267
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DBG_ASTOUTPUT
add esp, 16
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0265
.Lt_0266:
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
push offset _Lt_018E
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DBG_ASTOUTPUT
add esp, 16
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0265:
jmp .Lt_0263
.Lt_0264:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_026A
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
push offset _Lt_026B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DBG_ASTOUTPUT
add esp, 16
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0263
.Lt_026A:
push -1
push 0
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _DBG_ASTOUTPUT
add esp, 16
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0263:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_026F
push dword ptr [ebp+20]
push -1
mov eax, dword ptr [ebp+12]
add eax, -2
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDUMPTREEEX
add esp, 16
.Lt_026F:
.Lt_026E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0271
push dword ptr [ebp+20]
push 1
mov eax, dword ptr [ebp+12]
add eax, 2
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTDUMPTREEEX
add esp, 16
.Lt_0271:
.Lt_0270:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_025E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_Lt_007C,36

.section .data
.balign 4
_DBG_ASTNODECLASSNAMES:
.int _Lt_0142
.int _Lt_0143
.int _Lt_0144
.int _Lt_0145
.int _Lt_0146
.int _Lt_0147
.int _Lt_0148
.int _Lt_0149
.int _Lt_014A
.int _Lt_014B
.int _Lt_014C
.int _Lt_014D
.int _Lt_014E
.int _Lt_014F
.int _Lt_0150
.int _Lt_0151
.int _Lt_0152
.int _Lt_0153
.int _Lt_0154
.int _Lt_0155
.int _Lt_0156
.int _Lt_0157
.int _Lt_0158
.int _Lt_0159
.int _Lt_015A
.int _Lt_015B
.int _Lt_015C
.int _Lt_015D
.int _Lt_015E
.int _Lt_015F
.int _Lt_0160
.int _Lt_0161
.int _Lt_0162
.int _Lt_0163
.int _Lt_0164
.int _Lt_0165
.int _Lt_0166
.int _Lt_0167
.int _Lt_0168
.int _Lt_0169
.int _Lt_016A
.int _Lt_016B
.int _Lt_016C
.int _Lt_016D
.int _Lt_016E
.balign 4
_Lt_0142:	.ascii	"NOP\0"
.balign 4
_Lt_0143:	.ascii	"LOAD\0"
.balign 4
_Lt_0144:	.ascii	"ASSIGN\0"
.balign 4
_Lt_0145:	.ascii	"BOP\0"
.balign 4
_Lt_0146:	.ascii	"UOP\0"
.balign 4
_Lt_0147:	.ascii	"CONV\0"
.balign 4
_Lt_0148:	.ascii	"ADDROF\0"
.balign 4
_Lt_0149:	.ascii	"BRANCH\0"
.balign 4
_Lt_014A:	.ascii	"JMPTB\0"
.balign 4
_Lt_014B:	.ascii	"CALL\0"
.balign 4
_Lt_014C:	.ascii	"CALLCTOR\0"
.balign 4
_Lt_014D:	.ascii	"STACK\0"
.balign 4
_Lt_014E:	.ascii	"MEM\0"
.balign 4
_Lt_014F:	.ascii	"LOOP\0"
.balign 4
_Lt_0150:	.ascii	"COMP\0"
.balign 4
_Lt_0151:	.ascii	"LINK\0"
.balign 4
_Lt_0152:	.ascii	"CONST\0"
.balign 4
_Lt_0153:	.ascii	"VAR\0"
.balign 4
_Lt_0154:	.ascii	"IDX\0"
.balign 4
_Lt_0155:	.ascii	"FIELD\0"
.balign 4
_Lt_0156:	.ascii	"DEREF\0"
.balign 4
_Lt_0157:	.ascii	"LABEL\0"
.balign 4
_Lt_0158:	.ascii	"ARG\0"
.balign 4
_Lt_0159:	.ascii	"OFFSET\0"
.balign 4
_Lt_015A:	.ascii	"DECL\0"
.balign 4
_Lt_015B:	.ascii	"NIDXARRAY\0"
.balign 4
_Lt_015C:	.ascii	"IIF\0"
.balign 4
_Lt_015D:	.ascii	"LIT\0"
.balign 4
_Lt_015E:	.ascii	"ASM\0"
.balign 4
_Lt_015F:	.ascii	"DATASTMT\0"
.balign 4
_Lt_0160:	.ascii	"DBG\0"
.balign 4
_Lt_0161:	.ascii	"BOUNDCHK\0"
.balign 4
_Lt_0162:	.ascii	"PTRCHK\0"
.balign 4
_Lt_0163:	.ascii	"SCOPEBEGIN\0"
.balign 4
_Lt_0164:	.ascii	"SCOPEEND\0"
.balign 4
_Lt_0165:	.ascii	"SCOPE_BREAK\0"
.balign 4
_Lt_0166:	.ascii	"TYPEINI\0"
.balign 4
_Lt_0167:	.ascii	"TYPEINI_PAD\0"
.balign 4
_Lt_0168:	.ascii	"TYPEINI_ASSIGN\0"
.balign 4
_Lt_0169:	.ascii	"TYPEINI_CTORCALL\0"
.balign 4
_Lt_016A:	.ascii	"TYPEINI_CTORLIST\0"
.balign 4
_Lt_016B:	.ascii	"TYPEINI_SCOPEINI\0"
.balign 4
_Lt_016C:	.ascii	"TYPEINI_SCOPEEND\0"
.balign 4
_Lt_016D:	.ascii	"PROC\0"
.balign 4
_Lt_016E:	.ascii	"MACRO\0"
.balign 4
_DBG_ASTNODEOPNAMES:
.int _Lt_0170
.int _Lt_0171
.int _Lt_0172
.int _Lt_0173
.int _Lt_0174
.int _Lt_0175
.int _Lt_0176
.int _Lt_0177
.int _Lt_0178
.int _Lt_0179
.int _Lt_017A
.int _Lt_017B
.int _Lt_017C
.int _Lt_017D
.int _Lt_017E
.int _Lt_017F
.int _Lt_0180
.int _Lt_0181
.int _Lt_0182
.int _Lt_0183
.int _Lt_0184
.int _Lt_0185
.int _Lt_0148
.int _Lt_0186
.int _Lt_0187
.int _Lt_0188
.int _Lt_0189
.int _Lt_018A
.int _Lt_018B
.int _Lt_018C
.int _Lt_018D
.int _Lt_018E
.int _Lt_018F
.int _Lt_0190
.int _Lt_0191
.int _Lt_0192
.int _Lt_0193
.int _Lt_0194
.int _Lt_0195
.int _Lt_0196
.int _Lt_0197
.int _Lt_0198
.int _Lt_0199
.int _Lt_019A
.int _Lt_019B
.int _Lt_019C
.int _Lt_019D
.int _Lt_019E
.int _Lt_019F
.int _Lt_01A0
.int _Lt_01A1
.int _Lt_01A2
.int _Lt_01A3
.int _Lt_018B
.int _Lt_01A4
.int _Lt_01A5
.int _Lt_01A6
.int _Lt_01A7
.int _Lt_01A8
.int _Lt_01A9
.int _Lt_01AA
.int _Lt_01AB
.int _Lt_01AC
.int _Lt_01AD
.int _Lt_01AE
.int _Lt_01AF
.int _Lt_01B0
.int _Lt_01B1
.int _Lt_01B2
.int _Lt_01B3
.int _Lt_01B4
.int _Lt_01B5
.int _Lt_01B6
.int _Lt_01B7
.int _Lt_01B8
.int _Lt_01B9
.int _Lt_0156
.int _Lt_01BA
.int _Lt_01BB
.int _Lt_01BC
.int _Lt_01BD
.int _Lt_01BE
.int _Lt_01BF
.int _Lt_01C0
.int _Lt_01C1
.int _Lt_0143
.int _Lt_01C2
.int _Lt_01C3
.int _Lt_01C4
.int _Lt_01C5
.int _Lt_01C6
.int _Lt_01C7
.int _Lt_01C8
.int _Lt_01C9
.int _Lt_01CA
.int _Lt_01CB
.int _Lt_01CC
.int _Lt_01CD
.int _Lt_01CE
.int _Lt_014B
.int _Lt_0157
.int _Lt_01CF
.int _Lt_01D0
.int _Lt_01D1
.int _Lt_01D2
.int _Lt_01D3
.int _Lt_01D4
.int _Lt_01D5
.int _Lt_01D6
.int _Lt_01D7
.int _Lt_01D8
.int _Lt_01D9
.int _Lt_01DA
.int _Lt_01DB
.int _Lt_01DC
.int _Lt_01DD
.int _Lt_01DE
.int _Lt_01DF
.int _Lt_01E0
.int _Lt_01E1
.int _Lt_01E2
.balign 4
_Lt_0170:	.ascii	"=\0"
.balign 4
_Lt_0171:	.ascii	"+=\0"
.balign 4
_Lt_0172:	.ascii	"-=\0"
.balign 4
_Lt_0173:	.ascii	"*=\0"
.balign 4
_Lt_0174:	.ascii	"/=\0"
.balign 4
_Lt_0175:	.ascii	"\\=\0"
.balign 4
_Lt_0176:	.ascii	"MOD=\0"
.balign 4
_Lt_0177:	.ascii	"AND=\0"
.balign 4
_Lt_0178:	.ascii	"OR=\0"
.balign 4
_Lt_0179:	.ascii	"ANDALSO=\0"
.balign 4
_Lt_017A:	.ascii	"ORELSE=\0"
.balign 4
_Lt_017B:	.ascii	"XOR=\0"
.balign 4
_Lt_017C:	.ascii	"EQV=\0"
.balign 4
_Lt_017D:	.ascii	"IMP=\0"
.balign 4
_Lt_017E:	.ascii	"SHL=\0"
.balign 4
_Lt_017F:	.ascii	"SHR=\0"
.balign 4
_Lt_0180:	.ascii	"^=\0"
.balign 4
_Lt_0181:	.ascii	"&=\0"
.balign 4
_Lt_0182:	.ascii	"new=\0"
.balign 4
_Lt_0183:	.ascii	"new[]=\0"
.balign 4
_Lt_0184:	.ascii	"del=\0"
.balign 4
_Lt_0185:	.ascii	"del[]=\0"
.balign 4
_Lt_0186:	.ascii	"PTRINDEX\0"
.balign 4
_Lt_0187:	.ascii	"FOR\0"
.balign 4
_Lt_0188:	.ascii	"STEP\0"
.balign 4
_Lt_0189:	.ascii	"NEXT\0"
.balign 4
_Lt_018A:	.ascii	"CAST\0"
.balign 4
_Lt_018B:	.ascii	"+\0"
.balign 4
_Lt_018C:	.ascii	"-\0"
.balign 4
_Lt_018D:	.ascii	"*\0"
.balign 4
_Lt_018E:	.ascii	"/\0"
.balign 4
_Lt_018F:	.ascii	"\\\0"
.balign 4
_Lt_0190:	.ascii	"MOD\0"
.balign 4
_Lt_0191:	.ascii	"AND\0"
.balign 4
_Lt_0192:	.ascii	"OR\0"
.balign 4
_Lt_0193:	.ascii	"ANDALSO\0"
.balign 4
_Lt_0194:	.ascii	"ORELSE\0"
.balign 4
_Lt_0195:	.ascii	"XOR\0"
.balign 4
_Lt_0196:	.ascii	"EQV\0"
.balign 4
_Lt_0197:	.ascii	"IMP\0"
.balign 4
_Lt_0198:	.ascii	"SHL\0"
.balign 4
_Lt_0199:	.ascii	"SHR\0"
.balign 4
_Lt_019A:	.ascii	"^\0"
.balign 4
_Lt_019B:	.ascii	"&\0"
.balign 4
_Lt_019C:	.ascii	"==\0"
.balign 4
_Lt_019D:	.ascii	">\0"
.balign 4
_Lt_019E:	.ascii	"<\0"
.balign 4
_Lt_019F:	.ascii	"<>\0"
.balign 4
_Lt_01A0:	.ascii	">=\0"
.balign 4
_Lt_01A1:	.ascii	"<=\0"
.balign 4
_Lt_01A2:	.ascii	"IS\0"
.balign 4
_Lt_01A3:	.ascii	"NOT\0"
.balign 4
_Lt_01A4:	.ascii	"NEG\0"
.balign 4
_Lt_01A5:	.ascii	"HADD\0"
.balign 4
_Lt_01A6:	.ascii	"ABS\0"
.balign 4
_Lt_01A7:	.ascii	"SGN\0"
.balign 4
_Lt_01A8:	.ascii	"SIN\0"
.balign 4
_Lt_01A9:	.ascii	"ASIN\0"
.balign 4
_Lt_01AA:	.ascii	"COS\0"
.balign 4
_Lt_01AB:	.ascii	"ACOS\0"
.balign 4
_Lt_01AC:	.ascii	"TAN\0"
.balign 4
_Lt_01AD:	.ascii	"ATAN\0"
.balign 4
_Lt_01AE:	.ascii	"ATAN2\0"
.balign 4
_Lt_01AF:	.ascii	"SQRT\0"
.balign 4
_Lt_01B0:	.ascii	"RSQRT\0"
.balign 4
_Lt_01B1:	.ascii	"RCP\0"
.balign 4
_Lt_01B2:	.ascii	"LOG\0"
.balign 4
_Lt_01B3:	.ascii	"EXP\0"
.balign 4
_Lt_01B4:	.ascii	"FLOOR\0"
.balign 4
_Lt_01B5:	.ascii	"FIX\0"
.balign 4
_Lt_01B6:	.ascii	"FRAC\0"
.balign 4
_Lt_01B7:	.ascii	"LEN\0"
.balign 4
_Lt_01B8:	.ascii	"CONVFD2FS\0"
.balign 4
_Lt_01B9:	.ascii	"SWZREP\0"
.balign 4
_Lt_01BA:	.ascii	"FLDDEREF\0"
.balign 4
_Lt_01BB:	.ascii	"NEW\0"
.balign 4
_Lt_01BC:	.ascii	"NEW_VEC\0"
.balign 4
_Lt_01BD:	.ascii	"DEL\0"
.balign 4
_Lt_01BE:	.ascii	"DEL_VEC\0"
.balign 4
_Lt_01BF:	.ascii	"TOINT\0"
.balign 4
_Lt_01C0:	.ascii	"TOFLT\0"
.balign 4
_Lt_01C1:	.ascii	"TOBOOL\0"
.balign 4
_Lt_01C2:	.ascii	"LOADRES\0"
.balign 4
_Lt_01C3:	.ascii	"SPILLREGS\0"
.balign 4
_Lt_01C4:	.ascii	"PUSH\0"
.balign 4
_Lt_01C5:	.ascii	"POP\0"
.balign 4
_Lt_01C6:	.ascii	"PUSHUDT\0"
.balign 4
_Lt_01C7:	.ascii	"STACKALIGN\0"
.balign 4
_Lt_01C8:	.ascii	"JEQ\0"
.balign 4
_Lt_01C9:	.ascii	"JGT\0"
.balign 4
_Lt_01CA:	.ascii	"JLT\0"
.balign 4
_Lt_01CB:	.ascii	"JNE\0"
.balign 4
_Lt_01CC:	.ascii	"JGE\0"
.balign 4
_Lt_01CD:	.ascii	"JLE\0"
.balign 4
_Lt_01CE:	.ascii	"JMP\0"
.balign 4
_Lt_01CF:	.ascii	"RET\0"
.balign 4
_Lt_01D0:	.ascii	"CALLFUNCT\0"
.balign 4
_Lt_01D1:	.ascii	"CALLPTR\0"
.balign 4
_Lt_01D2:	.ascii	"JUMPPTR\0"
.balign 4
_Lt_01D3:	.ascii	"MEMMOVE\0"
.balign 4
_Lt_01D4:	.ascii	"MEMSWAP\0"
.balign 4
_Lt_01D5:	.ascii	"MEMCLEAR\0"
.balign 4
_Lt_01D6:	.ascii	"STKCLEAR\0"
.balign 4
_Lt_01D7:	.ascii	"VA_START\0"
.balign 4
_Lt_01D8:	.ascii	"VA_END\0"
.balign 4
_Lt_01D9:	.ascii	"VA_COPY\0"
.balign 4
_Lt_01DA:	.ascii	"VA_ARG\0"
.balign 4
_Lt_01DB:	.ascii	"DBG_LINEINI\0"
.balign 4
_Lt_01DC:	.ascii	"DBG_LINEEND\0"
.balign 4
_Lt_01DD:	.ascii	"DBG_SCOPEINI\0"
.balign 4
_Lt_01DE:	.ascii	"BDG_SCOPEEND\0"
.balign 4
_Lt_01DF:	.ascii	"LIT_COMMENT\0"
.balign 4
_Lt_01E0:	.ascii	"LIT_ASM\0"
.balign 4
_Lt_01E1:	.ascii	"TOSIGNED\0"
.balign 4
_Lt_01E2:	.ascii	"TOUNSIGNED\0"
.balign 4
_Lt_01E7:	.ascii	"OP:\0"
.balign 4
_Lt_01EF:	.ascii	"CLASS:\0"
.balign 4
_Lt_0202:	.ascii	" =-= \0"
.balign 4
_Lt_020B:	.ascii	" (\0"
.balign 4
_Lt_020C:	.ascii	")\0"
.balign 4
_Lt_0214:	.ascii	"VAR( \0"
.balign 4
_Lt_0215:	.ascii	"<NULL>\0"
.balign 4
_Lt_0218:	.ascii	" )\0"
.balign 4
_Lt_021F:	.ascii	"FIELD( \0"
.balign 4
_Lt_0228:	.ascii	"DECL( \0"
.balign 4
_Lt_022F:	.ascii	"CALL( \0"
.balign 4
_Lt_0233:	.ascii	"LABEL: \0"
.balign 4
_Lt_0236:	.ascii	"BRANCH: \0"
.balign 4
_Lt_0237:	.ascii	" \0"
.balign 4
_Lt_023C:	.ascii	"SCOPEBEGIN: \0"
.balign 4
_Lt_023F:	.ascii	"TYPEINI_ASSIGN( offset=\0"
.balign 4
_Lt_0243:	.ascii	"MACRO: \0"
.balign 4
_Lt_024E:	.ascii	"L\0"
.balign 4
_Lt_0251:	.ascii	"R\0"
.balign 4
_Lt_0267:	.ascii	"/ \\\0"
.balign 4
_Lt_026B:	.ascii	"  \\\0"

.section .ctors
.int _fb_ctor__astznodezmisc
