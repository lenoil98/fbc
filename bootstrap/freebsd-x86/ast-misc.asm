	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTMISCINIT
ASTMISCINIT:
push ebp
mov ebp, esp
sub esp, 4
.Lt_005E:
push 6
push 12
push 64
lea eax, [AST+148]
push eax
call LISTINIT
add esp, 16
lea eax, [AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+8], 0
mov dword ptr [AST+192], 0
mov dword ptr [AST+196], -1
.Lt_005F:
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTMISCEND
ASTMISCEND:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0061:
lea eax, [AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call free
add esp, 4
lea eax, [AST+148]
push eax
call LISTEND
add esp, 4
.Lt_0062:
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISTREEEQUAL
ASTISTREEEQUAL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0064:
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
je .Lt_0067
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp+8], ebx
jne .Lt_0069
mov dword ptr [ebp-4], -1
.Lt_0069:
.Lt_0068:
jmp .Lt_0065
.Lt_0067:
.Lt_0066:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp dword ptr [ebx], ecx
je .Lt_006B
jmp .Lt_0065
.Lt_006B:
.Lt_006A:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
cmp dword ptr [ecx+4], eax
je .Lt_006D
jmp .Lt_0065
.Lt_006D:
.Lt_006C:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+8]
cmp dword ptr [eax+8], ebx
je .Lt_006F
jmp .Lt_0065
.Lt_006F:
.Lt_006E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_0071
.Lt_0073:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [eax+12], ecx
je .Lt_0075
jmp .Lt_0065
.Lt_0075:
.Lt_0074:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ecx+24], ebx
jne .Lt_00B0
cmp dword ptr [ecx+20], esi
je .Lt_0077
.Lt_00B0:
jmp .Lt_0065
.Lt_0077:
.Lt_0076:
jmp .Lt_0070
.Lt_0078:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [esi+12], ecx
je .Lt_007A
jmp .Lt_0065
.Lt_007A:
.Lt_0079:
jmp .Lt_0070
.Lt_007B:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+4]
and esi, 480
je .Lt_007C
mov dword ptr [ebp-12], 24
jmp .Lt_00AD
.Lt_007C:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_00AD:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov esi, dword ptr [SYMB_DTYPETB+ecx]
mov dword ptr [ebp-16], esi
cmp dword ptr [ebp-16], 1
jne .Lt_0080
.Lt_0081:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
fld qword ptr [esi+20]
fcomp qword ptr [ecx+20]
fnstsw ax
test ah, 0b01000000
jnz .Lt_0083
jmp .Lt_0065
.Lt_0083:
.Lt_0082:
jmp .Lt_007E
.Lt_0080:
cmp dword ptr [ebp-16], 0
jne .Lt_0084
.Lt_0085:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [esi+20]
mov ebx, dword ptr [esi+24]
cmp dword ptr [ecx+24], ebx
jne .Lt_00B1
cmp dword ptr [ecx+20], eax
je .Lt_0087
.Lt_00B1:
jmp .Lt_0065
.Lt_0087:
.Lt_0086:
.Lt_0084:
.Lt_007E:
jmp .Lt_0070
.Lt_0088:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
cmp dword ptr [eax+24], ecx
jne .Lt_00B2
cmp dword ptr [eax+20], esi
je .Lt_008A
.Lt_00B2:
jmp .Lt_0065
.Lt_008A:
.Lt_0089:
jmp .Lt_0070
.Lt_008B:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
cmp dword ptr [esi+24], eax
jne .Lt_00B3
cmp dword ptr [esi+20], ebx
je .Lt_008D
.Lt_00B3:
jmp .Lt_0065
.Lt_008D:
.Lt_008C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+28]
cmp dword ptr [ebx+28], esi
je .Lt_008F
jmp .Lt_0065
.Lt_008F:
.Lt_008E:
jmp .Lt_0070
.Lt_0090:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
cmp dword ptr [esi+20], eax
je .Lt_0092
jmp .Lt_0065
.Lt_0092:
.Lt_0091:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+24]
cmp dword ptr [eax+24], ebx
je .Lt_0094
jmp .Lt_0065
.Lt_0094:
.Lt_0093:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+28]
cmp dword ptr [ebx+28], esi
je .Lt_0096
jmp .Lt_0065
.Lt_0096:
.Lt_0095:
jmp .Lt_0070
.Lt_0097:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
cmp dword ptr [esi+20], eax
je .Lt_0099
jmp .Lt_0065
.Lt_0099:
.Lt_0098:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+24]
cmp dword ptr [eax+24], ebx
je .Lt_009B
jmp .Lt_0065
.Lt_009B:
.Lt_009A:
jmp .Lt_0070
.Lt_009C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+12]
cmp dword ptr [ebx+12], esi
je .Lt_009E
jmp .Lt_0065
.Lt_009E:
.Lt_009D:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
cmp dword ptr [esi+20], eax
je .Lt_00A0
jmp .Lt_0065
.Lt_00A0:
.Lt_009F:
jmp .Lt_0070
.Lt_00A1:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+12]
cmp dword ptr [eax+12], ebx
je .Lt_00A3
jmp .Lt_0065
.Lt_00A3:
.Lt_00A2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov esi, dword ptr [eax+24]
cmp dword ptr [ebx+24], esi
jne .Lt_00B4
cmp dword ptr [ebx+20], ecx
je .Lt_00A5
.Lt_00B4:
jmp .Lt_0065
.Lt_00A5:
.Lt_00A4:
jmp .Lt_0070
.Lt_00A6:
jmp .Lt_0070
.Lt_00A7:
jmp .Lt_0065
jmp .Lt_0070
.Lt_0071:
mov ecx, dword ptr [ebp-8]
add ecx, 4294967295
cmp ecx, 22
ja .Lt_0070
mov ecx, dword ptr [ebp-8]
jmp dword ptr [.LT_00A8+ecx*4-4]
.LT_00A8:
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_0090
.int .Lt_0097
.int .Lt_00A6
.int .Lt_009C
.int .Lt_00A7
.int .Lt_0070
.int .Lt_00A7
.int .Lt_0070
.int .Lt_0070
.int .Lt_0070
.int .Lt_0070
.int .Lt_0070
.int .Lt_00A7
.int .Lt_007B
.int .Lt_0073
.int .Lt_008B
.int .Lt_0078
.int .Lt_0088
.int .Lt_0070
.int .Lt_0070
.int .Lt_00A1
.Lt_0070:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+56]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+56]
call ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .Lt_00AA
jmp .Lt_0065
.Lt_00AA:
.Lt_00A9:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTISTREEEQUAL
add esp, 8
test eax, eax
jne .Lt_00AC
jmp .Lt_0065
.Lt_00AC:
.Lt_00AB:
mov dword ptr [ebp-4], -1
.Lt_0065:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISEQUALPARAMINIT
ASTISEQUALPARAMINIT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00B5:
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
je .Lt_00B8
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp+8], ebx
jne .Lt_00BA
mov dword ptr [ebp-4], -1
.Lt_00BA:
.Lt_00B9:
jmp .Lt_00B6
.Lt_00B8:
.Lt_00B7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp dword ptr [ebx], ecx
je .Lt_00BC
jmp .Lt_00B6
.Lt_00BC:
.Lt_00BB:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
cmp dword ptr [ecx+4], eax
je .Lt_00BE
jmp .Lt_00B6
.Lt_00BE:
.Lt_00BD:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+8]
cmp dword ptr [eax+8], ebx
je .Lt_00C0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
cmp eax, 22
jne .Lt_00C2
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call SYMBCALCPROCMATCH
add esp, 12
test eax, eax
jne .Lt_00C5
jmp .Lt_00B6
.Lt_00C5:
.Lt_00C4:
jmp .Lt_00C1
.Lt_00C2:
jmp .Lt_00B6
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_00C7
.Lt_00C9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
cmp dword ptr [ebx+20], ecx
je .Lt_00CB
jmp .Lt_00B6
.Lt_00CB:
.Lt_00CA:
jmp .Lt_00C6
.Lt_00CC:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [ecx+12], eax
je .Lt_00CE
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 4096
test eax, eax
jne .Lt_00D0
jmp .Lt_00B6
.Lt_00D0:
.Lt_00CF:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 4096
test eax, eax
jne .Lt_00D2
jmp .Lt_00B6
.Lt_00D2:
.Lt_00D1:
.Lt_00CE:
.Lt_00CD:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+20]
mov ebx, dword ptr [ecx+24]
cmp dword ptr [eax+24], ebx
jne .Lt_010F
cmp dword ptr [eax+20], esi
je .Lt_00D4
.Lt_010F:
jmp .Lt_00B6
.Lt_00D4:
.Lt_00D3:
jmp .Lt_00C6
.Lt_00D5:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [esi+12], eax
je .Lt_00D7
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+12]
mov eax, dword ptr [esi+4]
and eax, 4096
test eax, eax
jne .Lt_00D9
jmp .Lt_00B6
.Lt_00D9:
.Lt_00D8:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+12]
mov eax, dword ptr [esi+4]
and eax, 4096
test eax, eax
jne .Lt_00DB
jmp .Lt_00B6
.Lt_00DB:
.Lt_00DA:
.Lt_00D7:
.Lt_00D6:
jmp .Lt_00C6
.Lt_00DC:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 480
je .Lt_00DD
mov dword ptr [ebp-12], 24
jmp .Lt_010C
.Lt_00DD:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_010C:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_00E0
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
fld qword ptr [eax+20]
fcomp qword ptr [esi+20]
fnstsw ax
test ah, 0b01000000
jnz .Lt_00E2
jmp .Lt_00B6
.Lt_00E2:
.Lt_00E1:
jmp .Lt_00DF
.Lt_00E0:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
cmp dword ptr [esi+24], ebx
jne .Lt_0110
cmp dword ptr [esi+20], ecx
je .Lt_00E4
.Lt_0110:
jmp .Lt_00B6
.Lt_00E4:
.Lt_00E3:
.Lt_00DF:
jmp .Lt_00C6
.Lt_00E5:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
mov esi, dword ptr [ebx+24]
cmp dword ptr [ecx+24], esi
jne .Lt_0111
cmp dword ptr [ecx+20], eax
je .Lt_00E7
.Lt_0111:
jmp .Lt_00B6
.Lt_00E7:
.Lt_00E6:
jmp .Lt_00C6
.Lt_00E8:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+20]
mov ecx, dword ptr [esi+24]
cmp dword ptr [eax+24], ecx
jne .Lt_0112
cmp dword ptr [eax+20], ebx
je .Lt_00EA
.Lt_0112:
jmp .Lt_00B6
.Lt_00EA:
.Lt_00E9:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+28]
cmp dword ptr [ebx+28], eax
je .Lt_00EC
jmp .Lt_00B6
.Lt_00EC:
.Lt_00EB:
jmp .Lt_00C6
.Lt_00ED:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+20]
cmp dword ptr [eax+20], ecx
je .Lt_00EF
jmp .Lt_00B6
.Lt_00EF:
.Lt_00EE:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ecx+24], ebx
je .Lt_00F1
jmp .Lt_00B6
.Lt_00F1:
.Lt_00F0:
jmp .Lt_00C6
.Lt_00F2:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+12]
cmp dword ptr [ebx+12], eax
je .Lt_00F4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 4096
test eax, eax
jne .Lt_00F6
jmp .Lt_00B6
.Lt_00F6:
.Lt_00F5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 4096
test eax, eax
jne .Lt_00F8
jmp .Lt_00B6
.Lt_00F8:
.Lt_00F7:
.Lt_00F4:
.Lt_00F3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+20]
cmp dword ptr [eax+20], ecx
je .Lt_00FA
jmp .Lt_00B6
.Lt_00FA:
.Lt_00F9:
jmp .Lt_00C6
.Lt_00FB:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ecx+12], ebx
je .Lt_00FD
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 4096
test ebx, ebx
jne .Lt_00FF
jmp .Lt_00B6
.Lt_00FF:
.Lt_00FE:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 4096
test ebx, ebx
jne .Lt_0101
jmp .Lt_00B6
.Lt_0101:
.Lt_0100:
.Lt_00FD:
.Lt_00FC:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
cmp dword ptr [ebx+24], eax
jne .Lt_0113
cmp dword ptr [ebx+20], esi
je .Lt_0103
.Lt_0113:
jmp .Lt_00B6
.Lt_0103:
.Lt_0102:
jmp .Lt_00C6
.Lt_0104:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [esi+12], ebx
je .Lt_0106
jmp .Lt_00B6
.Lt_0106:
.Lt_0105:
jmp .Lt_00C6
.Lt_00C7:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967293
cmp ebx, 20
ja .Lt_00C6
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_0107+ebx*4-12]
.LT_0107:
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00C6
.int .Lt_00F2
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_0104
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C9
.int .Lt_00DC
.int .Lt_00CC
.int .Lt_00E8
.int .Lt_00D5
.int .Lt_00E5
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00FB
.Lt_00C6:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTISEQUALPARAMINIT
add esp, 8
test eax, eax
jne .Lt_0109
jmp .Lt_00B6
.Lt_0109:
.Lt_0108:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTISEQUALPARAMINIT
add esp, 8
test eax, eax
jne .Lt_010B
jmp .Lt_00B6
.Lt_010B:
.Lt_010A:
mov dword ptr [ebp-4], -1
.Lt_00B6:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTHASSIDEFX
ASTHASSIDEFX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0114:
cmp dword ptr [ebp+8], 0
jne .Lt_0117
jmp .Lt_0115
.Lt_0117:
.Lt_0116:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .Lt_0119
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+12]
and eax, 524288
test eax, eax
jne .Lt_011B
mov dword ptr [ebp-4], -1
jmp .Lt_0115
.Lt_011B:
.Lt_011A:
.Lt_0119:
.Lt_0118:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTHASSIDEFX
add esp, 4
test eax, eax
je .Lt_011D
mov dword ptr [ebp-4], -1
jmp .Lt_0115
.Lt_011D:
.Lt_011C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTHASSIDEFX
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0115:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISSYMBOLONTREE
ASTISSYMBOLONTREE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_011E:
cmp dword ptr [ebp+12], 0
jne .Lt_0121
mov dword ptr [ebp-4], 0
jmp .Lt_011F
.Lt_0121:
.Lt_0120:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .Lt_0123
.Lt_0125:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-8], eax
jne .Lt_0127
mov dword ptr [ebp-4], -1
jmp .Lt_011F
.Lt_0127:
.Lt_0126:
cmp dword ptr [ebp-8], 0
je .Lt_0129
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 81920
test ebx, ebx
je .Lt_012B
mov dword ptr [ebp-4], -1
jmp .Lt_011F
.Lt_012B:
.Lt_012A:
.Lt_0129:
.Lt_0128:
jmp .Lt_0122
.Lt_012C:
mov dword ptr [ebp-4], -1
jmp .Lt_011F
jmp .Lt_0122
.Lt_0123:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967290
cmp ebx, 17
ja .Lt_0122
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.LT_012D+ebx*4-24]
.LT_012D:
.int .Lt_0125
.int .Lt_0122
.int .Lt_0122
.int .Lt_0122
.int .Lt_0122
.int .Lt_0122
.int .Lt_0122
.int .Lt_0122
.int .Lt_0122
.int .Lt_0122
.int .Lt_0122
.int .Lt_0125
.int .Lt_0125
.int .Lt_0125
.int .Lt_012C
.int .Lt_0122
.int .Lt_0122
.int .Lt_0125
.Lt_0122:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+56], 0
je .Lt_012F
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
push dword ptr [ebp+8]
call ASTISSYMBOLONTREE
add esp, 8
test eax, eax
je .Lt_0131
mov dword ptr [ebp-4], -1
jmp .Lt_011F
.Lt_0131:
.Lt_0130:
.Lt_012F:
.Lt_012E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
je .Lt_0133
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
push dword ptr [ebp+8]
call ASTISSYMBOLONTREE
add esp, 8
test eax, eax
je .Lt_0135
mov dword ptr [ebp-4], -1
jmp .Lt_011F
.Lt_0135:
.Lt_0134:
.Lt_0133:
.Lt_0132:
mov dword ptr [ebp-4], 0
.Lt_011F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREPLACESYMBOLONTREE
ASTREPLACESYMBOLONTREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0136:
cmp dword ptr [ebp+8], 0
jne .Lt_0139
jmp .Lt_0137
.Lt_0139:
.Lt_0138:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+12], ebx
jne .Lt_013B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
.Lt_013B:
.Lt_013A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_013D
.Lt_013F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+28], eax
jne .Lt_0141
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+28], ebx
.Lt_0141:
.Lt_0140:
jmp .Lt_013C
.Lt_0142:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+20], eax
jne .Lt_0144
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+20], ebx
.Lt_0144:
.Lt_0143:
jmp .Lt_013C
.Lt_0145:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTREPLACESYMBOLONCALL
add esp, 12
jmp .Lt_013C
.Lt_013D:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967293
cmp ebx, 23
ja .Lt_013C
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.LT_0146+ebx*4-12]
.LT_0146:
.int .Lt_013F
.int .Lt_013F
.int .Lt_013C
.int .Lt_013C
.int .Lt_013F
.int .Lt_013C
.int .Lt_0145
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_013F
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_013C
.int .Lt_0142
.Lt_013C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .Lt_0148
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTREPLACESYMBOLONTREE
add esp, 12
.Lt_0148:
.Lt_0147:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .Lt_014A
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call ASTREPLACESYMBOLONTREE
add esp, 12
.Lt_014A:
.Lt_0149:
.Lt_0137:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREPLACEFWDREF
ASTREPLACEFWDREF:
push ebp
mov ebp, esp
push ebx
.Lt_014B:
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
je .Lt_014E
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call TYPEMERGE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+8], ebx
.Lt_014E:
.Lt_014D:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .Lt_0150
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTREPLACEFWDREF
add esp, 16
.Lt_0150:
.Lt_014F:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .Lt_0152
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call ASTREPLACEFWDREF
add esp, 16
.Lt_0152:
.Lt_0151:
.Lt_014C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISCONSTANT
ASTISCONSTANT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0155:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0158
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
je .Lt_015A
mov dword ptr [ebp-4], -1
jmp .Lt_0156
.Lt_015A:
.Lt_0159:
.Lt_0158:
.Lt_0157:
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
.Lt_0156:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTGETSTRLITSYMBOL
ASTGETSTRLITSYMBOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_015D:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .Lt_0160
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0162
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 1024
test eax, eax
je .Lt_0164
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0164:
.Lt_0163:
.Lt_0162:
.Lt_0161:
.Lt_0160:
.Lt_015F:
.Lt_015E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCHECKCONST
ASTCHECKCONST:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_0165:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-28], ebx
jmp .Lt_0168
.Lt_016A:
push dword ptr [ebp+12]
call ASTCONSTGETASDOUBLE
add esp, 4
fstp qword ptr [ebp-12]
fld qword ptr [ebp-12]
fabs
fstp qword ptr [ebp-36]
fld qword ptr [ebp-36]
fcomp qword ptr [Lt_0186]
fnstsw ax
test ah, 0b01000000
jnz .Lt_016E
.Lt_016F:
fld qword ptr [ebp-36]
fcomp qword ptr [Lt_0187]
fnstsw ax
test ah, 0b00000001
jnz .Lt_016D
fld qword ptr [ebp-36]
fcomp qword ptr [Lt_0188]
fnstsw ax
test ah, 0b01000001
jz .Lt_016D
.Lt_016E:
mov dword ptr [ebp-4], -1
jmp .Lt_016B
.Lt_016D:
fld qword ptr [ebp-12]
fstp dword ptr [ebp-16]
fld dword ptr [ebp-16]
fadd dword ptr [ebp-16]
fcomp dword ptr [ebp-16]
fnstsw ax
test ah, 0b01000000
jz .Lt_0172
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
jmp .Lt_0171
.Lt_0172:
mov dword ptr [ebp-4], -1
.Lt_0171:
.Lt_0170:
.Lt_016B:
jmp .Lt_0167
.Lt_0173:
push dword ptr [ebp+12]
call ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 0
mov eax, -1
jne .Lt_018F
cmp dword ptr [ebp-24], 0
je .Lt_018E
.Lt_018F:
xor eax, eax
.Lt_018E:
cmp dword ptr [ebp-20], 0
mov edx, -1
jne .Lt_0191
cmp dword ptr [ebp-24], 1
je .Lt_0190
.Lt_0191:
xor edx, edx
.Lt_0190:
or eax, edx
cmp dword ptr [ebp-20], 4294967295
mov edx, -1
jne .Lt_0193
cmp dword ptr [ebp-24], 4294967295
je .Lt_0192
.Lt_0193:
xor edx, edx
.Lt_0192:
or eax, edx
mov dword ptr [ebp-4], eax
jmp .Lt_0167
.Lt_0174:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0175
mov dword ptr [ebp-32], 24
jmp .Lt_0189
.Lt_0175:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_0189:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-36], edx
jmp .Lt_0178
.Lt_017A:
push dword ptr [ebp+12]
call ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .Lt_0194
jl .Lt_0195
cmp dword ptr [ebp-24], 4294967168
jae .Lt_0194
.Lt_0195:
xor eax, eax
.Lt_0194:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .Lt_0196
jg .Lt_0197
cmp dword ptr [ebp-24], 255
jbe .Lt_0196
.Lt_0197:
xor edx, edx
.Lt_0196:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .Lt_0177
.Lt_017B:
push dword ptr [ebp+12]
call ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .Lt_0198
jl .Lt_0199
cmp dword ptr [ebp-24], 4294934528
jae .Lt_0198
.Lt_0199:
xor eax, eax
.Lt_0198:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .Lt_019A
jg .Lt_019B
cmp dword ptr [ebp-24], 65535
jbe .Lt_019A
.Lt_019B:
xor edx, edx
.Lt_019A:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .Lt_0177
.Lt_017C:
push dword ptr [ebp+12]
call ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
cmp dword ptr [ebp-20], 4294967295
mov eax, -1
jg .Lt_019C
jl .Lt_019D
cmp dword ptr [ebp-24], 2147483648
jae .Lt_019C
.Lt_019D:
xor eax, eax
.Lt_019C:
cmp dword ptr [ebp-20], 0
mov edx, -1
jl .Lt_019E
jg .Lt_019F
cmp dword ptr [ebp-24], 4294967295
jbe .Lt_019E
.Lt_019F:
xor edx, edx
.Lt_019E:
and eax, edx
mov dword ptr [ebp-4], eax
jmp .Lt_0177
.Lt_017D:
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 480
je .Lt_017E
mov dword ptr [ebp-40], 24
jmp .Lt_018A
.Lt_017E:
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_018A:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_0181
push dword ptr [ebp+12]
call ASTCONSTGETASDOUBLE
add esp, 4
fstp qword ptr [ebp-12]
fld qword ptr [ebp-12]
fcomp qword ptr [Lt_018B]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
fld qword ptr [ebp-12]
fcomp qword ptr [Lt_018C]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz dl
shr edx, 1
sbb edx, edx
and eax, edx
mov dword ptr [ebp-4], eax
.Lt_0181:
.Lt_0180:
jmp .Lt_0177
.Lt_0178:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 7
ja .Lt_0177
mov eax, dword ptr [ebp-36]
jmp dword ptr [.LT_0182+eax*4-4]
.LT_0182:
.int .Lt_017A
.int .Lt_017A
.int .Lt_017B
.int .Lt_017B
.int .Lt_017C
.int .Lt_017C
.int .Lt_017D
.int .Lt_017D
.Lt_0177:
jmp .Lt_0167
.Lt_0168:
mov eax, dword ptr [ebp-28]
add eax, 4294967295
cmp eax, 14
ja .Lt_0174
mov eax, dword ptr [ebp-28]
jmp dword ptr [.LT_0183+eax*4-4]
.LT_0183:
.int .Lt_0173
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_016A
.Lt_0167:
mov eax, dword ptr [ebp-4]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [AST+232]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .Lt_0185
push 0
push 1
push 0
push 25
call ERRREPORTWARN
add esp, 16
.Lt_0185:
.Lt_0184:
.Lt_0166:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTPTRCHECK
ASTPTRCHECK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A4:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
jne .Lt_01A7
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 16
jne .Lt_01A9
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_01AA
mov dword ptr [ebp-12], 24
jmp .Lt_01B3
.Lt_01AA:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_01B3:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .Lt_01AD
push dword ptr [ebp+20]
call ASTCONSTEQZERO
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_01AD:
.Lt_01AC:
.Lt_01A9:
.Lt_01A8:
jmp .Lt_01A5
.Lt_01A7:
.Lt_01A6:
mov eax, dword ptr [ebp+8]
and eax, 31
test eax, eax
jne .Lt_01AF
mov eax, dword ptr [ebp-8]
and eax, 31
test eax, eax
jne .Lt_01B1
mov dword ptr [ebp-4], -1
jmp .Lt_01A5
.Lt_01B1:
.Lt_01B0:
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
jmp .Lt_01A5
jmp .Lt_01AE
.Lt_01AF:
mov eax, dword ptr [ebp-8]
and eax, 31
test eax, eax
jne .Lt_01B2
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
jmp .Lt_01A5
.Lt_01B2:
.Lt_01AE:
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
call TYPECALCMATCH
add esp, 20
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_01A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTUPDSTRCONCAT
ASTUPDSTRCONCAT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B7:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .Lt_01BA
jmp .Lt_01B8
.Lt_01BA:
.Lt_01B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-16], eax
jmp .Lt_01BC
.Lt_01BE:
jmp .Lt_01BB
.Lt_01BF:
jmp .Lt_01B8
jmp .Lt_01BB
.Lt_01BC:
mov eax, dword ptr [ebp-16]
add eax, 4294967289
cmp eax, 11
ja .Lt_01BF
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_01C0+eax*4-28]
.LT_01C0:
.int .Lt_01BE
.int .Lt_01BF
.int .Lt_01BF
.int .Lt_01BF
.int .Lt_01BF
.int .Lt_01BF
.int .Lt_01BF
.int .Lt_01BF
.int .Lt_01BF
.int .Lt_01BF
.int .Lt_01BE
.int .Lt_01BE
.Lt_01BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_01C2
push dword ptr [ebp-8]
call ASTUPDSTRCONCAT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.Lt_01C2:
.Lt_01C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_01C4
push dword ptr [ebp-12]
call ASTUPDSTRCONCAT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_01C4:
.Lt_01C3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_01C6
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 28
jne .Lt_01C8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
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
je .Lt_01CA
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call RTLSTRCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01C9
.Lt_01CA:
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call RTLWSTRCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_01C9:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.Lt_01C8:
.Lt_01C7:
.Lt_01C6:
.Lt_01C5:
.Lt_01B8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDBRANCH
ASTBUILDBRANCH:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.Lt_01CB:
cmp dword ptr [ebp+8], 0
jne .Lt_01CE
mov dword ptr [ebp-4], 0
jmp .Lt_01CC
.Lt_01CE:
.Lt_01CD:
push dword ptr [ebp+8]
call ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_01CF
mov dword ptr [ebp-32], 24
jmp .Lt_0225
.Lt_01CF:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_0225:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 2
jne .Lt_01D2
mov dword ptr [ebp-4], 0
jmp .Lt_01CC
.Lt_01D2:
.Lt_01D1:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-40], ebx
jmp .Lt_01D4
.Lt_01D6:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 20
je .Lt_01D8
mov dword ptr [ebp-4], 0
jmp .Lt_01CC
.Lt_01D8:
.Lt_01D7:
jmp .Lt_01D3
.Lt_01D9:
push 0
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp+8]
push 0
push 0
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_01DB
push 0
lea eax, [ebp-44]
push eax
push dword ptr [ebp+8]
push 0
push 32
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_01DD
push 27
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_01DF
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 9
push offset Lt_01E1
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
push dword ptr [ebx+16]
push 3
push offset Lt_01E0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea ebx, [ebp-60]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
push -1
push 99
call ERRREPORT
add esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-4], 0
jmp .Lt_01CC
.Lt_01DF:
.Lt_01DE:
push 0
push -1
push 99
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_01CC
.Lt_01DD:
.Lt_01DC:
.Lt_01DB:
.Lt_01DA:
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-48]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
jmp .Lt_01D3
.Lt_01D4:
mov ebx, dword ptr [ebp-40]
add ebx, 4294967292
cmp ebx, 16
ja .Lt_01D3
mov ebx, dword ptr [ebp-40]
jmp dword ptr [.LT_01E5+ebx*4-16]
.LT_01E5:
.int .Lt_01D6
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D6
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D3
.int .Lt_01D9
.Lt_01D3:
push dword ptr [ebp+8]
call ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
lea eax, [AST+148]
push eax
call LISTGETHEAD
add esp, 4
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp+20]
not ebx
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .Lt_01E7
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-12], 0
.Lt_01E8:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 15
jne .Lt_01E9
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 1
jne .Lt_01EC
.Lt_01ED:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
jmp .Lt_01EA
.Lt_01EC:
cmp dword ptr [ebp-40], 2
jne .Lt_01EE
.Lt_01EF:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
jmp .Lt_01EA
.Lt_01EE:
mov dword ptr [ebp-8], 0
.Lt_01F0:
.Lt_01EA:
jmp .Lt_01E8
.Lt_01E9:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 16
jne .Lt_01F3
.Lt_01F4:
push dword ptr [ebp-8]
call ASTCONSTEQZERO
add esp, 4
mov ebx, dword ptr [ebp+16]
cmp eax, ebx
je .Lt_01F6
push 0
push dword ptr [ebp+12]
push 98
call ASTNEWBRANCH
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_01F5
.Lt_01F6:
call ASTNEWNOP
mov dword ptr [ebp-16], eax
.Lt_01F5:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
jmp .Lt_01F1
.Lt_01F3:
cmp dword ptr [ebp-40], 3
jne .Lt_01F7
.Lt_01F8:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-44], ebx
jmp .Lt_01FA
.Lt_01FC:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+28], eax
cmp dword ptr [ebp+16], 0
jne .Lt_01FE
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
call ASTGETINVERSELOGOP
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
.Lt_01FE:
.Lt_01FD:
jmp .Lt_01F9
.Lt_01FF:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0200
mov dword ptr [ebp-52], 24
jmp .Lt_0226
.Lt_0200:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_0226:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .Lt_0203
mov eax, dword ptr [IR+276]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .Lt_0205
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-56], eax
jmp .Lt_0207
.Lt_0209:
mov eax, dword ptr [IR+276]
and eax, 1024
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .Lt_0206
.Lt_0207:
mov eax, dword ptr [ebp-56]
add eax, 4294967283
cmp eax, 1
ja .Lt_0206
mov eax, dword ptr [ebp-56]
jmp dword ptr [.LT_020A+eax*4-52]
.LT_020A:
.int .Lt_0209
.int .Lt_0209
.Lt_0206:
.Lt_0205:
.Lt_0204:
jmp .Lt_0202
.Lt_0203:
mov eax, dword ptr [IR+276]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
.Lt_0202:
cmp dword ptr [ebp-48], 0
je .Lt_020C
push dword ptr [ebp-8]
push dword ptr [ebp+12]
cmp dword ptr [ebp+16], 0
je .Lt_020D
mov dword ptr [ebp-56], 95
jmp .Lt_0227
.Lt_020D:
mov dword ptr [ebp-56], 92
.Lt_0227:
push dword ptr [ebp-56]
call ASTNEWBRANCH
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_020B
.Lt_020C:
mov dword ptr [ebp-8], 0
.Lt_020B:
jmp .Lt_01F9
.Lt_020F:
mov dword ptr [ebp-8], 0
jmp .Lt_01F9
.Lt_01FA:
mov eax, dword ptr [ebp-44]
add eax, 4294967268
cmp eax, 22
ja .Lt_020F
mov eax, dword ptr [ebp-44]
jmp dword ptr [.LT_0210+eax*4-112]
.LT_0210:
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_020F
.int .Lt_020F
.int .Lt_020F
.int .Lt_020F
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_020F
.int .Lt_020F
.int .Lt_01FF
.int .Lt_020F
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_020F
.int .Lt_020F
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.Lt_01F9:
jmp .Lt_01F1
.Lt_01F7:
mov dword ptr [ebp-8], 0
.Lt_0211:
.Lt_01F1:
cmp dword ptr [ebp-8], 0
je .Lt_0213
cmp dword ptr [ebp-12], 0
je .Lt_0215
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 1
jne .Lt_0218
.Lt_0219:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
jmp .Lt_0216
.Lt_0218:
cmp dword ptr [ebp-40], 2
jne .Lt_021A
.Lt_021B:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+60], ebx
jmp .Lt_0216
.Lt_021A:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
.Lt_021C:
.Lt_0216:
jmp .Lt_0214
.Lt_0215:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
.Lt_0214:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01CC
.Lt_0213:
.Lt_0212:
jmp .Lt_01E6
.Lt_01E7:
mov dword ptr [ebp-8], 0
.Lt_01E6:
cmp dword ptr [ebp-20], 4
je .Lt_021F
.Lt_0220:
cmp dword ptr [ebp-20], 7
jne .Lt_021E
.Lt_021F:
mov ebx, dword ptr [ebp-20]
and ebx, -512
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+16]
and ecx, 511
or ebx, ecx
mov dword ptr [ebp-20], ebx
.Lt_021E:
.Lt_021D:
cmp dword ptr [ebp-24], 0
je .Lt_0222
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-20]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-28], eax
push 64
push dword ptr [ebp+8]
push dword ptr [ebp-28]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 0
call ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-28]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp+8], eax
.Lt_0222:
.Lt_0221:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call ASTNEWCONSTZ
add esp, 8
push eax
push dword ptr [ebp+8]
cmp dword ptr [ebp+16], 0
je .Lt_0223
mov dword ptr [ebp-36], 48
jmp .Lt_0228
.Lt_0223:
mov dword ptr [ebp-36], 45
.Lt_0228:
push dword ptr [ebp-36]
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_01CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTADD
ASTDTORLISTADD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0237:
push dword ptr [ebp+8]
call HHASDTOR
add esp, 4
test eax, eax
jne .Lt_023A
jmp .Lt_0238
.Lt_023A:
.Lt_0239:
lea eax, [AST+148]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
lea ebx, [AST+180]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+4], 0
jle .Lt_023D
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
sal ecx, 2
mov eax, dword ptr [ebx]
add eax, ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [eax-4]
mov dword ptr [ecx+4], ebx
jmp .Lt_023C
.Lt_023D:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+4], 0
.Lt_023C:
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+8], 0
.Lt_0238:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTADDREF
ASTDTORLISTADDREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_023E:
push dword ptr [ebp+8]
call HHASDTOR
add esp, 4
test eax, eax
jne .Lt_0241
jmp .Lt_023F
.Lt_0241:
.Lt_0240:
lea eax, [AST+148]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0242:
cmp dword ptr [ebp-4], 0
je .Lt_0243
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .Lt_0245
mov ebx, dword ptr [ebp-4]
inc dword ptr [ebx+8]
jmp .Lt_0243
.Lt_0245:
.Lt_0244:
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0242
.Lt_0243:
.Lt_023F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTREMOVEREF
ASTDTORLISTREMOVEREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0246:
push dword ptr [ebp+8]
call HHASDTOR
add esp, 4
test eax, eax
jne .Lt_0249
jmp .Lt_0247
.Lt_0249:
.Lt_0248:
lea eax, [AST+148]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_024A:
cmp dword ptr [ebp-4], 0
je .Lt_024B
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .Lt_024D
mov ebx, dword ptr [ebp-4]
dec dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+8], 0
jg .Lt_024F
push dword ptr [ebp-4]
lea ebx, [AST+148]
push ebx
call LISTDELNODE
add esp, 8
.Lt_024F:
.Lt_024E:
jmp .Lt_024B
.Lt_024D:
.Lt_024C:
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_024A
.Lt_024B:
.Lt_0247:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTFLUSH
ASTDTORLISTFLUSH:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0250:
mov dword ptr [ebp-16], 0
lea eax, [AST+148]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0252:
cmp dword ptr [ebp-8], 0
je .Lt_0253
push dword ptr [ebp-8]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .Lt_0255
push 0
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx]
call _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
lea eax, [AST+148]
push eax
call LISTDELNODE
add esp, 8
.Lt_0255:
.Lt_0254:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_0252
.Lt_0253:
cmp dword ptr [ebp+8], 0
jne .Lt_0257
mov dword ptr [AST+192], 0
.Lt_0257:
.Lt_0256:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0251:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTDEL
ASTDTORLISTDEL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0258:
push dword ptr [ebp+8]
call HHASDTOR
add esp, 4
test eax, eax
jne .Lt_025B
jmp .Lt_0259
.Lt_025B:
.Lt_025A:
lea eax, [AST+148]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_025C:
cmp dword ptr [ebp-4], 0
je .Lt_025D
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .Lt_025F
push dword ptr [ebp-4]
lea ebx, [AST+148]
push ebx
call LISTDELNODE
add esp, 8
jmp .Lt_025D
.Lt_025F:
.Lt_025E:
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_025C
.Lt_025D:
.Lt_0259:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTSCOPEBEGIN
ASTDTORLISTSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0260:
cmp dword ptr [ebp+8], 0
jne .Lt_0263
inc dword ptr [AST+192]
mov eax, dword ptr [AST+192]
mov dword ptr [ebp+8], eax
.Lt_0263:
.Lt_0262:
lea eax, [AST+180]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+8]
cmp dword ptr [eax+4], ecx
jne .Lt_0266
mov ecx, dword ptr [ebp-4]
add dword ptr [ecx+8], 8
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+8]
sal eax, 2
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call XREALLOCATE
add esp, 8
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx], eax
.Lt_0266:
.Lt_0265:
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
.Lt_0261:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTSCOPEEND
ASTDTORLISTSCOPEEND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0267:
lea eax, [AST+180]
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
.Lt_0268:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDTORLISTUNSCOPE
ASTDTORLISTUNSCOPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_026A:
lea eax, [AST+148]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_026C:
cmp dword ptr [ebp-4], 0
je .Lt_026D
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .Lt_026F
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+4], 0
.Lt_026F:
.Lt_026E:
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_026C
.Lt_026D:
.Lt_026B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSETTYPE
ASTSETTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0270:
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
jne .Lt_0274
.Lt_0275:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jne .Lt_0278
.Lt_0279:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTSETTYPE
add esp, 12
jmp .Lt_0276
.Lt_0278:
cmp dword ptr [ebp-8], 2
jne .Lt_027A
.Lt_027B:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTSETTYPE
add esp, 12
.Lt_027A:
.Lt_0276:
jmp .Lt_0272
.Lt_0274:
cmp dword ptr [ebp-4], 19
jne .Lt_027C
.Lt_027D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTSETTYPE
add esp, 12
jmp .Lt_0272
.Lt_027C:
cmp dword ptr [ebp-4], 10
jne .Lt_027E
.Lt_027F:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTSETTYPE
add esp, 12
jmp .Lt_0272
.Lt_027E:
cmp dword ptr [ebp-4], 26
jne .Lt_0280
.Lt_0281:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTSETTYPE
add esp, 12
.Lt_0280:
.Lt_0272:
.Lt_0271:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSIZEOF
ASTSIZEOF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0282:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 4
je .Lt_0287
.Lt_0288:
cmp dword ptr [ebp-12], 7
je .Lt_0287
.Lt_0289:
cmp dword ptr [ebp-12], 18
jne .Lt_0286
.Lt_0287:
mov edx, dword ptr [ebp+8]
cmp dword ptr [edx+12], 0
je .Lt_028B
mov edx, dword ptr [ebp+12]
mov dword ptr [edx], -1
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+12]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], edx
.Lt_028B:
.Lt_028A:
.Lt_0286:
.Lt_0284:
.Lt_0283:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISACCESSTOLOCAL
ASTISACCESSTOLOCAL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_028E:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .Lt_0292
.Lt_0293:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HSYMBISONLOCALSTACK
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0290
.Lt_0292:
cmp dword ptr [ebp-8], 18
jne .Lt_0294
.Lt_0295:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 16384
test eax, eax
jne .Lt_0297
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HSYMBISONLOCALSTACK
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0297:
.Lt_0296:
jmp .Lt_0290
.Lt_0294:
cmp dword ptr [ebp-8], 9
jne .Lt_0298
.Lt_0299:
mov dword ptr [ebp-4], -1
jmp .Lt_0290
.Lt_0298:
cmp dword ptr [ebp-8], 19
jne .Lt_029A
.Lt_029B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 20
jne .Lt_029D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax+56], 0
je .Lt_029F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 3
jne .Lt_02A0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+20]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .Lt_02A6
.Lt_02A0:
mov dword ptr [ebp-12], 0
.Lt_02A6:
cmp dword ptr [ebp-12], 0
je .Lt_02A3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 6
jne .Lt_02A5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+56]
call ASTISACCESSTOLOCAL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_02A5:
.Lt_02A4:
.Lt_02A3:
.Lt_02A2:
.Lt_029F:
.Lt_029E:
jmp .Lt_029C
.Lt_029D:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTISACCESSTOLOCAL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_029C:
.Lt_029A:
.Lt_0290:
.Lt_028F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISRELATIONALBOP
ASTISRELATIONALBOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_02A8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_02AB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
sal ebx, 4
mov eax, dword ptr [AST_OPTB+ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_02AB:
.Lt_02AA:
.Lt_02A9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
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
HHASDTOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_022D:
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .Lt_0231
.Lt_0232:
mov dword ptr [ebp-4], -1
jmp .Lt_022F
.Lt_0231:
cmp dword ptr [ebp-8], 39
jne .Lt_0233
.Lt_0234:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 16777216
test eax, eax
je .Lt_0236
mov dword ptr [ebp-4], -1
.Lt_0236:
.Lt_0235:
.Lt_0233:
.Lt_022F:
.Lt_022E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSYMBISONLOCALSTACK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_028C:
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
.Lt_028D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 8
Lt_0186:	.quad	0x0000000000000000
.balign 8
Lt_0187:	.quad	0x36A6D601AD376AB9
.balign 8
Lt_0188:	.quad	0x47EC363CBF21F28A
.balign 8
Lt_018B:	.quad	0xC3E0000000000000
.balign 8
Lt_018C:	.quad	0x43F0000000000000
.balign 4
Lt_01E0:	.ascii	" \"\0"
.balign 4
Lt_01E1:	.ascii	".cast()\"\0"
