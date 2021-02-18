	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTMISCINIT@0
_ASTMISCINIT@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_005F:
push 6
push 12
push 64
lea eax, [_AST+148]
push eax
call _LISTINIT@16
lea eax, [_AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+8], 0
mov dword ptr [_AST+192], 0
mov dword ptr [_AST+196], -1
.Lt_0060:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTMISCEND@0
_ASTMISCEND@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0062:
lea eax, [_AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _free
add esp, 4
lea eax, [_AST+148]
push eax
call _LISTEND@4
.Lt_0063:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTISTREEEQUAL@8
_ASTISTREEEQUAL@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0065:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0068
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp+8], ebx
jne .Lt_006A
mov dword ptr [ebp-4], -1
.Lt_006A:
.Lt_0069:
jmp .Lt_0066
.Lt_0068:
.Lt_0067:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp dword ptr [ebx], ecx
je .Lt_006C
jmp .Lt_0066
.Lt_006C:
.Lt_006B:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
cmp dword ptr [ecx+4], eax
je .Lt_006E
jmp .Lt_0066
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+8]
cmp dword ptr [eax+8], ebx
je .Lt_0070
jmp .Lt_0066
.Lt_0070:
.Lt_006F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_0072
.Lt_0074:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [eax+12], ecx
je .Lt_0076
jmp .Lt_0066
.Lt_0076:
.Lt_0075:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
cmp dword ptr [ecx+28], ebx
jne .Lt_00B1
cmp dword ptr [ecx+24], esi
je .Lt_0078
.Lt_00B1:
jmp .Lt_0066
.Lt_0078:
.Lt_0077:
jmp .Lt_0071
.Lt_0079:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [esi+12], ecx
je .Lt_007B
jmp .Lt_0066
.Lt_007B:
.Lt_007A:
jmp .Lt_0071
.Lt_007C:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+4]
and esi, 480
je .Lt_007D
mov dword ptr [ebp-12], 24
jmp .Lt_00AE
.Lt_007D:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_00AE:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov esi, dword ptr [_SYMB_DTYPETB+ecx]
mov dword ptr [ebp-16], esi
cmp dword ptr [ebp-16], 1
jne .Lt_0081
.Lt_0082:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
fld qword ptr [esi+24]
fcomp qword ptr [ecx+24]
fnstsw ax
test ah, 0b01000000
jnz .Lt_0084
jmp .Lt_0066
.Lt_0084:
.Lt_0083:
jmp .Lt_007F
.Lt_0081:
cmp dword ptr [ebp-16], 0
jne .Lt_0085
.Lt_0086:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [esi+24]
mov ebx, dword ptr [esi+28]
cmp dword ptr [ecx+28], ebx
jne .Lt_00B2
cmp dword ptr [ecx+24], eax
je .Lt_0088
.Lt_00B2:
jmp .Lt_0066
.Lt_0088:
.Lt_0087:
.Lt_0085:
.Lt_007F:
jmp .Lt_0071
.Lt_0089:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
cmp dword ptr [eax+28], ecx
jne .Lt_00B3
cmp dword ptr [eax+24], esi
je .Lt_008B
.Lt_00B3:
jmp .Lt_0066
.Lt_008B:
.Lt_008A:
jmp .Lt_0071
.Lt_008C:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+24]
mov eax, dword ptr [ecx+28]
cmp dword ptr [esi+28], eax
jne .Lt_00B4
cmp dword ptr [esi+24], ebx
je .Lt_008E
.Lt_00B4:
jmp .Lt_0066
.Lt_008E:
.Lt_008D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+32]
cmp dword ptr [ebx+32], esi
je .Lt_0090
jmp .Lt_0066
.Lt_0090:
.Lt_008F:
jmp .Lt_0071
.Lt_0091:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+24]
cmp dword ptr [esi+24], eax
je .Lt_0093
jmp .Lt_0066
.Lt_0093:
.Lt_0092:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+28]
cmp dword ptr [eax+28], ebx
je .Lt_0095
jmp .Lt_0066
.Lt_0095:
.Lt_0094:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+32]
cmp dword ptr [ebx+32], esi
je .Lt_0097
jmp .Lt_0066
.Lt_0097:
.Lt_0096:
jmp .Lt_0071
.Lt_0098:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+24]
cmp dword ptr [esi+24], eax
je .Lt_009A
jmp .Lt_0066
.Lt_009A:
.Lt_0099:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+28]
cmp dword ptr [eax+28], ebx
je .Lt_009C
jmp .Lt_0066
.Lt_009C:
.Lt_009B:
jmp .Lt_0071
.Lt_009D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+12]
cmp dword ptr [ebx+12], esi
je .Lt_009F
jmp .Lt_0066
.Lt_009F:
.Lt_009E:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+24]
cmp dword ptr [esi+24], eax
je .Lt_00A1
jmp .Lt_0066
.Lt_00A1:
.Lt_00A0:
jmp .Lt_0071
.Lt_00A2:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+12]
cmp dword ptr [eax+12], ebx
je .Lt_00A4
jmp .Lt_0066
.Lt_00A4:
.Lt_00A3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
mov esi, dword ptr [eax+28]
cmp dword ptr [ebx+28], esi
jne .Lt_00B5
cmp dword ptr [ebx+24], ecx
je .Lt_00A6
.Lt_00B5:
jmp .Lt_0066
.Lt_00A6:
.Lt_00A5:
jmp .Lt_0071
.Lt_00A7:
jmp .Lt_0071
.Lt_00A8:
jmp .Lt_0066
jmp .Lt_0071
.Lt_0072:
mov ecx, dword ptr [ebp-8]
add ecx, 4294967295
cmp ecx, 22
ja .Lt_0071
mov ecx, dword ptr [ebp-8]
jmp dword ptr [_.LT_00A9+ecx*4-4]
_.LT_00A9:
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_0091
.int .Lt_0098
.int .Lt_00A7
.int .Lt_009D
.int .Lt_00A8
.int .Lt_0071
.int .Lt_00A8
.int .Lt_0071
.int .Lt_0071
.int .Lt_0071
.int .Lt_0071
.int .Lt_0071
.int .Lt_00A8
.int .Lt_007C
.int .Lt_0074
.int .Lt_008C
.int .Lt_0079
.int .Lt_0089
.int .Lt_0071
.int .Lt_0071
.int .Lt_00A2
.Lt_0071:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+64]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
call _ASTISTREEEQUAL@8
test eax, eax
jne .Lt_00AB
jmp .Lt_0066
.Lt_00AB:
.Lt_00AA:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+68]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTISTREEEQUAL@8
test eax, eax
jne .Lt_00AD
jmp .Lt_0066
.Lt_00AD:
.Lt_00AC:
mov dword ptr [ebp-4], -1
.Lt_0066:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTISEQUALPARAMINIT@8
_ASTISEQUALPARAMINIT@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00B6:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00B9
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp+8], ebx
jne .Lt_00BB
mov dword ptr [ebp-4], -1
.Lt_00BB:
.Lt_00BA:
jmp .Lt_00B7
.Lt_00B9:
.Lt_00B8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp dword ptr [ebx], ecx
je .Lt_00BD
jmp .Lt_00B7
.Lt_00BD:
.Lt_00BC:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
cmp dword ptr [ecx+4], eax
je .Lt_00BF
jmp .Lt_00B7
.Lt_00BF:
.Lt_00BE:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+8]
cmp dword ptr [eax+8], ebx
je .Lt_00C1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
cmp eax, 22
jne .Lt_00C3
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _SYMBCALCPROCMATCH@12
test eax, eax
jne .Lt_00C6
jmp .Lt_00B7
.Lt_00C6:
.Lt_00C5:
jmp .Lt_00C2
.Lt_00C3:
jmp .Lt_00B7
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_00C8
.Lt_00CA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
cmp dword ptr [ebx+24], ecx
je .Lt_00CC
jmp .Lt_00B7
.Lt_00CC:
.Lt_00CB:
jmp .Lt_00C7
.Lt_00CD:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [ecx+12], eax
je .Lt_00CF
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 4096
test eax, eax
jne .Lt_00D1
jmp .Lt_00B7
.Lt_00D1:
.Lt_00D0:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 4096
test eax, eax
jne .Lt_00D3
jmp .Lt_00B7
.Lt_00D3:
.Lt_00D2:
.Lt_00CF:
.Lt_00CE:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+24]
mov ebx, dword ptr [ecx+28]
cmp dword ptr [eax+28], ebx
jne .Lt_0110
cmp dword ptr [eax+24], esi
je .Lt_00D5
.Lt_0110:
jmp .Lt_00B7
.Lt_00D5:
.Lt_00D4:
jmp .Lt_00C7
.Lt_00D6:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [esi+12], eax
je .Lt_00D8
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+12]
mov eax, dword ptr [esi+4]
and eax, 4096
test eax, eax
jne .Lt_00DA
jmp .Lt_00B7
.Lt_00DA:
.Lt_00D9:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+12]
mov eax, dword ptr [esi+4]
and eax, 4096
test eax, eax
jne .Lt_00DC
jmp .Lt_00B7
.Lt_00DC:
.Lt_00DB:
.Lt_00D8:
.Lt_00D7:
jmp .Lt_00C7
.Lt_00DD:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 480
je .Lt_00DE
mov dword ptr [ebp-12], 24
jmp .Lt_010D
.Lt_00DE:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_010D:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_00E1
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
fld qword ptr [eax+24]
fcomp qword ptr [esi+24]
fnstsw ax
test ah, 0b01000000
jnz .Lt_00E3
jmp .Lt_00B7
.Lt_00E3:
.Lt_00E2:
jmp .Lt_00E0
.Lt_00E1:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
cmp dword ptr [esi+28], ebx
jne .Lt_0111
cmp dword ptr [esi+24], ecx
je .Lt_00E5
.Lt_0111:
jmp .Lt_00B7
.Lt_00E5:
.Lt_00E4:
.Lt_00E0:
jmp .Lt_00C7
.Lt_00E6:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+24]
mov esi, dword ptr [ebx+28]
cmp dword ptr [ecx+28], esi
jne .Lt_0112
cmp dword ptr [ecx+24], eax
je .Lt_00E8
.Lt_0112:
jmp .Lt_00B7
.Lt_00E8:
.Lt_00E7:
jmp .Lt_00C7
.Lt_00E9:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+24]
mov ecx, dword ptr [esi+28]
cmp dword ptr [eax+28], ecx
jne .Lt_0113
cmp dword ptr [eax+24], ebx
je .Lt_00EB
.Lt_0113:
jmp .Lt_00B7
.Lt_00EB:
.Lt_00EA:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+32]
cmp dword ptr [ebx+32], eax
je .Lt_00ED
jmp .Lt_00B7
.Lt_00ED:
.Lt_00EC:
jmp .Lt_00C7
.Lt_00EE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+24]
cmp dword ptr [eax+24], ecx
je .Lt_00F0
jmp .Lt_00B7
.Lt_00F0:
.Lt_00EF:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
cmp dword ptr [ecx+28], ebx
je .Lt_00F2
jmp .Lt_00B7
.Lt_00F2:
.Lt_00F1:
jmp .Lt_00C7
.Lt_00F3:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+12]
cmp dword ptr [ebx+12], eax
je .Lt_00F5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 4096
test eax, eax
jne .Lt_00F7
jmp .Lt_00B7
.Lt_00F7:
.Lt_00F6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 4096
test eax, eax
jne .Lt_00F9
jmp .Lt_00B7
.Lt_00F9:
.Lt_00F8:
.Lt_00F5:
.Lt_00F4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+24]
cmp dword ptr [eax+24], ecx
je .Lt_00FB
jmp .Lt_00B7
.Lt_00FB:
.Lt_00FA:
jmp .Lt_00C7
.Lt_00FC:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ecx+12], ebx
je .Lt_00FE
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 4096
test ebx, ebx
jne .Lt_0100
jmp .Lt_00B7
.Lt_0100:
.Lt_00FF:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 4096
test ebx, ebx
jne .Lt_0102
jmp .Lt_00B7
.Lt_0102:
.Lt_0101:
.Lt_00FE:
.Lt_00FD:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+24]
mov eax, dword ptr [ecx+28]
cmp dword ptr [ebx+28], eax
jne .Lt_0114
cmp dword ptr [ebx+24], esi
je .Lt_0104
.Lt_0114:
jmp .Lt_00B7
.Lt_0104:
.Lt_0103:
jmp .Lt_00C7
.Lt_0105:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [esi+12], ebx
je .Lt_0107
jmp .Lt_00B7
.Lt_0107:
.Lt_0106:
jmp .Lt_00C7
.Lt_00C8:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967293
cmp ebx, 20
ja .Lt_00C7
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_0108+ebx*4-12]
_.LT_0108:
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00C7
.int .Lt_00F3
.int .Lt_00C7
.int .Lt_00C7
.int .Lt_0105
.int .Lt_00C7
.int .Lt_00C7
.int .Lt_00C7
.int .Lt_00C7
.int .Lt_00C7
.int .Lt_00CA
.int .Lt_00DD
.int .Lt_00CD
.int .Lt_00E9
.int .Lt_00D6
.int .Lt_00E6
.int .Lt_00C7
.int .Lt_00C7
.int .Lt_00FC
.Lt_00C7:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+64]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTISEQUALPARAMINIT@8
test eax, eax
jne .Lt_010A
jmp .Lt_00B7
.Lt_010A:
.Lt_0109:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+68]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTISEQUALPARAMINIT@8
test eax, eax
jne .Lt_010C
jmp .Lt_00B7
.Lt_010C:
.Lt_010B:
mov dword ptr [ebp-4], -1
.Lt_00B7:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTHASSIDEFX@4
_ASTHASSIDEFX@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0115:
cmp dword ptr [ebp+8], 0
jne .Lt_0118
jmp .Lt_0116
.Lt_0118:
.Lt_0117:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .Lt_011A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+12]
and eax, 524288
test eax, eax
jne .Lt_011C
mov dword ptr [ebp-4], -1
jmp .Lt_0116
.Lt_011C:
.Lt_011B:
.Lt_011A:
.Lt_0119:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTHASSIDEFX@4
test eax, eax
je .Lt_011E
mov dword ptr [ebp-4], -1
jmp .Lt_0116
.Lt_011E:
.Lt_011D:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTHASSIDEFX@4
mov dword ptr [ebp-4], eax
.Lt_0116:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTISSYMBOLONTREE@8
_ASTISSYMBOLONTREE@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_011F:
cmp dword ptr [ebp+12], 0
jne .Lt_0122
mov dword ptr [ebp-4], 0
jmp .Lt_0120
.Lt_0122:
.Lt_0121:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .Lt_0124
.Lt_0126:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-8], eax
jne .Lt_0128
mov dword ptr [ebp-4], -1
jmp .Lt_0120
.Lt_0128:
.Lt_0127:
cmp dword ptr [ebp-8], 0
je .Lt_012A
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 81920
test ebx, ebx
je .Lt_012C
mov dword ptr [ebp-4], -1
jmp .Lt_0120
.Lt_012C:
.Lt_012B:
.Lt_012A:
.Lt_0129:
jmp .Lt_0123
.Lt_012D:
mov dword ptr [ebp-4], -1
jmp .Lt_0120
jmp .Lt_0123
.Lt_0124:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967290
cmp ebx, 17
ja .Lt_0123
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.LT_012E+ebx*4-24]
_.LT_012E:
.int .Lt_0126
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0126
.int .Lt_0126
.int .Lt_0126
.int .Lt_012D
.int .Lt_0123
.int .Lt_0123
.int .Lt_0126
.Lt_0123:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+64], 0
je .Lt_0130
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+64]
push dword ptr [ebp+8]
call _ASTISSYMBOLONTREE@8
test eax, eax
je .Lt_0132
mov dword ptr [ebp-4], -1
jmp .Lt_0120
.Lt_0132:
.Lt_0131:
.Lt_0130:
.Lt_012F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+68], 0
je .Lt_0134
mov eax, dword ptr [ebp+12]
push dword ptr [eax+68]
push dword ptr [ebp+8]
call _ASTISSYMBOLONTREE@8
test eax, eax
je .Lt_0136
mov dword ptr [ebp-4], -1
jmp .Lt_0120
.Lt_0136:
.Lt_0135:
.Lt_0134:
.Lt_0133:
mov dword ptr [ebp-4], 0
.Lt_0120:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTREPLACESYMBOLONTREE@12
_ASTREPLACESYMBOLONTREE@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0137:
cmp dword ptr [ebp+8], 0
jne .Lt_013A
jmp .Lt_0138
.Lt_013A:
.Lt_0139:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+12], ebx
jne .Lt_013C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
.Lt_013C:
.Lt_013B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_013E
.Lt_0140:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+32], eax
jne .Lt_0142
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
.Lt_0142:
.Lt_0141:
jmp .Lt_013D
.Lt_0143:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+24], eax
jne .Lt_0145
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+24], ebx
.Lt_0145:
.Lt_0144:
jmp .Lt_013D
.Lt_0146:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTREPLACESYMBOLONCALL@12
jmp .Lt_013D
.Lt_013E:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967293
cmp ebx, 23
ja .Lt_013D
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.LT_0147+ebx*4-12]
_.LT_0147:
.int .Lt_0140
.int .Lt_0140
.int .Lt_013D
.int .Lt_013D
.int .Lt_0140
.int .Lt_013D
.int .Lt_0146
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_0140
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_0143
.Lt_013D:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .Lt_0149
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTREPLACESYMBOLONTREE@12
.Lt_0149:
.Lt_0148:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+68], 0
je .Lt_014B
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+68]
call _ASTREPLACESYMBOLONTREE@12
.Lt_014B:
.Lt_014A:
.Lt_0138:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTREPLACEFWDREF@16
_ASTREPLACEFWDREF@16:
push ebp
mov ebp, esp
push ebx
.Lt_014C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
cmp ebx, 23
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [ebp+12]
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_014F
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _TYPEMERGE@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+8], ebx
.Lt_014F:
.Lt_014E:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .Lt_0151
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTREPLACEFWDREF@16
.Lt_0151:
.Lt_0150:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+68], 0
je .Lt_0153
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+68]
call _ASTREPLACEFWDREF@16
.Lt_0153:
.Lt_0152:
.Lt_014D:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTISCONSTANT@4
_ASTISCONSTANT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0156:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0159
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
je .Lt_015B
mov dword ptr [ebp-4], -1
jmp .Lt_0157
.Lt_015B:
.Lt_015A:
.Lt_0159:
.Lt_0158:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-4], ebx
.Lt_0157:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTGETSTRLITSYMBOL@4
_ASTGETSTRLITSYMBOL@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_015E:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .Lt_0161
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0163
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 1024
test eax, eax
je .Lt_0165
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0165:
.Lt_0164:
.Lt_0163:
.Lt_0162:
.Lt_0161:
.Lt_0160:
.Lt_015F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCHECKCONST@8
_ASTCHECKCONST@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_0166:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-28], ebx
jmp .Lt_0169
.Lt_016B:
push dword ptr [ebp+12]
call _ASTCONSTGETASDOUBLE@4
fstp qword ptr [ebp-12]
fld qword ptr [ebp-12]
fabs
fstp qword ptr [ebp-36]
fld qword ptr [ebp-36]
fcomp qword ptr [_Lt_0187]
fnstsw ax
test ah, 0b01000000
jnz .Lt_016F
.Lt_0170:
fld qword ptr [ebp-36]
fcomp qword ptr [_Lt_0188]
fnstsw ax
test ah, 0b00000001
jnz .Lt_016E
fld qword ptr [ebp-36]
fcomp qword ptr [_Lt_0189]
fnstsw ax
test ah, 0b01000001
jz .Lt_016E
.Lt_016F:
mov dword ptr [ebp-4], -1
jmp .Lt_016C
.Lt_016E:
fld qword ptr [ebp-12]
fstp dword ptr [ebp-16]
fld dword ptr [ebp-16]
fadd dword ptr [ebp-16]
fcomp dword ptr [ebp-16]
fnstsw ax
test ah, 0b01000000
jz .Lt_0173
fld qword ptr [ebp-12]
fadd qword ptr [ebp-12]
fcomp qword ptr [ebp-12]
push eax
fnstsw ax
test ah, 0b01000000
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_0172
.Lt_0173:
mov dword ptr [ebp-4], -1
.Lt_0172:
.Lt_0171:
.Lt_016C:
jmp .Lt_0168
.Lt_0174:
push dword ptr [ebp+12]
call _ASTCONSTGETASINT64@4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 0
mov eax, -1
jne .Lt_0190
cmp dword ptr [ebp-24], 0
je .Lt_018F
.Lt_0190:
xor eax, eax
.Lt_018F:
cmp dword ptr [ebp-20], 0
mov edx, -1
jne .Lt_0192
cmp dword ptr [ebp-24], 1
je .Lt_0191
.Lt_0192:
xor edx, edx
.Lt_0191:
or eax, edx
cmp dword ptr [ebp-20], 4294967295
mov edx, -1
jne .Lt_0194
cmp dword ptr [ebp-24], 4294967295
je .Lt_0193
.Lt_0194:
xor edx, edx
.Lt_0193:
or eax, edx
mov dword ptr [ebp-4], eax
jmp .Lt_0168
.Lt_0175:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0176
mov dword ptr [ebp-32], 24
jmp .Lt_018A
.Lt_0176:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_018A:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-36], edx
jmp .Lt_0179
.Lt_017B:
push dword ptr [ebp+12]
call _ASTCONSTGETASINT64@4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .Lt_0195
jl .Lt_0196
cmp dword ptr [ebp-24], 4294967168
jae .Lt_0195
.Lt_0196:
xor eax, eax
.Lt_0195:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .Lt_0197
jg .Lt_0198
cmp dword ptr [ebp-24], 255
jbe .Lt_0197
.Lt_0198:
xor edx, edx
.Lt_0197:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .Lt_0178
.Lt_017C:
push dword ptr [ebp+12]
call _ASTCONSTGETASINT64@4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .Lt_0199
jl .Lt_019A
cmp dword ptr [ebp-24], 4294934528
jae .Lt_0199
.Lt_019A:
xor eax, eax
.Lt_0199:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .Lt_019B
jg .Lt_019C
cmp dword ptr [ebp-24], 65535
jbe .Lt_019B
.Lt_019C:
xor edx, edx
.Lt_019B:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .Lt_0178
.Lt_017D:
push dword ptr [ebp+12]
call _ASTCONSTGETASINT64@4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .Lt_019D
jl .Lt_019E
cmp dword ptr [ebp-24], 2147483648
jae .Lt_019D
.Lt_019E:
xor eax, eax
.Lt_019D:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .Lt_019F
jg .Lt_01A0
cmp dword ptr [ebp-24], 4294967295
jbe .Lt_019F
.Lt_01A0:
xor edx, edx
.Lt_019F:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .Lt_0178
.Lt_017E:
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 480
je .Lt_017F
mov dword ptr [ebp-40], 24
jmp .Lt_018B
.Lt_017F:
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_018B:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_0182
push dword ptr [ebp+12]
call _ASTCONSTGETASDOUBLE@4
fstp qword ptr [ebp-12]
fld qword ptr [ebp-12]
fcomp qword ptr [_Lt_018C]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
fld qword ptr [ebp-12]
fcomp qword ptr [_Lt_018D]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz dl
shr edx, 1
sbb edx, edx
and eax, edx
mov dword ptr [ebp-4], eax
.Lt_0182:
.Lt_0181:
jmp .Lt_0178
.Lt_0179:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 7
ja .Lt_0178
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.LT_0183+eax*4-4]
_.LT_0183:
.int .Lt_017B
.int .Lt_017B
.int .Lt_017C
.int .Lt_017C
.int .Lt_017D
.int .Lt_017D
.int .Lt_017E
.int .Lt_017E
.Lt_0178:
jmp .Lt_0168
.Lt_0169:
mov eax, dword ptr [ebp-28]
add eax, 4294967295
cmp eax, 14
ja .Lt_0175
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.LT_0184+eax*4-4]
_.LT_0184:
.int .Lt_0174
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_0175
.int .Lt_016B
.Lt_0168:
mov eax, dword ptr [ebp-4]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [_AST+232]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .Lt_0186
push 0
push 1
push 0
push 25
call _ERRREPORTWARN@16
.Lt_0186:
.Lt_0185:
.Lt_0167:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTPTRCHECK@16
_ASTPTRCHECK@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A5:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
jne .Lt_01A8
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 16
jne .Lt_01AA
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_01AB
mov dword ptr [ebp-12], 24
jmp .Lt_01B4
.Lt_01AB:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_01B4:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .Lt_01AE
push dword ptr [ebp+20]
call _ASTCONSTEQZERO@4
mov dword ptr [ebp-4], eax
.Lt_01AE:
.Lt_01AD:
.Lt_01AA:
.Lt_01A9:
jmp .Lt_01A6
.Lt_01A8:
.Lt_01A7:
mov eax, dword ptr [ebp+8]
and eax, 31
test eax, eax
jne .Lt_01B0
mov eax, dword ptr [ebp-8]
and eax, 31
test eax, eax
jne .Lt_01B2
mov dword ptr [ebp-4], -1
jmp .Lt_01A6
.Lt_01B2:
.Lt_01B1:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov ebx, dword ptr [ebp-8]
and ebx, 480
sar ebx, 5
cmp eax, ebx
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_01A6
jmp .Lt_01AF
.Lt_01B0:
mov eax, dword ptr [ebp-8]
and eax, 31
test eax, eax
jne .Lt_01B3
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov ebx, dword ptr [ebp-8]
and ebx, 480
sar ebx, 5
cmp eax, ebx
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_01A6
.Lt_01B3:
.Lt_01AF:
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
and eax, 511
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
and eax, 511
push eax
call _TYPECALCMATCH@20
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_01A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTUPDSTRCONCAT@4
_ASTUPDSTRCONCAT@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B8:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .Lt_01BB
jmp .Lt_01B9
.Lt_01BB:
.Lt_01BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-16], eax
jmp .Lt_01BD
.Lt_01BF:
jmp .Lt_01BC
.Lt_01C0:
jmp .Lt_01B9
jmp .Lt_01BC
.Lt_01BD:
mov eax, dword ptr [ebp-16]
add eax, 4294967289
cmp eax, 11
ja .Lt_01C0
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_01C1+eax*4-28]
_.LT_01C1:
.int .Lt_01BF
.int .Lt_01C0
.int .Lt_01C0
.int .Lt_01C0
.int .Lt_01C0
.int .Lt_01C0
.int .Lt_01C0
.int .Lt_01C0
.int .Lt_01C0
.int .Lt_01C0
.int .Lt_01BF
.int .Lt_01BF
.Lt_01BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_01C3
push dword ptr [ebp-8]
call _ASTUPDSTRCONCAT@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
.Lt_01C3:
.Lt_01C2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_01C5
push dword ptr [ebp-12]
call _ASTUPDSTRCONCAT@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_01C5:
.Lt_01C4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_01C7
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 28
jne .Lt_01C9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
je .Lt_01CB
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _RTLSTRCONCAT@16
mov dword ptr [ebp-4], eax
jmp .Lt_01CA
.Lt_01CB:
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _RTLWSTRCONCAT@16
mov dword ptr [ebp-4], eax
.Lt_01CA:
push dword ptr [ebp+8]
call _ASTDELNODE@4
.Lt_01C9:
.Lt_01C8:
.Lt_01C7:
.Lt_01C6:
.Lt_01B9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDBRANCH@16
_ASTBUILDBRANCH@16:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.Lt_01CC:
cmp dword ptr [ebp+8], 0
jne .Lt_01CF
mov dword ptr [ebp-4], 0
jmp .Lt_01CD
.Lt_01CF:
.Lt_01CE:
push dword ptr [ebp+8]
call _ASTOPTIMIZETREE@4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_01D0
mov dword ptr [ebp-32], 24
jmp .Lt_0226
.Lt_01D0:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_0226:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 2
jne .Lt_01D3
mov dword ptr [ebp-4], 0
jmp .Lt_01CD
.Lt_01D3:
.Lt_01D2:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-40], ebx
jmp .Lt_01D5
.Lt_01D7:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 20
je .Lt_01D9
mov dword ptr [ebp-4], 0
jmp .Lt_01CD
.Lt_01D9:
.Lt_01D8:
jmp .Lt_01D4
.Lt_01DA:
push 0
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp+8]
push 0
push 0
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_01DC
push 0
lea eax, [ebp-44]
push eax
push dword ptr [ebp+8]
push 0
push 32
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_01DE
push 27
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _SYMBGETCOMPOPOVLHEAD@8
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_01E0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 9
push offset _Lt_01E2
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
push dword ptr [ebx+16]
push 3
push offset _Lt_01E1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea ebx, [ebp-60]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-84]
push -1
push 99
call _ERRREPORT@12
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-4], 0
jmp .Lt_01CD
.Lt_01E0:
.Lt_01DF:
push 0
push -1
push 99
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
jmp .Lt_01CD
.Lt_01DE:
.Lt_01DD:
.Lt_01DC:
.Lt_01DB:
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-48]
call _ASTBUILDCALL@16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
jmp .Lt_01D4
.Lt_01D5:
mov ebx, dword ptr [ebp-40]
add ebx, 4294967292
cmp ebx, 16
ja .Lt_01D4
mov ebx, dword ptr [ebp-40]
jmp dword ptr [_.LT_01E6+ebx*4-16]
_.LT_01E6:
.int .Lt_01D7
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D7
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01DA
.Lt_01D4:
push dword ptr [ebp+8]
call _ASTTYPEINIUPDATE@4
mov dword ptr [ebp+8], eax
lea eax, [_AST+148]
push eax
call _LISTGETHEAD@4
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp+20]
not ebx
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .Lt_01E8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-12], 0
.Lt_01E9:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 15
jne .Lt_01EA
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 1
jne .Lt_01ED
.Lt_01EE:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
jmp .Lt_01EB
.Lt_01ED:
cmp dword ptr [ebp-40], 2
jne .Lt_01EF
.Lt_01F0:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-8], eax
jmp .Lt_01EB
.Lt_01EF:
mov dword ptr [ebp-8], 0
.Lt_01F1:
.Lt_01EB:
jmp .Lt_01E9
.Lt_01EA:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 16
jne .Lt_01F4
.Lt_01F5:
push dword ptr [ebp-8]
call _ASTCONSTEQZERO@4
mov ebx, dword ptr [ebp+16]
cmp eax, ebx
je .Lt_01F7
push 0
push dword ptr [ebp+12]
push 98
call _ASTNEWBRANCH@12
mov dword ptr [ebp-16], eax
jmp .Lt_01F6
.Lt_01F7:
call _ASTNEWNOP@0
mov dword ptr [ebp-16], eax
.Lt_01F6:
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
jmp .Lt_01F2
.Lt_01F4:
cmp dword ptr [ebp-40], 3
jne .Lt_01F8
.Lt_01F9:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-44], ebx
jmp .Lt_01FB
.Lt_01FD:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+32], eax
cmp dword ptr [ebp+16], 0
jne .Lt_01FF
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
call _ASTGETINVERSELOGOP@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], eax
.Lt_01FF:
.Lt_01FE:
jmp .Lt_01FA
.Lt_0200:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0201
mov dword ptr [ebp-52], 24
jmp .Lt_0227
.Lt_0201:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_0227:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .Lt_0204
mov eax, dword ptr [_IR+276]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .Lt_0206
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-56], eax
jmp .Lt_0208
.Lt_020A:
mov eax, dword ptr [_IR+276]
and eax, 1024
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .Lt_0207
.Lt_0208:
mov eax, dword ptr [ebp-56]
add eax, 4294967283
cmp eax, 1
ja .Lt_0207
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.LT_020B+eax*4-52]
_.LT_020B:
.int .Lt_020A
.int .Lt_020A
.Lt_0207:
.Lt_0206:
.Lt_0205:
jmp .Lt_0203
.Lt_0204:
mov eax, dword ptr [_IR+276]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
.Lt_0203:
cmp dword ptr [ebp-48], 0
je .Lt_020D
push dword ptr [ebp-8]
push dword ptr [ebp+12]
cmp dword ptr [ebp+16], 0
je .Lt_020E
mov dword ptr [ebp-56], 95
jmp .Lt_0228
.Lt_020E:
mov dword ptr [ebp-56], 92
.Lt_0228:
push dword ptr [ebp-56]
call _ASTNEWBRANCH@12
mov dword ptr [ebp-8], eax
jmp .Lt_020C
.Lt_020D:
mov dword ptr [ebp-8], 0
.Lt_020C:
jmp .Lt_01FA
.Lt_0210:
mov dword ptr [ebp-8], 0
jmp .Lt_01FA
.Lt_01FB:
mov eax, dword ptr [ebp-44]
add eax, 4294967268
cmp eax, 22
ja .Lt_0210
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.LT_0211+eax*4-112]
_.LT_0211:
.int .Lt_0200
.int .Lt_0200
.int .Lt_0210
.int .Lt_0210
.int .Lt_0210
.int .Lt_0210
.int .Lt_0200
.int .Lt_0200
.int .Lt_0210
.int .Lt_0210
.int .Lt_0200
.int .Lt_0210
.int .Lt_0200
.int .Lt_0200
.int .Lt_0200
.int .Lt_0210
.int .Lt_0210
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.Lt_01FA:
jmp .Lt_01F2
.Lt_01F8:
mov dword ptr [ebp-8], 0
.Lt_0212:
.Lt_01F2:
cmp dword ptr [ebp-8], 0
je .Lt_0214
cmp dword ptr [ebp-12], 0
je .Lt_0216
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 1
jne .Lt_0219
.Lt_021A:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
jmp .Lt_0217
.Lt_0219:
cmp dword ptr [ebp-40], 2
jne .Lt_021B
.Lt_021C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+68], ebx
jmp .Lt_0217
.Lt_021B:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
.Lt_021D:
.Lt_0217:
jmp .Lt_0215
.Lt_0216:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
.Lt_0215:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01CD
.Lt_0214:
.Lt_0213:
jmp .Lt_01E7
.Lt_01E8:
mov dword ptr [ebp-8], 0
.Lt_01E7:
cmp dword ptr [ebp-20], 4
je .Lt_0220
.Lt_0221:
cmp dword ptr [ebp-20], 7
jne .Lt_021F
.Lt_0220:
mov ebx, dword ptr [ebp-20]
and ebx, -512
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+16]
and ecx, 511
or ebx, ecx
mov dword ptr [ebp-20], ebx
.Lt_021F:
.Lt_021E:
cmp dword ptr [ebp-24], 0
je .Lt_0223
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-20]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-28], eax
push 64
push dword ptr [ebp+8]
push dword ptr [ebp-28]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
mov dword ptr [ebp-8], eax
push 0
push 0
call _ASTDTORLISTFLUSH@4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-28]
call _ASTNEWVAR@20
mov dword ptr [ebp+8], eax
.Lt_0223:
.Lt_0222:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call _ASTNEWCONSTZ@8
push eax
push dword ptr [ebp+8]
cmp dword ptr [ebp+16], 0
je .Lt_0224
mov dword ptr [ebp-36], 48
jmp .Lt_0229
.Lt_0224:
mov dword ptr [ebp-36], 45
.Lt_0229:
push dword ptr [ebp-36]
call _ASTNEWBOP@20
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_01CD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTDTORLISTADD@4
_ASTDTORLISTADD@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0238:
push dword ptr [ebp+8]
call _HHASDTOR@4
test eax, eax
jne .Lt_023B
jmp .Lt_0239
.Lt_023B:
.Lt_023A:
lea eax, [_AST+148]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
lea ebx, [_AST+180]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+4], 0
jle .Lt_023E
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
sal ecx, 2
mov eax, dword ptr [ebx]
add eax, ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [eax-4]
mov dword ptr [ecx+4], ebx
jmp .Lt_023D
.Lt_023E:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+4], 0
.Lt_023D:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+8], 0
.Lt_0239:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTDTORLISTADDREF@4
_ASTDTORLISTADDREF@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_023F:
push dword ptr [ebp+8]
call _HHASDTOR@4
test eax, eax
jne .Lt_0242
jmp .Lt_0240
.Lt_0242:
.Lt_0241:
lea eax, [_AST+148]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-4], eax
.Lt_0243:
cmp dword ptr [ebp-4], 0
je .Lt_0244
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .Lt_0246
mov ebx, dword ptr [ebp-4]
inc dword ptr [ebx+8]
jmp .Lt_0244
.Lt_0246:
.Lt_0245:
push dword ptr [ebp-4]
call _LISTGETPREV@4
mov dword ptr [ebp-4], eax
jmp .Lt_0243
.Lt_0244:
.Lt_0240:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTDTORLISTREMOVEREF@4
_ASTDTORLISTREMOVEREF@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0247:
push dword ptr [ebp+8]
call _HHASDTOR@4
test eax, eax
jne .Lt_024A
jmp .Lt_0248
.Lt_024A:
.Lt_0249:
lea eax, [_AST+148]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-4], eax
.Lt_024B:
cmp dword ptr [ebp-4], 0
je .Lt_024C
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .Lt_024E
mov ebx, dword ptr [ebp-4]
dec dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+8], 0
jg .Lt_0250
push dword ptr [ebp-4]
lea ebx, [_AST+148]
push ebx
call _LISTDELNODE@8
.Lt_0250:
.Lt_024F:
jmp .Lt_024C
.Lt_024E:
.Lt_024D:
push dword ptr [ebp-4]
call _LISTGETPREV@4
mov dword ptr [ebp-4], eax
jmp .Lt_024B
.Lt_024C:
.Lt_0248:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTDTORLISTFLUSH@4
_ASTDTORLISTFLUSH@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0251:
mov dword ptr [ebp-16], 0
lea eax, [_AST+148]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-8], eax
.Lt_0253:
cmp dword ptr [ebp-8], 0
je .Lt_0254
push dword ptr [ebp-8]
call _LISTGETPREV@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .Lt_0256
push 0
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx]
call __Z19ASTBUILDVARDTORCALLP8FBSYMBOLl@8
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
lea eax, [_AST+148]
push eax
call _LISTDELNODE@8
.Lt_0256:
.Lt_0255:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_0253
.Lt_0254:
cmp dword ptr [ebp+8], 0
jne .Lt_0258
mov dword ptr [_AST+192], 0
.Lt_0258:
.Lt_0257:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0252:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTDTORLISTDEL@4
_ASTDTORLISTDEL@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0259:
push dword ptr [ebp+8]
call _HHASDTOR@4
test eax, eax
jne .Lt_025C
jmp .Lt_025A
.Lt_025C:
.Lt_025B:
lea eax, [_AST+148]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-4], eax
.Lt_025D:
cmp dword ptr [ebp-4], 0
je .Lt_025E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .Lt_0260
push dword ptr [ebp-4]
lea ebx, [_AST+148]
push ebx
call _LISTDELNODE@8
jmp .Lt_025E
.Lt_0260:
.Lt_025F:
push dword ptr [ebp-4]
call _LISTGETPREV@4
mov dword ptr [ebp-4], eax
jmp .Lt_025D
.Lt_025E:
.Lt_025A:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTDTORLISTSCOPEBEGIN@4
_ASTDTORLISTSCOPEBEGIN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0261:
cmp dword ptr [ebp+8], 0
jne .Lt_0264
inc dword ptr [_AST+192]
mov eax, dword ptr [_AST+192]
mov dword ptr [ebp+8], eax
.Lt_0264:
.Lt_0263:
lea eax, [_AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+8]
cmp dword ptr [eax+4], ecx
jne .Lt_0267
mov ecx, dword ptr [ebp-4]
add dword ptr [ecx+8], 8
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+8]
sal eax, 2
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _XREALLOCATE@8
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx], eax
.Lt_0267:
.Lt_0266:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+4]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp-4]
inc dword ptr [ebx+4]
.Lt_0262:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTDTORLISTSCOPEEND@0
_ASTDTORLISTSCOPEEND@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0268:
lea eax, [_AST+180]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
sal ecx, 2
mov ebx, dword ptr [eax]
add ebx, ecx
mov ecx, dword ptr [ebx-4]
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-8]
dec dword ptr [ecx+4]
.Lt_0269:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDTORLISTUNSCOPE@4
_ASTDTORLISTUNSCOPE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_026B:
lea eax, [_AST+148]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-4], eax
.Lt_026D:
cmp dword ptr [ebp-4], 0
je .Lt_026E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .Lt_0270
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+4], 0
.Lt_0270:
.Lt_026F:
push dword ptr [ebp-4]
call _LISTGETPREV@4
mov dword ptr [ebp-4], eax
jmp .Lt_026D
.Lt_026E:
.Lt_026C:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTSETTYPE@12
_ASTSETTYPE@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0271:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 15
jne .Lt_0275
.Lt_0276:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jne .Lt_0279
.Lt_027A:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTSETTYPE@12
jmp .Lt_0277
.Lt_0279:
cmp dword ptr [ebp-8], 2
jne .Lt_027B
.Lt_027C:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTSETTYPE@12
.Lt_027B:
.Lt_0277:
jmp .Lt_0273
.Lt_0275:
cmp dword ptr [ebp-4], 19
jne .Lt_027D
.Lt_027E:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTSETTYPE@12
jmp .Lt_0273
.Lt_027D:
cmp dword ptr [ebp-4], 10
jne .Lt_027F
.Lt_0280:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTSETTYPE@12
jmp .Lt_0273
.Lt_027F:
cmp dword ptr [ebp-4], 26
jne .Lt_0281
.Lt_0282:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTSETTYPE@12
.Lt_0281:
.Lt_0273:
.Lt_0272:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTSIZEOF@8
_ASTSIZEOF@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0283:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBCALCLEN@8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 4
je .Lt_0288
.Lt_0289:
cmp dword ptr [ebp-12], 7
je .Lt_0288
.Lt_028A:
cmp dword ptr [ebp-12], 18
jne .Lt_0287
.Lt_0288:
mov edx, dword ptr [ebp+8]
cmp dword ptr [edx+12], 0
je .Lt_028C
mov edx, dword ptr [ebp+12]
mov dword ptr [edx], -1
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+12]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], edx
.Lt_028C:
.Lt_028B:
.Lt_0287:
.Lt_0285:
.Lt_0284:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTISACCESSTOLOCAL@4
_ASTISACCESSTOLOCAL@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_028F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .Lt_0293
.Lt_0294:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HSYMBISONLOCALSTACK@4
mov dword ptr [ebp-4], eax
jmp .Lt_0291
.Lt_0293:
cmp dword ptr [ebp-8], 18
jne .Lt_0295
.Lt_0296:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 16384
test eax, eax
jne .Lt_0298
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSYMBISONLOCALSTACK@4
mov dword ptr [ebp-4], eax
.Lt_0298:
.Lt_0297:
jmp .Lt_0291
.Lt_0295:
cmp dword ptr [ebp-8], 9
jne .Lt_0299
.Lt_029A:
mov dword ptr [ebp-4], -1
jmp .Lt_0291
.Lt_0299:
cmp dword ptr [ebp-8], 19
jne .Lt_029B
.Lt_029C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 20
jne .Lt_029E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
cmp dword ptr [eax+64], 0
je .Lt_02A0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+64]
cmp dword ptr [eax], 3
jne .Lt_02A1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+64]
mov ebx, dword ptr [eax+24]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .Lt_02A7
.Lt_02A1:
mov dword ptr [ebp-12], 0
.Lt_02A7:
cmp dword ptr [ebp-12], 0
je .Lt_02A4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+64]
cmp dword ptr [eax], 6
jne .Lt_02A6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+64]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+64]
call _ASTISACCESSTOLOCAL@4
mov dword ptr [ebp-4], eax
.Lt_02A6:
.Lt_02A5:
.Lt_02A4:
.Lt_02A3:
.Lt_02A0:
.Lt_029F:
jmp .Lt_029D
.Lt_029E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTISACCESSTOLOCAL@4
mov dword ptr [ebp-4], eax
.Lt_029D:
.Lt_029B:
.Lt_0291:
.Lt_0290:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTISRELATIONALBOP@4
_ASTISRELATIONALBOP@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_02A9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_02AC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
sal ebx, 4
mov eax, dword ptr [_AST_OPTB+ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_02AC:
.Lt_02AB:
.Lt_02AA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
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
call _fb_StrAssign@20
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
_HHASDTOR@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_022E:
push dword ptr [ebp+8]
call _SYMBHASDTOR@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .Lt_0232
.Lt_0233:
mov dword ptr [ebp-4], -1
jmp .Lt_0230
.Lt_0232:
cmp dword ptr [ebp-8], 39
jne .Lt_0234
.Lt_0235:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 16777216
test eax, eax
je .Lt_0237
mov dword ptr [ebp-4], -1
.Lt_0237:
.Lt_0236:
.Lt_0234:
.Lt_0230:
.Lt_022F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSYMBISONLOCALSTACK@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_028D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov dword ptr [ebp-4], ebx
.Lt_028E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 8
_Lt_0187:	.quad	0x0000000000000000
.balign 8
_Lt_0188:	.quad	0x36A6D601AD376AB9
.balign 8
_Lt_0189:	.quad	0x47EC363CBF21F28A
.balign 8
_Lt_018C:	.quad	0xC3E0000000000000
.balign 8
_Lt_018D:	.quad	0x43F0000000000000
.balign 4
_Lt_01E1:	.ascii	" \"\0"
.balign 4
_Lt_01E2:	.ascii	".cast()\"\0"
