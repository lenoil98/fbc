	.intel_syntax noprefix

.section .text
.balign 16

.globl _HISREGFREE@8
_HISREGFREE@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0099:
cmp dword ptr [ebp+8], 0
jne .Lt_009C
cmp dword ptr [ebp+12], 4
je .Lt_009F
.Lt_00A0:
cmp dword ptr [ebp+12], 2
je .Lt_009F
.Lt_00A1:
cmp dword ptr [ebp+12], 1
jne .Lt_009E
.Lt_009F:
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
and eax, dword ptr [_EMIT+132]
test eax, eax
jne .Lt_00A3
mov dword ptr [ebp-4], 0
jmp .Lt_009A
.Lt_00A3:
.Lt_00A2:
.Lt_009E:
.Lt_009D:
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
or dword ptr [ebx+132], eax
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+128]
add ebx, eax
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
and eax, dword ptr [ebx+48]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HFINDREGNOTINVREG@8
_HFINDREGNOTINVREG@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A5:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
jne .Lt_00A9
.Lt_00AA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
jmp .Lt_00A7
.Lt_00A9:
cmp dword ptr [ebp-24], 2
je .Lt_00AC
.Lt_00AD:
cmp dword ptr [ebp-24], 3
jne .Lt_00AB
.Lt_00AC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
je .Lt_00AF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
cmp dword ptr [ebx], 4
jne .Lt_00B1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
.Lt_00B1:
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
.Lt_00AB:
.Lt_00A7:
mov dword ptr [ebp-16], -1
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .Lt_00B3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 4
jne .Lt_00B5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-16], eax
.Lt_00B5:
.Lt_00B4:
.Lt_00B3:
.Lt_00B2:
push dword ptr [_EMIT+8]
mov eax, dword ptr [_EMIT+8]
call dword ptr [eax+24]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], -1
jne .Lt_00B7
cmp dword ptr [ebp+12], 0
jne .Lt_00B9
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .Lt_00BA
.Lt_00BD:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-24], eax
je .Lt_00BF
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
push dword ptr [ebp-24]
push 0
call _HISREGFREE@8
test eax, eax
je .Lt_00C1
jmp .Lt_00BC
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
.Lt_00BB:
dec dword ptr [ebp-24]
.Lt_00BA:
cmp dword ptr [ebp-24], 0
jge .Lt_00BD
.Lt_00BC:
jmp .Lt_00B8
.Lt_00B9:
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .Lt_00C2
.Lt_00C5:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-24], eax
je .Lt_00C7
cmp dword ptr [ebp-24], 2
je .Lt_00C9
cmp dword ptr [ebp-24], 1
je .Lt_00CB
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
push dword ptr [ebp-24]
push 0
call _HISREGFREE@8
test eax, eax
je .Lt_00CD
jmp .Lt_00C4
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
.Lt_00C7:
.Lt_00C6:
.Lt_00C3:
dec dword ptr [ebp-24]
.Lt_00C2:
cmp dword ptr [ebp-24], 0
jge .Lt_00C5
.Lt_00C4:
.Lt_00B8:
jmp .Lt_00B6
.Lt_00B7:
cmp dword ptr [ebp+12], 0
jne .Lt_00CF
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .Lt_00D0
.Lt_00D3:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-24]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-24]
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00D5
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-24]
push 0
call _HISREGFREE@8
test eax, eax
je .Lt_00D7
jmp .Lt_00D2
.Lt_00D7:
.Lt_00D6:
.Lt_00D5:
.Lt_00D4:
.Lt_00D1:
dec dword ptr [ebp-24]
.Lt_00D0:
cmp dword ptr [ebp-24], 0
jge .Lt_00D3
.Lt_00D2:
jmp .Lt_00CE
.Lt_00CF:
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_00D8
.Lt_00DB:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-8]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-8]
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00DD
cmp dword ptr [ebp-8], 2
je .Lt_00DF
cmp dword ptr [ebp-8], 1
je .Lt_00E1
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-8]
push 0
call _HISREGFREE@8
test eax, eax
je .Lt_00E3
jmp .Lt_00DA
.Lt_00E3:
.Lt_00E2:
.Lt_00E1:
.Lt_00E0:
.Lt_00DF:
.Lt_00DE:
.Lt_00DD:
.Lt_00DC:
.Lt_00D9:
dec dword ptr [ebp-8]
.Lt_00D8:
cmp dword ptr [ebp-8], 0
jge .Lt_00DB
.Lt_00DA:
.Lt_00CE:
.Lt_00B6:
.Lt_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HFINDFREEREG@4
_HFINDFREEREG@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E8:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+24]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_00EA
.Lt_00ED:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HISREGFREE@8
test eax, eax
je .Lt_00EF
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00E9
.Lt_00EF:
.Lt_00EE:
.Lt_00EB:
dec dword ptr [ebp-8]
.Lt_00EA:
cmp dword ptr [ebp-8], 0
jge .Lt_00ED
.Lt_00EC:
.Lt_00E9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HISREGINVREG@8
_HISREGINVREG@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F0:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 4
jne .Lt_00F4
.Lt_00F5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+12], eax
jne .Lt_00F7
mov dword ptr [ebp-4], -1
jmp .Lt_00F1
.Lt_00F7:
.Lt_00F6:
jmp .Lt_00F2
.Lt_00F4:
cmp dword ptr [ebp-8], 2
je .Lt_00F9
.Lt_00FA:
cmp dword ptr [ebp-8], 3
jne .Lt_00F8
.Lt_00F9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
je .Lt_00FC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
cmp dword ptr [ebx], 4
jne .Lt_00FE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+12], ebx
jne .Lt_0100
mov dword ptr [ebp-4], -1
jmp .Lt_00F1
.Lt_0100:
.Lt_00FF:
.Lt_00FE:
.Lt_00FD:
.Lt_00FC:
.Lt_00FB:
.Lt_00F8:
.Lt_00F2:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .Lt_0102
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 4
jne .Lt_0104
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+12], eax
jne .Lt_0106
mov dword ptr [ebp-4], -1
.Lt_0106:
.Lt_0105:
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_0101:
.Lt_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HGETREGNAME@8
_HGETREGNAME@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0107:
cmp dword ptr [ebp+12], -1
jne .Lt_010A
mov dword ptr [ebp-4], 0
jmp .Lt_0109
.Lt_010A:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_010B
mov dword ptr [ebp-12], 24
jmp .Lt_010D
.Lt_010B:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_010D:
mov eax, dword ptr [ebp-12]
sal eax, 4
mov ebx, dword ptr [_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 3
add ebx, dword ptr [ebp+12]
lea eax, [_RNAMETB+ebx*8]
mov dword ptr [ebp-4], eax
.Lt_0109:
.Lt_0108:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HPREPOPERAND@24
_HPREPOPERAND@24:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_0129:
cmp dword ptr [ebp+8], 0
jne .Lt_012C
push 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .Lt_012A
.Lt_012C:
.Lt_012B:
cmp dword ptr [ebp+16], -2147483648
jne .Lt_012E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
.Lt_012E:
.Lt_012D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
jmp .Lt_0130
.Lt_0132:
cmp dword ptr [ebp+28], 0
je .Lt_0134
push 0
push 12
mov eax, dword ptr [ebp+16]
sal eax, 4
lea ebx, [_DTYPETB+eax+4]
push ebx
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push 3
push offset _Lt_0135
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .Lt_0133
.Lt_0134:
push 0
push 2
push offset _Lt_0137
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_0133:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
jne .Lt_0139
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME@4
mov dword ptr [_Lt_0160], eax
jmp .Lt_0138
.Lt_0139:
push dword ptr [ebp+8]
call _HGETIDXNAME@4
mov dword ptr [_Lt_0160], eax
.Lt_0138:
cmp dword ptr [_Lt_0160], 0
je .Lt_013B
push 0
push -1
push 0
push dword ptr [_Lt_0160]
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_013B:
.Lt_013A:
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+8]
add ebx, dword ptr [ecx+40]
adc eax, dword ptr [ecx+44]
mov ecx, ebx
mov dword ptr [ebp+20], ecx
cmp dword ptr [ebp+24], 0
je .Lt_013E
add dword ptr [ebp+20], 4
.Lt_013E:
.Lt_013D:
cmp dword ptr [ebp+20], 0
jle .Lt_0140
cmp dword ptr [_Lt_0160], 0
je .Lt_0142
push 0
push -1
push 2
push offset _Lt_0116
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ecx, [ebp-40]
push ecx
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_0142:
.Lt_0141:
push 0
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr@4
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .Lt_013F
.Lt_0140:
cmp dword ptr [ebp+20], 0
jge .Lt_0145
push 0
push -1
push -1
push dword ptr [ebp+20]
call _fb_IntToStr@4
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .Lt_013F
.Lt_0145:
cmp dword ptr [_Lt_0160], 0
jne .Lt_0148
push 0
push -1
push 2
push offset _Lt_0006
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_0148:
.Lt_0147:
.Lt_013F:
push 0
push -1
push 2
push offset _Lt_014A
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .Lt_012F
.Lt_014C:
push 0
push 8
push offset _Lt_014D
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jne .Lt_0161
cmp dword ptr [eax+40], 0
je .Lt_0150
.Lt_0161:
push 0
push -1
push 4
push offset _Lt_0151
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _fb_LongintToStr@8
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_0150:
.Lt_014F:
jmp .Lt_012F
.Lt_0154:
cmp dword ptr [ebp+24], 0
jne .Lt_0156
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp+16]
call _HGETREGNAME@8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .Lt_0155
.Lt_0156:
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
push dword ptr [ecx+12]
push dword ptr [ebp+16]
call _HGETREGNAME@8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_0155:
jmp .Lt_012F
.Lt_0157:
cmp dword ptr [ebp+24], 0
jne .Lt_0159
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
mov dword ptr [_Lt_0162], ebx
mov dword ptr [_Lt_0162+4], ecx
jmp .Lt_0158
.Lt_0159:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+56]
mov eax, dword ptr [ecx+24]
mov ebx, dword ptr [ecx+28]
mov dword ptr [_Lt_0162], eax
mov dword ptr [_Lt_0162+4], ebx
.Lt_0158:
cmp dword ptr [ebp+16], 1
jne .Lt_015B
cmp dword ptr [_Lt_0162+4], 0
jne .Lt_0163
cmp dword ptr [_Lt_0162], 0
je .Lt_015D
.Lt_0163:
push 0
push 2
push offset _Lt_0004
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .Lt_015C
.Lt_015D:
push 0
push 2
push offset _Lt_0006
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_015C:
jmp .Lt_015A
.Lt_015B:
push 0
push -1
push dword ptr [_Lt_0162+4]
push dword ptr [_Lt_0162]
call _fb_LongintToStr@8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_015A:
jmp .Lt_012F
.Lt_015E:
push 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .Lt_012F
.Lt_0130:
cmp dword ptr [ebp-4], 5
ja .Lt_015E
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_015F+eax*4]
_.LT_015F:
.int .Lt_0157
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0154
.int .Lt_014C
.Lt_012F:
.Lt_012A:
pop ebx
mov esp, ebp
pop ebp
ret 24

.section .bss
.balign 4
	.lcomm	_Lt_0160,4
.balign 4
	.lcomm	_Lt_0162,8

.section .text
.balign 16

.globl _HPREPOPERAND64@12
_HPREPOPERAND64@12:
push ebp
mov ebp, esp
.Lt_0164:
push -1
push 0
push 0
push 9
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push -1
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HPREPOPERAND@24
.Lt_0165:
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _OUTP@4
_OUTP@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_016C:
cmp dword ptr [_ENV+148], 0
je .Lt_016F
push 0
push 2
push offset _Lt_0170
push -1
push offset _Lt_0173
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0173
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0173
call _fb_StrAssign@20
jmp .Lt_016E
.Lt_016F:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0173
call _fb_StrAssign@20
.Lt_016E:
push 0
push 3
push offset _Lt_0172
push -1
push offset _Lt_0173
call _fb_StrConcatAssign@20
push -1
push offset _Lt_0173
call _fb_StrLen@8
push eax
push dword ptr [_Lt_0173]
call _OUTEX@8
.Lt_016D:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0173,12

.section .text
.balign 16

.globl _HBRANCH@8
_HBRANCH@8:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0174:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0178
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0176
push -1
push offset _Lt_0178
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
push -1
push offset _Lt_0178
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0178
call _fb_StrAssign@20
push dword ptr [_Lt_0178]
call _OUTP@4
.Lt_0175:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0178,12

.section .text
.balign 16

.globl _HPUSH@4
_HPUSH@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0179:
push 0
push 6
push offset _Lt_017B
push -1
push offset _Lt_017D
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_017D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_017D
call _fb_StrAssign@20
push dword ptr [_Lt_017D]
call _OUTP@4
.Lt_017A:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_017D,12

.section .text
.balign 16

.globl _HPOP@4
_HPOP@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_017E:
push 0
push 5
push offset _Lt_0180
push -1
push offset _Lt_0182
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0182
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0182
call _fb_StrAssign@20
push dword ptr [_Lt_0182]
call _OUTP@4
.Lt_017F:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0182,12

.section .text
.balign 16

.globl _HMOV@8
_HMOV@8:
push ebp
mov ebp, esp
sub esp, 24
.Lt_0183:
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0188
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0188
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0188
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0188
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
push -1
push offset _Lt_0188
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0188
call _fb_StrAssign@20
push dword ptr [_Lt_0188]
call _OUTP@4
.Lt_0184:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0188,12

.section .text
.balign 16

.globl _HLABEL@4
_HLABEL@4:
push ebp
mov ebp, esp
.Lt_0198:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_019C
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_019B
push -1
push offset _Lt_019C
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_019C]
call _OUTEX@8
.Lt_0199:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_019C,12

.section .text
.balign 16

.globl _EMITVARINIBEGIN@4
_EMITVARINIBEGIN@4:
push ebp
mov ebp, esp
push ebx
.Lt_09BC:
push 0
push 1
call __SETSECTION@8
push 1
push dword ptr [ebp+8]
call _EDBGEMITGLOBALVAR@8
push dword ptr [ebp+8]
call _HGETGLOBALVARALIGN@4
push eax
call _HALIGN@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
je .Lt_09BF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _HPUBLIC@8
.Lt_09BF:
.Lt_09BE:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _HLABEL@4
.Lt_09BD:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITVARINII@12
_EMITVARINII@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_09C1:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push 2
push offset _Lt_0176
push 0
push dword ptr [ebp+8]
call __GETTYPESTRING@4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+16], 0
mov ebx, -1
jne .Lt_09CA
cmp dword ptr [ebp+12], 0
jne .Lt_09CA
.Lt_09CB:
xor ebx, ebx
.Lt_09CA:
and eax, ebx
je .Lt_09C5
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.Lt_09C5:
.Lt_09C4:
mov ebx, dword ptr [ebp+8]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_09C7
push 0
push 3
push offset _Lt_09C8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_HEX_l@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_09C6
.Lt_09C7:
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_09C6:
push 0
push 3
push offset _Lt_0172
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push dword ptr [ebp-12]
call _OUTEX@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_09C2:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EMITVARINIF@12
_EMITVARINIF@12:
push ebp
mov ebp, esp
sub esp, 48
.Lt_09CE:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 3
push offset _Lt_0172
push -1
push -1
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFLOATTOHEX@12
push eax
push -1
push 2
push offset _Lt_0176
push 0
push dword ptr [ebp+8]
call __GETTYPESTRING@4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _OUTEX@8
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
.Lt_09CF:
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EMITVARINIOFS@8
_EMITVARINIOFS@8:
push ebp
mov ebp, esp
sub esp, 12
.Lt_09D4:
push 0
push 6
push offset _Lt_09D6
push -1
push offset _Lt_09DA
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_09DA
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_09DA
call _fb_StrAssign@20
cmp dword ptr [ebp+12], 0
je .Lt_09D9
push 0
push 4
push offset _Lt_0151
push -1
push offset _Lt_09DA
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_09DA
call _fb_StrConcatAssign@20
.Lt_09D9:
.Lt_09D8:
push 0
push 3
push offset _Lt_0172
push -1
push offset _Lt_09DA
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_09DA]
call _OUTEX@8
.Lt_09D5:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_09DA,12

.section .text
.balign 16

.globl _EMITVARINISTR@4
_EMITVARINISTR@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_09DB:
push 0
push 9
push offset _Lt_01F1
push -1
push offset _Lt_09DF
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_09DF
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_09DF
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_09DE
push -1
push offset _Lt_09DF
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_09DF]
call _OUTEX@8
.Lt_09DC:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_09DF,12

.section .text
.balign 16

.globl _EMITVARINIWSTR@4
_EMITVARINIWSTR@4:
push ebp
mov ebp, esp
sub esp, 20
.Lt_09E0:
push 0
push 9
push offset _Lt_01F1
push -1
push offset _Lt_09E8
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_09E8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_09E8
call _fb_StrAssign@20
mov dword ptr [ebp-16], 1
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-20], eax
jmp .Lt_09E4
.Lt_09E7:
push 0
push 3
push offset _Lt_01CF
push -1
push offset _Lt_09E8
call _fb_StrConcatAssign@20
.Lt_09E5:
inc dword ptr [ebp-16]
.Lt_09E4:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .Lt_09E7
.Lt_09E6:
push 0
push 4
push offset _Lt_01F4
push -1
push offset _Lt_09E8
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_09E8]
call _OUTEX@8
.Lt_09E1:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_09E8,12

.section .text
.balign 16

.globl _EMITVARINIPAD@4
_EMITVARINIPAD@4:
push ebp
mov ebp, esp
sub esp, 48
.Lt_09E9:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 3
push offset _Lt_0172
push -1
push 3
push offset _Lt_09EC
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push 7
push offset _Lt_09EB
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _OUTEX@8
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
.Lt_09EA:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITFBCTINFBEGIN@0
_EMITFBCTINFBEGIN@0:
.Lt_09F1:
push 0
push 7
call __SETSECTION@8
.Lt_09F2:
ret
.balign 16

.globl _EMITFBCTINFSTRING@4
_EMITFBCTINFSTRING@4:
push ebp
mov ebp, esp
sub esp, 36
.Lt_09F3:
push 0
push 0
push 4
call dword ptr [_EMIT+224]
push eax
push -1
push offset _Lt_09FA
call _fb_StrAssign@20
push 0
push -1
push -1
push 4
push offset _Lt_09F6
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset _Lt_09F5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_09FA
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_09FA
call _fb_StrAssign@20
push 0
push dword ptr [_Lt_09FA]
call _EMITWRITESTR@8
.Lt_09F4:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_09FA,12

.section .text
.balign 16

.globl _EMITFBCTINFEND@0
_EMITFBCTINFEND@0:
.Lt_09FB:
push 0
push offset _Lt_0000
call _EMITWRITESTR@8
.Lt_09FC:
ret
.balign 16

.globl _EMITGASX86_CTOR@0
_EMITGASX86_CTOR@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0ABA:
lea eax, [_EMIT+148]
push edi
push esi
mov edi, eax
mov esi, offset _Lt_0ABE
mov ecx, 21
rep movsd
pop esi
pop edi
mov eax, offset __OPFNTB
mov dword ptr [_EMIT+232], eax
cmp dword ptr [_ENV+116], 1
jl .Lt_0ABD
push dword ptr [_EMIT+232]
call __INIT_OPFNTB_SSE@4
.Lt_0ABD:
.Lt_0ABC:
mov dword ptr [ebp-4], -1
.Lt_0ABB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0ABE:
.int __INIT@0
.int __END@0
.int __GETOPTIONVALUE@4
.int __OPEN@0
.int __CLOSE@0
.int __ISREGPRESERVED@8
.int __GETFREEPRESERVEDREG@8
.int __GETRESULTREG@16
.int __PROCGETFRAMEREGNAME@0
.int __PROCBEGIN@4
.int __PROCEND@4
.int __PROCHEADER@8
.int __PROCFOOTER@16
.int __PROCALLOCARG@8
.int __PROCALLOCLOCAL@8
.int __PROCALLOCSTATICVARS@4
.int __SCOPEBEGIN@4
.int __SCOPEEND@4
.int __SETSECTION@8
.int __GETTYPESTRING@4
.int __GETSECTIONSTRING@8

.section .text
.balign 16
_fb_ctor__emit_x86:
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
_HGETIDXNAME@4:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.Lt_010E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [_Lt_0ABF], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0AC0], eax
cmp dword ptr [_Lt_0ABF], 0
jne .Lt_0111
cmp dword ptr [_Lt_0AC0], 0
jne .Lt_0113
mov dword ptr [ebp-4], 0
jmp .Lt_010F
.Lt_0113:
.Lt_0112:
push 0
push 1
push offset _Lt_0000
push 154
push offset _Lt_0AC1
call _fb_StrAssign@20
jmp .Lt_0110
.Lt_0111:
push 0
push 0
push dword ptr [_Lt_0ABF]
call _SYMBGETMANGLEDNAME@4
push eax
push 154
push offset _Lt_0AC1
call _fb_StrAssign@20
cmp dword ptr [_Lt_0AC0], 0
je .Lt_0115
push 0
push -1
push 2
push offset _Lt_0116
push 154
push offset _Lt_0AC1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push 154
push offset _Lt_0AC1
call _fb_StrAssign@20
.Lt_0115:
.Lt_0114:
.Lt_0110:
mov eax, dword ptr [_Lt_0AC0]
push dword ptr [eax+12]
mov eax, dword ptr [_Lt_0AC0]
push dword ptr [eax+4]
call _HGETREGNAME@8
mov dword ptr [_Lt_0AC2], eax
push 0
push -1
push 0
push dword ptr [_Lt_0AC2]
push 154
push offset _Lt_0AC1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 154
push offset _Lt_0AC1
call _fb_StrAssign@20
cmp dword ptr [_Lt_0AC0], 0
je .Lt_011A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov dword ptr [_Lt_0AC3], ebx
cmp dword ptr [_Lt_0AC3], 1
jle .Lt_011C
mov dword ptr [_Lt_0AC4], 0
cmp dword ptr [_Lt_0AC3], 3
je .Lt_011F
.Lt_0120:
cmp dword ptr [_Lt_0AC3], 5
je .Lt_011F
.Lt_0121:
cmp dword ptr [_Lt_0AC3], 9
jne .Lt_011E
.Lt_011F:
dec dword ptr [_Lt_0AC3]
mov dword ptr [_Lt_0AC4], -1
.Lt_011E:
.Lt_011D:
push 0
push -1
push 2
push offset _Lt_0122
push 154
push offset _Lt_0AC1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
push 154
push offset _Lt_0AC1
call _fb_StrAssign@20
push 0
push -1
push -1
push dword ptr [_Lt_0AC3]
call _fb_IntToStr@4
push eax
push 154
push offset _Lt_0AC1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push 154
push offset _Lt_0AC1
call _fb_StrAssign@20
cmp dword ptr [_Lt_0AC4], 0
je .Lt_0126
push 0
push -1
push 2
push offset _Lt_0116
push 154
push offset _Lt_0AC1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push 154
push offset _Lt_0AC1
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [_Lt_0AC2]
push 154
push offset _Lt_0AC1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push 154
push offset _Lt_0AC1
call _fb_StrAssign@20
.Lt_0126:
.Lt_0125:
.Lt_011C:
.Lt_011B:
.Lt_011A:
.Lt_0119:
mov eax, offset _Lt_0AC1
mov dword ptr [ebp-4], eax
.Lt_010F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0AC1,154
.balign 4
	.lcomm	_Lt_0ABF,4
.balign 4
	.lcomm	_Lt_0AC0,4
.balign 4
	.lcomm	_Lt_0AC4,4
.balign 4
	.lcomm	_Lt_0AC3,4
.balign 4
	.lcomm	_Lt_0AC2,4

.section .text
.balign 16
_OUTEX@8:
push ebp
mov ebp, esp
.Lt_0166:
cmp dword ptr [ebp+12], 0
jne .Lt_0169
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp+12], eax
.Lt_0169:
.Lt_0168:
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [_ENV+556]
call _fb_FilePutStr@16
test eax, eax
jne .Lt_016B
.Lt_016B:
.Lt_016A:
.Lt_0167:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HXCHG@8:
push ebp
mov ebp, esp
sub esp, 24
.Lt_0189:
push 0
push 6
push offset _Lt_018B
push -1
push offset _Lt_0AC5
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0AC5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0AC5
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0AC5
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
push -1
push offset _Lt_0AC5
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0AC5
call _fb_StrAssign@20
push dword ptr [_Lt_0AC5]
call _OUTP@4
.Lt_018A:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0AC5,12

.section .text
.balign 16
_HPUBLIC@8:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0193:
push 0
push 10
push offset _Lt_0196
push -1
push offset _Lt_0AC6
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0AC6
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0AC6
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0172
push -1
push offset _Lt_0AC6
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_0AC6]
call _OUTEX@8
.Lt_0194:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0AC6,12

.section .text
.balign 16
_HALIGN@4:
push ebp
mov ebp, esp
.Lt_019D:
push 0
push 9
push offset _Lt_019F
push -1
push offset _Lt_0AC7
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_0AC7
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0172
push -1
push offset _Lt_0AC7
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_0AC7]
call _OUTEX@8
.Lt_019E:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0AC7,12

.section .text
.balign 16
_HINITREGTB@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_01A0:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
push offset _Lt_0AC8
push 6
push 0
call _REGNEWCLASS@16
mov dword ptr [_EMIT+8], eax
cmp dword ptr [_ENV+116], 1
jne .Lt_01A5
push 0
push offset _Lt_0AC9
push 7
push 1
call _REGNEWCLASS@16
mov dword ptr [_EMIT+12], eax
mov dword ptr [ebp-12], 0
.Lt_01A9:
push 0
push -1
push -1
push dword ptr [ebp-12]
call _fb_IntToStr@4
push eax
push 4
push offset _Lt_01AA
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push 8
mov eax, dword ptr [ebp-12]
lea ebx, [_RNAMETB+eax*8+192]
push ebx
call _fb_StrAssign@20
.Lt_01A7:
inc dword ptr [ebp-12]
.Lt_01A6:
cmp dword ptr [ebp-12], 7
jle .Lt_01A9
.Lt_01A8:
jmp .Lt_01A4
.Lt_01A5:
push -1
push offset _Lt_0AC9
push 7
push 1
call _REGNEWCLASS@16
mov dword ptr [_EMIT+12], eax
.Lt_01A4:
.Lt_01A1:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0ACA:
.int 7
.int 6
.int 6
.int 7
.int 7
.int 7
.balign 4
_Lt_0AC8:
.int _Lt_0ACA
.int _Lt_0ACA
.int 24
.int 4
.int 1
.int 49
.int 6
.int 0
.int 5
.balign 4
_Lt_0ACB:
.int 12
.int 12
.int 12
.int 12
.int 12
.int 12
.int 12
.balign 4
_Lt_0AC9:
.int _Lt_0ACB
.int _Lt_0ACB
.int 28
.int 4
.int 1
.int 49
.int 7
.int 0
.int 6

.section .text
.balign 16
_HENDREGTB@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01AC:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
.Lt_01B1:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
call _REGDELCLASS@4
.Lt_01AF:
inc dword ptr [ebp-4]
.Lt_01AE:
cmp dword ptr [ebp-4], 1
jle .Lt_01B1
.Lt_01B0:
.Lt_01AD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETGLOBALTYPEALIGN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_01B2:
cmp dword ptr [ebp+8], 16
jne .Lt_01B5
mov dword ptr [ebp-4], 8
jmp .Lt_01B4
.Lt_01B5:
mov dword ptr [ebp-4], 4
.Lt_01B4:
.Lt_01B3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETGLOBALVARALIGN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .Lt_01B9
mov dword ptr [ebp-4], 4
jmp .Lt_01B8
.Lt_01B9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _HGETGLOBALTYPEALIGN@4
mov dword ptr [ebp-4], eax
.Lt_01B8:
.Lt_01B7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITVARBSS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_01BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [_Lt_0ACC], ebx
push 0
push 2
call __SETSECTION@8
mov ebx, dword ptr [_Lt_0ACC]
and ebx, 8
test ebx, ebx
jne .Lt_01BD
mov ebx, dword ptr [_Lt_0ACC]
and ebx, 32
test ebx, ebx
jle .Lt_01BF
push -1
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _HPUBLIC@8
.Lt_01BF:
.Lt_01BE:
push 0
push 7
push offset _Lt_01C0
push -1
push offset _Lt_0ACD
call _fb_StrAssign@20
jmp .Lt_01BC
.Lt_01BD:
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _HPUBLIC@8
push 0
push 6
push offset _Lt_01C1
push -1
push offset _Lt_0ACD
call _fb_StrAssign@20
.Lt_01BC:
push dword ptr [ebp+8]
call _HGETGLOBALVARALIGN@4
push eax
call _HALIGN@4
push 0
push -1
push offset _Lt_0ACD
push -1
push offset _Lt_0ACE
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0170
push -1
push offset _Lt_0ACE
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0ACE
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0ACE
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_01C3
push -1
push offset _Lt_0ACE
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _SYMBGETREALSIZE@4
push edx
push eax
call _fb_LongintToStr@8
push eax
push -1
push offset _Lt_0ACE
call _fb_StrConcatAssign@20
push -1
push dword ptr [_Lt_0ACE]
call _EMITWRITESTR@8
push 2
push dword ptr [ebp+8]
call _EDBGEMITGLOBALVAR@8
.Lt_01BB:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0ACD,12
.balign 4
	.lcomm	_Lt_0ACE,12
.balign 4
	.lcomm	_Lt_0ACC,4

.section .text
.balign 16
_HWRITEHEADER@0:
.Lt_01C4:
lea eax, [_ENV+280]
push eax
call _EDBGEMITHEADER@4
push -1
push offset _Lt_01C6
call _EMITWRITESTR@8
.Lt_01C5:
ret
.balign 16
_HEMITVARCONST@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_01C7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [_Lt_0ACF], ebx
mov ebx, dword ptr [_Lt_0ACF]
mov dword ptr [ebp-4], ebx
jmp .Lt_01CA
.Lt_01CC:
push 0
push 2
push offset _Lt_01CD
push -1
push offset _Lt_0AD0
call _fb_StrAssign@20
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HESCAPE@4
push eax
push -1
push offset _Lt_0AD0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0AD0
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_01D0
push -1
push offset _Lt_0AD0
call _fb_StrConcatAssign@20
jmp .Lt_01C9
.Lt_01D1:
push 0
push 2
push offset _Lt_01CD
push -1
push offset _Lt_0AD0
call _fb_StrAssign@20
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HESCAPEW@4
push eax
push -1
push offset _Lt_0AD0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0AD0
call _fb_StrAssign@20
mov dword ptr [ebp-20], 1
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-24], eax
jmp .Lt_01D4
.Lt_01D7:
push 0
push 3
push offset _Lt_01CF
push -1
push offset _Lt_0AD0
call _fb_StrConcatAssign@20
.Lt_01D5:
inc dword ptr [ebp-20]
.Lt_01D4:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .Lt_01D7
.Lt_01D6:
push 0
push 2
push offset _Lt_01CD
push -1
push offset _Lt_0AD0
call _fb_StrConcatAssign@20
jmp .Lt_01C9
.Lt_01D8:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
push -1
push offset _Lt_0AD0
call _fb_StrAssign@20
jmp .Lt_01C9
.Lt_01CA:
mov eax, dword ptr [ebp-4]
add eax, 4294967292
cmp eax, 3
ja .Lt_01D8
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_01D9+eax*4-16]
_.LT_01D9:
.int .Lt_01CC
.int .Lt_01D8
.int .Lt_01D8
.int .Lt_01D1
.Lt_01C9:
cmp dword ptr [_ENV+108], 2
jne .Lt_01DB
push 0
push 0
call __SETSECTION@8
jmp .Lt_01DA
.Lt_01DB:
push 0
push 1
call __SETSECTION@8
.Lt_01DA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+104], 0
je .Lt_01DD
mov eax, dword ptr [ebp+8]
push dword ptr [eax+104]
call _HALIGN@4
jmp .Lt_01DC
.Lt_01DD:
push dword ptr [_Lt_0ACF]
call _HGETGLOBALTYPEALIGN@4
push eax
call _HALIGN@4
.Lt_01DC:
push 0
push 0
push dword ptr [_Lt_0ACF]
call __GETTYPESTRING@4
push eax
push -1
push offset _Lt_0AD1
call _fb_StrAssign@20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0AD2
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_01DE
push -1
push offset _Lt_0AD2
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0AD1
push -1
push offset _Lt_0AD2
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0170
push -1
push offset _Lt_0AD2
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0AD0
push -1
push offset _Lt_0AD2
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_0AD2]
call _EMITWRITESTR@8
.Lt_01C8:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0AD0,12
.balign 4
	.lcomm	_Lt_0AD1,12
.balign 4
	.lcomm	_Lt_0AD2,12
.balign 4
	.lcomm	_Lt_0ACF,4

.section .text
.balign 16
_HWRITECTOR@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01DF:
cmp dword ptr [ebp+8], 0
jne .Lt_01E2
jmp .Lt_01E0
.Lt_01E2:
.Lt_01E1:
.Lt_01E3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+12]
and eax, 16777216
test eax, eax
je .Lt_01E7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+56]
cmp dword ptr [ebp+12], 0
je .Lt_01E8
mov dword ptr [ebp-4], 5
jmp .Lt_0AD3
.Lt_01E8:
mov dword ptr [ebp-4], 6
.Lt_0AD3:
push dword ptr [ebp-4]
call __SETSECTION@8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBGETMANGLEDNAME@4
push eax
call _EMITVARINIOFS@8
.Lt_01E7:
.Lt_01E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
.Lt_01E5:
cmp dword ptr [ebp+8], 0
jne .Lt_01E3
.Lt_01E4:
.Lt_01E0:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITEXPORT@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_01EA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
je .Lt_01ED
push 0
push 4
call __SETSECTION@8
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
mov dword ptr [ebp-4], eax
cmp dword ptr [_ENV+268], 0
je .Lt_01EF
inc dword ptr [ebp-4]
.Lt_01EF:
.Lt_01EE:
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset _Lt_01F4
push -1
push 0
push dword ptr [ebp-4]
push 18
push offset _Lt_01F3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-40]
call _EMITWRITESTR@8
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.Lt_01ED:
.Lt_01EC:
.Lt_01EB:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HDECLVARIABLE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01F8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .Lt_01FB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 4
je .Lt_01FF
.Lt_0200:
cmp dword ptr [ebp-4], 7
jne .Lt_01FE
.Lt_01FF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .Lt_0202
jmp .Lt_01F9
.Lt_0202:
.Lt_0201:
.Lt_01FE:
.Lt_01FC:
push dword ptr [ebp+8]
call _HEMITVARCONST@4
jmp .Lt_01F9
.Lt_01FB:
.Lt_01FA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 32768
test eax, eax
je .Lt_0204
jmp .Lt_01F9
.Lt_0204:
.Lt_0203:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0206
jmp .Lt_01F9
.Lt_0206:
.Lt_0205:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+56], 0
je .Lt_0208
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 2
test ebx, ebx
jne .Lt_020A
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 32
test ecx, ecx
jne .Lt_020C
jmp .Lt_01F9
.Lt_020C:
.Lt_020B:
.Lt_020A:
.Lt_0209:
push 0
push 1
call __SETSECTION@8
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER@4
jmp .Lt_01F9
.Lt_0208:
.Lt_0207:
push dword ptr [ebp+8]
call _HEMITVARBSS@4
.Lt_01F9:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCLEARLOCALS@8:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_020D:
cmp dword ptr [ebp+8], 0
jne .Lt_0210
jmp .Lt_020E
.Lt_0210:
.Lt_020F:
cmp dword ptr [_ENV+112], 3
jl .Lt_0212
mov eax, dword ptr [ebp+8]
shr eax, 3
cmp eax, 7
jbe .Lt_0214
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .Lt_0216
push offset _Lt_0084
call _HPUSH@4
.Lt_0216:
.Lt_0215:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr@4
push eax
push 15
push offset _Lt_0217
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
shr eax, 3
push eax
call _fb_UIntToStr@4
push eax
push 9
push offset _Lt_021B
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
call _OUTP@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
push offset _Lt_021E
call _OUTP@4
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_0AD6
call _fb_StrAssign@20
push dword ptr [_Lt_0AD6]
call _HLABEL@4
push offset _Lt_021F
call _OUTP@4
push offset _Lt_0220
call _OUTP@4
push offset _Lt_0221
call _OUTP@4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
push offset _Lt_0AD6
push 5
push offset _Lt_0222
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
call _OUTP@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
push offset _Lt_0225
call _OUTP@4
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .Lt_0227
push offset _Lt_0084
call _HPOP@4
.Lt_0227:
.Lt_0226:
jmp .Lt_0213
.Lt_0214:
mov eax, dword ptr [ebp+8]
shr eax, 3
test eax, eax
jbe .Lt_0228
push offset _Lt_021E
call _OUTP@4
mov eax, dword ptr [ebp+8]
shr eax, 3
mov ebx, eax
mov dword ptr [_Lt_0AD7], ebx
jmp .Lt_0229
.Lt_022C:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 7
push offset _Lt_022E
push -1
push -1
mov ebx, dword ptr [_Lt_0AD7]
sal ebx, 3
push ebx
call _fb_IntToStr@4
push eax
push 11
push offset _Lt_022D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_022A:
dec dword ptr [_Lt_0AD7]
.Lt_0229:
cmp dword ptr [_Lt_0AD7], 1
jge .Lt_022C
.Lt_022B:
push offset _Lt_0225
call _OUTP@4
.Lt_0228:
.Lt_0213:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_0233
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_0235
push -1
push -1
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr@4
push eax
push 20
push offset _Lt_0234
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0233:
.Lt_0232:
jmp .Lt_020E
.Lt_0212:
.Lt_0211:
mov eax, dword ptr [ebp+8]
shr eax, 2
cmp eax, 6
jbe .Lt_023A
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .Lt_023C
push offset _Lt_0084
call _HPUSH@4
.Lt_023C:
.Lt_023B:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr@4
push eax
push 15
push offset _Lt_0217
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
shr eax, 2
push eax
call _fb_UIntToStr@4
push eax
push 9
push offset _Lt_021B
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
call _OUTP@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
push offset _Lt_0242
call _OUTP@4
push offset _Lt_0243
call _OUTP@4
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .Lt_0245
push offset _Lt_0084
call _HPOP@4
.Lt_0245:
.Lt_0244:
jmp .Lt_0239
.Lt_023A:
mov eax, dword ptr [ebp+8]
shr eax, 2
mov ebx, eax
mov dword ptr [_Lt_0AD7], ebx
jmp .Lt_0246
.Lt_0249:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_0235
push -1
push -1
mov ebx, dword ptr [_Lt_0AD7]
sal ebx, 2
add ebx, dword ptr [ebp+12]
push ebx
call _fb_IntToStr@4
push eax
push 20
push offset _Lt_0234
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0247:
dec dword ptr [_Lt_0AD7]
.Lt_0246:
cmp dword ptr [_Lt_0AD7], 1
jge .Lt_0249
.Lt_0248:
.Lt_0239:
.Lt_020E:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0AD7,4
.balign 4
	.lcomm	_Lt_0AD6,12

.section .text
.balign 16
_HFRAMEBYTESTOALLOC@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_024D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+12]
add eax, 3
and eax, -4
mov dword ptr [_Lt_0AD8], eax
mov eax, dword ptr [_ENV+260]
and eax, 32
test eax, eax
je .Lt_0250
mov dword ptr [_Lt_0AD9], 8
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
je .Lt_0252
add dword ptr [_Lt_0AD9], 4
.Lt_0252:
.Lt_0251:
mov eax, dword ptr [_EMIT+132]
and eax, 4
test eax, eax
je .Lt_0254
add dword ptr [_Lt_0AD9], 4
.Lt_0254:
.Lt_0253:
mov eax, dword ptr [_EMIT+132]
and eax, 16
test eax, eax
je .Lt_0256
add dword ptr [_Lt_0AD9], 4
.Lt_0256:
.Lt_0255:
mov eax, dword ptr [_Lt_0AD9]
add dword ptr [_Lt_0AD8], eax
mov eax, dword ptr [_Lt_0AD8]
add eax, 15
and eax, -16
mov dword ptr [_Lt_0AD8], eax
mov eax, dword ptr [_Lt_0AD9]
sub dword ptr [_Lt_0AD8], eax
.Lt_0250:
.Lt_024F:
mov eax, dword ptr [_Lt_0AD8]
mov dword ptr [ebp-4], eax
.Lt_024E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0AD8,4
.balign 4
	.lcomm	_Lt_0AD9,4

.section .text
.balign 16
_HCREATEFRAME@4:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.Lt_0257:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
jne .Lt_025A
push dword ptr [ebp+8]
call _HFRAMEBYTESTOALLOC@4
mov dword ptr [_Lt_0ADA], eax
mov eax, dword ptr [_Lt_0ADA]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [ecx+4]
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
or eax, dword ptr [_ENV+148]
or eax, dword ptr [_ENV+180]
je .Lt_025C
push offset _Lt_0089
call _HPUSH@4
push offset _Lt_025D
call _OUTP@4
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 4096
test ecx, ecx
je .Lt_025F
push offset _Lt_0260
call _OUTP@4
add dword ptr [_Lt_0ADA], 8
.Lt_025F:
.Lt_025E:
cmp dword ptr [_Lt_0ADA], 0
jle .Lt_0262
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [_Lt_0ADA]
call _fb_IntToStr@4
push eax
push 10
push offset _Lt_0263
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _OUTP@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0262:
.Lt_0261:
.Lt_025C:
.Lt_025B:
cmp dword ptr [_ENV+108], 3
jne .Lt_0267
cmp dword ptr [_ENV+180], 0
je .Lt_0269
call _SYMBMAKEPROFILELABELNAME@0
mov dword ptr [_Lt_0ADE], eax
push 0
push offset _Lt_026B
call _OUTEX@8
push 0
push offset _Lt_026D
call _OUTEX@8
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 3
push offset _Lt_0172
push -1
push 2
push offset _Lt_019A
push -1
push 0
push dword ptr [_Lt_0ADE]
push 2
push offset _Lt_0007
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _OUTEX@8
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push offset _Lt_0272
call _OUTP@4
push 0
push offset _Lt_0274
call _OUTEX@8
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 0
push dword ptr [_Lt_0ADE]
push 18
push offset _Lt_0275
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-72]
call _OUTP@4
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
push offset _Lt_0278
call _OUTP@4
.Lt_0269:
.Lt_0268:
.Lt_0267:
.Lt_0266:
mov eax, dword ptr [_EMIT+132]
and eax, 16
test eax, eax
je .Lt_027A
push offset _Lt_0087
call _HPUSH@4
.Lt_027A:
.Lt_0279:
mov eax, dword ptr [_EMIT+132]
and eax, 4
test eax, eax
je .Lt_027C
push offset _Lt_0085
call _HPUSH@4
.Lt_027C:
.Lt_027B:
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
je .Lt_027E
push offset _Lt_0084
call _HPUSH@4
.Lt_027E:
.Lt_027D:
.Lt_025A:
.Lt_0259:
.Lt_0258:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0ADA,4
.balign 4
	.lcomm	_Lt_0ADF,4
.balign 4
	.lcomm	_Lt_0AE0,4
.balign 4
	.lcomm	_Lt_0ADE,4

.section .text
.balign 16
_HDESTROYFRAME@8:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.Lt_027F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
jne .Lt_0282
push dword ptr [ebp+8]
call _HFRAMEBYTESTOALLOC@4
mov dword ptr [_Lt_0AE1], eax
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
je .Lt_0284
push offset _Lt_0084
call _HPOP@4
.Lt_0284:
.Lt_0283:
mov eax, dword ptr [_EMIT+132]
and eax, 4
test eax, eax
je .Lt_0286
push offset _Lt_0085
call _HPOP@4
.Lt_0286:
.Lt_0285:
mov eax, dword ptr [_EMIT+132]
and eax, 16
test eax, eax
je .Lt_0288
push offset _Lt_0087
call _HPOP@4
.Lt_0288:
.Lt_0287:
mov eax, dword ptr [_Lt_0AE1]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [ecx+4]
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
or eax, dword ptr [_ENV+148]
or eax, dword ptr [_ENV+180]
je .Lt_028A
push offset _Lt_028B
call _OUTP@4
push offset _Lt_0089
call _HPOP@4
.Lt_028A:
.Lt_0289:
cmp dword ptr [ebp+12], 0
jle .Lt_028D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr@4
push eax
push 5
push offset _Lt_028E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _OUTP@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .Lt_028C
.Lt_028D:
push offset _Lt_0291
call _OUTP@4
.Lt_028C:
.Lt_0282:
.Lt_0281:
cmp dword ptr [_ENV+108], 2
jne .Lt_0293
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 3
push offset _Lt_0172
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 5
push offset _Lt_0295
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push 7
push offset _Lt_0294
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
call _OUTEX@8
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.Lt_0293:
.Lt_0292:
.Lt_0280:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0AE1,4

.section .text
.balign 16
__EMITLIT@4:
push ebp
mov ebp, esp
sub esp, 24
.Lt_029B:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push 3
push offset _Lt_0172
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push dword ptr [ebp-12]
call _OUTEX@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_029C:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITJMPTB@36:
push ebp
mov ebp, esp
sub esp, 108
push ebx
push esi
push edi
.Lt_029E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
push dword ptr [ebp+24]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 3
push offset _Lt_0172
push -1
push 2
push offset _Lt_019A
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
call _OUTEX@8
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
.Lt_02A3:
mov dword ptr [ebp-72], 0
mov ebx, dword ptr [ebp-68]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-64]
sal ecx, 3
mov esi, dword ptr [ebp+12]
add esi, ecx
mov edi, dword ptr [esi]
mov ecx, dword ptr [esi+4]
cmp eax, ecx
jne .Lt_02A7
cmp ebx, edi
jne .Lt_02A7
.Lt_0AE5:
mov edi, dword ptr [ebp-64]
sal edi, 2
mov ecx, dword ptr [ebp+16]
add ecx, edi
mov edi, dword ptr [ecx]
mov dword ptr [ebp-72], edi
inc dword ptr [ebp-64]
jmp .Lt_02A6
.Lt_02A7:
mov edi, dword ptr [ebp+24]
mov dword ptr [ebp-72], edi
.Lt_02A6:
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
push dword ptr [ebp-72]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_0176
push 0
push 9
call __GETTYPESTRING@4
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-108]
call _OUTP@4
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
mov edi, dword ptr [ebp-68]
mov eax, edi
sar eax, 31
mov ebx, dword ptr [ebp+36]
mov ecx, dword ptr [ebp+40]
cmp eax, ecx
jne .Lt_02AC
cmp edi, ebx
jne .Lt_02AC
.Lt_0AE6:
jmp .Lt_02A4
.Lt_02AC:
.Lt_02AB:
inc dword ptr [ebp-68]
.Lt_02A5:
jmp .Lt_02A3
.Lt_02A4:
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_029F:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 36
.balign 16
__EMITCALL@12:
push ebp
mov ebp, esp
sub esp, 12
.Lt_02AD:
push 0
push 6
push offset _Lt_02AF
push -1
push offset _Lt_0AE7
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0AE7
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0AE7
call _fb_StrAssign@20
push dword ptr [_Lt_0AE7]
call _OUTP@4
cmp dword ptr [ebp+16], 0
je .Lt_02B2
push 0
push 10
push offset _Lt_02B3
push -1
push offset _Lt_0AE7
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_0AE7
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0AE7]
call _OUTP@4
.Lt_02B2:
.Lt_02B1:
.Lt_02AE:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0AE7,12

.section .text
.balign 16
__EMITCALLPTR@12:
push ebp
mov ebp, esp
.Lt_02B4:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0AE8
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 6
push offset _Lt_02AF
push -1
push offset _Lt_0AE9
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0AE8
push -1
push offset _Lt_0AE9
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0AE9]
call _OUTP@4
cmp dword ptr [ebp+16], 0
je .Lt_02B7
push 0
push 10
push offset _Lt_02B3
push -1
push offset _Lt_0AE9
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_0AE9
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0AE9]
call _OUTP@4
.Lt_02B7:
.Lt_02B6:
.Lt_02B5:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0AE8,12
.balign 4
	.lcomm	_Lt_0AE9,12

.section .text
.balign 16
__EMITBRANCH@12:
push ebp
mov ebp, esp
sub esp, 16
.Lt_02B8:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-16], eax
jmp .Lt_02BB
.Lt_02BD:
push 0
push 5
push offset _Lt_02BE
push -1
push offset _Lt_0AEA
call _fb_StrAssign@20
jmp .Lt_02BA
.Lt_02BF:
push 0
push 5
push offset _Lt_02C0
push -1
push offset _Lt_0AEA
call _fb_StrAssign@20
jmp .Lt_02BA
.Lt_02C1:
push 0
push 4
push offset _Lt_02C2
push -1
push offset _Lt_0AEA
call _fb_StrAssign@20
jmp .Lt_02BA
.Lt_02C3:
push 0
push 4
push offset _Lt_02C4
push -1
push offset _Lt_0AEA
call _fb_StrAssign@20
jmp .Lt_02BA
.Lt_02C5:
push 0
push 4
push offset _Lt_02C6
push -1
push offset _Lt_0AEA
call _fb_StrAssign@20
jmp .Lt_02BA
.Lt_02C7:
push 0
push 5
push offset _Lt_02C8
push -1
push offset _Lt_0AEA
call _fb_StrAssign@20
jmp .Lt_02BA
.Lt_02BB:
mov eax, dword ptr [ebp-16]
add eax, 4294967204
cmp eax, 5
ja .Lt_02BA
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_02C9+eax*4-368]
_.LT_02C9:
.int .Lt_02C5
.int .Lt_02C3
.int .Lt_02C1
.int .Lt_02C7
.int .Lt_02BF
.int .Lt_02BD
.Lt_02BA:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0AEA
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0AEA
call _fb_StrAssign@20
push dword ptr [_Lt_0AEA]
call _OUTP@4
.Lt_02B9:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0AEA,12

.section .text
.balign 16
__EMITJUMP@12:
push ebp
mov ebp, esp
sub esp, 12
.Lt_02CB:
push 0
push 5
push offset _Lt_02CD
push -1
push offset _Lt_0AEB
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0AEB
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0AEB
call _fb_StrAssign@20
push dword ptr [_Lt_0AEB]
call _OUTP@4
.Lt_02CC:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0AEB,12

.section .text
.balign 16
__EMITJUMPPTR@12:
push ebp
mov ebp, esp
.Lt_02CF:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0AEC
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_02CD
push -1
push offset _Lt_0AED
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0AEC
push -1
push offset _Lt_0AED
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0AED]
call _OUTP@4
.Lt_02D0:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0AEC,12
.balign 4
	.lcomm	_Lt_0AED,12

.section .text
.balign 16
__EMITRET@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_02D1:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr@8
push eax
push 5
push offset _Lt_028E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0AEE
call _fb_StrAssign@20
push dword ptr [_Lt_0AEE]
call _OUTP@4
.Lt_02D2:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0AEE,12

.section .text
.balign 16
__EMITPUBLIC@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_02D4:
push 0
push 10
push offset _Lt_0196
push -1
push offset _Lt_0AEF
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0AEF
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0AEF
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0172
push -1
push offset _Lt_0AEF
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_0AEF]
call _OUTEX@8
.Lt_02D5:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0AEF,12

.section .text
.balign 16
__EMITLABEL@4:
push ebp
mov ebp, esp
.Lt_02D7:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0AF0
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_019B
push -1
push offset _Lt_0AF0
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_0AF0]
call _OUTEX@8
.Lt_02D8:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0AF0,12

.section .text
.balign 16
__EMITNOP@0:
.Lt_02D9:
.Lt_02DA:
ret
.balign 16
_HULONG2DBL@4:
push ebp
mov ebp, esp
.Lt_02DB:
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_0AF1
call _fb_StrAssign@20
push -1
push -1
push 0
push 8
push offset _Lt_0AF2
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_02DD
push -1
push offset _Lt_0AF3
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0AF2
push -1
push offset _Lt_0AF3
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_02DE
push -1
push offset _Lt_0AF3
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0AF3]
call _OUTP@4
push 0
push 5
push offset _Lt_02DF
push -1
push offset _Lt_0AF3
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0AF1
push -1
push offset _Lt_0AF3
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0AF3]
call _OUTP@4
push offset _Lt_02E0
call _HPUSH@4
push offset _Lt_02E1
call _HPUSH@4
push offset _Lt_0006
call _HPUSH@4
push offset _Lt_02E2
call _OUTP@4
push offset _Lt_02E3
call _OUTP@4
push offset _Lt_02E4
call _OUTP@4
push dword ptr [_Lt_0AF1]
call _HLABEL@4
.Lt_02DC:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0AF1,12
.balign 4
	.lcomm	_Lt_0AF2,12
.balign 4
	.lcomm	_Lt_0AF3,12

.section .text
.balign 16
__EMITSTORL2L@8:
push ebp
mov ebp, esp
.Lt_02E5:
push offset _Lt_0AF4
push offset _Lt_0AF5
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0AF6
push offset _Lt_0AF7
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0AF8
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0AF5
push -1
push offset _Lt_0AF8
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0AF8
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0AF7
push -1
push offset _Lt_0AF8
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0AF8]
call _OUTP@4
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0AF8
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0AF4
push -1
push offset _Lt_0AF8
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0AF8
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0AF6
push -1
push offset _Lt_0AF8
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0AF8]
call _OUTP@4
.Lt_02E6:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0AF5,12
.balign 4
	.lcomm	_Lt_0AF4,12
.balign 4
	.lcomm	_Lt_0AF7,12
.balign 4
	.lcomm	_Lt_0AF6,12
.balign 4
	.lcomm	_Lt_0AF8,12

.section .text
.balign 16
__EMITSTORI2L@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_02E7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_02E9
mov dword ptr [ebp-4], 24
jmp .Lt_0AF9
.Lt_02E9:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0AF9:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0AFD], ebx
push offset _Lt_0AFE
push offset _Lt_0AFF
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B00
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .Lt_02EC
push dword ptr [_Lt_0B00]
push dword ptr [_Lt_0AFF]
call _HMOV@8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02ED
mov dword ptr [ebp-12], 24
jmp .Lt_0AFA
.Lt_02ED:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_0AFA:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
mov ecx, -1
jl .Lt_0B01
jg .Lt_0B02
cmp dword ptr [eax+24], 0
jb .Lt_0B01
.Lt_0B02:
xor ecx, ecx
.Lt_0B01:
and ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
je .Lt_02F0
push offset _Lt_02F1
push dword ptr [_Lt_0AFE]
call _HMOV@8
jmp .Lt_02EF
.Lt_02F0:
push offset _Lt_0006
push dword ptr [_Lt_0AFE]
call _HMOV@8
.Lt_02EF:
jmp .Lt_02E8
.Lt_02EC:
.Lt_02EB:
cmp dword ptr [_Lt_0AFD], 4
jge .Lt_02F3
push 0
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B03
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_02F4
mov dword ptr [ebp-12], 24
jmp .Lt_0AFB
.Lt_02F4:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0AFB:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_02F7
push 0
push 7
push offset _Lt_02F8
push -1
push offset _Lt_0B04
call _fb_StrAssign@20
jmp .Lt_02F6
.Lt_02F7:
push 0
push 7
push offset _Lt_02F9
push -1
push offset _Lt_0B04
call _fb_StrAssign@20
.Lt_02F6:
push 0
push -1
push offset _Lt_0B03
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B00
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B04]
call _OUTP@4
jmp .Lt_02F2
.Lt_02F3:
push 0
push -1
push offset _Lt_0B00
push -1
push offset _Lt_0B03
call _fb_StrAssign@20
.Lt_02F2:
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B04
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0AFF
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B03
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B04]
call _OUTP@4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_02FA
mov dword ptr [ebp-8], 24
jmp .Lt_0AFC
.Lt_02FA:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0AFC:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_02FD
push dword ptr [_Lt_0B03]
call _HPUSH@4
push 0
push 5
push offset _Lt_02FE
push -1
push offset _Lt_0B04
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B03
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_02FF
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B04]
call _OUTP@4
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B04
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0AFE
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B03
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B04]
call _OUTP@4
push dword ptr [_Lt_0B03]
call _HPOP@4
jmp .Lt_02FC
.Lt_02FD:
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B04
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0AFE
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_02DE
push -1
push offset _Lt_0B04
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B04]
call _OUTP@4
.Lt_02FC:
.Lt_02E8:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0AFF,12
.balign 4
	.lcomm	_Lt_0AFE,12
.balign 4
	.lcomm	_Lt_0B00,12
.balign 4
	.lcomm	_Lt_0B03,12
.balign 4
	.lcomm	_Lt_0B04,12
.balign 4
	.lcomm	_Lt_0AFD,4

.section .text
.balign 16
__EMITSTORF2L@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0300:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B06
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0302
mov dword ptr [ebp-4], 24
jmp .Lt_0B05
.Lt_0302:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B05:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0305
push 0
push 7
push offset _Lt_0306
push -1
push offset _Lt_0B07
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B06
push -1
push offset _Lt_0B07
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B07]
call _OUTP@4
.Lt_0305:
.Lt_0304:
.Lt_0301:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B06,12
.balign 4
	.lcomm	_Lt_0B07,12

.section .text
.balign 16
__EMITSTORI2I@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0307:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B0B
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B0C
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0309
mov dword ptr [ebp-4], 24
jmp .Lt_0B08
.Lt_0309:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B08:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B0D], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_030B
mov dword ptr [ebp-8], 24
jmp .Lt_0B09
.Lt_030B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_0B09:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_Lt_0B0E], eax
cmp dword ptr [_Lt_0B0D], 1
jne .Lt_030E
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_0310
mov dword ptr [_Lt_0B0D], 4
.Lt_0310:
.Lt_030F:
.Lt_030E:
.Lt_030D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0B0E]
cmp eax, dword ptr [_Lt_0B0D]
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0312
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B11
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B0B
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B0C
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B11]
call _OUTP@4
jmp .Lt_0311
.Lt_0312:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B12
call _fb_StrAssign@20
mov eax, dword ptr [_Lt_0B0E]
cmp dword ptr [_Lt_0B0D], eax
jle .Lt_0314
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0315
mov dword ptr [ebp-12], 24
jmp .Lt_0B0A
.Lt_0315:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0B0A:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0318
push 0
push 7
push offset _Lt_02F8
push -1
push offset _Lt_0B11
call _fb_StrAssign@20
jmp .Lt_0317
.Lt_0318:
push 0
push 7
push offset _Lt_02F9
push -1
push offset _Lt_0B11
call _fb_StrAssign@20
.Lt_0317:
push 0
push -1
push offset _Lt_0B12
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B0C
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B11]
call _OUTP@4
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B11
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B0B
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B12
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B11]
call _OUTP@4
jmp .Lt_0313
.Lt_0314:
mov dword ptr [_Lt_0B13], 0
cmp dword ptr [_Lt_0B0D], 1
jne .Lt_031A
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_031C
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [_Lt_0B13], ebx
.Lt_031C:
.Lt_031B:
.Lt_031A:
.Lt_0319:
cmp dword ptr [_Lt_0B13], 0
je .Lt_031E
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0B16], eax
push 0
push 0
push dword ptr [_Lt_0B16]
push 2
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B17
call _fb_StrAssign@20
push 0
push 0
push dword ptr [_Lt_0B16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B12
call _fb_StrAssign@20
push dword ptr [_Lt_0B16]
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0B18], eax
cmp dword ptr [_Lt_0B18], 0
jne .Lt_0320
push dword ptr [_Lt_0B12]
call _HPUSH@4
.Lt_0320:
.Lt_031F:
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B11
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B12
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B0C
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B11]
call _OUTP@4
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B11
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B0B
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B17
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B11]
call _OUTP@4
cmp dword ptr [_Lt_0B18], 0
jne .Lt_0322
push dword ptr [_Lt_0B12]
call _HPOP@4
.Lt_0322:
.Lt_0321:
jmp .Lt_031D
.Lt_031E:
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B11
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B0B
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B12
push -1
push offset _Lt_0B11
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B11]
call _OUTP@4
.Lt_031D:
.Lt_0313:
.Lt_0311:
.Lt_0308:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B0B,12
.balign 4
	.lcomm	_Lt_0B0C,12
.balign 4
	.lcomm	_Lt_0B0D,4
.balign 4
	.lcomm	_Lt_0B0E,4
.balign 4
	.lcomm	_Lt_0B11,12
.balign 4
	.lcomm	_Lt_0B12,12
.balign 4
	.lcomm	_Lt_0B13,4
.balign 4
	.lcomm	_Lt_0B17,12
.balign 4
	.lcomm	_Lt_0B16,4
.balign 4
	.lcomm	_Lt_0B18,4

.section .text
.balign 16
__EMITSTORL2I@8:
push ebp
mov ebp, esp
.Lt_0323:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITSTORI2I@8
.Lt_0324:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORF2I@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0325:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B1B
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B1C
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0327
mov dword ptr [ebp-4], 24
jmp .Lt_0B19
.Lt_0327:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B19:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B1D], ebx
cmp dword ptr [_Lt_0B1D], 1
jne .Lt_032A
push offset _Lt_032B
call _OUTP@4
push offset _Lt_032C
call _OUTP@4
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .Lt_032E
push offset _Lt_032F
push dword ptr [_Lt_0B1B]
call _HMOV@8
push offset _Lt_0330
call _OUTP@4
jmp .Lt_032D
.Lt_032E:
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0B1E], eax
push 0
push 0
push dword ptr [_Lt_0B1E]
push 2
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B1F
call _fb_StrAssign@20
push 0
push 0
push dword ptr [_Lt_0B1E]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B20
call _fb_StrAssign@20
push dword ptr [_Lt_0B1E]
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0B21], eax
cmp dword ptr [_Lt_0B21], 0
jne .Lt_0332
push offset _Lt_0333
push dword ptr [_Lt_0B20]
call _HXCHG@8
jmp .Lt_0331
.Lt_0332:
push offset _Lt_032F
push dword ptr [_Lt_0B1F]
call _HMOV@8
.Lt_0331:
push dword ptr [_Lt_0B1F]
push dword ptr [_Lt_0B1B]
call _HMOV@8
cmp dword ptr [_Lt_0B21], 0
jne .Lt_0335
push dword ptr [_Lt_0B20]
call _HPOP@4
jmp .Lt_0334
.Lt_0335:
push offset _Lt_0330
call _OUTP@4
.Lt_0334:
.Lt_032D:
jmp .Lt_0329
.Lt_032A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0336
mov dword ptr [ebp-8], 24
jmp .Lt_0B1A
.Lt_0336:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0B1A:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0339
push 0
push 7
push offset _Lt_0306
push -1
push offset _Lt_0B22
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B1B
push -1
push offset _Lt_0B22
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B22]
call _OUTP@4
jmp .Lt_0338
.Lt_0339:
cmp dword ptr [_Lt_0B1D], 4
jne .Lt_033B
push offset _Lt_033C
call _OUTP@4
push offset _Lt_033D
call _OUTP@4
push dword ptr [_Lt_0B1B]
call _HPOP@4
push offset _Lt_0330
call _OUTP@4
jmp .Lt_033A
.Lt_033B:
push offset _Lt_032B
call _OUTP@4
push offset _Lt_032C
call _OUTP@4
push dword ptr [_Lt_0B1B]
call _HPOP@4
push offset _Lt_033E
call _OUTP@4
.Lt_033A:
.Lt_0338:
.Lt_0329:
.Lt_0326:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B1B,12
.balign 4
	.lcomm	_Lt_0B1C,12
.balign 4
	.lcomm	_Lt_0B1D,4
.balign 4
	.lcomm	_Lt_0B22,12
.balign 4
	.lcomm	_Lt_0B1E,4
.balign 4
	.lcomm	_Lt_0B21,4
.balign 4
	.lcomm	_Lt_0B20,12
.balign 4
	.lcomm	_Lt_0B1F,12

.section .text
.balign 16
__EMITSTORL2F@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_033F:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B25
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B26
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0342
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_0343
mov dword ptr [ebp-4], 24
jmp .Lt_0B23
.Lt_0343:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-4], ecx
.Lt_0B23:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .Lt_0346
push offset _Lt_0B29
push offset _Lt_0B26
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push dword ptr [_Lt_0B29]
call _HPUSH@4
push dword ptr [_Lt_0B26]
call _HPUSH@4
push 0
push -1
push 7
push offset _Lt_0348
push -1
push 12
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
sal ebx, 4
lea ecx, [_DTYPETB+ebx+4]
push ecx
push 6
push offset _Lt_0347
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0B2A
call _fb_StrAssign@20
push dword ptr [_Lt_0B2A]
call _OUTP@4
push offset _Lt_034B
call _OUTP@4
jmp .Lt_0345
.Lt_0346:
push offset _Lt_0B29
push offset _Lt_0B26
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push dword ptr [_Lt_0B29]
call _HPUSH@4
push dword ptr [_Lt_0B26]
call _HPUSH@4
push offset _Lt_034C
call _OUTP@4
push offset _Lt_034B
call _OUTP@4
push dword ptr [ebp+12]
call _HULONG2DBL@4
.Lt_0345:
jmp .Lt_0341
.Lt_0342:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_034D
mov dword ptr [ebp-4], 24
jmp .Lt_0B24
.Lt_034D:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B24:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0350
push 0
push 6
push offset _Lt_0347
push -1
push offset _Lt_0B2A
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B26
push -1
push offset _Lt_0B2A
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B2A]
call _OUTP@4
jmp .Lt_034F
.Lt_0350:
push 0
push 6
push offset _Lt_0347
push -1
push offset _Lt_0B2A
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B26
push -1
push offset _Lt_0B2A
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B2A]
call _OUTP@4
push dword ptr [ebp+12]
call _HULONG2DBL@4
.Lt_034F:
.Lt_0341:
push 0
push 6
push offset _Lt_0351
push -1
push offset _Lt_0B2A
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B25
push -1
push offset _Lt_0B2A
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B2A]
call _OUTP@4
.Lt_0340:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B25,12
.balign 4
	.lcomm	_Lt_0B26,12
.balign 4
	.lcomm	_Lt_0B29,12
.balign 4
	.lcomm	_Lt_0B2A,12

.section .text
.balign 16
__EMITSTORI2F@8:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_0352:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B2F
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B30
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0354
mov dword ptr [ebp-4], 24
jmp .Lt_0B2B
.Lt_0354:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B2B:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B31], ebx
cmp dword ptr [_Lt_0B31], 1
jne .Lt_0357
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0B32], eax
push 0
push 0
push dword ptr [_Lt_0B32]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B33
call _fb_StrAssign@20
push dword ptr [_Lt_0B32]
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0B34], eax
cmp dword ptr [_Lt_0B34], 0
jne .Lt_0359
push dword ptr [_Lt_0B33]
call _HPUSH@4
.Lt_0359:
.Lt_0358:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_035A
mov dword ptr [ebp-8], 24
jmp .Lt_0B2C
.Lt_035A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0B2C:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_035D
push 0
push 7
push offset _Lt_02F8
push -1
push offset _Lt_0B35
call _fb_StrAssign@20
jmp .Lt_035C
.Lt_035D:
push 0
push 7
push offset _Lt_02F9
push -1
push offset _Lt_0B35
call _fb_StrAssign@20
.Lt_035C:
push 0
push -1
push offset _Lt_0B33
push -1
push offset _Lt_0B35
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B35
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B30
push -1
push offset _Lt_0B35
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B35]
call _OUTP@4
push dword ptr [_Lt_0B33]
call _HPUSH@4
push offset _Lt_035E
call _OUTP@4
push offset _Lt_0330
call _OUTP@4
cmp dword ptr [_Lt_0B34], 0
jne .Lt_0360
push dword ptr [_Lt_0B33]
call _HPOP@4
.Lt_0360:
.Lt_035F:
push 0
push 6
push offset _Lt_0351
push -1
push offset _Lt_0B35
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B2F
push -1
push offset _Lt_0B35
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B35]
call _OUTP@4
jmp .Lt_0353
.Lt_0357:
.Lt_0356:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0362
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_0363
mov dword ptr [ebp-8], 24
jmp .Lt_0B2D
.Lt_0363:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.Lt_0B2D:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .Lt_0366
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_0B31]
cmp ecx, 4
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0368
push 0
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B30
call _fb_StrAssign@20
.Lt_0368:
.Lt_0367:
push dword ptr [_Lt_0B30]
call _HPUSH@4
push 0
push -1
push 7
push offset _Lt_0348
push -1
push 12
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
sal ecx, 4
lea eax, [_DTYPETB+ecx+4]
push eax
push 6
push offset _Lt_0347
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0B35
call _fb_StrAssign@20
push dword ptr [_Lt_0B35]
call _OUTP@4
push offset _Lt_0330
call _OUTP@4
jmp .Lt_0365
.Lt_0366:
cmp dword ptr [_Lt_0B31], 4
jne .Lt_036C
push offset _Lt_0006
call _HPUSH@4
push dword ptr [_Lt_0B30]
call _HPUSH@4
push offset _Lt_034C
call _OUTP@4
push offset _Lt_034B
call _OUTP@4
jmp .Lt_036B
.Lt_036C:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .Lt_036E
push offset _Lt_0006
call _HPUSH@4
.Lt_036E:
.Lt_036D:
push dword ptr [_Lt_0B30]
call _HPUSH@4
push offset _Lt_035E
call _OUTP@4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .Lt_0370
push offset _Lt_0371
call _OUTP@4
jmp .Lt_036F
.Lt_0370:
push offset _Lt_0330
call _OUTP@4
.Lt_036F:
.Lt_036B:
.Lt_0365:
jmp .Lt_0361
.Lt_0362:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_0372
mov dword ptr [ebp-8], 24
jmp .Lt_0B2E
.Lt_0372:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0B2E:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0375
push 0
push 6
push offset _Lt_0347
push -1
push offset _Lt_0B35
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B30
push -1
push offset _Lt_0B35
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B35]
call _OUTP@4
jmp .Lt_0374
.Lt_0375:
cmp dword ptr [_Lt_0B31], 4
jne .Lt_0377
push offset _Lt_0006
call _HPUSH@4
push dword ptr [_Lt_0B30]
call _HPUSH@4
push offset _Lt_034C
call _OUTP@4
push offset _Lt_034B
call _OUTP@4
jmp .Lt_0376
.Lt_0377:
push offset _Lt_0006
call _HPUSH@4
push dword ptr [_Lt_0B30]
call _HPUSH@4
push offset _Lt_035E
call _OUTP@4
push offset _Lt_0371
call _OUTP@4
.Lt_0376:
.Lt_0374:
.Lt_0361:
push 0
push 6
push offset _Lt_0351
push -1
push offset _Lt_0B35
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B2F
push -1
push offset _Lt_0B35
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B35]
call _OUTP@4
.Lt_0353:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B2F,12
.balign 4
	.lcomm	_Lt_0B30,12
.balign 4
	.lcomm	_Lt_0B31,4
.balign 4
	.lcomm	_Lt_0B35,12
.balign 4
	.lcomm	_Lt_0B33,12
.balign 4
	.lcomm	_Lt_0B32,4
.balign 4
	.lcomm	_Lt_0B34,4

.section .text
.balign 16
__EMITSTORF2F@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0378:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B3C
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B3D
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_037A
mov dword ptr [ebp-4], 24
jmp .Lt_0B3A
.Lt_037A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B3A:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B3E], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_037C
mov dword ptr [ebp-8], 24
jmp .Lt_0B3B
.Lt_037C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_0B3B:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_Lt_0B3F], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_037F
push 0
push 6
push offset _Lt_0351
push -1
push offset _Lt_0B40
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B3C
push -1
push offset _Lt_0B40
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B40]
call _OUTP@4
jmp .Lt_037E
.Lt_037F:
mov eax, dword ptr [_Lt_0B3E]
cmp dword ptr [_Lt_0B3F], eax
jne .Lt_0381
push -1
push 0
push 0
push 8
push offset _Lt_0B3D
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 0
push 6
push offset _Lt_017B
push -1
push offset _Lt_0B40
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B3D
push -1
push offset _Lt_0B40
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B40]
call _OUTP@4
cmp dword ptr [_Lt_0B3F], 4
jle .Lt_0383
push -1
push 0
push 4
push 8
push offset _Lt_0B3D
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 0
push 6
push offset _Lt_017B
push -1
push offset _Lt_0B40
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B3D
push -1
push offset _Lt_0B40
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B40]
call _OUTP@4
push -1
push 0
push 4
push 8
push offset _Lt_0B3C
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_0180
push -1
push offset _Lt_0B40
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B3C
push -1
push offset _Lt_0B40
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B40]
call _OUTP@4
.Lt_0383:
.Lt_0382:
push -1
push 0
push 0
push 8
push offset _Lt_0B3C
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_0180
push -1
push offset _Lt_0B40
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B3C
push -1
push offset _Lt_0B40
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B40]
call _OUTP@4
jmp .Lt_0380
.Lt_0381:
push 0
push 5
push offset _Lt_0384
push -1
push offset _Lt_0B40
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B3D
push -1
push offset _Lt_0B40
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B40]
call _OUTP@4
push 0
push 6
push offset _Lt_0351
push -1
push offset _Lt_0B40
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B3C
push -1
push offset _Lt_0B40
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B40]
call _OUTP@4
.Lt_0380:
.Lt_037E:
.Lt_0379:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B3C,12
.balign 4
	.lcomm	_Lt_0B3D,12
.balign 4
	.lcomm	_Lt_0B3E,4
.balign 4
	.lcomm	_Lt_0B3F,4
.balign 4
	.lcomm	_Lt_0B40,12

.section .text
.balign 16
__EMITLOADL2L@8:
push ebp
mov ebp, esp
.Lt_0385:
push offset _Lt_0B41
push offset _Lt_0B42
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0B43
push offset _Lt_0B44
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B45
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B42
push -1
push offset _Lt_0B45
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B45
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B44
push -1
push offset _Lt_0B45
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B45]
call _OUTP@4
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B45
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B41
push -1
push offset _Lt_0B45
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B45
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B43
push -1
push offset _Lt_0B45
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B45]
call _OUTP@4
.Lt_0386:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B42,12
.balign 4
	.lcomm	_Lt_0B41,12
.balign 4
	.lcomm	_Lt_0B44,12
.balign 4
	.lcomm	_Lt_0B43,12
.balign 4
	.lcomm	_Lt_0B45,12

.section .text
.balign 16
__EMITLOADI2L@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0387:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0389
mov dword ptr [ebp-4], 24
jmp .Lt_0B46
.Lt_0389:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B46:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B49], ebx
push offset _Lt_0B4A
push offset _Lt_0B4B
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B4C
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .Lt_038C
push dword ptr [_Lt_0B4C]
push dword ptr [_Lt_0B4B]
call _HMOV@8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_038D
mov dword ptr [ebp-12], 24
jmp .Lt_0B47
.Lt_038D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_0B47:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
mov ecx, -1
jl .Lt_0B4D
jg .Lt_0B4E
cmp dword ptr [eax+24], 0
jb .Lt_0B4D
.Lt_0B4E:
xor ecx, ecx
.Lt_0B4D:
and ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
je .Lt_0390
push offset _Lt_02F1
push dword ptr [_Lt_0B4A]
call _HMOV@8
jmp .Lt_038F
.Lt_0390:
push offset _Lt_0006
push dword ptr [_Lt_0B4A]
call _HMOV@8
.Lt_038F:
jmp .Lt_0388
.Lt_038C:
.Lt_038B:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .Lt_0391
mov dword ptr [ebp-8], 24
jmp .Lt_0B48
.Lt_0391:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_0B48:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .Lt_0394
cmp dword ptr [_Lt_0B49], 4
jge .Lt_0396
push 0
push 7
push offset _Lt_02F8
push -1
push offset _Lt_0B4F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B4B
push -1
push offset _Lt_0B4F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B4F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B4C
push -1
push offset _Lt_0B4F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B4F]
call _OUTP@4
jmp .Lt_0395
.Lt_0396:
push dword ptr [_Lt_0B4C]
push dword ptr [_Lt_0B4B]
call _HMOV@8
.Lt_0395:
push dword ptr [_Lt_0B4B]
push dword ptr [_Lt_0B4A]
call _HMOV@8
push 0
push 5
push offset _Lt_02FE
push -1
push offset _Lt_0B4F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B4A
push -1
push offset _Lt_0B4F
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_02FF
push -1
push offset _Lt_0B4F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B4F]
call _OUTP@4
jmp .Lt_0393
.Lt_0394:
cmp dword ptr [_Lt_0B49], 4
jge .Lt_0398
push 0
push 7
push offset _Lt_02F9
push -1
push offset _Lt_0B4F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B4B
push -1
push offset _Lt_0B4F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B4F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B4C
push -1
push offset _Lt_0B4F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B4F]
call _OUTP@4
jmp .Lt_0397
.Lt_0398:
push dword ptr [_Lt_0B4C]
push dword ptr [_Lt_0B4B]
call _HMOV@8
.Lt_0397:
push offset _Lt_0006
push dword ptr [_Lt_0B4A]
call _HMOV@8
.Lt_0393:
.Lt_0388:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B4B,12
.balign 4
	.lcomm	_Lt_0B4A,12
.balign 4
	.lcomm	_Lt_0B4C,12
.balign 4
	.lcomm	_Lt_0B49,4
.balign 4
	.lcomm	_Lt_0B4F,12

.section .text
.balign 16
__EMITLOADF2L@8:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.Lt_0399:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B52
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B53
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_039C
push 0
push 5
push offset _Lt_0384
push -1
push offset _Lt_0B54
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B53
push -1
push offset _Lt_0B54
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B54]
call _OUTP@4
.Lt_039C:
.Lt_039B:
push offset _Lt_0B55
push offset _Lt_0B52
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_039D
mov dword ptr [ebp-4], 24
jmp .Lt_0B50
.Lt_039D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B50:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_03A0
push offset _Lt_033C
call _OUTP@4
push 0
push -1
push 7
push offset _Lt_0348
push -1
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [_DTYPETB+ebx+4]
push eax
push 7
push offset _Lt_0306
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0B54
call _fb_StrAssign@20
push dword ptr [_Lt_0B54]
call _OUTP@4
push dword ptr [_Lt_0B52]
call _HPOP@4
push dword ptr [_Lt_0B55]
call _HPOP@4
jmp .Lt_039F
.Lt_03A0:
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_0B56
call _fb_StrAssign@20
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_0B57
call _fb_StrAssign@20
push 5
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0B58], eax
cmp dword ptr [_Lt_0B58], 0
jne .Lt_03A3
push 5
push dword ptr [ebp+8]
call _HISREGINVREG@8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_0B51
.Lt_03A3:
mov dword ptr [ebp-8], -1
.Lt_0B51:
mov eax, dword ptr [ebp-8]
mov dword ptr [_Lt_0B58], eax
push offset _Lt_033C
call _OUTP@4
push offset _Lt_03A5
call _OUTP@4
push offset _Lt_03A6
call _OUTP@4
cmp dword ptr [_Lt_0B58], 0
je .Lt_03A8
push offset _Lt_03A9
call _OUTP@4
push offset _Lt_03AA
call _OUTP@4
jmp .Lt_03A7
.Lt_03A8:
push offset _Lt_0088
call _HPUSH@4
push offset _Lt_03A9
call _OUTP@4
push offset _Lt_03AA
call _OUTP@4
push offset _Lt_0088
call _HPOP@4
.Lt_03A7:
push dword ptr [_Lt_0B56]
push offset _Lt_03AB
call _HBRANCH@8
push offset _Lt_033D
call _OUTP@4
push dword ptr [_Lt_0B52]
call _HPOP@4
push dword ptr [_Lt_0B55]
call _HPOP@4
push dword ptr [_Lt_0B57]
push offset _Lt_03AC
call _HBRANCH@8
push dword ptr [_Lt_0B56]
call _HLABEL@4
push offset _Lt_03AD
call _OUTP@4
push offset _Lt_033D
call _OUTP@4
push dword ptr [_Lt_0B52]
call _HPOP@4
push dword ptr [_Lt_0B55]
call _HPOP@4
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 13
push offset _Lt_03AF
push -1
push -1
push offset _Lt_0B55
push 5
push offset _Lt_03AE
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
call _OUTP@4
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
push dword ptr [_Lt_0B57]
call _HLABEL@4
.Lt_039F:
.Lt_039A:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B52,12
.balign 4
	.lcomm	_Lt_0B53,12
.balign 4
	.lcomm	_Lt_0B55,12
.balign 4
	.lcomm	_Lt_0B54,12
.balign 4
	.lcomm	_Lt_0B56,12
.balign 4
	.lcomm	_Lt_0B57,12
.balign 4
	.lcomm	_Lt_0B58,4

.section .text
.balign 16
__EMITLOADI2I@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_03B3:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B5D
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B5E
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_03B5
mov dword ptr [ebp-4], 24
jmp .Lt_0B5A
.Lt_03B5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B5A:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B5F], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_03B7
mov dword ptr [ebp-8], 24
jmp .Lt_0B5B
.Lt_03B7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_0B5B:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_Lt_0B60], eax
cmp dword ptr [_Lt_0B5F], 1
jne .Lt_03BA
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_03BC
mov dword ptr [_Lt_0B5F], 4
.Lt_03BC:
.Lt_03BB:
.Lt_03BA:
.Lt_03B9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0B60]
cmp eax, dword ptr [_Lt_0B5F]
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_03BE
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B63
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B5D
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B5E
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B63]
call _OUTP@4
jmp .Lt_03BD
.Lt_03BE:
mov eax, dword ptr [_Lt_0B60]
cmp dword ptr [_Lt_0B5F], eax
jle .Lt_03C0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_03C1
mov dword ptr [ebp-12], 24
jmp .Lt_0B5C
.Lt_03C1:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0B5C:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_03C4
push 0
push 7
push offset _Lt_02F8
push -1
push offset _Lt_0B63
call _fb_StrAssign@20
jmp .Lt_03C3
.Lt_03C4:
push 0
push 7
push offset _Lt_02F9
push -1
push offset _Lt_0B63
call _fb_StrAssign@20
.Lt_03C3:
push 0
push -1
push offset _Lt_0B5D
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B5E
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B63]
call _OUTP@4
jmp .Lt_03BF
.Lt_03C0:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_03C6
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [eax+12], ecx
je .Lt_03C8
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [_Lt_0B64], eax
cmp dword ptr [_Lt_0B5F], 1
jne .Lt_03CA
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_03CC
mov dword ptr [_Lt_0B64], 8
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push dword ptr [_Lt_0B64]
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B5D
call _fb_StrAssign@20
.Lt_03CC:
.Lt_03CB:
.Lt_03CA:
.Lt_03C9:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
push dword ptr [_Lt_0B64]
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B67
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B63
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B5D
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B67
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B63]
call _OUTP@4
.Lt_03C8:
.Lt_03C7:
jmp .Lt_03C5
.Lt_03C6:
push -1
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push offset _Lt_0B5E
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B63
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B5D
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B5E
push -1
push offset _Lt_0B63
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B63]
call _OUTP@4
.Lt_03C5:
.Lt_03BF:
.Lt_03BD:
.Lt_03B4:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B5D,12
.balign 4
	.lcomm	_Lt_0B5E,12
.balign 4
	.lcomm	_Lt_0B5F,4
.balign 4
	.lcomm	_Lt_0B60,4
.balign 4
	.lcomm	_Lt_0B63,12
.balign 4
	.lcomm	_Lt_0B67,12
.balign 4
	.lcomm	_Lt_0B64,4

.section .text
.balign 16
__EMITLOADL2I@8:
push ebp
mov ebp, esp
.Lt_03CD:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADI2I@8
.Lt_03CE:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITLOADF2I@8:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_03CF:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B6A
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B6B
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_03D1
mov dword ptr [ebp-4], 24
jmp .Lt_0B68
.Lt_03D1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B68:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B6C], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
je .Lt_03D4
push 0
push 5
push offset _Lt_0384
push -1
push offset _Lt_0B6D
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B6B
push -1
push offset _Lt_0B6D
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B6D]
call _OUTP@4
.Lt_03D4:
.Lt_03D3:
cmp dword ptr [_Lt_0B6C], 1
jne .Lt_03D6
push offset _Lt_032B
call _OUTP@4
push offset _Lt_032C
call _OUTP@4
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .Lt_03D8
push offset _Lt_032F
push dword ptr [_Lt_0B6A]
call _HMOV@8
push offset _Lt_0330
call _OUTP@4
jmp .Lt_03D7
.Lt_03D8:
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0B6E], eax
push 0
push 0
push dword ptr [_Lt_0B6E]
push 2
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B6F
call _fb_StrAssign@20
push 0
push 0
push dword ptr [_Lt_0B6E]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B70
call _fb_StrAssign@20
push dword ptr [_Lt_0B6E]
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0B71], eax
cmp dword ptr [_Lt_0B71], 0
jne .Lt_03DA
push offset _Lt_0333
push dword ptr [_Lt_0B70]
call _HXCHG@8
jmp .Lt_03D9
.Lt_03DA:
push offset _Lt_032F
push dword ptr [_Lt_0B6F]
call _HMOV@8
.Lt_03D9:
push dword ptr [_Lt_0B6F]
push dword ptr [_Lt_0B6A]
call _HMOV@8
cmp dword ptr [_Lt_0B71], 0
jne .Lt_03DC
push dword ptr [_Lt_0B70]
call _HPOP@4
jmp .Lt_03DB
.Lt_03DC:
push offset _Lt_0330
call _OUTP@4
.Lt_03DB:
.Lt_03D7:
jmp .Lt_03D5
.Lt_03D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_03DD
mov dword ptr [ebp-8], 24
jmp .Lt_0B69
.Lt_03DD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0B69:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_03E0
push offset _Lt_032B
call _OUTP@4
push 0
push -1
push 7
push offset _Lt_0348
push -1
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [_DTYPETB+ebx+4]
push eax
push 7
push offset _Lt_0306
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0B6D
call _fb_StrAssign@20
push dword ptr [_Lt_0B6D]
call _OUTP@4
cmp dword ptr [_Lt_0B6C], 4
jge .Lt_03E4
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B6A
call _fb_StrAssign@20
.Lt_03E4:
.Lt_03E3:
push dword ptr [_Lt_0B6A]
call _HPOP@4
jmp .Lt_03DF
.Lt_03E0:
cmp dword ptr [_Lt_0B6C], 4
jne .Lt_03E6
push offset _Lt_033C
call _OUTP@4
push offset _Lt_033D
call _OUTP@4
push dword ptr [_Lt_0B6A]
call _HPOP@4
push offset _Lt_0330
call _OUTP@4
jmp .Lt_03E5
.Lt_03E6:
push offset _Lt_032B
call _OUTP@4
push offset _Lt_032C
call _OUTP@4
push dword ptr [_Lt_0B6A]
call _HPOP@4
push offset _Lt_033E
call _OUTP@4
.Lt_03E5:
.Lt_03DF:
.Lt_03D5:
.Lt_03D0:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B6A,12
.balign 4
	.lcomm	_Lt_0B6B,12
.balign 4
	.lcomm	_Lt_0B6C,4
.balign 4
	.lcomm	_Lt_0B6D,12
.balign 4
	.lcomm	_Lt_0B70,12
.balign 4
	.lcomm	_Lt_0B6F,12
.balign 4
	.lcomm	_Lt_0B6E,4
.balign 4
	.lcomm	_Lt_0B71,4

.section .text
.balign 16
__EMITLOADL2F@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_03E7:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B74
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B75
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_03EA
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_03EB
mov dword ptr [ebp-4], 24
jmp .Lt_0B72
.Lt_03EB:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-4], ecx
.Lt_0B72:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .Lt_03EE
push offset _Lt_0B78
push offset _Lt_0B75
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push dword ptr [_Lt_0B78]
call _HPUSH@4
push dword ptr [_Lt_0B75]
call _HPUSH@4
push 0
push -1
push 7
push offset _Lt_0348
push -1
push 12
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
sal ebx, 4
lea ecx, [_DTYPETB+ebx+4]
push ecx
push 6
push offset _Lt_0347
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0B79
call _fb_StrAssign@20
push dword ptr [_Lt_0B79]
call _OUTP@4
push offset _Lt_034B
call _OUTP@4
jmp .Lt_03ED
.Lt_03EE:
push offset _Lt_0B78
push offset _Lt_0B75
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push dword ptr [_Lt_0B78]
call _HPUSH@4
push dword ptr [_Lt_0B75]
call _HPUSH@4
push offset _Lt_034C
call _OUTP@4
push offset _Lt_034B
call _OUTP@4
push dword ptr [ebp+12]
call _HULONG2DBL@4
.Lt_03ED:
jmp .Lt_03E9
.Lt_03EA:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_03F1
mov dword ptr [ebp-4], 24
jmp .Lt_0B73
.Lt_03F1:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B73:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_03F4
push 0
push 6
push offset _Lt_0347
push -1
push offset _Lt_0B79
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B75
push -1
push offset _Lt_0B79
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B79]
call _OUTP@4
jmp .Lt_03F3
.Lt_03F4:
push 0
push 6
push offset _Lt_0347
push -1
push offset _Lt_0B79
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B75
push -1
push offset _Lt_0B79
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B79]
call _OUTP@4
push dword ptr [ebp+12]
call _HULONG2DBL@4
.Lt_03F3:
.Lt_03E9:
.Lt_03E8:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B74,12
.balign 4
	.lcomm	_Lt_0B75,12
.balign 4
	.lcomm	_Lt_0B78,12
.balign 4
	.lcomm	_Lt_0B79,12

.section .text
.balign 16
__EMITLOADI2F@8:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_03F5:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B7E
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B7F
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_03F7
mov dword ptr [ebp-4], 24
jmp .Lt_0B7A
.Lt_03F7:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B7A:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B80], ebx
cmp dword ptr [_Lt_0B80], 1
jne .Lt_03FA
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0B81], eax
push 0
push 0
push dword ptr [_Lt_0B81]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B82
call _fb_StrAssign@20
push dword ptr [_Lt_0B81]
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0B83], eax
cmp dword ptr [_Lt_0B83], 0
jne .Lt_03FC
push dword ptr [_Lt_0B82]
call _HPUSH@4
.Lt_03FC:
.Lt_03FB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_03FD
mov dword ptr [ebp-8], 24
jmp .Lt_0B7B
.Lt_03FD:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0B7B:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0400
push 0
push 7
push offset _Lt_02F8
push -1
push offset _Lt_0B84
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B82
push -1
push offset _Lt_0B84
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B84
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B7F
push -1
push offset _Lt_0B84
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B84]
call _OUTP@4
jmp .Lt_03FF
.Lt_0400:
push 0
push 7
push offset _Lt_02F9
push -1
push offset _Lt_0B84
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B82
push -1
push offset _Lt_0B84
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B84
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B7F
push -1
push offset _Lt_0B84
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B84]
call _OUTP@4
.Lt_03FF:
push dword ptr [_Lt_0B82]
call _HPUSH@4
push offset _Lt_035E
call _OUTP@4
push offset _Lt_0330
call _OUTP@4
cmp dword ptr [_Lt_0B83], 0
jne .Lt_0402
push dword ptr [_Lt_0B82]
call _HPOP@4
.Lt_0402:
.Lt_0401:
jmp .Lt_03F6
.Lt_03FA:
.Lt_03F9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0404
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_0405
mov dword ptr [ebp-8], 24
jmp .Lt_0B7C
.Lt_0405:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.Lt_0B7C:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .Lt_0408
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_0B80]
cmp ecx, 4
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_040A
push 0
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B7F
call _fb_StrAssign@20
.Lt_040A:
.Lt_0409:
push dword ptr [_Lt_0B7F]
call _HPUSH@4
push 0
push -1
push 7
push offset _Lt_0348
push -1
push 12
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
sal ecx, 4
lea eax, [_DTYPETB+ecx+4]
push eax
push 6
push offset _Lt_0347
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0B84
call _fb_StrAssign@20
push dword ptr [_Lt_0B84]
call _OUTP@4
push offset _Lt_0330
call _OUTP@4
jmp .Lt_0407
.Lt_0408:
cmp dword ptr [_Lt_0B80], 4
jne .Lt_040E
push offset _Lt_0006
call _HPUSH@4
push dword ptr [_Lt_0B7F]
call _HPUSH@4
push offset _Lt_034C
call _OUTP@4
push offset _Lt_034B
call _OUTP@4
jmp .Lt_040D
.Lt_040E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .Lt_0410
push offset _Lt_0006
call _HPUSH@4
.Lt_0410:
.Lt_040F:
push dword ptr [_Lt_0B7F]
call _HPUSH@4
push offset _Lt_035E
call _OUTP@4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .Lt_0412
push offset _Lt_0371
call _OUTP@4
jmp .Lt_0411
.Lt_0412:
push offset _Lt_0330
call _OUTP@4
.Lt_0411:
.Lt_040D:
.Lt_0407:
jmp .Lt_0403
.Lt_0404:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_0413
mov dword ptr [ebp-8], 24
jmp .Lt_0B7D
.Lt_0413:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0B7D:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0416
push 0
push 6
push offset _Lt_0347
push -1
push offset _Lt_0B84
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B7F
push -1
push offset _Lt_0B84
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B84]
call _OUTP@4
jmp .Lt_0415
.Lt_0416:
cmp dword ptr [_Lt_0B80], 4
jne .Lt_0418
push offset _Lt_0006
call _HPUSH@4
push dword ptr [_Lt_0B7F]
call _HPUSH@4
push offset _Lt_034C
call _OUTP@4
push offset _Lt_034B
call _OUTP@4
jmp .Lt_0417
.Lt_0418:
push offset _Lt_0006
call _HPUSH@4
push dword ptr [_Lt_0B7F]
call _HPUSH@4
push offset _Lt_035E
call _OUTP@4
push offset _Lt_0371
call _OUTP@4
.Lt_0417:
.Lt_0415:
.Lt_0403:
.Lt_03F6:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B7E,12
.balign 4
	.lcomm	_Lt_0B7F,12
.balign 4
	.lcomm	_Lt_0B80,4
.balign 4
	.lcomm	_Lt_0B84,12
.balign 4
	.lcomm	_Lt_0B82,12
.balign 4
	.lcomm	_Lt_0B83,4
.balign 4
	.lcomm	_Lt_0B81,4

.section .text
.balign 16
__EMITLOADF2F@8:
push ebp
mov ebp, esp
.Lt_0419:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B89
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_0384
push -1
push offset _Lt_0B8A
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B89
push -1
push offset _Lt_0B8A
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B8A]
call _OUTP@4
.Lt_041A:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B89,12
.balign 4
	.lcomm	_Lt_0B8A,12

.section .text
.balign 16
__EMITMOVL@8:
push ebp
mov ebp, esp
.Lt_041B:
push offset _Lt_0B8B
push offset _Lt_0B8C
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0B8D
push offset _Lt_0B8E
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B8F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B8C
push -1
push offset _Lt_0B8F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B8F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B8E
push -1
push offset _Lt_0B8F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B8F]
call _OUTP@4
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B8F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B8B
push -1
push offset _Lt_0B8F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B8F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B8D
push -1
push offset _Lt_0B8F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B8F]
call _OUTP@4
.Lt_041C:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B8C,12
.balign 4
	.lcomm	_Lt_0B8B,12
.balign 4
	.lcomm	_Lt_0B8E,12
.balign 4
	.lcomm	_Lt_0B8D,12
.balign 4
	.lcomm	_Lt_0B8F,12

.section .text
.balign 16
__EMITMOVI@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_041D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_041F
mov dword ptr [ebp-4], 24
jmp .Lt_0B90
.Lt_041F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0B90:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
jne .Lt_0422
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B91
call _fb_StrAssign@20
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0B92
call _fb_StrAssign@20
jmp .Lt_0421
.Lt_0422:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B91
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B92
push dword ptr [ebp+12]
call _HPREPOPERAND@24
.Lt_0421:
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0B93
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B91
push -1
push offset _Lt_0B93
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B93
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B92
push -1
push offset _Lt_0B93
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B93]
call _OUTP@4
.Lt_041E:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B91,12
.balign 4
	.lcomm	_Lt_0B92,12
.balign 4
	.lcomm	_Lt_0B93,12

.section .text
.balign 16
__EMITMOVF@8:
push ebp
mov ebp, esp
.Lt_0423:
.Lt_0424:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITADDL@8:
push ebp
mov ebp, esp
.Lt_0425:
push offset _Lt_0B94
push offset _Lt_0B95
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0B96
push offset _Lt_0B97
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_0427
push -1
push offset _Lt_0B98
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B95
push -1
push offset _Lt_0B98
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B98
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B97
push -1
push offset _Lt_0B98
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B98]
call _OUTP@4
push 0
push 5
push offset _Lt_0428
push -1
push offset _Lt_0B98
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B94
push -1
push offset _Lt_0B98
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B98
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B96
push -1
push offset _Lt_0B98
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B98]
call _OUTP@4
.Lt_0426:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B95,12
.balign 4
	.lcomm	_Lt_0B94,12
.balign 4
	.lcomm	_Lt_0B97,12
.balign 4
	.lcomm	_Lt_0B96,12
.balign 4
	.lcomm	_Lt_0B98,12

.section .text
.balign 16
__EMITADDI@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0429:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B99
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B9A
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov dword ptr [_Lt_0B9B], 0
mov dword ptr [_Lt_0B9C], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_042C
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_042F
cmp dword ptr [ebp-8], 1
jne .Lt_042F
.Lt_0B9D:
.Lt_0430:
mov dword ptr [_Lt_0B9B], -1
jmp .Lt_042D
.Lt_042F:
cmp dword ptr [ebp-4], 4294967295
jne .Lt_0431
cmp dword ptr [ebp-8], 4294967295
jne .Lt_0431
.Lt_0B9E:
.Lt_0432:
mov dword ptr [_Lt_0B9C], -1
.Lt_0431:
.Lt_042D:
.Lt_042C:
.Lt_042B:
cmp dword ptr [_Lt_0B9B], 0
je .Lt_0434
push 0
push 5
push offset _Lt_0435
push -1
push offset _Lt_0B9F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B99
push -1
push offset _Lt_0B9F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B9F]
call _OUTP@4
jmp .Lt_0433
.Lt_0434:
cmp dword ptr [_Lt_0B9C], 0
je .Lt_0436
push 0
push 5
push offset _Lt_0437
push -1
push offset _Lt_0B9F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B99
push -1
push offset _Lt_0B9F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B9F]
call _OUTP@4
jmp .Lt_0433
.Lt_0436:
push 0
push 5
push offset _Lt_0427
push -1
push offset _Lt_0B9F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0B99
push -1
push offset _Lt_0B9F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B9F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0B9A
push -1
push offset _Lt_0B9F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0B9F]
call _OUTP@4
.Lt_0433:
.Lt_042A:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0B99,12
.balign 4
	.lcomm	_Lt_0B9A,12
.balign 4
	.lcomm	_Lt_0B9B,4
.balign 4
	.lcomm	_Lt_0B9C,4
.balign 4
	.lcomm	_Lt_0B9F,12

.section .text
.balign 16
__EMITADDF@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0438:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BA1
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_043B
push 0
push 6
push offset _Lt_02E4
push -1
push offset _Lt_0BA2
call _fb_StrAssign@20
push dword ptr [_Lt_0BA2]
call _OUTP@4
jmp .Lt_043A
.Lt_043B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_043C
mov dword ptr [ebp-4], 24
jmp .Lt_0BA0
.Lt_043C:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0BA0:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_043F
push 0
push 6
push offset _Lt_0440
push -1
push offset _Lt_0BA2
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BA1
push -1
push offset _Lt_0BA2
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BA2]
call _OUTP@4
jmp .Lt_043E
.Lt_043F:
push 0
push 7
push offset _Lt_0441
push -1
push offset _Lt_0BA2
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BA1
push -1
push offset _Lt_0BA2
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BA2]
call _OUTP@4
.Lt_043E:
.Lt_043A:
.Lt_0439:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0BA1,12
.balign 4
	.lcomm	_Lt_0BA2,12

.section .text
.balign 16
__EMITSUBL@8:
push ebp
mov ebp, esp
.Lt_0442:
push offset _Lt_0BA3
push offset _Lt_0BA4
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0BA5
push offset _Lt_0BA6
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_0444
push -1
push offset _Lt_0BA7
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BA4
push -1
push offset _Lt_0BA7
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BA7
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0BA6
push -1
push offset _Lt_0BA7
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BA7]
call _OUTP@4
push 0
push 5
push offset _Lt_0445
push -1
push offset _Lt_0BA7
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BA3
push -1
push offset _Lt_0BA7
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BA7
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0BA5
push -1
push offset _Lt_0BA7
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BA7]
call _OUTP@4
.Lt_0443:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0BA4,12
.balign 4
	.lcomm	_Lt_0BA3,12
.balign 4
	.lcomm	_Lt_0BA6,12
.balign 4
	.lcomm	_Lt_0BA5,12
.balign 4
	.lcomm	_Lt_0BA7,12

.section .text
.balign 16
__EMITSUBI@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0446:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BA8
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BA9
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov dword ptr [_Lt_0BAA], 0
mov dword ptr [_Lt_0BAB], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_0449
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_044C
cmp dword ptr [ebp-8], 1
jne .Lt_044C
.Lt_0BAC:
.Lt_044D:
mov dword ptr [_Lt_0BAB], -1
jmp .Lt_044A
.Lt_044C:
cmp dword ptr [ebp-4], 4294967295
jne .Lt_044E
cmp dword ptr [ebp-8], 4294967295
jne .Lt_044E
.Lt_0BAD:
.Lt_044F:
mov dword ptr [_Lt_0BAA], -1
.Lt_044E:
.Lt_044A:
.Lt_0449:
.Lt_0448:
cmp dword ptr [_Lt_0BAB], 0
je .Lt_0451
push 0
push 5
push offset _Lt_0437
push -1
push offset _Lt_0BAE
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BA8
push -1
push offset _Lt_0BAE
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BAE]
call _OUTP@4
jmp .Lt_0450
.Lt_0451:
cmp dword ptr [_Lt_0BAA], 0
je .Lt_0452
push 0
push 5
push offset _Lt_0435
push -1
push offset _Lt_0BAE
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BA8
push -1
push offset _Lt_0BAE
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BAE]
call _OUTP@4
jmp .Lt_0450
.Lt_0452:
push 0
push 5
push offset _Lt_0444
push -1
push offset _Lt_0BAE
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BA8
push -1
push offset _Lt_0BAE
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BAE
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0BA9
push -1
push offset _Lt_0BAE
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BAE]
call _OUTP@4
.Lt_0450:
.Lt_0447:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0BA8,12
.balign 4
	.lcomm	_Lt_0BA9,12
.balign 4
	.lcomm	_Lt_0BAA,4
.balign 4
	.lcomm	_Lt_0BAB,4
.balign 4
	.lcomm	_Lt_0BAE,12

.section .text
.balign 16
__EMITSUBF@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0453:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BB0
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_0456
push offset _Lt_0457
call _OUTP@4
jmp .Lt_0455
.Lt_0456:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0458
mov dword ptr [ebp-4], 24
jmp .Lt_0BAF
.Lt_0458:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0BAF:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_045B
push 0
push 6
push offset _Lt_045C
push -1
push offset _Lt_0BB1
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BB0
push -1
push offset _Lt_0BB1
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BB1]
call _OUTP@4
jmp .Lt_045A
.Lt_045B:
push 0
push 7
push offset _Lt_045D
push -1
push offset _Lt_0BB1
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BB0
push -1
push offset _Lt_0BB1
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BB1]
call _OUTP@4
.Lt_045A:
.Lt_0455:
.Lt_0454:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0BB0,12
.balign 4
	.lcomm	_Lt_0BB2,4
.balign 4
	.lcomm	_Lt_0BB3,4
.balign 4
	.lcomm	_Lt_0BB1,12

.section .text
.balign 16
__EMITMULL@8:
push ebp
mov ebp, esp
sub esp, 252
.Lt_045E:
push offset _Lt_0BB4
push offset _Lt_0BB5
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0BB6
push offset _Lt_0BB7
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 5
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0BB8], eax
push 0
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0BB9], eax
push 5
push dword ptr [ebp+8]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BBA], eax
push 0
push dword ptr [ebp+8]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BBB], eax
push dword ptr [_Lt_0BB6]
call _HPUSH@4
push dword ptr [_Lt_0BB7]
call _HPUSH@4
push dword ptr [_Lt_0BB4]
call _HPUSH@4
push dword ptr [_Lt_0BB5]
call _HPUSH@4
mov dword ptr [_Lt_0BBC], 0
cmp dword ptr [_Lt_0BBB], 0
je .Lt_0461
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_0463
add dword ptr [_Lt_0BBC], 4
push offset _Lt_0083
call _HPUSH@4
.Lt_0463:
.Lt_0462:
jmp .Lt_0460
.Lt_0461:
cmp dword ptr [_Lt_0BB9], 0
jne .Lt_0465
add dword ptr [_Lt_0BBC], 4
push offset _Lt_0083
call _HPUSH@4
.Lt_0465:
.Lt_0464:
.Lt_0460:
cmp dword ptr [_Lt_0BBA], 0
je .Lt_0467
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_0469
add dword ptr [_Lt_0BBC], 4
push offset _Lt_0088
call _HPUSH@4
.Lt_0469:
.Lt_0468:
jmp .Lt_0466
.Lt_0467:
cmp dword ptr [_Lt_0BB8], 0
jne .Lt_046B
add dword ptr [_Lt_0BBC], 4
push offset _Lt_0088
call _HPUSH@4
.Lt_046B:
.Lt_046A:
.Lt_0466:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
push dword ptr [_Lt_0BBC]
call _fb_IntToStr@4
push eax
push 15
push offset _Lt_046C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
mov eax, dword ptr [_Lt_0BBC]
add eax, 8
push eax
call _fb_IntToStr@4
push eax
push 20
push offset _Lt_0470
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-72]
call _OUTP@4
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
push dword ptr [_Lt_0BBC]
call _fb_IntToStr@4
push eax
push 16
push offset _Lt_0474
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-108]
call _OUTP@4
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
mov eax, dword ptr [_Lt_0BBC]
add eax, 12
push eax
call _fb_IntToStr@4
push eax
push 16
push offset _Lt_0478
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-144]
call _OUTP@4
lea eax, [ebp-144]
push eax
call _fb_StrDelete@4
push offset _Lt_047C
call _OUTP@4
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
mov eax, dword ptr [_Lt_0BBC]
add eax, 4
push eax
call _fb_IntToStr@4
push eax
push 15
push offset _Lt_047D
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-180]
call _OUTP@4
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
mov eax, dword ptr [_Lt_0BBC]
add eax, 8
push eax
call _fb_IntToStr@4
push eax
push 16
push offset _Lt_0481
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-216]
call _OUTP@4
lea eax, [ebp-216]
push eax
call _fb_StrDelete@4
push offset _Lt_0485
call _OUTP@4
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 7
push offset _Lt_0487
push -1
push -1
mov eax, dword ptr [_Lt_0BBC]
add eax, 4
push eax
call _fb_IntToStr@4
push eax
push 10
push offset _Lt_0486
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-252]
call _OUTP@4
lea eax, [ebp-252]
push eax
call _fb_StrDelete@4
cmp dword ptr [_Lt_0BBA], 0
je .Lt_048C
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_048E
push offset _Lt_0088
call _HPOP@4
.Lt_048E:
.Lt_048D:
jmp .Lt_048B
.Lt_048C:
cmp dword ptr [_Lt_0BB8], 0
jne .Lt_0490
push offset _Lt_0088
call _HPOP@4
.Lt_0490:
.Lt_048F:
.Lt_048B:
cmp dword ptr [_Lt_0BBB], 0
je .Lt_0492
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_0494
push offset _Lt_0083
call _HPOP@4
.Lt_0494:
.Lt_0493:
jmp .Lt_0491
.Lt_0492:
cmp dword ptr [_Lt_0BB9], 0
jne .Lt_0496
push offset _Lt_0083
call _HPOP@4
.Lt_0496:
.Lt_0495:
.Lt_0491:
push dword ptr [_Lt_0BB5]
call _HPOP@4
push dword ptr [_Lt_0BB4]
call _HPOP@4
push offset _Lt_034B
call _OUTP@4
.Lt_045F:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0BB5,12
.balign 4
	.lcomm	_Lt_0BB4,12
.balign 4
	.lcomm	_Lt_0BB7,12
.balign 4
	.lcomm	_Lt_0BB6,12
.balign 4
	.lcomm	_Lt_0BB8,4
.balign 4
	.lcomm	_Lt_0BB9,4
.balign 4
	.lcomm	_Lt_0BBA,4
.balign 4
	.lcomm	_Lt_0BBB,4
.balign 4
	.lcomm	_Lt_0BBC,4

.section .text
.balign 16
__EMITMULI@8:
push ebp
mov ebp, esp
.Lt_0497:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BBD
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BBE
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_049A
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0BBF], eax
push 0
push 0
push dword ptr [_Lt_0BBF]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0BC0
call _fb_StrAssign@20
push dword ptr [_Lt_0BBF]
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0BC1], eax
cmp dword ptr [_Lt_0BC1], 0
jne .Lt_049C
push dword ptr [_Lt_0BC0]
call _HPUSH@4
.Lt_049C:
.Lt_049B:
push dword ptr [_Lt_0BBD]
push dword ptr [_Lt_0BC0]
call _HMOV@8
push 0
push 6
push offset _Lt_049D
push -1
push offset _Lt_0BC2
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BC0
push -1
push offset _Lt_0BC2
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BC2
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0BBE
push -1
push offset _Lt_0BC2
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BC2]
call _OUTP@4
push dword ptr [_Lt_0BC0]
push dword ptr [_Lt_0BBD]
call _HMOV@8
cmp dword ptr [_Lt_0BC1], 0
jne .Lt_049F
push dword ptr [_Lt_0BC0]
call _HPOP@4
.Lt_049F:
.Lt_049E:
jmp .Lt_0499
.Lt_049A:
push 0
push 6
push offset _Lt_049D
push -1
push offset _Lt_0BC2
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BBD
push -1
push offset _Lt_0BC2
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BC2
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0BBE
push -1
push offset _Lt_0BC2
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BC2]
call _OUTP@4
.Lt_0499:
.Lt_0498:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0BBF,4
.balign 4
	.lcomm	_Lt_0BC1,4
.balign 4
	.lcomm	_Lt_0BC0,12
.balign 4
	.lcomm	_Lt_0BC2,12
.balign 4
	.lcomm	_Lt_0BBD,12
.balign 4
	.lcomm	_Lt_0BBE,12

.section .text
.balign 16
__EMITMULF@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_04A0:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BC4
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_04A3
push offset _Lt_04A4
call _OUTP@4
jmp .Lt_04A2
.Lt_04A3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_04A5
mov dword ptr [ebp-4], 24
jmp .Lt_0BC3
.Lt_04A5:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0BC3:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_04A8
push 0
push 6
push offset _Lt_04A9
push -1
push offset _Lt_0BC5
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BC4
push -1
push offset _Lt_0BC5
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BC5]
call _OUTP@4
jmp .Lt_04A7
.Lt_04A8:
push 0
push 7
push offset _Lt_04AA
push -1
push offset _Lt_0BC5
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BC4
push -1
push offset _Lt_0BC5
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BC5]
call _OUTP@4
.Lt_04A7:
.Lt_04A2:
.Lt_04A1:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0BC4,12
.balign 4
	.lcomm	_Lt_0BC5,12

.section .text
.balign 16
__EMITDIVF@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_04AB:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BC7
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_04AE
push offset _Lt_04AF
call _OUTP@4
jmp .Lt_04AD
.Lt_04AE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_04B0
mov dword ptr [ebp-4], 24
jmp .Lt_0BC6
.Lt_04B0:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0BC6:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_04B3
push 0
push 6
push offset _Lt_04B4
push -1
push offset _Lt_0BC8
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BC7
push -1
push offset _Lt_0BC8
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BC8]
call _OUTP@4
jmp .Lt_04B2
.Lt_04B3:
push 0
push 7
push offset _Lt_04B5
push -1
push offset _Lt_0BC8
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BC7
push -1
push offset _Lt_0BC8
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BC8]
call _OUTP@4
.Lt_04B2:
.Lt_04AD:
.Lt_04AC:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0BC7,12
.balign 4
	.lcomm	_Lt_0BC8,12

.section .text
.balign 16
__EMITDIVI@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_04B6:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BCC
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BCD
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_04B8
mov dword ptr [ebp-4], 24
jmp .Lt_0BC9
.Lt_04B8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0BC9:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 4
jne .Lt_04BB
push 0
push 4
push offset _Lt_0088
push -1
push offset _Lt_0BCE
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_0086
push -1
push offset _Lt_0BCF
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_0083
push -1
push offset _Lt_0BD0
call _fb_StrAssign@20
jmp .Lt_04BA
.Lt_04BB:
push 0
push 3
push offset _Lt_0082
push -1
push offset _Lt_0BCE
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0080
push -1
push offset _Lt_0BCF
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_007F
push -1
push offset _Lt_0BD0
call _fb_StrAssign@20
.Lt_04BA:
mov dword ptr [_Lt_0BD1], 0
push 5
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0BD2], eax
push 3
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0BD3], eax
push 0
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0BD4], eax
push 5
push dword ptr [ebp+12]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BD5], eax
push 0
push dword ptr [ebp+12]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BD6], eax
push 5
push dword ptr [ebp+8]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BD7], eax
push 0
push dword ptr [ebp+8]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BD8], eax
push 3
push dword ptr [ebp+8]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BD9], eax
mov eax, dword ptr [_Lt_0BD6]
or eax, dword ptr [_Lt_0BD5]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_04BD
mov dword ptr [_Lt_0BD1], -1
cmp dword ptr [_Lt_0BD9], 0
je .Lt_04BF
push offset _Lt_0086
call _HPUSH@4
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_04C1
push -1
push 0
push 0
push 8
push offset _Lt_0BDB
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push dword ptr [_Lt_0BDB]
call _HPUSH@4
.Lt_04C1:
.Lt_04C0:
jmp .Lt_04BE
.Lt_04BF:
cmp dword ptr [_Lt_0BD3], 0
jne .Lt_04C2
push offset _Lt_0086
call _HPUSH@4
.Lt_04C2:
.Lt_04BE:
push dword ptr [_Lt_0BCD]
push dword ptr [_Lt_0BCF]
call _HMOV@8
push 0
push -1
push offset _Lt_0BCF
push -1
push offset _Lt_0BCD
call _fb_StrAssign@20
.Lt_04BD:
.Lt_04BC:
cmp dword ptr [_Lt_0BD7], 0
jne .Lt_04C4
mov ecx, dword ptr [_Lt_0BD1]
and ecx, dword ptr [_Lt_0BD9]
je .Lt_04C6
cmp dword ptr [_Lt_0BD2], 0
jne .Lt_04C8
push offset _Lt_04C9
call _OUTP@4
jmp .Lt_04C7
.Lt_04C8:
push offset _Lt_0088
call _HPOP@4
.Lt_04C7:
jmp .Lt_04C5
.Lt_04C6:
cmp dword ptr [_Lt_0BD2], 0
jne .Lt_04CB
push offset _Lt_0088
call _HPUSH@4
.Lt_04CB:
.Lt_04CA:
push dword ptr [_Lt_0BCC]
push dword ptr [_Lt_0BCE]
call _HMOV@8
.Lt_04C5:
jmp .Lt_04C3
.Lt_04C4:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_04CD
push offset _Lt_0088
call _HPUSH@4
push dword ptr [_Lt_0BCC]
push dword ptr [_Lt_0BCE]
call _HMOV@8
.Lt_04CD:
.Lt_04CC:
.Lt_04C3:
cmp dword ptr [_Lt_0BD8], 0
je .Lt_04CF
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_04D1
push offset _Lt_0083
call _HPUSH@4
.Lt_04D1:
.Lt_04D0:
jmp .Lt_04CE
.Lt_04CF:
cmp dword ptr [_Lt_0BD4], 0
jne .Lt_04D2
push offset _Lt_0083
call _HPUSH@4
.Lt_04D2:
.Lt_04CE:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .Lt_04D3
mov dword ptr [ebp-8], 24
jmp .Lt_0BCA
.Lt_04D3:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.Lt_0BCA:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .Lt_04D6
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .Lt_04D7
mov dword ptr [ebp-12], 24
jmp .Lt_0BCB
.Lt_04D7:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_0BCB:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 4
jne .Lt_04DA
push offset _Lt_04DB
call _OUTP@4
jmp .Lt_04D9
.Lt_04DA:
push offset _Lt_04DC
call _OUTP@4
.Lt_04D9:
push 0
push 6
push offset _Lt_04DD
push -1
push offset _Lt_0BDB
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BCD
push -1
push offset _Lt_0BDB
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BDB]
call _OUTP@4
jmp .Lt_04D5
.Lt_04D6:
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0BDB
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BD0
push -1
push offset _Lt_0BDB
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BDB
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0BD0
push -1
push offset _Lt_0BDB
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BDB]
call _OUTP@4
push 0
push 5
push offset _Lt_04DE
push -1
push offset _Lt_0BDB
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BCD
push -1
push offset _Lt_0BDB
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BDB]
call _OUTP@4
.Lt_04D5:
cmp dword ptr [_Lt_0BD8], 0
je .Lt_04E0
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_04E2
push offset _Lt_0083
call _HPOP@4
.Lt_04E2:
.Lt_04E1:
jmp .Lt_04DF
.Lt_04E0:
cmp dword ptr [_Lt_0BD4], 0
jne .Lt_04E3
push offset _Lt_0083
call _HPOP@4
.Lt_04E3:
.Lt_04DF:
cmp dword ptr [_Lt_0BD7], 0
jne .Lt_04E5
mov ecx, dword ptr [_Lt_0BD1]
and ecx, dword ptr [_Lt_0BD9]
je .Lt_04E7
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_04E9
cmp dword ptr [_Lt_0BD2], 0
jne .Lt_04EB
push offset _Lt_0086
call _HPOP@4
push offset _Lt_04EC
call _OUTP@4
jmp .Lt_04EA
.Lt_04EB:
push offset _Lt_0086
call _HPOP@4
.Lt_04EA:
.Lt_04E9:
.Lt_04E8:
.Lt_04E7:
.Lt_04E6:
push dword ptr [_Lt_0BCE]
push dword ptr [_Lt_0BCC]
call _HMOV@8
cmp dword ptr [_Lt_0BD2], 0
jne .Lt_04EE
push offset _Lt_0088
call _HPOP@4
.Lt_04EE:
.Lt_04ED:
jmp .Lt_04E4
.Lt_04E5:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_04F0
mov ecx, dword ptr [_Lt_0BD3]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0BD1]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_04F2
push offset _Lt_04EC
call _OUTP@4
push offset _Lt_04F3
call _OUTP@4
jmp .Lt_04F1
.Lt_04F2:
push offset _Lt_0088
push offset _Lt_0086
call _HMOV@8
push offset _Lt_0088
call _HPOP@4
.Lt_04F1:
push dword ptr [_Lt_0BCF]
push dword ptr [_Lt_0BCC]
call _HMOV@8
mov eax, dword ptr [_Lt_0BD3]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_Lt_0BD1]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_04F5
push offset _Lt_0086
call _HPOP@4
.Lt_04F5:
.Lt_04F4:
.Lt_04F0:
.Lt_04EF:
.Lt_04E4:
cmp dword ptr [_Lt_0BD1], 0
je .Lt_04F7
mov ecx, dword ptr [_Lt_0BD3]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0BD9]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_04F9
push offset _Lt_0086
call _HPOP@4
.Lt_04F9:
.Lt_04F8:
.Lt_04F7:
.Lt_04F6:
.Lt_04B7:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0BCC,12
.balign 4
	.lcomm	_Lt_0BCD,12
.balign 4
	.lcomm	_Lt_0BD1,4
.balign 4
	.lcomm	_Lt_0BD2,4
.balign 4
	.lcomm	_Lt_0BD3,4
.balign 4
	.lcomm	_Lt_0BD4,4
.balign 4
	.lcomm	_Lt_0BD7,4
.balign 4
	.lcomm	_Lt_0BD9,4
.balign 4
	.lcomm	_Lt_0BD8,4
.balign 4
	.lcomm	_Lt_0BD5,4
.balign 4
	.lcomm	_Lt_0BD6,4
.balign 4
	.lcomm	_Lt_0BCE,12
.balign 4
	.lcomm	_Lt_0BCF,12
.balign 4
	.lcomm	_Lt_0BD0,12
.balign 4
	.lcomm	_Lt_0BDB,12

.section .text
.balign 16
__EMITMODI@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_04FA:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BE5
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BE6
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_04FC
mov dword ptr [ebp-4], 24
jmp .Lt_0BE2
.Lt_04FC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0BE2:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 4
jne .Lt_04FF
push 0
push 4
push offset _Lt_0088
push -1
push offset _Lt_0BE7
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_0086
push -1
push offset _Lt_0BE8
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_0083
push -1
push offset _Lt_0BE9
call _fb_StrAssign@20
jmp .Lt_04FE
.Lt_04FF:
push 0
push 3
push offset _Lt_0082
push -1
push offset _Lt_0BE7
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0080
push -1
push offset _Lt_0BE8
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_007F
push -1
push offset _Lt_0BE9
call _fb_StrAssign@20
.Lt_04FE:
mov dword ptr [_Lt_0BEA], 0
push 5
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0BEB], eax
push 3
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0BEC], eax
push 0
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0BED], eax
push 5
push dword ptr [ebp+12]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BEE], eax
push 0
push dword ptr [ebp+12]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BEF], eax
push 5
push dword ptr [ebp+8]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BF0], eax
push 0
push dword ptr [ebp+8]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BF1], eax
push 3
push dword ptr [ebp+8]
call _HISREGINVREG@8
mov dword ptr [_Lt_0BF2], eax
mov eax, dword ptr [_Lt_0BEF]
or eax, dword ptr [_Lt_0BEE]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0501
mov dword ptr [_Lt_0BEA], -1
cmp dword ptr [_Lt_0BF2], 0
je .Lt_0503
push offset _Lt_0086
call _HPUSH@4
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_0505
push -1
push 0
push 0
push 8
push offset _Lt_0BF4
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push dword ptr [_Lt_0BF4]
call _HPUSH@4
.Lt_0505:
.Lt_0504:
jmp .Lt_0502
.Lt_0503:
cmp dword ptr [_Lt_0BEC], 0
jne .Lt_0506
push offset _Lt_0086
call _HPUSH@4
.Lt_0506:
.Lt_0502:
push dword ptr [_Lt_0BE6]
push dword ptr [_Lt_0BE8]
call _HMOV@8
push 0
push -1
push offset _Lt_0BE8
push -1
push offset _Lt_0BE6
call _fb_StrAssign@20
.Lt_0501:
.Lt_0500:
cmp dword ptr [_Lt_0BF0], 0
jne .Lt_0508
mov ecx, dword ptr [_Lt_0BEA]
and ecx, dword ptr [_Lt_0BF2]
je .Lt_050A
cmp dword ptr [_Lt_0BEB], 0
jne .Lt_050C
push offset _Lt_04C9
call _OUTP@4
jmp .Lt_050B
.Lt_050C:
push offset _Lt_0088
call _HPOP@4
.Lt_050B:
jmp .Lt_0509
.Lt_050A:
cmp dword ptr [_Lt_0BEB], 0
jne .Lt_050E
push offset _Lt_0088
call _HPUSH@4
.Lt_050E:
.Lt_050D:
push dword ptr [_Lt_0BE5]
push dword ptr [_Lt_0BE7]
call _HMOV@8
.Lt_0509:
jmp .Lt_0507
.Lt_0508:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_0510
push offset _Lt_0088
call _HPUSH@4
push dword ptr [_Lt_0BE5]
push dword ptr [_Lt_0BE7]
call _HMOV@8
.Lt_0510:
.Lt_050F:
.Lt_0507:
cmp dword ptr [_Lt_0BF1], 0
je .Lt_0512
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_0514
push offset _Lt_0083
call _HPUSH@4
.Lt_0514:
.Lt_0513:
jmp .Lt_0511
.Lt_0512:
cmp dword ptr [_Lt_0BED], 0
jne .Lt_0515
push offset _Lt_0083
call _HPUSH@4
.Lt_0515:
.Lt_0511:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .Lt_0516
mov dword ptr [ebp-8], 24
jmp .Lt_0BE3
.Lt_0516:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.Lt_0BE3:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .Lt_0519
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .Lt_051A
mov dword ptr [ebp-12], 24
jmp .Lt_0BE4
.Lt_051A:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_0BE4:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 4
jne .Lt_051D
push offset _Lt_04DB
call _OUTP@4
jmp .Lt_051C
.Lt_051D:
push offset _Lt_04DC
call _OUTP@4
.Lt_051C:
push 0
push 6
push offset _Lt_04DD
push -1
push offset _Lt_0BF4
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BE6
push -1
push offset _Lt_0BF4
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BF4]
call _OUTP@4
jmp .Lt_0518
.Lt_0519:
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0BF4
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BE9
push -1
push offset _Lt_0BF4
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BF4
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0BE9
push -1
push offset _Lt_0BF4
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BF4]
call _OUTP@4
push 0
push 5
push offset _Lt_04DE
push -1
push offset _Lt_0BF4
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0BE6
push -1
push offset _Lt_0BF4
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0BF4]
call _OUTP@4
.Lt_0518:
push dword ptr [_Lt_0BE9]
push dword ptr [_Lt_0BE7]
call _HMOV@8
cmp dword ptr [_Lt_0BF1], 0
je .Lt_051F
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_0521
push offset _Lt_0083
call _HPOP@4
.Lt_0521:
.Lt_0520:
jmp .Lt_051E
.Lt_051F:
cmp dword ptr [_Lt_0BED], 0
jne .Lt_0522
push offset _Lt_0083
call _HPOP@4
.Lt_0522:
.Lt_051E:
cmp dword ptr [_Lt_0BF0], 0
jne .Lt_0524
mov ecx, dword ptr [_Lt_0BEA]
and ecx, dword ptr [_Lt_0BF2]
je .Lt_0526
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_0528
cmp dword ptr [_Lt_0BEB], 0
jne .Lt_052A
push offset _Lt_0086
call _HPOP@4
push offset _Lt_04EC
call _OUTP@4
jmp .Lt_0529
.Lt_052A:
push offset _Lt_0086
call _HPOP@4
.Lt_0529:
.Lt_0528:
.Lt_0527:
.Lt_0526:
.Lt_0525:
push dword ptr [_Lt_0BE7]
push dword ptr [_Lt_0BE5]
call _HMOV@8
cmp dword ptr [_Lt_0BEB], 0
jne .Lt_052C
push offset _Lt_0088
call _HPOP@4
.Lt_052C:
.Lt_052B:
jmp .Lt_0523
.Lt_0524:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .Lt_052E
mov ecx, dword ptr [_Lt_0BEC]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0BEA]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_0530
push offset _Lt_04EC
call _OUTP@4
push offset _Lt_04F3
call _OUTP@4
jmp .Lt_052F
.Lt_0530:
push offset _Lt_0088
push offset _Lt_0086
call _HMOV@8
push offset _Lt_0088
call _HPOP@4
.Lt_052F:
push dword ptr [_Lt_0BE8]
push dword ptr [_Lt_0BE5]
call _HMOV@8
mov eax, dword ptr [_Lt_0BEC]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_Lt_0BEA]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_0532
push offset _Lt_0086
call _HPOP@4
.Lt_0532:
.Lt_0531:
.Lt_052E:
.Lt_052D:
.Lt_0523:
cmp dword ptr [_Lt_0BEA], 0
je .Lt_0534
mov ecx, dword ptr [_Lt_0BEC]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0BF2]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_0536
push offset _Lt_0086
call _HPOP@4
.Lt_0536:
.Lt_0535:
.Lt_0534:
.Lt_0533:
.Lt_04FB:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0BE5,12
.balign 4
	.lcomm	_Lt_0BE6,12
.balign 4
	.lcomm	_Lt_0BEA,4
.balign 4
	.lcomm	_Lt_0BEB,4
.balign 4
	.lcomm	_Lt_0BEC,4
.balign 4
	.lcomm	_Lt_0BED,4
.balign 4
	.lcomm	_Lt_0BF0,4
.balign 4
	.lcomm	_Lt_0BF2,4
.balign 4
	.lcomm	_Lt_0BF1,4
.balign 4
	.lcomm	_Lt_0BEE,4
.balign 4
	.lcomm	_Lt_0BEF,4
.balign 4
	.lcomm	_Lt_0BE7,12
.balign 4
	.lcomm	_Lt_0BE8,12
.balign 4
	.lcomm	_Lt_0BE9,12
.balign 4
	.lcomm	_Lt_0BF4,12

.section .text
.balign 16
_HSHIFTL@12:
push ebp
mov ebp, esp
sub esp, 216
push ebx
.Lt_0537:
cmp dword ptr [ebp+8], 41
jne .Lt_053A
push 0
push 5
push offset _Lt_053B
push -1
push offset _Lt_0C00
call _fb_StrAssign@20
push 0
push 6
push offset _Lt_053C
push -1
push offset _Lt_0C01
call _fb_StrAssign@20
jmp .Lt_0539
.Lt_053A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_053D
mov dword ptr [ebp-4], 24
jmp .Lt_0BFB
.Lt_053D:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0BFB:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0540
push 0
push 5
push offset _Lt_02FE
push -1
push offset _Lt_0C00
call _fb_StrAssign@20
jmp .Lt_053F
.Lt_0540:
push 0
push 5
push offset _Lt_0541
push -1
push offset _Lt_0C00
call _fb_StrAssign@20
.Lt_053F:
push 0
push 6
push offset _Lt_0542
push -1
push offset _Lt_0C01
call _fb_StrAssign@20
.Lt_0539:
push offset _Lt_0C02
push offset _Lt_0C03
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push -1
push 0
push 0
push 8
push offset _Lt_0C04
push dword ptr [ebp+16]
call _HPREPOPERAND@24
cmp dword ptr [ebp+8], 41
jne .Lt_0544
push 0
push -1
push offset _Lt_0C02
push -1
push offset _Lt_0C05
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [_Lt_0C06], ebx
push 0
push -1
push offset _Lt_0C03
push -1
push offset _Lt_0C07
call _fb_StrAssign@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [_Lt_0C08], ebx
jmp .Lt_0543
.Lt_0544:
push 0
push -1
push offset _Lt_0C03
push -1
push offset _Lt_0C05
call _fb_StrAssign@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [_Lt_0C06], ebx
push 0
push -1
push offset _Lt_0C02
push -1
push offset _Lt_0C07
call _fb_StrAssign@20
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov dword ptr [_Lt_0C08], eax
.Lt_0543:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .Lt_0546
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jl .Lt_0548
jg .Lt_0C09
cmp dword ptr [eax+24], 64
jb .Lt_0548
.Lt_0C09:
mov eax, dword ptr [_Lt_0C08]
cmp dword ptr [eax], 4
jne .Lt_054A
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C07
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C07
push 5
push offset _Lt_03AE
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _OUTP@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
jmp .Lt_0549
.Lt_054A:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 4
push offset _Lt_02DE
push -1
push -1
push offset _Lt_0C07
push 5
push offset _Lt_0185
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0549:
mov eax, dword ptr [_Lt_0C06]
cmp dword ptr [eax], 4
jne .Lt_0553
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C05
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C05
push 5
push offset _Lt_03AE
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _OUTP@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
jmp .Lt_0552
.Lt_0553:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 4
push offset _Lt_02DE
push -1
push -1
push offset _Lt_0C05
push 5
push offset _Lt_0185
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0552:
jmp .Lt_0547
.Lt_0548:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jl .Lt_055B
jg .Lt_0C0A
cmp dword ptr [eax+24], 32
jb .Lt_055B
.Lt_0C0A:
mov dword ptr [_Lt_0C0B], -1
mov eax, dword ptr [_Lt_0C08]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0C06]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_055D
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C07
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C05
push 5
push offset _Lt_0185
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-52]
call _OUTP@4
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
jmp .Lt_055C
.Lt_055D:
push 0
call _HFINDFREEREG@4
mov dword ptr [_Lt_0C0E], eax
cmp dword ptr [_Lt_0C0E], -1
jne .Lt_0563
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0C0E], eax
mov dword ptr [_Lt_0C0B], 0
.Lt_0563:
.Lt_0562:
push 0
push 0
push dword ptr [_Lt_0C0E]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0C0F
call _fb_StrAssign@20
cmp dword ptr [_Lt_0C0B], 0
jne .Lt_0565
push dword ptr [_Lt_0C0F]
call _HPUSH@4
.Lt_0565:
.Lt_0564:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C07
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C0F
push 5
push offset _Lt_0185
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-52]
call _OUTP@4
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
push offset _Lt_0C0F
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C05
push 5
push offset _Lt_0185
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-100]
call _OUTP@4
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
.Lt_055C:
mov eax, dword ptr [ebp+8]
cmp eax, 42
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_056E
mov dword ptr [ebp-4], 24
jmp .Lt_0BFC
.Lt_056E:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0BFC:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+8]
and ecx, dword ptr [ebp-8]
je .Lt_0571
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 5
push offset _Lt_02FF
push -1
push -1
push offset _Lt_0C07
push 5
push offset _Lt_02FE
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ecx, [ebp-20]
push ecx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
call _OUTP@4
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
jmp .Lt_0570
.Lt_0571:
mov eax, dword ptr [_Lt_0C08]
cmp dword ptr [eax], 4
jne .Lt_0575
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C07
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C07
push 5
push offset _Lt_03AE
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-52]
call _OUTP@4
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
jmp .Lt_0570
.Lt_0575:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset _Lt_02DE
push -1
push -1
push offset _Lt_0C07
push 5
push offset _Lt_0185
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-40]
call _OUTP@4
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.Lt_0570:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jl .Lt_057E
jg .Lt_0C11
cmp dword ptr [eax+24], 32
jbe .Lt_057E
.Lt_0C11:
push 0
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
add ebx, 4294967264
adc ecx, 4294967295
push ecx
push ebx
call _fb_LongintToStr@8
push eax
push -1
push offset _Lt_0C04
call _fb_StrAssign@20
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C04
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C05
push -1
push offset _Lt_0C00
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-52]
call _OUTP@4
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
.Lt_057E:
.Lt_057D:
cmp dword ptr [_Lt_0C0B], 0
jne .Lt_0584
push dword ptr [_Lt_0C0F]
call _HPOP@4
.Lt_0584:
.Lt_0583:
jmp .Lt_0547
.Lt_055B:
mov eax, dword ptr [_Lt_0C08]
cmp dword ptr [eax], 4
jne .Lt_0586
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
push offset _Lt_0C04
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C07
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C05
push -1
push offset _Lt_0C01
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-72]
call _OUTP@4
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
push offset _Lt_0C04
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C07
push -1
push offset _Lt_0C00
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-120]
call _OUTP@4
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
jmp .Lt_0585
.Lt_0586:
mov eax, dword ptr [_Lt_0C06]
cmp dword ptr [eax], 4
jne .Lt_0591
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C07
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C05
push 6
push offset _Lt_018B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _OUTP@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
push offset _Lt_0C04
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C05
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C07
push -1
push offset _Lt_0C01
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-120]
call _OUTP@4
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push offset _Lt_0C04
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C05
push -1
push offset _Lt_0C00
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-168]
call _OUTP@4
lea eax, [ebp-168]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
push offset _Lt_0C07
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C05
push 6
push offset _Lt_018B
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-216]
call _OUTP@4
lea eax, [ebp-216]
push eax
call _fb_StrDelete@4
jmp .Lt_0585
.Lt_0591:
push 0
call _HFINDFREEREG@4
mov dword ptr [_Lt_0C0E], eax
cmp dword ptr [_Lt_0C0E], -1
jne .Lt_05A5
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0C0E], eax
mov dword ptr [_Lt_0C0B], 0
jmp .Lt_05A4
.Lt_05A5:
mov dword ptr [_Lt_0C0B], -1
.Lt_05A4:
push 0
push 0
push dword ptr [_Lt_0C0E]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0C0F
call _fb_StrAssign@20
cmp dword ptr [_Lt_0C0B], 0
jne .Lt_05A7
push dword ptr [_Lt_0C0F]
call _HPUSH@4
.Lt_05A7:
.Lt_05A6:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C07
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C0F
push 5
push offset _Lt_0185
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _OUTP@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
push offset _Lt_0C04
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C0F
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C05
push -1
push offset _Lt_0C01
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-120]
call _OUTP@4
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push offset _Lt_0C04
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C0F
push -1
push offset _Lt_0C00
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-168]
call _OUTP@4
lea eax, [ebp-168]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
push offset _Lt_0C0F
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C07
push 5
push offset _Lt_0185
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-216]
call _OUTP@4
lea eax, [ebp-216]
push eax
call _fb_StrDelete@4
cmp dword ptr [_Lt_0C0B], 0
jne .Lt_05BB
push offset _Lt_0088
call _HPOP@4
.Lt_05BB:
.Lt_05BA:
.Lt_0585:
.Lt_0547:
jmp .Lt_0545
.Lt_0546:
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_0C12
call _fb_StrAssign@20
push dword ptr [_Lt_0C02]
call _HPUSH@4
push dword ptr [_Lt_0C03]
call _HPUSH@4
mov dword ptr [_Lt_0C13], 0
push 5
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0C14], eax
push 0
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0C15], eax
push 3
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0C16], eax
push 5
push dword ptr [ebp+12]
call _HISREGINVREG@8
mov dword ptr [_Lt_0C17], eax
push 0
push dword ptr [ebp+12]
call _HISREGINVREG@8
mov dword ptr [_Lt_0C18], eax
push 3
push dword ptr [ebp+12]
call _HISREGINVREG@8
mov dword ptr [_Lt_0C19], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+12]
cmp ecx, 3
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_05BD
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_05BE
mov dword ptr [ebp-4], 24
jmp .Lt_0BFE
.Lt_05BE:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-4], ecx
.Lt_0BFE:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 4
je .Lt_05C1
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], 4
jne .Lt_05C3
push 0
push 0
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+12]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0C04
call _fb_StrAssign@20
.Lt_05C3:
.Lt_05C2:
.Lt_05C1:
.Lt_05C0:
cmp dword ptr [_Lt_0C16], 0
jne .Lt_05C5
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [_Lt_0C19]
je .Lt_05C7
push dword ptr [_Lt_0C04]
push offset _Lt_0086
call _HMOV@8
mov dword ptr [_Lt_0C16], -1
jmp .Lt_05C6
.Lt_05C7:
push dword ptr [_Lt_0C04]
call _HPUSH@4
push offset _Lt_04EC
call _OUTP@4
add dword ptr [_Lt_0C13], 4
.Lt_05C6:
jmp .Lt_05C4
.Lt_05C5:
push dword ptr [_Lt_0C04]
push offset _Lt_0086
call _HMOV@8
.Lt_05C4:
jmp .Lt_05BC
.Lt_05BD:
mov dword ptr [_Lt_0C16], -1
.Lt_05BC:
cmp dword ptr [_Lt_0C17], 0
je .Lt_05C9
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 4
je .Lt_05CB
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
push dword ptr [_Lt_0C13]
call _fb_IntToStr@4
push eax
push 16
push offset _Lt_0474
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_05CA
.Lt_05CB:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
push dword ptr [_Lt_0C13]
call _fb_IntToStr@4
push eax
push 15
push offset _Lt_046C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_05CA:
jmp .Lt_05C8
.Lt_05C9:
cmp dword ptr [_Lt_0C14], 0
jne .Lt_05D3
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
push dword ptr [_Lt_0C13]
call _fb_IntToStr@4
push eax
push 16
push offset _Lt_0474
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_05D2
.Lt_05D3:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
push dword ptr [_Lt_0C13]
call _fb_IntToStr@4
push eax
push 15
push offset _Lt_046C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_05D2:
.Lt_05C8:
cmp dword ptr [_Lt_0C18], 0
je .Lt_05DB
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_05DD
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
mov eax, dword ptr [_Lt_0C13]
add eax, 4
push eax
call _fb_IntToStr@4
push eax
push 16
push offset _Lt_05DE
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_05DC
.Lt_05DD:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
mov eax, dword ptr [_Lt_0C13]
add eax, 4
push eax
call _fb_IntToStr@4
push eax
push 15
push offset _Lt_047D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_05DC:
jmp .Lt_05DA
.Lt_05DB:
cmp dword ptr [_Lt_0C15], 0
jne .Lt_05E6
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
mov eax, dword ptr [_Lt_0C13]
add eax, 4
push eax
call _fb_IntToStr@4
push eax
push 16
push offset _Lt_05DE
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_05E5
.Lt_05E6:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_014A
push -1
push -1
mov eax, dword ptr [_Lt_0C13]
add eax, 4
push eax
call _fb_IntToStr@4
push eax
push 15
push offset _Lt_047D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _OUTP@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_05E5:
.Lt_05DA:
cmp dword ptr [ebp+8], 41
jne .Lt_05EE
push offset _Lt_05EF
call _OUTP@4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 9
push offset _Lt_05F0
push -1
push offset _Lt_0C00
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _OUTP@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .Lt_05ED
.Lt_05EE:
push offset _Lt_05F3
call _OUTP@4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 9
push offset _Lt_05F4
push -1
push offset _Lt_0C00
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _OUTP@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_05ED:
push offset _Lt_05F7
call _OUTP@4
push dword ptr [_Lt_0C12]
push offset _Lt_03AB
call _HBRANCH@8
cmp dword ptr [ebp+8], 41
jne .Lt_05F9
push offset _Lt_05FA
call _OUTP@4
push offset _Lt_0242
call _OUTP@4
jmp .Lt_05F8
.Lt_05F9:
push offset _Lt_05FB
call _OUTP@4
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_05FC
mov dword ptr [ebp-4], 24
jmp .Lt_0BFF
.Lt_05FC:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0BFF:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_05FF
push offset _Lt_0600
call _OUTP@4
jmp .Lt_05FE
.Lt_05FF:
push offset _Lt_0601
call _OUTP@4
.Lt_05FE:
.Lt_05F8:
push dword ptr [_Lt_0C12]
call _HLABEL@4
cmp dword ptr [_Lt_0C16], 0
jne .Lt_0603
push offset _Lt_0086
call _HPOP@4
.Lt_0603:
.Lt_0602:
cmp dword ptr [_Lt_0C18], 0
je .Lt_0605
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_0607
push offset _Lt_0608
call _OUTP@4
jmp .Lt_0606
.Lt_0607:
push offset _Lt_0609
call _OUTP@4
.Lt_0606:
jmp .Lt_0604
.Lt_0605:
cmp dword ptr [_Lt_0C15], 0
jne .Lt_060B
push offset _Lt_0608
call _OUTP@4
jmp .Lt_060A
.Lt_060B:
push offset _Lt_0609
call _OUTP@4
.Lt_060A:
.Lt_0604:
cmp dword ptr [_Lt_0C17], 0
je .Lt_060D
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_060F
push offset _Lt_0610
call _OUTP@4
jmp .Lt_060E
.Lt_060F:
push offset _Lt_0611
call _OUTP@4
.Lt_060E:
jmp .Lt_060C
.Lt_060D:
cmp dword ptr [_Lt_0C14], 0
jne .Lt_0613
push offset _Lt_0610
call _OUTP@4
jmp .Lt_0612
.Lt_0613:
push offset _Lt_0611
call _OUTP@4
.Lt_0612:
.Lt_060C:
push dword ptr [_Lt_0C03]
call _HPOP@4
push dword ptr [_Lt_0C02]
call _HPOP@4
.Lt_0545:
.Lt_0538:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0C03,12
.balign 4
	.lcomm	_Lt_0C02,12
.balign 4
	.lcomm	_Lt_0C04,12
.balign 4
	.lcomm	_Lt_0C12,12
.balign 4
	.lcomm	_Lt_0C00,12
.balign 4
	.lcomm	_Lt_0C01,12
.balign 4
	.lcomm	_Lt_0C0E,4
.balign 4
	.lcomm	_Lt_0C0B,4
.balign 4
	.lcomm	_Lt_0C0F,12
.balign 4
	.lcomm	_Lt_0C05,12
.balign 4
	.lcomm	_Lt_0C07,12
.balign 4
	.lcomm	_Lt_0C06,4
.balign 4
	.lcomm	_Lt_0C08,4
.balign 4
	.lcomm	_Lt_0C14,4
.balign 4
	.lcomm	_Lt_0C15,4
.balign 4
	.lcomm	_Lt_0C16,4
.balign 4
	.lcomm	_Lt_0C17,4
.balign 4
	.lcomm	_Lt_0C18,4
.balign 4
	.lcomm	_Lt_0C19,4
.balign 4
	.lcomm	_Lt_0C13,4

.section .text
.balign 16
_HSHIFTI@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0614:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0616
mov dword ptr [ebp-4], 24
jmp .Lt_0C1D
.Lt_0616:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C1D:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0619
cmp dword ptr [ebp+8], 41
jne .Lt_061B
push 0
push 4
push offset _Lt_061C
push -1
push offset _Lt_0C1E
call _fb_StrAssign@20
jmp .Lt_061A
.Lt_061B:
push 0
push 4
push offset _Lt_061D
push -1
push offset _Lt_0C1E
call _fb_StrAssign@20
.Lt_061A:
jmp .Lt_0618
.Lt_0619:
cmp dword ptr [ebp+8], 41
jne .Lt_061F
push 0
push 4
push offset _Lt_0620
push -1
push offset _Lt_0C1E
call _fb_StrAssign@20
jmp .Lt_061E
.Lt_061F:
push 0
push 4
push offset _Lt_0621
push -1
push offset _Lt_0C1E
call _fb_StrAssign@20
.Lt_061E:
.Lt_0618:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C1F
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov dword ptr [_Lt_0C20], 0
mov dword ptr [_Lt_0C21], 0
mov dword ptr [_Lt_0C22], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .Lt_0623
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C23
push dword ptr [ebp+16]
call _HPREPOPERAND@24
push 0
push -1
push offset _Lt_0C1F
push -1
push offset _Lt_0C24
call _fb_StrAssign@20
jmp .Lt_0622
.Lt_0623:
push 5
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0C25], eax
push 3
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0C26], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jne .Lt_0625
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
mov dword ptr [_Lt_0C27], ebx
jmp .Lt_0624
.Lt_0625:
mov dword ptr [_Lt_0C27], -1
.Lt_0624:
push 3
push dword ptr [ebp+12]
call _HISREGINVREG@8
mov dword ptr [_Lt_0C20], eax
cmp dword ptr [_Lt_0C20], 0
je .Lt_0627
push offset _Lt_0086
call _HPUSH@4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_0629
push -1
push 0
push 0
push 8
push offset _Lt_0C28
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push dword ptr [_Lt_0C28]
call _HPUSH@4
.Lt_0629:
.Lt_0628:
jmp .Lt_0626
.Lt_0627:
mov eax, dword ptr [_Lt_0C27]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0C26]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_062A
mov dword ptr [_Lt_0C22], -1
push offset _Lt_0086
call _HPUSH@4
.Lt_062A:
.Lt_0626:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 4
je .Lt_062C
push -1
push 0
push 0
push 2
push offset _Lt_0C28
push dword ptr [ebp+16]
call _HPREPOPERAND@24
push dword ptr [_Lt_0C28]
push offset _Lt_007A
call _HMOV@8
jmp .Lt_062B
.Lt_062C:
cmp dword ptr [_Lt_0C27], 3
je .Lt_062E
mov ebx, dword ptr [_DTYPETB+128]
sal ebx, 3
add ebx, dword ptr [_Lt_0C27]
lea eax, [_RNAMETB+ebx*8]
push eax
push offset _Lt_0086
call _HMOV@8
.Lt_062E:
.Lt_062D:
.Lt_062B:
cmp dword ptr [_Lt_0C20], 0
je .Lt_0630
cmp dword ptr [_Lt_0C25], 0
jne .Lt_0632
mov dword ptr [_Lt_0C21], -1
push offset _Lt_04C9
call _OUTP@4
jmp .Lt_0631
.Lt_0632:
push offset _Lt_0088
call _HPOP@4
.Lt_0631:
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
sal ebx, 4
mov eax, dword ptr [_DTYPETB+ebx]
sal eax, 6
lea ebx, [_RNAMETB+eax+40]
push ebx
push -1
push offset _Lt_0C24
call _fb_StrAssign@20
jmp .Lt_062F
.Lt_0630:
push 0
push -1
push offset _Lt_0C1F
push -1
push offset _Lt_0C24
call _fb_StrAssign@20
.Lt_062F:
push 0
push 3
push offset _Lt_007A
push -1
push offset _Lt_0C23
call _fb_StrAssign@20
.Lt_0622:
push 0
push -1
push offset _Lt_0C1E
push -1
push offset _Lt_0C28
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0176
push -1
push offset _Lt_0C28
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C24
push -1
push offset _Lt_0C28
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C28
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C23
push -1
push offset _Lt_0C28
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C28]
call _OUTP@4
cmp dword ptr [_Lt_0C20], 0
je .Lt_0634
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
je .Lt_0636
push offset _Lt_0086
call _HPOP@4
cmp dword ptr [_Lt_0C21], 0
je .Lt_0638
push offset _Lt_04EC
call _OUTP@4
.Lt_0638:
.Lt_0637:
.Lt_0636:
.Lt_0635:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
sal eax, 4
mov ebx, dword ptr [_DTYPETB+eax]
sal ebx, 6
lea eax, [_RNAMETB+ebx+40]
push eax
push dword ptr [_Lt_0C1F]
call _HMOV@8
.Lt_0634:
.Lt_0633:
cmp dword ptr [_Lt_0C21], 0
je .Lt_063A
push offset _Lt_0088
call _HPOP@4
.Lt_063A:
.Lt_0639:
cmp dword ptr [_Lt_0C22], 0
je .Lt_063C
push offset _Lt_0086
call _HPOP@4
.Lt_063C:
.Lt_063B:
.Lt_0615:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0C21,4
.balign 4
	.lcomm	_Lt_0C22,4
.balign 4
	.lcomm	_Lt_0C25,4
.balign 4
	.lcomm	_Lt_0C26,4
.balign 4
	.lcomm	_Lt_0C27,4
.balign 4
	.lcomm	_Lt_0C20,4
.balign 4
	.lcomm	_Lt_0C28,12
.balign 4
	.lcomm	_Lt_0C1F,12
.balign 4
	.lcomm	_Lt_0C23,12
.balign 4
	.lcomm	_Lt_0C24,12
.balign 4
	.lcomm	_Lt_0C1E,12

.section .text
.balign 16
__EMITSHLL@8:
push ebp
mov ebp, esp
.Lt_063D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call _HSHIFTL@12
.Lt_063E:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSHLI@8:
push ebp
mov ebp, esp
.Lt_063F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call _HSHIFTI@12
.Lt_0640:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSHRL@8:
push ebp
mov ebp, esp
.Lt_0641:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call _HSHIFTL@12
.Lt_0642:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSHRI@8:
push ebp
mov ebp, esp
.Lt_0643:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call _HSHIFTI@12
.Lt_0644:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITANDL@8:
push ebp
mov ebp, esp
.Lt_0645:
push offset _Lt_0C2B
push offset _Lt_0C2C
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0C2D
push offset _Lt_0C2E
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_0647
push -1
push offset _Lt_0C2F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C2C
push -1
push offset _Lt_0C2F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C2F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C2E
push -1
push offset _Lt_0C2F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C2F]
call _OUTP@4
push 0
push 5
push offset _Lt_0647
push -1
push offset _Lt_0C2F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C2B
push -1
push offset _Lt_0C2F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C2F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C2D
push -1
push offset _Lt_0C2F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C2F]
call _OUTP@4
.Lt_0646:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C2C,12
.balign 4
	.lcomm	_Lt_0C2B,12
.balign 4
	.lcomm	_Lt_0C2E,12
.balign 4
	.lcomm	_Lt_0C2D,12
.balign 4
	.lcomm	_Lt_0C2F,12

.section .text
.balign 16
__EMITANDI@8:
push ebp
mov ebp, esp
.Lt_0648:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C30
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C31
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_0647
push -1
push offset _Lt_0C32
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C30
push -1
push offset _Lt_0C32
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C32
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C31
push -1
push offset _Lt_0C32
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C32]
call _OUTP@4
.Lt_0649:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C30,12
.balign 4
	.lcomm	_Lt_0C31,12
.balign 4
	.lcomm	_Lt_0C32,12

.section .text
.balign 16
__EMITORL@8:
push ebp
mov ebp, esp
.Lt_064A:
push offset _Lt_0C33
push offset _Lt_0C34
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0C35
push offset _Lt_0C36
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 0
push 4
push offset _Lt_064C
push -1
push offset _Lt_0C37
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C34
push -1
push offset _Lt_0C37
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C37
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C36
push -1
push offset _Lt_0C37
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C37]
call _OUTP@4
push 0
push 4
push offset _Lt_064C
push -1
push offset _Lt_0C37
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C33
push -1
push offset _Lt_0C37
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C37
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C35
push -1
push offset _Lt_0C37
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C37]
call _OUTP@4
.Lt_064B:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C34,12
.balign 4
	.lcomm	_Lt_0C33,12
.balign 4
	.lcomm	_Lt_0C36,12
.balign 4
	.lcomm	_Lt_0C35,12
.balign 4
	.lcomm	_Lt_0C37,12

.section .text
.balign 16
__EMITORI@8:
push ebp
mov ebp, esp
.Lt_064D:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C38
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C39
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 0
push 4
push offset _Lt_064C
push -1
push offset _Lt_0C3A
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C38
push -1
push offset _Lt_0C3A
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C3A
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C39
push -1
push offset _Lt_0C3A
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C3A]
call _OUTP@4
.Lt_064E:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C38,12
.balign 4
	.lcomm	_Lt_0C39,12
.balign 4
	.lcomm	_Lt_0C3A,12

.section .text
.balign 16
__EMITXORL@8:
push ebp
mov ebp, esp
.Lt_064F:
push offset _Lt_0C3B
push offset _Lt_0C3C
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0C3D
push offset _Lt_0C3E
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C3F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C3C
push -1
push offset _Lt_0C3F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C3F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C3E
push -1
push offset _Lt_0C3F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C3F]
call _OUTP@4
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C3F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C3B
push -1
push offset _Lt_0C3F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C3F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C3D
push -1
push offset _Lt_0C3F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C3F]
call _OUTP@4
.Lt_0650:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C3C,12
.balign 4
	.lcomm	_Lt_0C3B,12
.balign 4
	.lcomm	_Lt_0C3E,12
.balign 4
	.lcomm	_Lt_0C3D,12
.balign 4
	.lcomm	_Lt_0C3F,12

.section .text
.balign 16
__EMITXORI@8:
push ebp
mov ebp, esp
.Lt_0651:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C40
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C41
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C42
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C40
push -1
push offset _Lt_0C42
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C42
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C41
push -1
push offset _Lt_0C42
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C42]
call _OUTP@4
.Lt_0652:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C40,12
.balign 4
	.lcomm	_Lt_0C41,12
.balign 4
	.lcomm	_Lt_0C42,12

.section .text
.balign 16
__EMITEQVL@8:
push ebp
mov ebp, esp
.Lt_0653:
push offset _Lt_0C43
push offset _Lt_0C44
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0C45
push offset _Lt_0C46
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C47
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C44
push -1
push offset _Lt_0C47
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C47
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C46
push -1
push offset _Lt_0C47
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C47]
call _OUTP@4
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C47
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C43
push -1
push offset _Lt_0C47
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C47
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C45
push -1
push offset _Lt_0C47
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C47]
call _OUTP@4
push 0
push 5
push offset _Lt_0655
push -1
push offset _Lt_0C47
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C44
push -1
push offset _Lt_0C47
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C47]
call _OUTP@4
push 0
push 5
push offset _Lt_0655
push -1
push offset _Lt_0C47
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C43
push -1
push offset _Lt_0C47
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C47]
call _OUTP@4
.Lt_0654:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C44,12
.balign 4
	.lcomm	_Lt_0C43,12
.balign 4
	.lcomm	_Lt_0C46,12
.balign 4
	.lcomm	_Lt_0C45,12
.balign 4
	.lcomm	_Lt_0C47,12

.section .text
.balign 16
__EMITEQVI@8:
push ebp
mov ebp, esp
.Lt_0656:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C48
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C49
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C4A
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C48
push -1
push offset _Lt_0C4A
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C4A
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C49
push -1
push offset _Lt_0C4A
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C4A]
call _OUTP@4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .Lt_0659
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C4A
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C48
push -1
push offset _Lt_0C4A
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C4A
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0004
push -1
push offset _Lt_0C4A
call _fb_StrConcatAssign@20
jmp .Lt_0658
.Lt_0659:
push 0
push 5
push offset _Lt_0655
push -1
push offset _Lt_0C4A
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C48
push -1
push offset _Lt_0C4A
call _fb_StrConcatAssign@20
.Lt_0658:
push dword ptr [_Lt_0C4A]
call _OUTP@4
.Lt_0657:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C48,12
.balign 4
	.lcomm	_Lt_0C49,12
.balign 4
	.lcomm	_Lt_0C4A,12

.section .text
.balign 16
__EMITIMPL@8:
push ebp
mov ebp, esp
.Lt_065A:
push offset _Lt_0C4B
push offset _Lt_0C4C
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push offset _Lt_0C4D
push offset _Lt_0C4E
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_0655
push -1
push offset _Lt_0C4F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C4C
push -1
push offset _Lt_0C4F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C4F]
call _OUTP@4
push 0
push 5
push offset _Lt_0655
push -1
push offset _Lt_0C4F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C4B
push -1
push offset _Lt_0C4F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C4F]
call _OUTP@4
push 0
push 4
push offset _Lt_064C
push -1
push offset _Lt_0C4F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C4C
push -1
push offset _Lt_0C4F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C4F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C4E
push -1
push offset _Lt_0C4F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C4F]
call _OUTP@4
push 0
push 4
push offset _Lt_064C
push -1
push offset _Lt_0C4F
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C4B
push -1
push offset _Lt_0C4F
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C4F
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C4D
push -1
push offset _Lt_0C4F
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C4F]
call _OUTP@4
.Lt_065B:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C4C,12
.balign 4
	.lcomm	_Lt_0C4B,12
.balign 4
	.lcomm	_Lt_0C4E,12
.balign 4
	.lcomm	_Lt_0C4D,12
.balign 4
	.lcomm	_Lt_0C4F,12

.section .text
.balign 16
__EMITIMPI@8:
push ebp
mov ebp, esp
.Lt_065C:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C50
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C51
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .Lt_065F
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C52
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C50
push -1
push offset _Lt_0C52
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C52
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0004
push -1
push offset _Lt_0C52
call _fb_StrConcatAssign@20
jmp .Lt_065E
.Lt_065F:
push 0
push 5
push offset _Lt_0655
push -1
push offset _Lt_0C52
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C50
push -1
push offset _Lt_0C52
call _fb_StrConcatAssign@20
.Lt_065E:
push dword ptr [_Lt_0C52]
call _OUTP@4
push 0
push 4
push offset _Lt_064C
push -1
push offset _Lt_0C52
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C50
push -1
push offset _Lt_0C52
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C52
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C51
push -1
push offset _Lt_0C52
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C52]
call _OUTP@4
.Lt_065D:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C50,12
.balign 4
	.lcomm	_Lt_0C51,12
.balign 4
	.lcomm	_Lt_0C52,12

.section .text
.balign 16
__EMITATN2@8:
push ebp
mov ebp, esp
.Lt_0660:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C53
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_0663
push 0
push 5
push offset _Lt_0384
push -1
push offset _Lt_0C54
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C53
push -1
push offset _Lt_0C54
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C54]
call _OUTP@4
jmp .Lt_0662
.Lt_0663:
push offset _Lt_0664
call _OUTP@4
.Lt_0662:
push offset _Lt_0665
call _OUTP@4
.Lt_0661:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C53,12
.balign 4
	.lcomm	_Lt_0C54,12

.section .text
.balign 16
__EMITPOW@8:
push ebp
mov ebp, esp
.Lt_0666:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C55
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_0669
push 0
push 5
push offset _Lt_0384
push -1
push offset _Lt_0C56
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C55
push -1
push offset _Lt_0C56
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C56]
call _OUTP@4
push offset _Lt_0664
call _OUTP@4
.Lt_0669:
.Lt_0668:
push offset _Lt_066A
call _OUTP@4
push offset _Lt_066B
call _OUTP@4
push offset _Lt_066C
call _OUTP@4
push offset _Lt_066D
call _OUTP@4
push offset _Lt_066E
call _OUTP@4
push offset _Lt_0664
call _OUTP@4
push offset _Lt_066F
call _OUTP@4
push offset _Lt_0670
call _OUTP@4
push offset _Lt_02E4
call _OUTP@4
push offset _Lt_0671
call _OUTP@4
push offset _Lt_0672
call _OUTP@4
.Lt_0667:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0C55,12
.balign 4
	.lcomm	_Lt_0C56,12

.section .text
.balign 16
_HCMPL@32:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0673:
push offset _Lt_0C57
push offset _Lt_0C58
push dword ptr [ebp+28]
call _HPREPOPERAND64@12
push offset _Lt_0C59
push offset _Lt_0C5A
push dword ptr [ebp+32]
call _HPREPOPERAND64@12
cmp dword ptr [ebp+12], 0
jne .Lt_0676
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_0C5B
call _fb_StrAssign@20
jmp .Lt_0675
.Lt_0676:
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0C5B
call _fb_StrAssign@20
.Lt_0675:
push 0
push 5
push offset _Lt_02DD
push -1
push offset _Lt_0C5C
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C57
push -1
push offset _Lt_0C5C
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C5C
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C59
push -1
push offset _Lt_0C5C
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C5C]
call _OUTP@4
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_0C5D
call _fb_StrAssign@20
cmp dword ptr [ebp+8], 0
je .Lt_0678
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C5E
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push offset _Lt_02F1
push dword ptr [_Lt_0C5E]
call _HMOV@8
.Lt_0678:
.Lt_0677:
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_0679
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C5C
call _fb_StrAssign@20
cmp dword ptr [ebp+36], 0
jne .Lt_067C
push dword ptr [_Lt_0C5B]
push dword ptr [_Lt_0C5C]
call _HBRANCH@8
jmp .Lt_067B
.Lt_067C:
push dword ptr [_Lt_0C5D]
push dword ptr [_Lt_0C5C]
call _HBRANCH@8
.Lt_067B:
push 0
push dword ptr [ebp+20]
call _fb_StrLen@8
test eax, eax
jle .Lt_067E
push 0
push -1
push 0
push dword ptr [ebp+20]
push 2
push offset _Lt_0679
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C5C
call _fb_StrAssign@20
push dword ptr [_Lt_0C5D]
push dword ptr [_Lt_0C5C]
call _HBRANCH@8
.Lt_067E:
.Lt_067D:
push 0
push 5
push offset _Lt_02DD
push -1
push offset _Lt_0C5C
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C58
push -1
push offset _Lt_0C5C
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C5C
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C5A
push -1
push offset _Lt_0C5C
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C5C]
call _OUTP@4
push 0
push -1
push 0
push dword ptr [ebp+24]
push 2
push offset _Lt_0679
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C5C
call _fb_StrAssign@20
push dword ptr [_Lt_0C5B]
push dword ptr [_Lt_0C5C]
call _HBRANCH@8
push dword ptr [_Lt_0C5D]
call _HLABEL@4
cmp dword ptr [ebp+8], 0
je .Lt_0682
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C5C
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C5E
push -1
push offset _Lt_0C5C
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C5C
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C5E
push -1
push offset _Lt_0C5C
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C5C]
call _OUTP@4
push dword ptr [_Lt_0C5B]
call _HLABEL@4
.Lt_0682:
.Lt_0681:
.Lt_0674:
mov esp, ebp
pop ebp
ret 32

.section .bss
.balign 4
	.lcomm	_Lt_0C58,12
.balign 4
	.lcomm	_Lt_0C57,12
.balign 4
	.lcomm	_Lt_0C5A,12
.balign 4
	.lcomm	_Lt_0C59,12
.balign 4
	.lcomm	_Lt_0C5E,12
.balign 4
	.lcomm	_Lt_0C5C,12
.balign 4
	.lcomm	_Lt_0C5B,12
.balign 4
	.lcomm	_Lt_0C5D,12

.section .text
.balign 16
_HCMPI@20:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0683:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C5F
push dword ptr [ebp+20]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C60
push dword ptr [ebp+24]
call _HPREPOPERAND@24
cmp dword ptr [ebp+12], 0
jne .Lt_0686
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_0C61
call _fb_StrAssign@20
jmp .Lt_0685
.Lt_0686:
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0C61
call _fb_StrAssign@20
.Lt_0685:
mov dword ptr [_Lt_0C62], 0
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0688
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 0
jne .Lt_068A
cmp dword ptr [ecx+24], 0
jne .Lt_068A
.Lt_0C65:
mov dword ptr [_Lt_0C62], -1
.Lt_068A:
.Lt_0689:
.Lt_0688:
.Lt_0687:
cmp dword ptr [_Lt_0C62], 0
je .Lt_068C
push 0
push 6
push offset _Lt_068D
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C5F
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C5F
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C66]
call _OUTP@4
jmp .Lt_068B
.Lt_068C:
push 0
push 5
push offset _Lt_02DD
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C5F
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C60
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C66]
call _OUTP@4
.Lt_068B:
cmp dword ptr [ebp+8], 0
jne .Lt_068F
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_0679
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ecx, [ebp-12]
push ecx
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push dword ptr [_Lt_0C61]
push dword ptr [_Lt_0C66]
call _HBRANCH@8
jmp .Lt_0684
.Lt_068F:
.Lt_068E:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C67
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov eax, dword ptr [_ENV+112]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0692
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push 2
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0C6A
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0694
push 0
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0C6D], eax
cmp dword ptr [_Lt_0C6D], 0
jne .Lt_0696
push 0
push 11
push offset _Lt_0697
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C67
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C66]
call _OUTP@4
.Lt_0696:
.Lt_0695:
push 0
push -1
push 4
push offset _Lt_0699
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_0698
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push dword ptr [_Lt_0C66]
call _OUTP@4
cmp dword ptr [_Lt_0C6D], 0
jne .Lt_069D
push 0
push 11
push offset _Lt_0697
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C67
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C66]
call _OUTP@4
jmp .Lt_069C
.Lt_069D:
push offset _Lt_0083
push dword ptr [_Lt_0C67]
call _HMOV@8
.Lt_069C:
jmp .Lt_0693
.Lt_0694:
push 0
push -1
push -1
push offset _Lt_0C6A
push -1
push 2
push offset _Lt_0176
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_0698
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push dword ptr [_Lt_0C66]
call _OUTP@4
.Lt_0693:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
je .Lt_06A2
push 0
push 5
push offset _Lt_0541
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C67
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_06A3
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C66]
call _OUTP@4
push 0
push 5
push offset _Lt_0445
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C67
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C67
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C66]
call _OUTP@4
.Lt_06A2:
.Lt_06A1:
jmp .Lt_0691
.Lt_0692:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .Lt_06A5
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C67
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_06A3
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
jmp .Lt_06A4
.Lt_06A5:
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C67
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_06A6
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
.Lt_06A4:
push dword ptr [_Lt_0C66]
call _OUTP@4
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_0679
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push dword ptr [_Lt_0C61]
push dword ptr [_Lt_0C66]
call _HBRANCH@8
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C66
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C67
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C67
push -1
push offset _Lt_0C66
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C66]
call _OUTP@4
push dword ptr [_Lt_0C61]
call _HLABEL@4
.Lt_0691:
.Lt_0684:
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_0C67,12
.balign 4
	.lcomm	_Lt_0C6A,12
.balign 4
	.lcomm	_Lt_0C5F,12
.balign 4
	.lcomm	_Lt_0C60,12
.balign 4
	.lcomm	_Lt_0C66,12
.balign 4
	.lcomm	_Lt_0C61,12
.balign 4
	.lcomm	_Lt_0C6D,4
.balign 4
	.lcomm	_Lt_0C62,4

.section .text
.balign 16
_HCMPF@24:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_06A8:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C6F
push dword ptr [ebp+24]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C70
push dword ptr [ebp+28]
call _HPREPOPERAND@24
cmp dword ptr [ebp+12], 0
jne .Lt_06AB
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_0C71
call _fb_StrAssign@20
jmp .Lt_06AA
.Lt_06AB:
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_0C71
call _fb_StrAssign@20
.Lt_06AA:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 4
jne .Lt_06AD
push offset _Lt_06AE
call _OUTP@4
jmp .Lt_06AC
.Lt_06AD:
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_06AF
mov dword ptr [ebp-4], 24
jmp .Lt_0C6E
.Lt_06AF:
mov ebx, dword ptr [ebp+28]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C6E:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_06B2
push 0
push 7
push offset _Lt_06B3
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C70
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
jmp .Lt_06B1
.Lt_06B2:
push 0
push 8
push offset _Lt_06B4
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C70
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
.Lt_06B1:
.Lt_06AC:
push 5
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0C73], eax
cmp dword ptr [ebp+8], 0
je .Lt_06B6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 5
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [_Lt_0C73], ebx
.Lt_06B6:
.Lt_06B5:
cmp dword ptr [_Lt_0C73], 0
jne .Lt_06B8
push offset _Lt_0088
call _HPUSH@4
.Lt_06B8:
.Lt_06B7:
push offset _Lt_03A9
call _OUTP@4
push 0
push dword ptr [ebp+20]
call _fb_StrLen@8
test eax, eax
jle .Lt_06BA
push 0
push -1
push 0
push dword ptr [ebp+20]
push 10
push offset _Lt_06BB
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
jmp .Lt_06B9
.Lt_06BA:
push offset _Lt_06BD
call _OUTP@4
.Lt_06B9:
cmp dword ptr [_Lt_0C73], 0
jne .Lt_06BF
push offset _Lt_0088
call _HPOP@4
.Lt_06BF:
.Lt_06BE:
cmp dword ptr [ebp+8], 0
jne .Lt_06C1
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_0679
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push dword ptr [_Lt_0C71]
push dword ptr [_Lt_0C72]
call _HBRANCH@8
jmp .Lt_06A9
.Lt_06C1:
.Lt_06C0:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C75
push dword ptr [ebp+8]
call _HPREPOPERAND@24
cmp dword ptr [_ENV+112], 1
jl .Lt_06C4
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0C76
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_06C6
push 0
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0C79], eax
cmp dword ptr [_Lt_0C79], 0
jne .Lt_06C8
push 0
push 11
push offset _Lt_0697
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C75
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
.Lt_06C8:
.Lt_06C7:
push 0
push -1
push 4
push offset _Lt_06C9
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_0698
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
cmp dword ptr [_Lt_0C79], 0
jne .Lt_06CD
push 0
push 11
push offset _Lt_0697
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C75
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
jmp .Lt_06CC
.Lt_06CD:
push offset _Lt_0083
push dword ptr [_Lt_0C75]
call _HMOV@8
.Lt_06CC:
jmp .Lt_06C5
.Lt_06C6:
push 0
push -1
push -1
push offset _Lt_0C76
push -1
push 2
push offset _Lt_0176
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_0698
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
.Lt_06C5:
push 0
push 5
push offset _Lt_0541
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C75
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_06A3
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
push 0
push 5
push offset _Lt_0445
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C75
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C75
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
jmp .Lt_06C3
.Lt_06C4:
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C75
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_06A6
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_0679
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push dword ptr [_Lt_0C71]
push dword ptr [_Lt_0C72]
call _HBRANCH@8
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C72
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C75
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C75
push -1
push offset _Lt_0C72
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C72]
call _OUTP@4
push dword ptr [_Lt_0C71]
call _HLABEL@4
.Lt_06C3:
.Lt_06A9:
pop ebx
mov esp, ebp
pop ebp
ret 24

.section .bss
.balign 4
	.lcomm	_Lt_0C75,12
.balign 4
	.lcomm	_Lt_0C76,12
.balign 4
	.lcomm	_Lt_0C6F,12
.balign 4
	.lcomm	_Lt_0C70,12
.balign 4
	.lcomm	_Lt_0C72,12
.balign 4
	.lcomm	_Lt_0C71,12
.balign 4
	.lcomm	_Lt_0C73,4
.balign 4
	.lcomm	_Lt_0C79,4

.section .text
.balign 16
__EMITCGTL@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_06D2:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_06D4
mov dword ptr [ebp-4], 24
jmp .Lt_0C7A
.Lt_06D4:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C7A:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_06D7
push 0
push 2
push offset _Lt_06D8
push -1
push offset _Lt_0C7B
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_06D9
push -1
push offset _Lt_0C7C
call _fb_StrAssign@20
jmp .Lt_06D6
.Lt_06D7:
push 0
push 2
push offset _Lt_06DA
push -1
push offset _Lt_0C7B
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_06DB
push -1
push offset _Lt_0C7C
call _fb_StrAssign@20
.Lt_06D6:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06DA
push dword ptr [_Lt_0C7C]
push dword ptr [_Lt_0C7B]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL@32
.Lt_06D3:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_0C7B,12
.balign 4
	.lcomm	_Lt_0C7C,12

.section .text
.balign 16
__EMITCGTI@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_06DC:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_06DE
mov dword ptr [ebp-4], 24
jmp .Lt_0C7D
.Lt_06DE:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C7D:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_06E1
push 0
push 2
push offset _Lt_06D8
push -1
push offset _Lt_0C7E
call _fb_StrAssign@20
jmp .Lt_06E0
.Lt_06E1:
push 0
push 2
push offset _Lt_06DA
push -1
push offset _Lt_0C7E
call _fb_StrAssign@20
.Lt_06E0:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0C7E]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI@20
.Lt_06DD:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_0C7E,12

.section .text
.balign 16
__EMITCGTF@16:
push ebp
mov ebp, esp
.Lt_06E2:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06E5
push offset _Lt_06E4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF@24
.Lt_06E3:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCLTL@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_06E6:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_06E8
mov dword ptr [ebp-4], 24
jmp .Lt_0C7F
.Lt_06E8:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C7F:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_06EB
push 0
push 2
push offset _Lt_06D9
push -1
push offset _Lt_0C80
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_06D8
push -1
push offset _Lt_0C81
call _fb_StrAssign@20
jmp .Lt_06EA
.Lt_06EB:
push 0
push 2
push offset _Lt_06DB
push -1
push offset _Lt_0C80
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_06DA
push -1
push offset _Lt_0C81
call _fb_StrAssign@20
.Lt_06EA:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06DB
push dword ptr [_Lt_0C81]
push dword ptr [_Lt_0C80]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL@32
.Lt_06E7:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_0C80,12
.balign 4
	.lcomm	_Lt_0C81,12

.section .text
.balign 16
__EMITCLTI@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_06EC:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_06EE
mov dword ptr [ebp-4], 24
jmp .Lt_0C82
.Lt_06EE:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C82:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_06F1
push 0
push 2
push offset _Lt_06D9
push -1
push offset _Lt_0C83
call _fb_StrAssign@20
jmp .Lt_06F0
.Lt_06F1:
push 0
push 2
push offset _Lt_06DB
push -1
push offset _Lt_0C83
call _fb_StrAssign@20
.Lt_06F0:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0C83]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI@20
.Lt_06ED:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_0C83,12

.section .text
.balign 16
__EMITCLTF@16:
push ebp
mov ebp, esp
.Lt_06F2:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06F5
push offset _Lt_06F4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF@24
.Lt_06F3:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCEQL@16:
push ebp
mov ebp, esp
.Lt_06F6:
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06F9
push offset _Lt_0000
push offset _Lt_06F8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL@32
.Lt_06F7:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCEQI@16:
push ebp
mov ebp, esp
.Lt_06FA:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06F9
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI@20
.Lt_06FB:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCEQF@16:
push ebp
mov ebp, esp
.Lt_06FC:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06FE
push offset _Lt_06F4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF@24
.Lt_06FD:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCNEL@16:
push ebp
mov ebp, esp
.Lt_06FF:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06F8
push offset _Lt_0000
push offset _Lt_06F8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL@32
.Lt_0700:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCNEI@16:
push ebp
mov ebp, esp
.Lt_0701:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06F8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI@20
.Lt_0702:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCNEF@16:
push ebp
mov ebp, esp
.Lt_0703:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06FE
push offset _Lt_06E4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF@24
.Lt_0704:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCLEL@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0705:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0707
mov dword ptr [ebp-4], 24
jmp .Lt_0C84
.Lt_0707:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C84:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_070A
push 0
push 2
push offset _Lt_06D9
push -1
push offset _Lt_0C85
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_06D8
push -1
push offset _Lt_0C86
call _fb_StrAssign@20
jmp .Lt_0709
.Lt_070A:
push 0
push 2
push offset _Lt_06DB
push -1
push offset _Lt_0C85
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_06DA
push -1
push offset _Lt_0C86
call _fb_StrAssign@20
.Lt_0709:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_070B
push dword ptr [_Lt_0C86]
push dword ptr [_Lt_0C85]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL@32
.Lt_0706:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_0C85,12
.balign 4
	.lcomm	_Lt_0C86,12

.section .text
.balign 16
__EMITCLEI@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_070C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_070E
mov dword ptr [ebp-4], 24
jmp .Lt_0C87
.Lt_070E:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C87:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0711
push 0
push 3
push offset _Lt_0712
push -1
push offset _Lt_0C88
call _fb_StrAssign@20
jmp .Lt_0710
.Lt_0711:
push 0
push 3
push offset _Lt_070B
push -1
push offset _Lt_0C88
call _fb_StrAssign@20
.Lt_0710:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0C88]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI@20
.Lt_070D:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_0C88,12

.section .text
.balign 16
__EMITCLEF@16:
push ebp
mov ebp, esp
.Lt_0713:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06E5
push offset _Lt_06F4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF@24
.Lt_0714:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCGEL@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0715:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0717
mov dword ptr [ebp-4], 24
jmp .Lt_0C89
.Lt_0717:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C89:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_071A
push 0
push 2
push offset _Lt_06D8
push -1
push offset _Lt_0C8A
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_06D9
push -1
push offset _Lt_0C8B
call _fb_StrAssign@20
jmp .Lt_0719
.Lt_071A:
push 0
push 2
push offset _Lt_06DA
push -1
push offset _Lt_0C8A
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_06DB
push -1
push offset _Lt_0C8B
call _fb_StrAssign@20
.Lt_0719:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_071B
push dword ptr [_Lt_0C8B]
push dword ptr [_Lt_0C8A]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL@32
.Lt_0716:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_0C8A,12
.balign 4
	.lcomm	_Lt_0C8B,12

.section .text
.balign 16
__EMITCGEI@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_071C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_071E
mov dword ptr [ebp-4], 24
jmp .Lt_0C8C
.Lt_071E:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C8C:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0721
push 0
push 3
push offset _Lt_0722
push -1
push offset _Lt_0C8D
call _fb_StrAssign@20
jmp .Lt_0720
.Lt_0721:
push 0
push 3
push offset _Lt_071B
push -1
push offset _Lt_0C8D
call _fb_StrAssign@20
.Lt_0720:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0C8D]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI@20
.Lt_071D:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_0C8D,12

.section .text
.balign 16
__EMITCGEF@16:
push ebp
mov ebp, esp
.Lt_0723:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_071B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF@24
.Lt_0724:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITNEGL@4:
push ebp
mov ebp, esp
.Lt_0725:
push offset _Lt_0C8E
push offset _Lt_0C8F
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_0727
push -1
push offset _Lt_0C90
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C8F
push -1
push offset _Lt_0C90
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C90]
call _OUTP@4
push 0
push 5
push offset _Lt_0428
push -1
push offset _Lt_0C90
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C8E
push -1
push offset _Lt_0C90
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_02DE
push -1
push offset _Lt_0C90
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C90]
call _OUTP@4
push 0
push 5
push offset _Lt_0727
push -1
push offset _Lt_0C90
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C8E
push -1
push offset _Lt_0C90
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C90]
call _OUTP@4
.Lt_0726:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0C8F,12
.balign 4
	.lcomm	_Lt_0C8E,12
.balign 4
	.lcomm	_Lt_0C90,12

.section .text
.balign 16
__EMITNEGI@4:
push ebp
mov ebp, esp
.Lt_0728:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C91
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_0727
push -1
push offset _Lt_0C92
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C91
push -1
push offset _Lt_0C92
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C92]
call _OUTP@4
.Lt_0729:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0C91,12
.balign 4
	.lcomm	_Lt_0C92,12

.section .text
.balign 16
__EMITNEGF@4:
push ebp
mov ebp, esp
.Lt_072A:
push offset _Lt_072C
call _OUTP@4
.Lt_072B:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITNOTL@4:
push ebp
mov ebp, esp
.Lt_072D:
push offset _Lt_0C93
push offset _Lt_0C94
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_0655
push -1
push offset _Lt_0C95
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C94
push -1
push offset _Lt_0C95
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C95]
call _OUTP@4
push 0
push 5
push offset _Lt_0655
push -1
push offset _Lt_0C95
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C93
push -1
push offset _Lt_0C95
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C95]
call _OUTP@4
.Lt_072E:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0C94,12
.balign 4
	.lcomm	_Lt_0C93,12
.balign 4
	.lcomm	_Lt_0C95,12

.section .text
.balign 16
__EMITNOTI@4:
push ebp
mov ebp, esp
.Lt_072F:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C96
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .Lt_0732
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C97
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C96
push -1
push offset _Lt_0C97
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C97
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0004
push -1
push offset _Lt_0C97
call _fb_StrConcatAssign@20
jmp .Lt_0731
.Lt_0732:
push 0
push 5
push offset _Lt_0655
push -1
push offset _Lt_0C97
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C96
push -1
push offset _Lt_0C97
call _fb_StrConcatAssign@20
.Lt_0731:
push dword ptr [_Lt_0C97]
call _OUTP@4
.Lt_0730:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0C96,12
.balign 4
	.lcomm	_Lt_0C97,12

.section .text
.balign 16
__EMITABSL@4:
push ebp
mov ebp, esp
.Lt_0733:
push offset _Lt_0C98
push offset _Lt_0C99
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0C9A], eax
push 0
push 0
push dword ptr [_Lt_0C9A]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0C9B
call _fb_StrAssign@20
push dword ptr [_Lt_0C9A]
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0C9C], eax
cmp dword ptr [_Lt_0C9C], 0
jne .Lt_0736
push dword ptr [_Lt_0C9B]
call _HPUSH@4
.Lt_0736:
.Lt_0735:
push dword ptr [_Lt_0C98]
push dword ptr [_Lt_0C9B]
call _HMOV@8
push 0
push 5
push offset _Lt_02FE
push -1
push offset _Lt_0C9D
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C9B
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_02FF
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C9D]
call _OUTP@4
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C9D
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C99
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C9B
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C9D]
call _OUTP@4
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0C9D
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C98
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C9B
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C9D]
call _OUTP@4
push 0
push 5
push offset _Lt_0444
push -1
push offset _Lt_0C9D
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C99
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C9B
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C9D]
call _OUTP@4
push 0
push 5
push offset _Lt_0445
push -1
push offset _Lt_0C9D
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C98
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0C9B
push -1
push offset _Lt_0C9D
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0C9D]
call _OUTP@4
cmp dword ptr [_Lt_0C9C], 0
jne .Lt_0738
push dword ptr [_Lt_0C9B]
call _HPOP@4
.Lt_0738:
.Lt_0737:
.Lt_0734:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0C99,12
.balign 4
	.lcomm	_Lt_0C98,12
.balign 4
	.lcomm	_Lt_0C9A,4
.balign 4
	.lcomm	_Lt_0C9C,4
.balign 4
	.lcomm	_Lt_0C9B,12
.balign 4
	.lcomm	_Lt_0C9D,12

.section .text
.balign 16
__EMITABSI@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0739:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C9F
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0CA0], eax
push 0
push 0
push dword ptr [_Lt_0CA0]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0CA1
call _fb_StrAssign@20
push dword ptr [_Lt_0CA0]
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CA2], eax
cmp dword ptr [_Lt_0CA2], 0
jne .Lt_073C
push dword ptr [_Lt_0CA1]
call _HPUSH@4
.Lt_073C:
.Lt_073B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_073D
mov dword ptr [ebp-4], 24
jmp .Lt_0C9E
.Lt_073D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0C9E:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov dword ptr [_Lt_0CA3], ebx
push dword ptr [_Lt_0C9F]
push dword ptr [_Lt_0CA1]
call _HMOV@8
push 0
push 5
push offset _Lt_02FE
push -1
push offset _Lt_0CA4
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CA1
push -1
push offset _Lt_0CA4
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CA4
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [_Lt_0CA3]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_0CA4
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CA4]
call _OUTP@4
push 0
push 5
push offset _Lt_03AE
push -1
push offset _Lt_0CA4
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C9F
push -1
push offset _Lt_0CA4
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CA4
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0CA1
push -1
push offset _Lt_0CA4
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CA4]
call _OUTP@4
push 0
push 5
push offset _Lt_0444
push -1
push offset _Lt_0CA4
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0C9F
push -1
push offset _Lt_0CA4
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CA4
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0CA1
push -1
push offset _Lt_0CA4
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CA4]
call _OUTP@4
cmp dword ptr [_Lt_0CA2], 0
jne .Lt_0740
push dword ptr [_Lt_0CA1]
call _HPOP@4
.Lt_0740:
.Lt_073F:
.Lt_073A:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0C9F,12
.balign 4
	.lcomm	_Lt_0CA0,4
.balign 4
	.lcomm	_Lt_0CA2,4
.balign 4
	.lcomm	_Lt_0CA1,12
.balign 4
	.lcomm	_Lt_0CA3,4
.balign 4
	.lcomm	_Lt_0CA4,12

.section .text
.balign 16
__EMITABSF@4:
push ebp
mov ebp, esp
.Lt_0741:
push offset _Lt_066A
call _OUTP@4
.Lt_0742:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITSGNL@4:
push ebp
mov ebp, esp
sub esp, 128
.Lt_0743:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [ebp-52], eax
push dword ptr [ebp-52]
push 0
call _HISREGFREE@8
mov dword ptr [ebp-56], eax
push 0
push 0
push dword ptr [ebp-52]
push 8
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp-56], 0
jne .Lt_0746
push dword ptr [ebp-48]
call _HPUSH@4
.Lt_0746:
.Lt_0745:
push dword ptr [ebp-12]
push dword ptr [ebp-48]
call _HMOV@8
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 4
push offset _Lt_02DE
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_02DD
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-92]
call _OUTP@4
lea eax, [ebp-92]
push eax
call _fb_StrDelete@4
push offset _Lt_02F1
push dword ptr [ebp-12]
call _HMOV@8
push offset _Lt_02F1
push dword ptr [ebp-24]
call _HMOV@8
push dword ptr [ebp-36]
push offset _Lt_074A
call _HBRANCH@8
push offset _Lt_0004
push dword ptr [ebp-12]
call _HMOV@8
push offset _Lt_0006
push dword ptr [ebp-24]
call _HMOV@8
push dword ptr [ebp-36]
push offset _Lt_074B
call _HBRANCH@8
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 4
push offset _Lt_02DE
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset _Lt_02DD
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-128]
call _OUTP@4
lea eax, [ebp-128]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-36]
push offset _Lt_074F
call _HBRANCH@8
push offset _Lt_0006
push dword ptr [ebp-12]
call _HMOV@8
push dword ptr [ebp-36]
call _HLABEL@4
cmp dword ptr [ebp-56], 0
jne .Lt_0751
push dword ptr [ebp-48]
call _HPOP@4
.Lt_0751:
.Lt_0750:
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0744:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITSGNI@4:
push ebp
mov ebp, esp
sub esp, 60
.Lt_0752:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 4
push offset _Lt_02DE
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_02DD
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
call _OUTP@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-24]
push offset _Lt_0757
call _HBRANCH@8
push offset _Lt_0004
push dword ptr [ebp-12]
call _HMOV@8
push dword ptr [ebp-24]
push offset _Lt_074B
call _HBRANCH@8
push offset _Lt_02F1
push dword ptr [ebp-12]
call _HMOV@8
push dword ptr [ebp-24]
call _HLABEL@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0753:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITSGNF@4:
push ebp
mov ebp, esp
sub esp, 28
.Lt_0758:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 5
push 0
call _HISREGFREE@8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_075B
push offset _Lt_0088
call _HPUSH@4
.Lt_075B:
.Lt_075A:
push offset _Lt_075C
call _OUTP@4
push offset _Lt_03A9
call _OUTP@4
push offset _Lt_06BD
call _OUTP@4
cmp dword ptr [ebp-28], 0
jne .Lt_075E
push offset _Lt_0088
call _HPOP@4
.Lt_075E:
.Lt_075D:
push dword ptr [ebp-24]
push offset _Lt_03AB
call _HBRANCH@8
push offset _Lt_075F
call _OUTP@4
push offset _Lt_0670
call _OUTP@4
push dword ptr [ebp-24]
push offset _Lt_0760
call _HBRANCH@8
push offset _Lt_072C
call _OUTP@4
push dword ptr [ebp-24]
call _HLABEL@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0759:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITSIN@4:
push ebp
mov ebp, esp
.Lt_0761:
push offset _Lt_0763
call _OUTP@4
.Lt_0762:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITASIN@4:
push ebp
mov ebp, esp
.Lt_0764:
push offset _Lt_066C
call _OUTP@4
push offset _Lt_0766
call _OUTP@4
push offset _Lt_0670
call _OUTP@4
push offset _Lt_0457
call _OUTP@4
push offset _Lt_0767
call _OUTP@4
push offset _Lt_0665
call _OUTP@4
.Lt_0765:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITCOS@4:
push ebp
mov ebp, esp
.Lt_0768:
push offset _Lt_076A
call _OUTP@4
.Lt_0769:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITACOS@4:
push ebp
mov ebp, esp
.Lt_076B:
push offset _Lt_066C
call _OUTP@4
push offset _Lt_0766
call _OUTP@4
push offset _Lt_0670
call _OUTP@4
push offset _Lt_0457
call _OUTP@4
push offset _Lt_0767
call _OUTP@4
push offset _Lt_0664
call _OUTP@4
push offset _Lt_0665
call _OUTP@4
.Lt_076C:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITTAN@4:
push ebp
mov ebp, esp
.Lt_076D:
push offset _Lt_076F
call _OUTP@4
push offset _Lt_075F
call _OUTP@4
.Lt_076E:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITATAN@4:
push ebp
mov ebp, esp
.Lt_0770:
push offset _Lt_0670
call _OUTP@4
push offset _Lt_0665
call _OUTP@4
.Lt_0771:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITSQRT@4:
push ebp
mov ebp, esp
.Lt_0772:
push offset _Lt_0767
call _OUTP@4
.Lt_0773:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITLOG@4:
push ebp
mov ebp, esp
.Lt_0774:
push offset _Lt_0776
call _OUTP@4
push offset _Lt_0664
call _OUTP@4
push offset _Lt_066B
call _OUTP@4
.Lt_0775:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITEXP@4:
push ebp
mov ebp, esp
.Lt_0777:
push offset _Lt_0779
call _OUTP@4
push offset _Lt_077A
call _OUTP@4
push offset _Lt_077B
call _OUTP@4
push offset _Lt_066D
call _OUTP@4
push offset _Lt_077C
call _OUTP@4
push offset _Lt_0664
call _OUTP@4
push offset _Lt_066F
call _OUTP@4
push offset _Lt_077D
call _HPUSH@4
push offset _Lt_077E
call _OUTP@4
push offset _Lt_0330
call _OUTP@4
push offset _Lt_0671
call _OUTP@4
push offset _Lt_0672
call _OUTP@4
.Lt_0778:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFPUCHANGERC@8:
push ebp
mov ebp, esp
sub esp, 96
.Lt_077F:
push offset _Lt_032B
call _OUTP@4
push offset _Lt_0781
call _OUTP@4
push offset _Lt_0782
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HMOV@8
push 3
push offset _Lt_0783
push 0
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
je .Lt_0785
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 21
push offset _Lt_0786
push -1
push -1
push dword ptr [ebp+8]
push 5
push offset _Lt_0647
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-96]
call _OUTP@4
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
.Lt_0785:
.Lt_0784:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
push 11
push offset _Lt_078B
push -1
push 0
push dword ptr [ebp+12]
push 9
push offset _Lt_078A
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_064C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
call _OUTP@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HPUSH@4
push offset _Lt_0791
call _OUTP@4
push offset _Lt_0330
call _OUTP@4
.Lt_0780:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITFLOATFUNC@4:
push ebp
mov ebp, esp
sub esp, 20
.Lt_0792:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
call _HFINDFREEREG@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], -1
jne .Lt_0795
mov dword ptr [ebp-4], 5
mov dword ptr [ebp-8], 0
jmp .Lt_0794
.Lt_0795:
mov dword ptr [ebp-8], -1
.Lt_0794:
push 0
push 0
push dword ptr [ebp-4]
push 8
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp-8], 0
jne .Lt_0797
push dword ptr [ebp-20]
call _HPUSH@4
.Lt_0797:
.Lt_0796:
cmp dword ptr [ebp+8], 1
jne .Lt_0799
.Lt_079A:
push offset _Lt_079B
lea eax, [ebp-20]
push eax
call _HFPUCHANGERC@8
push offset _Lt_066D
call _OUTP@4
jmp .Lt_0798
.Lt_0799:
cmp dword ptr [ebp+8], 2
jne .Lt_079C
.Lt_079D:
push offset _Lt_0783
lea eax, [ebp-20]
push eax
call _HFPUCHANGERC@8
push offset _Lt_066D
call _OUTP@4
jmp .Lt_0798
.Lt_079C:
cmp dword ptr [ebp+8], 3
jne .Lt_079E
.Lt_079F:
push offset _Lt_0783
lea eax, [ebp-20]
push eax
call _HFPUCHANGERC@8
push offset _Lt_066C
call _OUTP@4
push offset _Lt_066D
call _OUTP@4
push offset _Lt_07A0
call _OUTP@4
.Lt_079E:
.Lt_0798:
push offset _Lt_0791
call _OUTP@4
push offset _Lt_0330
call _OUTP@4
cmp dword ptr [ebp-8], 0
jne .Lt_07A2
push dword ptr [ebp-20]
call _HPOP@4
.Lt_07A2:
.Lt_07A1:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_0793:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITFLOOR@4:
push ebp
mov ebp, esp
.Lt_07A3:
push 1
call _HEMITFLOATFUNC@4
.Lt_07A4:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITFIX@4:
push ebp
mov ebp, esp
.Lt_07A5:
push 2
call _HEMITFLOATFUNC@4
.Lt_07A6:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITFRAC@4:
push ebp
mov ebp, esp
.Lt_07A7:
push 3
call _HEMITFLOATFUNC@4
.Lt_07A8:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITCONVFD2FS@4:
push ebp
mov ebp, esp
.Lt_07A9:
push offset _Lt_032B
call _OUTP@4
push offset _Lt_07AB
call _OUTP@4
push offset _Lt_07AC
call _OUTP@4
push offset _Lt_0330
call _OUTP@4
.Lt_07AA:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITXCHGTOS@4:
push ebp
mov ebp, esp
.Lt_07AD:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CA5
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 6
push offset _Lt_07AF
push -1
push offset _Lt_0CA6
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CA5
push -1
push offset _Lt_0CA6
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CA6]
call _OUTP@4
.Lt_07AE:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0CA5,12
.balign 4
	.lcomm	_Lt_0CA6,12

.section .text
.balign 16
__EMITSTACKALIGN@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_07B0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jl .Lt_07B3
jg .Lt_0CA7
cmp dword ptr [eax+24], 0
jbe .Lt_07B3
.Lt_0CA7:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr@8
push eax
push 10
push offset _Lt_0263
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _OUTP@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .Lt_07B2
.Lt_07B3:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
neg ecx
adc ebx, 0
neg ebx
push ebx
push ecx
call _fb_LongintToStr@8
push eax
push 10
push offset _Lt_02B3
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _OUTP@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_07B2:
.Lt_07B1:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITPUSHL@8:
push ebp
mov ebp, esp
.Lt_07B8:
push offset _Lt_0CA8
push offset _Lt_0CA9
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push 0
push 6
push offset _Lt_017B
push -1
push offset _Lt_0CAA
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CA8
push -1
push offset _Lt_0CAA
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CAA]
call _OUTP@4
push 0
push 6
push offset _Lt_017B
push -1
push offset _Lt_0CAA
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CA9
push -1
push offset _Lt_0CAA
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CAA]
call _OUTP@4
.Lt_07B9:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0CA9,12
.balign 4
	.lcomm	_Lt_0CA8,12
.balign 4
	.lcomm	_Lt_0CAA,12

.section .text
.balign 16
__EMITPUSHI@8:
push ebp
mov ebp, esp
sub esp, 116
push ebx
.Lt_07BA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_07BC
mov dword ptr [ebp-40], 24
jmp .Lt_0CAB
.Lt_07BC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_0CAB:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 4
jne .Lt_07C0
.Lt_07C1:
cmp dword ptr [ebp-28], 4
jge .Lt_07C3
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_07C3:
.Lt_07C2:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_017B
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-68]
call _OUTP@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
jmp .Lt_07BE
.Lt_07C0:
cmp dword ptr [ebp-44], 0
jne .Lt_07C6
.Lt_07C7:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_017B
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-68]
call _OUTP@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
jmp .Lt_07BE
.Lt_07C6:
cmp dword ptr [ebp-28], 4
jge .Lt_07CC
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push 0
call _HISREGFREE@8
mov dword ptr [ebp-36], eax
push 0
push 0
push dword ptr [ebp-32]
push 8
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp-36], 0
jne .Lt_07CE
push dword ptr [ebp-24]
call _HPUSH@4
.Lt_07CE:
.Lt_07CD:
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-92]
call _OUTP@4
lea eax, [ebp-92]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset _Lt_017B
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-116]
call _OUTP@4
lea eax, [ebp-116]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-36], 0
jne .Lt_07D6
push dword ptr [ebp-24]
call _HPOP@4
.Lt_07D6:
.Lt_07D5:
jmp .Lt_07CB
.Lt_07CC:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_017B
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-68]
call _OUTP@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
.Lt_07CB:
.Lt_07CA:
.Lt_07BE:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_07BB:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITPUSHF@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_07D9:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CAD
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_07DB
mov dword ptr [ebp-4], 24
jmp .Lt_0CAC
.Lt_07DB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0CAC:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0CAE], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
je .Lt_07DE
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .Lt_07E0
push 0
push 6
push offset _Lt_017B
push -1
push offset _Lt_0CAF
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CAD
push -1
push offset _Lt_0CAF
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CAF]
call _OUTP@4
jmp .Lt_07DF
.Lt_07E0:
push -1
push 0
push 4
push 8
push offset _Lt_0CAD
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 6
push offset _Lt_017B
push -1
push offset _Lt_0CAF
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CAD
push -1
push offset _Lt_0CAF
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CAF]
call _OUTP@4
push -1
push 0
push 0
push 8
push offset _Lt_0CAD
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 6
push offset _Lt_017B
push -1
push offset _Lt_0CAF
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CAD
push -1
push offset _Lt_0CAF
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CAF]
call _OUTP@4
.Lt_07DF:
jmp .Lt_07DD
.Lt_07DE:
push 0
push 9
push offset _Lt_07E1
push -1
push offset _Lt_0CAF
call _fb_StrAssign@20
push 0
push -1
push dword ptr [_Lt_0CAE]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_0CAF
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CAF]
call _OUTP@4
push 0
push -1
push 7
push offset _Lt_0348
push -1
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [_DTYPETB+ebx+4]
push eax
push 6
push offset _Lt_0351
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0CAF
call _fb_StrAssign@20
push dword ptr [_Lt_0CAF]
call _OUTP@4
.Lt_07DD:
.Lt_07DA:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0CAD,12
.balign 4
	.lcomm	_Lt_0CAE,4
.balign 4
	.lcomm	_Lt_0CAF,12

.section .text
.balign 16
__EMITPUSHUDT@8:
push ebp
mov ebp, esp
sub esp, 208
.Lt_07E4:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+12]
and eax, 3
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jle .Lt_07E7
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [ebp-44], eax
push dword ptr [ebp-44]
push 0
call _HISREGFREE@8
mov dword ptr [ebp-48], eax
push 0
push 0
push dword ptr [ebp-44]
push 8
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp-48], 0
jne .Lt_07E9
push dword ptr [ebp-24]
call _HPUSH@4
.Lt_07E9:
.Lt_07E8:
cmp dword ptr [ebp-52], 3
jne .Lt_07EB
.Lt_07EC:
push -1
push 0
mov eax, dword ptr [ebp+12]
dec eax
push eax
push 2
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-124]
call _OUTP@4
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
push 5
push offset _Lt_07F1
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_053B
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-160]
call _OUTP@4
lea eax, [ebp-160]
push eax
call _fb_StrDelete@4
push 0
push 0
push dword ptr [ebp-44]
push 5
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push -1
push 0
mov eax, dword ptr [ebp+12]
add eax, -3
push eax
push 5
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-36]
push eax
push 5
push offset _Lt_0185
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-208]
call _OUTP@4
lea eax, [ebp-208]
push eax
call _fb_StrDelete@4
jmp .Lt_07EA
.Lt_07EB:
cmp dword ptr [ebp-52], 2
jne .Lt_07F9
.Lt_07FA:
mov eax, dword ptr [ebp+12]
add eax, -2
mov dword ptr [ebp-40], eax
push -1
push 0
push dword ptr [ebp-40]
push 5
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-124]
call _OUTP@4
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
jmp .Lt_07EA
.Lt_07F9:
cmp dword ptr [ebp-52], 1
jne .Lt_07FF
.Lt_0800:
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-40], eax
push -1
push 0
push dword ptr [ebp-40]
push 2
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-124]
call _OUTP@4
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
.Lt_07FF:
.Lt_07EA:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset _Lt_017B
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-76]
call _OUTP@4
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-48], 0
jne .Lt_0808
push dword ptr [ebp-24]
call _HPOP@4
.Lt_0808:
.Lt_0807:
mov eax, dword ptr [ebp-52]
sub dword ptr [ebp+12], eax
.Lt_07E7:
.Lt_07E6:
mov eax, dword ptr [ebp+12]
add eax, -4
mov dword ptr [ebp-40], eax
.Lt_0809:
cmp dword ptr [ebp-40], 0
jl .Lt_080A
push -1
push 0
push dword ptr [ebp-40]
push 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_017B
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-76]
call _OUTP@4
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
add dword ptr [ebp-40], -4
jmp .Lt_0809
.Lt_080A:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_07E5:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITPOPL@8:
push ebp
mov ebp, esp
.Lt_080D:
push offset _Lt_0CB0
push offset _Lt_0CB1
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
push 0
push 5
push offset _Lt_0180
push -1
push offset _Lt_0CB2
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CB1
push -1
push offset _Lt_0CB2
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CB2]
call _OUTP@4
push 0
push 5
push offset _Lt_0180
push -1
push offset _Lt_0CB2
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CB0
push -1
push offset _Lt_0CB2
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CB2]
call _OUTP@4
.Lt_080E:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0CB1,12
.balign 4
	.lcomm	_Lt_0CB0,12
.balign 4
	.lcomm	_Lt_0CB2,12

.section .text
.balign 16
__EMITPOPI@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_080F:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CB4
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0811
mov dword ptr [ebp-4], 24
jmp .Lt_0CB3
.Lt_0811:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0CB3:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0CB5], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
jne .Lt_0814
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+28], 0
jne .Lt_0816
cmp dword ptr [ebx+24], 4
jne .Lt_0816
.Lt_0CB6:
push 5
push 0
call _HISREGFREE@8
test eax, eax
je .Lt_0818
push offset _Lt_0088
call _HPOP@4
jmp .Lt_0817
.Lt_0818:
push offset _Lt_0330
call _OUTP@4
.Lt_0817:
jmp .Lt_0815
.Lt_0816:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr@8
push eax
push 10
push offset _Lt_02B3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0CB7
call _fb_StrAssign@20
push dword ptr [_Lt_0CB7]
call _OUTP@4
.Lt_0815:
jmp .Lt_0813
.Lt_0814:
cmp dword ptr [_Lt_0CB5], 4
jne .Lt_081A
push 0
push 5
push offset _Lt_0180
push -1
push offset _Lt_0CB7
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CB4
push -1
push offset _Lt_0CB7
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CB7]
call _OUTP@4
jmp .Lt_0813
.Lt_081A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_081C
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0CB4
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0180
push -1
push offset _Lt_0CB7
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CB4
push -1
push offset _Lt_0CB7
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CB7]
call _OUTP@4
jmp .Lt_081B
.Lt_081C:
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0CB8], eax
push 0
push 0
push dword ptr [_Lt_0CB8]
push 2
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0CB9
call _fb_StrAssign@20
push 0
push 0
push dword ptr [_Lt_0CB8]
push 5
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0CBA
call _fb_StrAssign@20
push 0
push 0
push dword ptr [_Lt_0CB8]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0CBB
call _fb_StrAssign@20
push dword ptr [_Lt_0CB8]
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CBC], eax
cmp dword ptr [_Lt_0CBC], 0
je .Lt_081E
push offset _Lt_0333
push dword ptr [_Lt_0CBB]
call _HMOV@8
jmp .Lt_081D
.Lt_081E:
push offset _Lt_0333
push dword ptr [_Lt_0CBB]
call _HXCHG@8
.Lt_081D:
cmp dword ptr [_Lt_0CB5], 1
jne .Lt_0820
push dword ptr [_Lt_0CB9]
push dword ptr [_Lt_0CB4]
call _HMOV@8
jmp .Lt_081F
.Lt_0820:
push dword ptr [_Lt_0CBA]
push dword ptr [_Lt_0CB4]
call _HMOV@8
.Lt_081F:
cmp dword ptr [_Lt_0CBC], 0
je .Lt_0822
push offset _Lt_0330
call _OUTP@4
jmp .Lt_0821
.Lt_0822:
push dword ptr [_Lt_0CBB]
call _HPOP@4
.Lt_0821:
.Lt_081B:
.Lt_0813:
.Lt_0810:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0CB4,12
.balign 4
	.lcomm	_Lt_0CB7,12
.balign 4
	.lcomm	_Lt_0CB5,4
.balign 4
	.lcomm	_Lt_0CB8,4
.balign 4
	.lcomm	_Lt_0CBC,4
.balign 4
	.lcomm	_Lt_0CB9,12
.balign 4
	.lcomm	_Lt_0CBA,12
.balign 4
	.lcomm	_Lt_0CBB,12

.section .text
.balign 16
__EMITPOPF@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_0823:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CBE
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0825
mov dword ptr [ebp-4], 24
jmp .Lt_0CBD
.Lt_0825:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0CBD:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0CBF], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
je .Lt_0828
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .Lt_082A
push 0
push 5
push offset _Lt_0180
push -1
push offset _Lt_0CC0
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CBE
push -1
push offset _Lt_0CC0
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CC0]
call _OUTP@4
jmp .Lt_0829
.Lt_082A:
push -1
push 0
push 0
push 8
push offset _Lt_0CBE
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_0180
push -1
push offset _Lt_0CC0
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CBE
push -1
push offset _Lt_0CC0
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CC0]
call _OUTP@4
push -1
push 0
push 4
push 8
push offset _Lt_0CBE
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_0180
push -1
push offset _Lt_0CC0
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CBE
push -1
push offset _Lt_0CC0
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CC0]
call _OUTP@4
.Lt_0829:
jmp .Lt_0827
.Lt_0828:
push 0
push -1
push 7
push offset _Lt_0348
push -1
push 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
sal eax, 4
lea ebx, [_DTYPETB+eax+4]
push ebx
push 5
push offset _Lt_0384
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0CC0
call _fb_StrAssign@20
push dword ptr [_Lt_0CC0]
call _OUTP@4
push 0
push 9
push offset _Lt_082D
push -1
push offset _Lt_0CC0
call _fb_StrAssign@20
push 0
push -1
push dword ptr [_Lt_0CBF]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_0CC0
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CC0]
call _OUTP@4
.Lt_0827:
.Lt_0824:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0CBE,12
.balign 4
	.lcomm	_Lt_0CC0,12
.balign 4
	.lcomm	_Lt_0CBF,4

.section .text
.balign 16
__EMITPOPST0@0:
.Lt_082E:
push offset _Lt_075F
call _OUTP@4
.Lt_082F:
ret
.balign 16
__EMITADDROF@8:
push ebp
mov ebp, esp
.Lt_0830:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CC1
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 0
push 0
push 0
push -2147483648
push offset _Lt_0CC2
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_0832
push -1
push offset _Lt_0CC3
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CC1
push -1
push offset _Lt_0CC3
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC3
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0CC2
push -1
push offset _Lt_0CC3
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CC3]
call _OUTP@4
.Lt_0831:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0CC1,12
.balign 4
	.lcomm	_Lt_0CC2,12
.balign 4
	.lcomm	_Lt_0CC3,12

.section .text
.balign 16
__EMITDEREF@8:
push ebp
mov ebp, esp
.Lt_0833:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CC4
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push 9
push offset _Lt_0CC5
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 0
push 5
push offset _Lt_0185
push -1
push offset _Lt_0CC6
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CC4
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0CC5
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CC6]
call _OUTP@4
.Lt_0834:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0CC4,12
.balign 4
	.lcomm	_Lt_0CC5,12
.balign 4
	.lcomm	_Lt_0CC6,12

.section .text
.balign 16
_HMEMMOVEREP@12:
push ebp
mov ebp, esp
.Lt_0835:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CC7
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CC8
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 3
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CC9], eax
push 1
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CCA], eax
push 2
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CCB], eax
push 1
push dword ptr [ebp+12]
call _HISREGINVREG@8
mov dword ptr [_Lt_0CCC], eax
push 3
push dword ptr [ebp+12]
call _HISREGINVREG@8
mov dword ptr [_Lt_0CCD], eax
cmp dword ptr [_Lt_0CC9], 0
jne .Lt_0838
push offset _Lt_0086
call _HPUSH@4
.Lt_0838:
.Lt_0837:
cmp dword ptr [_Lt_0CCA], 0
jne .Lt_083A
push offset _Lt_0084
call _HPUSH@4
.Lt_083A:
.Lt_0839:
cmp dword ptr [_Lt_0CCB], 0
jne .Lt_083C
push offset _Lt_0085
call _HPUSH@4
.Lt_083C:
.Lt_083B:
cmp dword ptr [_Lt_0CCC], 0
jne .Lt_083E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_0840
push dword ptr [_Lt_0CC7]
push offset _Lt_0084
call _HMOV@8
jmp .Lt_083F
.Lt_0840:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .Lt_0842
push dword ptr [_Lt_0CC7]
push offset _Lt_0084
call _HMOV@8
.Lt_0842:
.Lt_0841:
.Lt_083F:
jmp .Lt_083D
.Lt_083E:
cmp dword ptr [_Lt_0CCD], 0
je .Lt_0844
push offset _Lt_0086
call _HPUSH@4
.Lt_0844:
.Lt_0843:
push dword ptr [_Lt_0CC7]
push offset _Lt_0086
call _HMOV@8
cmp dword ptr [_Lt_0CCD], 0
je .Lt_0846
push offset _Lt_04EC
call _OUTP@4
.Lt_0846:
.Lt_0845:
.Lt_083D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_0848
push dword ptr [_Lt_0CC8]
push offset _Lt_0085
call _HMOV@8
jmp .Lt_0847
.Lt_0848:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+12], 2
je .Lt_084A
push dword ptr [_Lt_0CC8]
push offset _Lt_0085
call _HMOV@8
.Lt_084A:
.Lt_0849:
.Lt_0847:
cmp dword ptr [_Lt_0CCC], 0
je .Lt_084C
cmp dword ptr [_Lt_0CCD], 0
jne .Lt_084E
push offset _Lt_0086
push offset _Lt_0084
call _HMOV@8
jmp .Lt_084D
.Lt_084E:
push offset _Lt_0084
call _HPOP@4
.Lt_084D:
.Lt_084C:
.Lt_084B:
cmp dword ptr [ebp+16], 4
jle .Lt_0850
push 0
push 10
push offset _Lt_0851
push -1
push offset _Lt_0CCE
call _fb_StrAssign@20
push 0
push -1
mov eax, dword ptr [ebp+16]
shr eax, 2
push eax
call _fb_UIntToStr@4
push eax
push -1
push offset _Lt_0CCE
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CCE]
call _OUTP@4
push offset _Lt_0852
call _OUTP@4
jmp .Lt_084F
.Lt_0850:
cmp dword ptr [ebp+16], 4
jne .Lt_0853
push offset _Lt_0854
call _OUTP@4
push offset _Lt_0855
call _OUTP@4
mov eax, dword ptr [ebp+16]
and eax, 3
test eax, eax
jle .Lt_0857
push offset _Lt_0858
call _OUTP@4
push offset _Lt_0859
call _OUTP@4
.Lt_0857:
.Lt_0856:
.Lt_0853:
.Lt_084F:
and dword ptr [ebp+16], 3
cmp dword ptr [ebp+16], 0
jle .Lt_085B
cmp dword ptr [ebp+16], 2
jl .Lt_085D
push offset _Lt_085E
call _OUTP@4
push offset _Lt_085F
call _OUTP@4
cmp dword ptr [ebp+16], 3
jne .Lt_0861
push offset _Lt_0862
call _OUTP@4
push offset _Lt_0863
call _OUTP@4
.Lt_0861:
.Lt_0860:
.Lt_085D:
.Lt_085C:
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .Lt_0865
push offset _Lt_0866
call _OUTP@4
push offset _Lt_0867
call _OUTP@4
.Lt_0865:
.Lt_0864:
.Lt_085B:
.Lt_085A:
cmp dword ptr [_Lt_0CCB], 0
jne .Lt_0869
push offset _Lt_0085
call _HPOP@4
.Lt_0869:
.Lt_0868:
cmp dword ptr [_Lt_0CCA], 0
jne .Lt_086B
push offset _Lt_0084
call _HPOP@4
.Lt_086B:
.Lt_086A:
cmp dword ptr [_Lt_0CC9], 0
jne .Lt_086D
push offset _Lt_0086
call _HPOP@4
.Lt_086D:
.Lt_086C:
.Lt_0836:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0CC7,12
.balign 4
	.lcomm	_Lt_0CC8,12
.balign 4
	.lcomm	_Lt_0CCE,12
.balign 4
	.lcomm	_Lt_0CC9,4
.balign 4
	.lcomm	_Lt_0CCA,4
.balign 4
	.lcomm	_Lt_0CCB,4
.balign 4
	.lcomm	_Lt_0CCC,4
.balign 4
	.lcomm	_Lt_0CCD,4

.section .text
.balign 16
_HMEMMOVEBLK@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_086E:
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [_Lt_0CCF], eax
push dword ptr [_Lt_0CCF]
push dword ptr [ebp+12]
call _HISREGINVREG@8
test eax, eax
je .Lt_0871
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMMOVEREP@12
jmp .Lt_086F
.Lt_0871:
.Lt_0870:
push 0
push 0
push dword ptr [_Lt_0CCF]
push 8
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0CD0
call _fb_StrAssign@20
push dword ptr [_Lt_0CCF]
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CD1], eax
cmp dword ptr [_Lt_0CD1], 0
jne .Lt_0873
push dword ptr [_Lt_0CD0]
call _HPUSH@4
.Lt_0873:
.Lt_0872:
mov dword ptr [_Lt_0CD2], 0
mov dword ptr [_Lt_0CD3], 1
mov eax, dword ptr [ebp+16]
shr eax, 2
mov ebx, eax
mov dword ptr [ebp-4], ebx
jmp .Lt_0875
.Lt_0878:
push -1
push 0
push dword ptr [_Lt_0CD2]
push 8
push offset _Lt_0CD4
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push dword ptr [_Lt_0CD4]
push dword ptr [_Lt_0CD0]
call _HMOV@8
push -1
push 0
push dword ptr [_Lt_0CD2]
push 8
push offset _Lt_0CD5
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push dword ptr [_Lt_0CD0]
push dword ptr [_Lt_0CD5]
call _HMOV@8
add dword ptr [_Lt_0CD2], 4
.Lt_0876:
inc dword ptr [_Lt_0CD3]
.Lt_0875:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [_Lt_0CD3], ebx
jle .Lt_0878
.Lt_0877:
mov ebx, dword ptr [ebp+16]
and ebx, 2
test ebx, ebx
je .Lt_087A
push 0
push 0
push dword ptr [_Lt_0CCF]
push 5
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0CD0
call _fb_StrAssign@20
push -1
push 0
push dword ptr [_Lt_0CD2]
push 5
push offset _Lt_0CD4
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push dword ptr [_Lt_0CD4]
push dword ptr [_Lt_0CD0]
call _HMOV@8
push -1
push 0
push dword ptr [_Lt_0CD2]
push 5
push offset _Lt_0CD5
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push dword ptr [_Lt_0CD0]
push dword ptr [_Lt_0CD5]
call _HMOV@8
add dword ptr [_Lt_0CD2], 2
.Lt_087A:
.Lt_0879:
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .Lt_087C
push 0
push 0
push dword ptr [_Lt_0CCF]
push 2
call _HGETREGNAME@8
push eax
push -1
push offset _Lt_0CD0
call _fb_StrAssign@20
push -1
push 0
push dword ptr [_Lt_0CD2]
push 2
push offset _Lt_0CD4
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push dword ptr [_Lt_0CD4]
push dword ptr [_Lt_0CD0]
call _HMOV@8
push -1
push 0
push dword ptr [_Lt_0CD2]
push 2
push offset _Lt_0CD5
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push dword ptr [_Lt_0CD0]
push dword ptr [_Lt_0CD5]
call _HMOV@8
.Lt_087C:
.Lt_087B:
cmp dword ptr [_Lt_0CD1], 0
jne .Lt_087E
push dword ptr [_Lt_0CD0]
call _HPOP@4
.Lt_087E:
.Lt_087D:
.Lt_086F:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0CD5,12
.balign 4
	.lcomm	_Lt_0CD4,12
.balign 4
	.lcomm	_Lt_0CD0,12
.balign 4
	.lcomm	_Lt_0CD3,4
.balign 4
	.lcomm	_Lt_0CD2,4
.balign 4
	.lcomm	_Lt_0CCF,4
.balign 4
	.lcomm	_Lt_0CD1,4

.section .text
.balign 16
__EMITMEMMOVE@16:
push ebp
mov ebp, esp
.Lt_087F:
cmp dword ptr [ebp+16], 16
jbe .Lt_0882
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMMOVEREP@12
jmp .Lt_0881
.Lt_0882:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMMOVEBLK@12
.Lt_0881:
.Lt_0880:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITMEMSWAP@16:
push ebp
mov ebp, esp
.Lt_0883:
.Lt_0884:
mov esp, ebp
pop ebp
ret 16
.balign 16
_HMEMCLEARREPIMM@8:
push ebp
mov ebp, esp
.Lt_0885:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CD6
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push 5
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CD7], eax
push 3
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CD8], eax
push 1
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CD9], eax
cmp dword ptr [_Lt_0CD7], 0
jne .Lt_0888
push offset _Lt_0088
call _HPUSH@4
.Lt_0888:
.Lt_0887:
cmp dword ptr [_Lt_0CD8], 0
jne .Lt_088A
push offset _Lt_0086
call _HPUSH@4
.Lt_088A:
.Lt_0889:
cmp dword ptr [_Lt_0CD9], 0
jne .Lt_088C
push offset _Lt_0084
call _HPUSH@4
.Lt_088C:
.Lt_088B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_088E
push dword ptr [_Lt_0CD6]
push offset _Lt_0084
call _HMOV@8
jmp .Lt_088D
.Lt_088E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .Lt_0890
push dword ptr [_Lt_0CD6]
push offset _Lt_0084
call _HMOV@8
.Lt_0890:
.Lt_088F:
.Lt_088D:
push offset _Lt_0242
call _OUTP@4
cmp dword ptr [ebp+12], 4
jbe .Lt_0892
push 0
push 10
push offset _Lt_0851
push -1
push offset _Lt_0CDA
call _fb_StrAssign@20
push 0
push -1
mov eax, dword ptr [ebp+12]
shr eax, 2
push eax
call _fb_UIntToStr@4
push eax
push -1
push offset _Lt_0CDA
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CDA]
call _OUTP@4
push offset _Lt_0243
call _OUTP@4
jmp .Lt_0891
.Lt_0892:
cmp dword ptr [ebp+12], 4
jne .Lt_0893
push offset _Lt_0894
call _OUTP@4
mov eax, dword ptr [ebp+12]
and eax, 3
test eax, eax
jbe .Lt_0896
push offset _Lt_0859
call _OUTP@4
.Lt_0896:
.Lt_0895:
.Lt_0893:
.Lt_0891:
and dword ptr [ebp+12], 3
cmp dword ptr [ebp+12], 0
jbe .Lt_0898
cmp dword ptr [ebp+12], 2
jb .Lt_089A
push offset _Lt_089B
call _OUTP@4
cmp dword ptr [ebp+12], 3
jne .Lt_089D
push offset _Lt_0863
call _OUTP@4
.Lt_089D:
.Lt_089C:
.Lt_089A:
.Lt_0899:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
je .Lt_089F
push offset _Lt_08A0
call _OUTP@4
.Lt_089F:
.Lt_089E:
.Lt_0898:
.Lt_0897:
cmp dword ptr [_Lt_0CD9], 0
jne .Lt_08A2
push offset _Lt_0084
call _HPOP@4
.Lt_08A2:
.Lt_08A1:
cmp dword ptr [_Lt_0CD8], 0
jne .Lt_08A4
push offset _Lt_0086
call _HPOP@4
.Lt_08A4:
.Lt_08A3:
cmp dword ptr [_Lt_0CD7], 0
jne .Lt_08A6
push offset _Lt_0088
call _HPOP@4
.Lt_08A6:
.Lt_08A5:
.Lt_0886:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0CD6,12
.balign 4
	.lcomm	_Lt_0CDA,12
.balign 4
	.lcomm	_Lt_0CD7,4
.balign 4
	.lcomm	_Lt_0CD8,4
.balign 4
	.lcomm	_Lt_0CD9,4

.section .text
.balign 16
_HMEMCLEARBLKIMM@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_08A7:
mov dword ptr [_Lt_0CDB], 0
mov dword ptr [_Lt_0CDC], 1
mov eax, dword ptr [ebp+12]
shr eax, 2
mov ebx, eax
mov dword ptr [ebp-4], ebx
jmp .Lt_08AA
.Lt_08AD:
push -1
push 0
push dword ptr [_Lt_0CDB]
push 8
push offset _Lt_0CDD
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push offset _Lt_0006
push dword ptr [_Lt_0CDD]
call _HMOV@8
add dword ptr [_Lt_0CDB], 4
.Lt_08AB:
inc dword ptr [_Lt_0CDC]
.Lt_08AA:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [_Lt_0CDC], ebx
jle .Lt_08AD
.Lt_08AC:
mov ebx, dword ptr [ebp+12]
and ebx, 2
test ebx, ebx
je .Lt_08AF
push -1
push 0
push dword ptr [_Lt_0CDB]
push 5
push offset _Lt_0CDD
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push offset _Lt_0006
push dword ptr [_Lt_0CDD]
call _HMOV@8
add dword ptr [_Lt_0CDB], 2
.Lt_08AF:
.Lt_08AE:
mov ebx, dword ptr [ebp+12]
and ebx, 1
test ebx, ebx
je .Lt_08B1
push -1
push 0
push dword ptr [_Lt_0CDB]
push 2
push offset _Lt_0CDD
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push offset _Lt_0006
push dword ptr [_Lt_0CDD]
call _HMOV@8
.Lt_08B1:
.Lt_08B0:
.Lt_08A8:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0CDD,12
.balign 4
	.lcomm	_Lt_0CDC,4
.balign 4
	.lcomm	_Lt_0CDB,4

.section .text
.balign 16
_HMEMCLEAR@8:
push ebp
mov ebp, esp
.Lt_08B2:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CDE
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CDF
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push 5
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CE0], eax
push 3
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CE1], eax
push 1
push 0
call _HISREGFREE@8
mov dword ptr [_Lt_0CE2], eax
cmp dword ptr [_Lt_0CE0], 0
jne .Lt_08B5
push offset _Lt_0088
call _HPUSH@4
.Lt_08B5:
.Lt_08B4:
cmp dword ptr [_Lt_0CE1], 0
jne .Lt_08B7
push offset _Lt_0086
call _HPUSH@4
.Lt_08B7:
.Lt_08B6:
cmp dword ptr [_Lt_0CE2], 0
jne .Lt_08B9
push offset _Lt_0084
call _HPUSH@4
.Lt_08B9:
.Lt_08B8:
push 1
push dword ptr [ebp+12]
call _HISREGINVREG@8
test eax, eax
jne .Lt_08BB
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_08BD
push dword ptr [_Lt_0CDE]
push offset _Lt_0084
call _HMOV@8
jmp .Lt_08BC
.Lt_08BD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .Lt_08BF
push dword ptr [_Lt_0CDE]
push offset _Lt_0084
call _HMOV@8
.Lt_08BF:
.Lt_08BE:
.Lt_08BC:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_08C1
push dword ptr [_Lt_0CDF]
push offset _Lt_0086
call _HMOV@8
jmp .Lt_08C0
.Lt_08C1:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+12], 3
je .Lt_08C3
push dword ptr [_Lt_0CDF]
push offset _Lt_0086
call _HMOV@8
.Lt_08C3:
.Lt_08C2:
.Lt_08C0:
jmp .Lt_08BA
.Lt_08BB:
push dword ptr [_Lt_0CDF]
call _HPUSH@4
push 0
push 10
push offset _Lt_08C4
push -1
push offset _Lt_0CE3
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_0CDE
push -1
push offset _Lt_0CE3
call _fb_StrConcatAssign@20
push dword ptr [_Lt_0CE3]
call _OUTP@4
push offset _Lt_0086
call _HPOP@4
.Lt_08BA:
push offset _Lt_0242
call _OUTP@4
push offset _Lt_08C5
call _OUTP@4
push offset _Lt_08C6
call _OUTP@4
push offset _Lt_0243
call _OUTP@4
push offset _Lt_08C7
call _OUTP@4
push offset _Lt_08C8
call _OUTP@4
push offset _Lt_08C9
call _OUTP@4
cmp dword ptr [_Lt_0CE2], 0
jne .Lt_08CB
push offset _Lt_0084
call _HPOP@4
.Lt_08CB:
.Lt_08CA:
cmp dword ptr [_Lt_0CE1], 0
jne .Lt_08CD
push offset _Lt_0086
call _HPOP@4
.Lt_08CD:
.Lt_08CC:
cmp dword ptr [_Lt_0CE0], 0
jne .Lt_08CF
push offset _Lt_0088
call _HPOP@4
.Lt_08CF:
.Lt_08CE:
.Lt_08B3:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0CDE,12
.balign 4
	.lcomm	_Lt_0CDF,12
.balign 4
	.lcomm	_Lt_0CE3,12
.balign 4
	.lcomm	_Lt_0CE0,4
.balign 4
	.lcomm	_Lt_0CE1,4
.balign 4
	.lcomm	_Lt_0CE2,4

.section .text
.balign 16
__EMITMEMCLEAR@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_08D0:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_08D3
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 16
jbe .Lt_08D5
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HMEMCLEARREPIMM@8
jmp .Lt_08D4
.Lt_08D5:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HMEMCLEARBLKIMM@8
.Lt_08D4:
jmp .Lt_08D2
.Lt_08D3:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMCLEAR@8
.Lt_08D2:
.Lt_08D1:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITSTKCLEAR@16:
push ebp
mov ebp, esp
.Lt_08D6:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HCLEARLOCALS@8
.Lt_08D7:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITLINEINI@16:
push ebp
mov ebp, esp
.Lt_08D8:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EDBGLINEBEGIN@16
.Lt_08D9:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITLINEEND@12:
push ebp
mov ebp, esp
.Lt_08DA:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EDBGLINEEND@12
.Lt_08DB:
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITSCOPEINI@12:
push ebp
mov ebp, esp
.Lt_08DC:
push dword ptr [ebp+8]
call _EDBGEMITSCOPEINI@4
.Lt_08DD:
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITSCOPEEND@12:
push ebp
mov ebp, esp
.Lt_08DE:
push dword ptr [ebp+8]
call _EDBGEMITSCOPEEND@4
.Lt_08DF:
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITLOADB2B@8:
push ebp
mov ebp, esp
sub esp, 24
.Lt_08E0:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _HMOV@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_08E1:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORB2B@8:
push ebp
mov ebp, esp
.Lt_08E2:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADB2B@8
.Lt_08E3:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITLOADB2I@8:
push ebp
mov ebp, esp
sub esp, 108
push ebx
.Lt_08E4:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_08E7
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .Lt_0CE7
cmp dword ptr [eax+24], 0
je .Lt_08E9
.Lt_0CE7:
push offset _Lt_02F1
push dword ptr [ebp-24]
call _HMOV@8
jmp .Lt_08E8
.Lt_08E9:
push offset _Lt_0006
push dword ptr [ebp-24]
call _HMOV@8
.Lt_08E8:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_08E5
.Lt_08E7:
.Lt_08E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_08EA
mov dword ptr [ebp-28], 24
jmp .Lt_0CE4
.Lt_08EA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0CE4:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_08EC
mov dword ptr [ebp-32], 24
jmp .Lt_0CE5
.Lt_08EC:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_0CE5:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [ebp-60]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], ecx
jle .Lt_08EF
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea ecx, [ebp-12]
push ecx
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea ecx, [ebp-24]
push ecx
push 7
push offset _Lt_02F9
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ecx, [ebp-72]
push ecx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-108]
call _OUTP@4
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
jmp .Lt_08EE
.Lt_08EF:
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call _HMOV@8
.Lt_08EE:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_0727
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
call _OUTP@4
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_08E5:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORB2I@8:
push ebp
mov ebp, esp
.Lt_08F6:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADB2I@8
.Lt_08F7:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITLOADI2B@8:
push ebp
mov ebp, esp
sub esp, 240
push ebx
.Lt_08F8:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov eax, dword ptr [_SYMB_DTYPETB+32]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_08FB
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .Lt_0CE8
cmp dword ptr [eax+24], 0
je .Lt_08FD
.Lt_0CE8:
push offset _Lt_0004
push dword ptr [ebp-24]
call _HMOV@8
jmp .Lt_08FC
.Lt_08FD:
push offset _Lt_0006
push dword ptr [ebp-24]
call _HMOV@8
.Lt_08FC:
jmp .Lt_08FA
.Lt_08FB:
cmp dword ptr [ebp-40], 1
jne .Lt_08FE
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 4
push offset _Lt_02DE
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_02DD
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-76]
call _OUTP@4
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0902
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-100]
call _OUTP@4
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
jmp .Lt_08FA
.Lt_08FE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0905
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 4
push offset _Lt_02DE
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_02DD
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-76]
call _OUTP@4
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push 7
push offset _Lt_0902
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-100]
call _OUTP@4
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-148]
call _OUTP@4
lea eax, [ebp-148]
push eax
call _fb_StrDelete@4
jmp .Lt_08FA
.Lt_0905:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [ebp-68], eax
push 0
push 0
push dword ptr [ebp-68]
push 2
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
push 0
push 0
push dword ptr [ebp-68]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-68]
push 0
call _HISREGFREE@8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .Lt_0910
push dword ptr [ebp-52]
call _HPUSH@4
.Lt_0910:
.Lt_090F:
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 2
push offset _Lt_0006
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_02DD
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-120]
call _OUTP@4
lea eax, [ebp-120]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push 7
push offset _Lt_0902
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-144]
call _OUTP@4
lea eax, [ebp-144]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_0918
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-192]
call _OUTP@4
lea eax, [ebp-192]
push eax
call _fb_StrDelete@4
jmp .Lt_0917
.Lt_0918:
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-192]
call _OUTP@4
lea eax, [ebp-192]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push -1
lea eax, [ebp-52]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_0185
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-240]
call _OUTP@4
lea eax, [ebp-240]
push eax
call _fb_StrDelete@4
.Lt_0917:
cmp dword ptr [ebp-72], 0
jne .Lt_0926
push dword ptr [ebp-52]
call _HPOP@4
.Lt_0926:
.Lt_0925:
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
.Lt_08FA:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_08F9:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORI2B@8:
push ebp
mov ebp, esp
.Lt_0927:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADI2B@8
.Lt_0928:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITLOADF2B@8:
push ebp
mov ebp, esp
sub esp, 76
push ebx
.Lt_0929:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_092B
mov dword ptr [ebp-36], 24
jmp .Lt_0CEC
.Lt_092B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_0CEC:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
push 5
push 0
call _HISREGFREE@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_092D
push 5
push dword ptr [ebp+8]
call _HISREGINVREG@8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .Lt_0CED
.Lt_092D:
mov dword ptr [ebp-40], -1
.Lt_0CED:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_0930
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_0384
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-64]
call _OUTP@4
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
.Lt_0930:
.Lt_092F:
cmp dword ptr [ebp-32], 0
jne .Lt_0934
push offset _Lt_0935
call _OUTP@4
.Lt_0934:
.Lt_0933:
push offset _Lt_075C
call _OUTP@4
push offset _Lt_03A9
call _OUTP@4
push offset _Lt_06BD
call _OUTP@4
push offset _Lt_0936
call _OUTP@4
push offset _Lt_075F
call _OUTP@4
cmp dword ptr [ebp-28], 1
jne .Lt_0938
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset _Lt_0939
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0185
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-76]
call _OUTP@4
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
jmp .Lt_0937
.Lt_0938:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset _Lt_0939
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-76]
call _OUTP@4
lea eax, [ebp-76]
push eax
call _fb_StrDelete@4
.Lt_0937:
cmp dword ptr [ebp-32], 0
jne .Lt_0941
push offset _Lt_0942
call _OUTP@4
.Lt_0941:
.Lt_0940:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_092A:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORF2B@8:
push ebp
mov ebp, esp
.Lt_0943:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADF2B@8
.Lt_0944:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITLOADB2F@8:
push ebp
mov ebp, esp
sub esp, 100
push ebx
.Lt_0945:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0947
mov dword ptr [ebp-32], 24
jmp .Lt_0CEF
.Lt_0947:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_0CEF:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .Lt_094A
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+28], 0
jne .Lt_0CF0
cmp dword ptr [ebx+24], 0
je .Lt_094C
.Lt_0CF0:
push offset _Lt_0670
call _OUTP@4
push offset _Lt_072C
call _OUTP@4
jmp .Lt_094B
.Lt_094C:
push offset _Lt_094D
call _OUTP@4
.Lt_094B:
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .Lt_0946
.Lt_094A:
.Lt_0949:
cmp dword ptr [ebp-28], 1
jne .Lt_094F
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG@8
mov dword ptr [ebp-52], eax
push 0
push 0
push dword ptr [ebp-52]
push 8
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-52]
push 0
call _HISREGFREE@8
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_0951
push dword ptr [ebp-44]
call _HPUSH@4
.Lt_0951:
.Lt_0950:
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-44]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-100]
call _OUTP@4
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-44]
call _HPUSH@4
push offset _Lt_035E
call _OUTP@4
push offset _Lt_0330
call _OUTP@4
cmp dword ptr [ebp-48], 0
jne .Lt_0957
push dword ptr [ebp-44]
call _HPOP@4
.Lt_0957:
.Lt_0956:
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
jmp .Lt_094E
.Lt_094F:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0347
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
call _OUTP@4
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
.Lt_094E:
push offset _Lt_072C
call _OUTP@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0946:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORB2F@8:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.Lt_095A:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_095C
mov dword ptr [ebp-32], 24
jmp .Lt_0CF1
.Lt_095C:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_0CF1:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .Lt_095F
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+28], 0
jne .Lt_0CF2
cmp dword ptr [ebx+24], 0
je .Lt_0961
.Lt_0CF2:
push offset _Lt_0670
call _OUTP@4
push offset _Lt_072C
call _OUTP@4
jmp .Lt_0960
.Lt_0961:
push offset _Lt_094D
call _OUTP@4
.Lt_0960:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
lea ebx, [ebp-24]
push ebx
push 6
push offset _Lt_0351
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-80]
call _OUTP@4
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_095B
.Lt_095F:
.Lt_095E:
cmp dword ptr [ebp-28], 1
jne .Lt_0965
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG@8
mov dword ptr [ebp-76], eax
push 0
push 0
push dword ptr [ebp-76]
push 8
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-76]
push 0
call _HISREGFREE@8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .Lt_0967
push dword ptr [ebp-68]
call _HPUSH@4
.Lt_0967:
.Lt_0966:
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-68]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-124]
call _OUTP@4
lea eax, [ebp-124]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-68]
call _HPUSH@4
push offset _Lt_035E
call _OUTP@4
push offset _Lt_0330
call _OUTP@4
cmp dword ptr [ebp-72], 0
jne .Lt_096D
push dword ptr [ebp-68]
call _HPOP@4
.Lt_096D:
.Lt_096C:
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
jmp .Lt_0964
.Lt_0965:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0347
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-80]
call _OUTP@4
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
.Lt_0964:
push offset _Lt_072C
call _OUTP@4
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset _Lt_0351
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
call _OUTP@4
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_095B:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITLOADB2L@8:
push ebp
mov ebp, esp
sub esp, 108
.Lt_0972:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND64@12
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_0975
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .Lt_0CF3
cmp dword ptr [eax+24], 0
je .Lt_0977
.Lt_0CF3:
push offset _Lt_02F1
push dword ptr [ebp-12]
call _HMOV@8
push offset _Lt_02F1
push dword ptr [ebp-24]
call _HMOV@8
jmp .Lt_0976
.Lt_0977:
push offset _Lt_0006
push dword ptr [ebp-12]
call _HMOV@8
push offset _Lt_0006
push dword ptr [ebp-24]
call _HMOV@8
.Lt_0976:
jmp .Lt_0974
.Lt_0975:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-36]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND@24
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
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
call _OUTP@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0727
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-108]
call _OUTP@4
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call _HMOV@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0974:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0973:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORB2L@8:
push ebp
mov ebp, esp
.Lt_097E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADB2L@8
.Lt_097F:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITLOADL2B@8:
push ebp
mov ebp, esp
sub esp, 220
push ebx
.Lt_0980:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND64@12
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND@24
mov eax, dword ptr [_SYMB_DTYPETB+32]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_0983
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .Lt_0CF4
cmp dword ptr [eax+24], 0
je .Lt_0985
.Lt_0CF4:
push offset _Lt_0004
push dword ptr [ebp-12]
call _HMOV@8
jmp .Lt_0984
.Lt_0985:
push offset _Lt_0006
push dword ptr [ebp-12]
call _HMOV@8
.Lt_0984:
jmp .Lt_0982
.Lt_0983:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0986
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call _HMOV@8
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_064C
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-112]
call _OUTP@4
lea eax, [ebp-112]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push 4
push offset _Lt_02DE
push -1
push -1
lea eax, [ebp-52]
push eax
push 5
push offset _Lt_02DD
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-148]
call _OUTP@4
lea eax, [ebp-148]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push 7
push offset _Lt_0902
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-172]
call _OUTP@4
lea eax, [ebp-172]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-16], 1
je .Lt_0991
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-220]
call _OUTP@4
lea eax, [ebp-220]
push eax
call _fb_StrDelete@4
.Lt_0991:
.Lt_0990:
jmp .Lt_0982
.Lt_0986:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG@8
mov dword ptr [ebp-68], eax
push 0
push 0
push dword ptr [ebp-68]
push 2
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
push 0
push 0
push dword ptr [ebp-68]
push 8
call _HGETREGNAME@8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-68]
push 0
call _HISREGFREE@8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .Lt_0997
push dword ptr [ebp-52]
call _HPUSH@4
.Lt_0997:
.Lt_0996:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_0999
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebp-68], ebx
jne .Lt_099B
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea ebx, [ebp-40]
push ebx
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea ebx, [ebp-52]
push ebx
push 4
push offset _Lt_064C
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea ebx, [ebp-144]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-180]
call _OUTP@4
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
jmp .Lt_099A
.Lt_099B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
cmp dword ptr [ebp-68], eax
jne .Lt_09A0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_064C
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-180]
call _OUTP@4
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
jmp .Lt_099A
.Lt_09A0:
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call _HMOV@8
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_064C
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-180]
call _OUTP@4
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
.Lt_099A:
jmp .Lt_0998
.Lt_0999:
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call _HMOV@8
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_064C
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-180]
call _OUTP@4
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
.Lt_0998:
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 4
push offset _Lt_02DE
push -1
push -1
lea eax, [ebp-52]
push eax
push 5
push offset _Lt_02DD
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-108]
call _OUTP@4
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push 7
push offset _Lt_0902
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-132]
call _OUTP@4
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-16], 1
jne .Lt_09B3
push dword ptr [ebp-64]
push dword ptr [ebp-12]
call _HMOV@8
jmp .Lt_09B2
.Lt_09B3:
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 7
push offset _Lt_02F9
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-180]
call _OUTP@4
lea eax, [ebp-180]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call _HMOV@8
.Lt_09B2:
cmp dword ptr [ebp-72], 0
jne .Lt_09B9
push dword ptr [ebp-52]
call _HPOP@4
.Lt_09B9:
.Lt_09B8:
.Lt_0982:
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0981:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORL2B@8:
push ebp
mov ebp, esp
.Lt_09BA:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADL2B@8
.Lt_09BB:
mov esp, ebp
pop ebp
ret 8
.balign 16
__INIT@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_09FF:
call _HINITREGTB@0
mov eax, dword ptr [_ENV+248]
sal eax, 4
mov ecx, dword ptr [_DTYPETB+eax]
mov dword ptr [_DTYPETB+112], ecx
mov ecx, dword ptr [_DTYPETB+eax+4]
mov dword ptr [_DTYPETB+116], ecx
mov ecx, dword ptr [_DTYPETB+eax+8]
mov dword ptr [_DTYPETB+120], ecx
mov ecx, dword ptr [_DTYPETB+eax+12]
mov dword ptr [_DTYPETB+124], ecx
mov dword ptr [_EMIT+140], -1
mov dword ptr [_EMIT+144], -1
mov dword ptr [ebp-8], 66304
cmp dword ptr [_ENV+116], 1
jne .Lt_0A02
or dword ptr [ebp-8], 1
.Lt_0A02:
.Lt_0A01:
mov eax, dword ptr [ebp-8]
or dword ptr [_IR+276], eax
call _EDBGINIT@0
mov dword ptr [ebp-4], -1
.Lt_0A00:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__END@0:
.Lt_0A03:
mov dword ptr [_EMIT+140], -1
mov dword ptr [_EMIT+144], -1
call _HENDREGTB@0
.Lt_0A04:
ret
.balign 16
__GETOPTIONVALUE@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0A05:
cmp dword ptr [ebp+8], 1
jne .Lt_0A08
.Lt_0A09:
mov dword ptr [ebp-4], 16
jmp .Lt_0A06
jmp .Lt_0A07
.Lt_0A08:
push 0
push 1
push 0
push offset _Lt_0A0B
push 21
call _ERRREPORTEX@20
.Lt_0A0A:
.Lt_0A07:
.Lt_0A06:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
__OPEN@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0A0C:
lea eax, [_ENV+560]
push eax
call _HFILEEXISTS@4
test eax, eax
je .Lt_0A0F
lea eax, [_ENV+560]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
.Lt_0A0F:
.Lt_0A0E:
call _fb_FileFree@0
mov dword ptr [_ENV+556], eax
push 0
push dword ptr [_ENV+556]
push 0
push 3
push 0
lea eax, [_ENV+560]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_0A11
mov dword ptr [ebp-4], 0
jmp .Lt_0A0D
.Lt_0A11:
.Lt_0A10:
call _HWRITEHEADER@0
mov dword ptr [ebp-4], -1
.Lt_0A0D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__CLOSE@0:
.Lt_0A12:
push 0
call _EDBGINCLUDE@4
push offset _HDECLVARIABLE@4
push 1
call _SYMBFOREACHGLOBAL@8
mov eax, dword ptr [_ENV+260]
and eax, 4
and eax, dword ptr [_ENV+208]
je .Lt_0A15
push offset _HEMITEXPORT@4
push 3
call _SYMBFOREACHGLOBAL@8
.Lt_0A15:
.Lt_0A14:
push -1
push dword ptr [_SYMB+99048]
call _HWRITECTOR@8
push 0
push dword ptr [_SYMB+99088]
call _HWRITECTOR@8
call _EDBGEMITFOOTER@0
push dword ptr [_ENV+556]
call _fb_FileClose@4
test eax, eax
je .Lt_0A17
.Lt_0A17:
.Lt_0A16:
mov dword ptr [_ENV+556], 0
.Lt_0A13:
ret
.balign 16
__PROCGETFRAMEREGNAME@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0A18:
mov eax, offset _Lt_0CF8
mov dword ptr [ebp-4], eax
.Lt_0A19:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0CF8:
.ascii "ebp\0"

.section .text
.balign 16
__ISREGPRESERVED@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0A1A:
cmp dword ptr [ebp+8], 1
jne .Lt_0A1D
mov dword ptr [ebp-4], 0
jmp .Lt_0A1B
.Lt_0A1D:
.Lt_0A1C:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
jmp .Lt_0A1F
.Lt_0A21:
mov dword ptr [ebp-4], 0
jmp .Lt_0A1B
jmp .Lt_0A1E
.Lt_0A22:
mov dword ptr [ebp-4], -1
jmp .Lt_0A1B
jmp .Lt_0A1E
.Lt_0A1F:
cmp dword ptr [ebp-8], 5
ja .Lt_0A22
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0A23+eax*4]
_.LT_0A23:
.int .Lt_0A21
.int .Lt_0A22
.int .Lt_0A22
.int .Lt_0A21
.int .Lt_0A22
.int .Lt_0A21
.Lt_0A1E:
.Lt_0A1B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
__GETRESULTREG@16:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0A24:
cmp dword ptr [ebp+12], 0
jne .Lt_0A27
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 5
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0A28
mov dword ptr [ebp-4], 24
jmp .Lt_0CF9
.Lt_0A28:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0CF9:
mov eax, dword ptr [ebp-4]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0A2A
mov dword ptr [ebp-8], 24
jmp .Lt_0CFA
.Lt_0A2A:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0CFA:
mov eax, dword ptr [ebp-8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-12]
je .Lt_0A2D
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
jmp .Lt_0A2C
.Lt_0A2D:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.Lt_0A2C:
jmp .Lt_0A26
.Lt_0A27:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.Lt_0A26:
.Lt_0A25:
mov esp, ebp
pop ebp
ret 16
.balign 16
__GETFREEPRESERVEDREG@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0A2E:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+8], 1
jne .Lt_0A31
jmp .Lt_0A2F
.Lt_0A31:
.Lt_0A30:
push 4
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
test eax, eax
je .Lt_0A33
mov dword ptr [ebp-4], 4
jmp .Lt_0A32
.Lt_0A33:
push 2
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
test eax, eax
je .Lt_0A34
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_0A35
mov dword ptr [ebp-8], 24
jmp .Lt_0CFE
.Lt_0A35:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0CFE:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
je .Lt_0A38
mov dword ptr [ebp-4], 2
.Lt_0A38:
.Lt_0A37:
jmp .Lt_0A32
.Lt_0A34:
push 1
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
test eax, eax
je .Lt_0A39
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_0A3A
mov dword ptr [ebp-8], 24
jmp .Lt_0CFF
.Lt_0A3A:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0CFF:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
je .Lt_0A3D
mov dword ptr [ebp-4], 1
.Lt_0A3D:
.Lt_0A3C:
.Lt_0A39:
.Lt_0A32:
.Lt_0A2F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__PROCBEGIN@4:
push ebp
mov ebp, esp
push ebx
.Lt_0A3E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+4], 8
push dword ptr [ebp+8]
call _EDBGPROCBEGIN@4
.Lt_0A3F:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCEND@4:
push ebp
mov ebp, esp
.Lt_0A40:
push dword ptr [ebp+8]
call _EDBGPROCEND@4
.Lt_0A41:
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCALLOCSTATICVARS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0A42:
.Lt_0A44:
cmp dword ptr [ebp+8], 0
je .Lt_0A45
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 15
jne .Lt_0A48
.Lt_0A49:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call __PROCALLOCSTATICVARS@4
jmp .Lt_0A46
.Lt_0A48:
cmp dword ptr [ebp-4], 1
jne .Lt_0A4A
.Lt_0A4B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
je .Lt_0A4D
push dword ptr [ebp+8]
call _HDECLVARIABLE@4
.Lt_0A4D:
.Lt_0A4C:
.Lt_0A4A:
.Lt_0A46:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp+8], ebx
jmp .Lt_0A44
.Lt_0A45:
.Lt_0A43:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCALLOCLOCAL@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0A4E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_0A51
jmp .Lt_0A4F
.Lt_0A51:
.Lt_0A50:
push dword ptr [ebp+12]
call _SYMBGETREALSIZE@4
mov ebx, eax
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [ebp-8]
add ebx, 3
and ebx, -4
add dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8]
neg ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
neg ebx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+112]
mov eax, dword ptr [edx+12]
cmp ebx, eax
jle .Lt_0A53
mov eax, dword ptr [ebp-4]
neg eax
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+112]
mov dword ptr [edx+12], eax
.Lt_0A53:
.Lt_0A52:
mov edx, dword ptr [ebp-4]
mov eax, edx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+48], edx
mov dword ptr [ebx+52], eax
.Lt_0A4F:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__PROCALLOCARG@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0A54:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .Lt_0A57
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-4], eax
jmp .Lt_0A56
.Lt_0A57:
mov eax, dword ptr [_ENV+272]
mov dword ptr [ebp-4], eax
.Lt_0A56:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov ecx, dword ptr [ebx+4]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+48], ecx
mov dword ptr [ebx+52], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+112]
mov ecx, dword ptr [ebp-4]
add ecx, 3
and ecx, -4
add dword ptr [eax+4], ecx
.Lt_0A55:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__PROCHEADER@8:
push ebp
mov ebp, esp
.Lt_0A58:
call _EMITRESET@0
push dword ptr [ebp+8]
call _EDBGPROCEMITBEGIN@4
.Lt_0A59:
mov esp, ebp
pop ebp
ret 8
.balign 16
__PROCFOOTER@16:
push ebp
mov ebp, esp
sub esp, 56
push ebx
.Lt_0A5A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
push 0
push 3
call __SETSECTION@8
push dword ptr [ebp+8]
call _EDBGEMITPROCHEADER@4
push 16
call _HALIGN@4
cmp dword ptr [ebp-8], 0
je .Lt_0A5D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _HPUBLIC@8
.Lt_0A5D:
.Lt_0A5C:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _HLABEL@4
cmp dword ptr [_ENV+108], 2
jne .Lt_0A5F
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 3
push offset _Lt_0172
push -1
push 12
push offset _Lt_0A61
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push 7
push offset _Lt_0A60
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
call _OUTEX@8
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
.Lt_0A5F:
.Lt_0A5E:
push dword ptr [ebp+8]
call _HCREATEFRAME@4
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+16]
push dword ptr [ebp+8]
call _EDBGEMITLINEFLUSH@12
call _EMITFLUSH@0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HDESTROYFRAME@8
push dword ptr [ebp+20]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+20]
push dword ptr [ebp+8]
call _EDBGEMITLINEFLUSH@12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _EDBGEMITPROCFOOTER@12
.Lt_0A5B:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
__SCOPEBEGIN@4:
push ebp
mov ebp, esp
.Lt_0A66:
push dword ptr [ebp+8]
call _EDBGSCOPEBEGIN@4
.Lt_0A67:
mov esp, ebp
pop ebp
ret 4
.balign 16
__SCOPEEND@4:
push ebp
mov ebp, esp
.Lt_0A68:
push dword ptr [ebp+8]
call _EDBGSCOPEEND@4
.Lt_0A69:
mov esp, ebp
pop ebp
ret 4
.balign 16
__SETSECTION@8:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0A6A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __GETSECTIONSTRING@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0A6D
jmp .Lt_0A6B
.Lt_0A6D:
.Lt_0A6C:
push 0
push 0
push dword ptr [ebp-4]
push -1
push offset _Lt_0D02
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0172
push -1
push offset _Lt_0D02
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_0D02]
call _OUTEX@8
.Lt_0A6B:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0D02,12

.section .text
.balign 16
__GETTYPESTRING@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0A6E:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0A70
mov dword ptr [ebp-8], 24
jmp .Lt_0D03
.Lt_0A70:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0D03:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_0A73
.Lt_0A75:
mov eax, offset _Lt_0A76
mov dword ptr [ebp-4], eax
jmp .Lt_0A72
.Lt_0A77:
mov eax, offset _Lt_0A78
mov dword ptr [ebp-4], eax
jmp .Lt_0A72
.Lt_0A79:
mov eax, offset _Lt_0A7A
mov dword ptr [ebp-4], eax
jmp .Lt_0A72
.Lt_0A7B:
mov eax, offset _Lt_0A7C
mov dword ptr [ebp-4], eax
jmp .Lt_0A72
.Lt_0A7D:
mov eax, offset _Lt_0A7E
mov dword ptr [ebp-4], eax
jmp .Lt_0A72
.Lt_0A7F:
mov eax, offset _Lt_0A80
mov dword ptr [ebp-4], eax
jmp .Lt_0A72
.Lt_0A81:
mov eax, offset _Lt_0A82
mov dword ptr [ebp-4], eax
jmp .Lt_0A72
.Lt_0A83:
mov eax, offset _Lt_0A7C
mov dword ptr [ebp-4], eax
jmp .Lt_0A72
.Lt_0A84:
mov eax, offset _Lt_0A82
mov dword ptr [ebp-4], eax
jmp .Lt_0A72
.Lt_0A73:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 23
ja .Lt_0A84
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0A85+eax*4-4]
_.LT_0A85:
.int .Lt_0A75
.int .Lt_0A75
.int .Lt_0A75
.int .Lt_0A7F
.int .Lt_0A77
.int .Lt_0A77
.int .Lt_0A7F
.int .Lt_0A79
.int .Lt_0A79
.int .Lt_0A79
.int .Lt_0A7B
.int .Lt_0A7B
.int .Lt_0A7D
.int .Lt_0A7D
.int .Lt_0A7B
.int .Lt_0A7D
.int .Lt_0A81
.int .Lt_0A7F
.int .Lt_0A84
.int .Lt_0A81
.int .Lt_0A84
.int .Lt_0A84
.int .Lt_0A84
.int .Lt_0A83
.Lt_0A72:
.Lt_0A6F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
__GETSECTIONSTRING@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0A86:
mov eax, dword ptr [_EMIT+140]
cmp eax, dword ptr [ebp+8]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_EMIT+144]
cmp ebx, dword ptr [ebp+12]
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0A89
mov dword ptr [ebp-4], 0
jmp .Lt_0A87
.Lt_0A89:
.Lt_0A88:
push 0
push 3
push offset _Lt_0172
push -1
push offset _Lt_0D06
call _fb_StrAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 9
je .Lt_0A8B
push 0
push 10
push offset _Lt_0A8C
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
.Lt_0A8B:
.Lt_0A8A:
push 0
push 2
push offset _Lt_0007
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0A8E
.Lt_0A90:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-12], eax
jmp .Lt_0A92
.Lt_0A94:
push 0
push 6
push offset _Lt_0A95
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
jmp .Lt_0A91
.Lt_0A96:
push 0
push 6
push offset _Lt_0A97
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
jmp .Lt_0A91
.Lt_0A98:
push 0
push 7
push offset _Lt_0A99
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
jmp .Lt_0A91
.Lt_0A92:
cmp dword ptr [ebp-12], 9
ja .Lt_0A98
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0A9A+eax*4]
_.LT_0A9A:
.int .Lt_0A94
.int .Lt_0A94
.int .Lt_0A98
.int .Lt_0A94
.int .Lt_0A94
.int .Lt_0A98
.int .Lt_0A98
.int .Lt_0A98
.int .Lt_0A98
.int .Lt_0A96
.Lt_0A91:
jmp .Lt_0A8D
.Lt_0A9B:
push 0
push 5
push offset _Lt_0A9C
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
jmp .Lt_0A8D
.Lt_0A9D:
push 0
push 4
push offset _Lt_0A9E
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
jmp .Lt_0A8D
.Lt_0A9F:
push 0
push 5
push offset _Lt_0AA0
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
jmp .Lt_0A8D
.Lt_0AA1:
push 0
push 8
push offset _Lt_0AA2
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
jmp .Lt_0A8D
.Lt_0AA3:
push 0
push 8
push offset _Lt_001B
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
jmp .Lt_0A8D
.Lt_0AA4:
push 0
push 6
push offset _Lt_0AA5
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+12], 0
jle .Lt_0AA7
push 0
push 2
push offset _Lt_0007
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
push 0
push -1
push 5
push -1
mov eax, 65535
sub eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr@4
push eax
push 6
push offset _Lt_0AA8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
.Lt_0AA7:
.Lt_0AA6:
cmp dword ptr [_ENV+108], 2
jne .Lt_0AAB
push 0
push 18
push offset _Lt_0AB1
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
.Lt_0AAB:
.Lt_0AAA:
jmp .Lt_0A8D
.Lt_0AB2:
push 0
push 6
push offset _Lt_0AB3
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+12], 0
jle .Lt_0AB5
push 0
push 2
push offset _Lt_0007
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
push 0
push -1
push 5
push -1
mov eax, 65535
sub eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr@4
push eax
push 6
push offset _Lt_0AA8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
call _fb_RIGHT@8
push eax
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
.Lt_0AB5:
.Lt_0AB4:
cmp dword ptr [_ENV+108], 2
jne .Lt_0AB8
push 0
push 18
push offset _Lt_0AB1
push -1
push offset _Lt_0D06
call _fb_StrConcatAssign@20
.Lt_0AB8:
.Lt_0AB7:
jmp .Lt_0A8D
.Lt_0A8E:
cmp dword ptr [ebp-8], 7
ja .Lt_0A8D
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0AB9+eax*4]
_.LT_0AB9:
.int .Lt_0A90
.int .Lt_0A9B
.int .Lt_0A9D
.int .Lt_0A9F
.int .Lt_0AA1
.int .Lt_0AA4
.int .Lt_0AB2
.int .Lt_0AA3
.Lt_0A8D:
mov eax, dword ptr [_Lt_0D06]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [_EMIT+140], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_EMIT+144], eax
.Lt_0A87:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0D06,12

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0004:	.ascii	"1\0"
.balign 4
_Lt_0006:	.ascii	"0\0"
.balign 4
_Lt_0007:	.ascii	".\0"
.balign 4
_Lt_001B:	.ascii	"fbctinf\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_Lt_0073,36

.section .data
.balign 4
_Lt_0074:	.ascii	", \0"
.balign 4

.globl _DTYPETB
_DTYPETB:
.int 0
.ascii "void ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 1
.ascii "word ptr\0"
.skip 3,0
.int 1
.ascii "word ptr\0"
.skip 3,0
.int 1
.ascii "word ptr\0"
.skip 3,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "qword ptr\0"
.skip 2,0
.int 2
.ascii "qword ptr\0"
.skip 2,0
.int 3
.ascii "dword ptr\0"
.skip 2,0
.int 3
.ascii "qword ptr\0"
.skip 2,0
.int 0
.ascii "\0"
.skip 11,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 0
.ascii "\0"
.skip 11,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 3
.ascii "xmmword ptr\0"
.balign 4
_RNAMETB:
.ascii "dl\0"
.skip 5,0
.ascii "di\0"
.skip 5,0
.ascii "si\0"
.skip 5,0
.ascii "cl\0"
.skip 5,0
.ascii "bl\0"
.skip 5,0
.ascii "al\0"
.skip 5,0
.ascii "bp\0"
.skip 5,0
.ascii "sp\0"
.skip 5,0
.ascii "dx\0"
.skip 5,0
.ascii "di\0"
.skip 5,0
.ascii "si\0"
.skip 5,0
.ascii "cx\0"
.skip 5,0
.ascii "bx\0"
.skip 5,0
.ascii "ax\0"
.skip 5,0
.ascii "bp\0"
.skip 5,0
.ascii "sp\0"
.skip 5,0
.ascii "edx\0"
.skip 4,0
.ascii "edi\0"
.skip 4,0
.ascii "esi\0"
.skip 4,0
.ascii "ecx\0"
.skip 4,0
.ascii "ebx\0"
.skip 4,0
.ascii "eax\0"
.skip 4,0
.ascii "ebp\0"
.skip 4,0
.ascii "esp\0"
.skip 4,0
.ascii "st(0)\0"
.skip 2,0
.ascii "st(1)\0"
.skip 2,0
.ascii "st(2)\0"
.skip 2,0
.ascii "st(3)\0"
.skip 2,0
.ascii "st(4)\0"
.skip 2,0
.ascii "st(5)\0"
.skip 2,0
.ascii "st(6)\0"
.skip 2,0
.ascii "st(7)\0"
.skip 2,0
.balign 4
_Lt_007A:	.ascii	"cl\0"
.balign 4
_Lt_007F:	.ascii	"dx\0"
.balign 4
_Lt_0080:	.ascii	"cx\0"
.balign 4
_Lt_0082:	.ascii	"ax\0"
.balign 4
_Lt_0083:	.ascii	"edx\0"
.balign 4
_Lt_0084:	.ascii	"edi\0"
.balign 4
_Lt_0085:	.ascii	"esi\0"
.balign 4
_Lt_0086:	.ascii	"ecx\0"
.balign 4
_Lt_0087:	.ascii	"ebx\0"
.balign 4
_Lt_0088:	.ascii	"eax\0"
.balign 4
_Lt_0089:	.ascii	"ebp\0"
.balign 4
_Lt_0116:	.ascii	"+\0"
.balign 4
_Lt_0122:	.ascii	"*\0"
.balign 4
_Lt_0135:	.ascii	" [\0"
.balign 4
_Lt_0137:	.ascii	"[\0"
.balign 4
_Lt_014A:	.ascii	"]\0"
.balign 4
_Lt_014D:	.ascii	"offset \0"
.balign 4
_Lt_0151:	.ascii	" + \0"
.balign 4
_Lt_0170:	.ascii	"\t\0"
.balign 4
_Lt_0172:	.ascii	"\r\n\0"
.balign 4
_Lt_0176:	.ascii	" \0"
.balign 4
_Lt_017B:	.ascii	"push \0"
.balign 4
_Lt_0180:	.ascii	"pop \0"
.balign 4
_Lt_0185:	.ascii	"mov \0"
.balign 4
_Lt_018B:	.ascii	"xchg \0"
.balign 4
_Lt_0191:	.ascii	"\t#\0"
.balign 4
_Lt_0196:	.ascii	"\r\n.globl \0"
.balign 4
_Lt_019A:	.ascii	":\0"
.balign 4
_Lt_019B:	.ascii	":\r\n\0"
.balign 4
_Lt_019F:	.ascii	".balign \0"
.balign 4
_Lt_01AA:	.ascii	"xmm\0"
.balign 4
_Lt_01C0:	.ascii	".lcomm\0"
.balign 4
_Lt_01C1:	.ascii	".comm\0"
.balign 4
_Lt_01C3:	.ascii	",\0"
.balign 4
_Lt_01C6:	.ascii	".intel_syntax noprefix\0"
.balign 4
_Lt_01CD:	.ascii	"\"\0"
.balign 4
_Lt_01CF:	.ascii	"\\0\0"
.balign 4
_Lt_01D0:	.ascii	"\\0\"\0"
.balign 4
_Lt_01DE:	.ascii	":\t\0"
.balign 4
_Lt_01F1:	.ascii	".ascii \"\0"
.balign 4
_Lt_01F3:	.ascii	".ascii \" -export:\0"
.balign 4
_Lt_01F4:	.ascii	"\"\r\n\0"
.balign 4
_Lt_0217:	.ascii	"lea edi, [ebp-\0"
.balign 4
_Lt_021B:	.ascii	"mov ecx,\0"
.balign 4
_Lt_021E:	.ascii	"pxor mm0, mm0\0"
.balign 4
_Lt_021F:	.ascii	"movq [edi], mm0\0"
.balign 4
_Lt_0220:	.ascii	"add edi, 8\0"
.balign 4
_Lt_0221:	.ascii	"dec ecx\0"
.balign 4
_Lt_0222:	.ascii	"jnz \0"
.balign 4
_Lt_0225:	.ascii	"emms\0"
.balign 4
_Lt_022D:	.ascii	"movq [ebp-\0"
.balign 4
_Lt_022E:	.ascii	"], mm0\0"
.balign 4
_Lt_0234:	.ascii	"mov dword ptr [ebp-\0"
.balign 4
_Lt_0235:	.ascii	"], 0\0"
.balign 4
_Lt_0242:	.ascii	"xor eax, eax\0"
.balign 4
_Lt_0243:	.ascii	"rep stosd\0"
.balign 4
_Lt_025D:	.ascii	"mov ebp, esp\0"
.balign 4
_Lt_0260:	.ascii	"and esp, 0xFFFFFFF0\0"
.balign 4
_Lt_0263:	.ascii	"sub esp, \0"
.balign 4
_Lt_026B:	.ascii	".section .data\r\n\0"
.balign 4
_Lt_026D:	.ascii	".balign 4\r\n\0"
.balign 4
_Lt_0272:	.ascii	".long 0\0"
.balign 4
_Lt_0274:	.ascii	".section .text\r\n\0"
.balign 4
_Lt_0275:	.ascii	"mov edx, offset .\0"
.balign 4
_Lt_0278:	.ascii	"call _mcount\0"
.balign 4
_Lt_028B:	.ascii	"mov esp, ebp\0"
.balign 4
_Lt_028E:	.ascii	"ret \0"
.balign 4
_Lt_0291:	.ascii	"ret\0"
.balign 4
_Lt_0294:	.ascii	".size \0"
.balign 4
_Lt_0295:	.ascii	", .-\0"
.balign 4
_Lt_02AF:	.ascii	"call \0"
.balign 4
_Lt_02B3:	.ascii	"add esp, \0"
.balign 4
_Lt_02BE:	.ascii	"jle \0"
.balign 4
_Lt_02C0:	.ascii	"jge \0"
.balign 4
_Lt_02C2:	.ascii	"jl \0"
.balign 4
_Lt_02C4:	.ascii	"jg \0"
.balign 4
_Lt_02C6:	.ascii	"je \0"
.balign 4
_Lt_02C8:	.ascii	"jne \0"
.balign 4
_Lt_02CD:	.ascii	"jmp \0"
.balign 4
_Lt_02DD:	.ascii	"cmp \0"
.balign 4
_Lt_02DE:	.ascii	", 0\0"
.balign 4
_Lt_02DF:	.ascii	"jns \0"
.balign 4
_Lt_02E0:	.ascii	"0x403f\0"
.balign 4
_Lt_02E1:	.ascii	"0x80000000\0"
.balign 4
_Lt_02E2:	.ascii	"fldt [esp]\0"
.balign 4
_Lt_02E3:	.ascii	"add esp, 12\0"
.balign 4
_Lt_02E4:	.ascii	"faddp\0"
.balign 4
_Lt_02F1:	.ascii	"-1\0"
.balign 4
_Lt_02F8:	.ascii	"movsx \0"
.balign 4
_Lt_02F9:	.ascii	"movzx \0"
.balign 4
_Lt_02FE:	.ascii	"sar \0"
.balign 4
_Lt_02FF:	.ascii	", 31\0"
.balign 4
_Lt_0306:	.ascii	"fistp \0"
.balign 4
_Lt_032B:	.ascii	"sub esp, 4\0"
.balign 4
_Lt_032C:	.ascii	"fistp dword ptr [esp]\0"
.balign 4
_Lt_032F:	.ascii	"byte ptr [esp]\0"
.balign 4
_Lt_0330:	.ascii	"add esp, 4\0"
.balign 4
_Lt_0333:	.ascii	"dword ptr [esp]\0"
.balign 4
_Lt_033C:	.ascii	"sub esp, 8\0"
.balign 4
_Lt_033D:	.ascii	"fistp qword ptr [esp]\0"
.balign 4
_Lt_033E:	.ascii	"add esp, 2\0"
.balign 4
_Lt_0347:	.ascii	"fild \0"
.balign 4
_Lt_0348:	.ascii	" [esp]\0"
.balign 4
_Lt_034B:	.ascii	"add esp, 8\0"
.balign 4
_Lt_034C:	.ascii	"fild qword ptr [esp]\0"
.balign 4
_Lt_0351:	.ascii	"fstp \0"
.balign 4
_Lt_035E:	.ascii	"fild dword ptr [esp]\0"
.balign 4
_Lt_0371:	.ascii	"add esp, 6\0"
.balign 4
_Lt_0384:	.ascii	"fld \0"
.balign 4
_Lt_03A5:	.ascii	"mov dword ptr [esp], 0x5F000000\0"
.balign 4
_Lt_03A6:	.ascii	"fcom dword ptr [esp]\0"
.balign 4
_Lt_03A9:	.ascii	"fnstsw ax\0"
.balign 4
_Lt_03AA:	.ascii	"test ah, 1\0"
.balign 4
_Lt_03AB:	.ascii	"jz\0"
.balign 4
_Lt_03AC:	.ascii	"jmp\0"
.balign 4
_Lt_03AD:	.ascii	"fsub dword ptr [esp]\0"
.balign 4
_Lt_03AE:	.ascii	"xor \0"
.balign 4
_Lt_03AF:	.ascii	", 0x80000000\0"
.balign 4
_Lt_0427:	.ascii	"add \0"
.balign 4
_Lt_0428:	.ascii	"adc \0"
.balign 4
_Lt_0435:	.ascii	"inc \0"
.balign 4
_Lt_0437:	.ascii	"dec \0"
.balign 4
_Lt_0440:	.ascii	"fadd \0"
.balign 4
_Lt_0441:	.ascii	"fiadd \0"
.balign 4
_Lt_0444:	.ascii	"sub \0"
.balign 4
_Lt_0445:	.ascii	"sbb \0"
.balign 4
_Lt_0457:	.ascii	"fsubrp\0"
.balign 4
_Lt_045C:	.ascii	"fsub \0"
.balign 4
_Lt_045D:	.ascii	"fisub \0"
.balign 4
_Lt_046C:	.ascii	"mov eax, [esp+\0"
.balign 4
_Lt_0470:	.ascii	"mul dword ptr [esp+\0"
.balign 4
_Lt_0474:	.ascii	"xchg eax, [esp+\0"
.balign 4
_Lt_0478:	.ascii	"imul eax, [esp+\0"
.balign 4
_Lt_047C:	.ascii	"add eax, edx\0"
.balign 4
_Lt_047D:	.ascii	"mov edx, [esp+\0"
.balign 4
_Lt_0481:	.ascii	"imul edx, [esp+\0"
.balign 4
_Lt_0485:	.ascii	"add edx, eax\0"
.balign 4
_Lt_0486:	.ascii	"mov [esp+\0"
.balign 4
_Lt_0487:	.ascii	"], edx\0"
.balign 4
_Lt_049D:	.ascii	"imul \0"
.balign 4
_Lt_04A4:	.ascii	"fmulp\0"
.balign 4
_Lt_04A9:	.ascii	"fmul \0"
.balign 4
_Lt_04AA:	.ascii	"fimul \0"
.balign 4
_Lt_04AF:	.ascii	"fdivrp\0"
.balign 4
_Lt_04B4:	.ascii	"fdiv \0"
.balign 4
_Lt_04B5:	.ascii	"fidiv \0"
.balign 4
_Lt_04C9:	.ascii	"xchg eax, [esp]\0"
.balign 4
_Lt_04DB:	.ascii	"cdq\0"
.balign 4
_Lt_04DC:	.ascii	"cwd\0"
.balign 4
_Lt_04DD:	.ascii	"idiv \0"
.balign 4
_Lt_04DE:	.ascii	"div \0"
.balign 4
_Lt_04EC:	.ascii	"xchg ecx, [esp]\0"
.balign 4
_Lt_04F3:	.ascii	"xchg ecx, eax\0"
.balign 4
_Lt_053B:	.ascii	"shl \0"
.balign 4
_Lt_053C:	.ascii	"shld \0"
.balign 4
_Lt_0541:	.ascii	"shr \0"
.balign 4
_Lt_0542:	.ascii	"shrd \0"
.balign 4
_Lt_05DE:	.ascii	"xchg edx, [esp+\0"
.balign 4
_Lt_05EF:	.ascii	"shld edx, eax, cl\0"
.balign 4
_Lt_05F0:	.ascii	" eax, cl\0"
.balign 4
_Lt_05F3:	.ascii	"shrd eax, edx, cl\0"
.balign 4
_Lt_05F4:	.ascii	" edx, cl\0"
.balign 4
_Lt_05F7:	.ascii	"test cl, 32\0"
.balign 4
_Lt_05FA:	.ascii	"mov edx, eax\0"
.balign 4
_Lt_05FB:	.ascii	"mov eax, edx\0"
.balign 4
_Lt_0600:	.ascii	"sar edx, 31\0"
.balign 4
_Lt_0601:	.ascii	"xor edx, edx\0"
.balign 4
_Lt_0608:	.ascii	"xchg edx, [esp+4]\0"
.balign 4
_Lt_0609:	.ascii	"mov [esp+4], edx\0"
.balign 4
_Lt_0610:	.ascii	"xchg eax, [esp+0]\0"
.balign 4
_Lt_0611:	.ascii	"mov [esp+0], eax\0"
.balign 4
_Lt_061C:	.ascii	"sal\0"
.balign 4
_Lt_061D:	.ascii	"sar\0"
.balign 4
_Lt_0620:	.ascii	"shl\0"
.balign 4
_Lt_0621:	.ascii	"shr\0"
.balign 4
_Lt_0647:	.ascii	"and \0"
.balign 4
_Lt_064C:	.ascii	"or \0"
.balign 4
_Lt_0655:	.ascii	"not \0"
.balign 4
_Lt_0664:	.ascii	"fxch\0"
.balign 4
_Lt_0665:	.ascii	"fpatan\0"
.balign 4
_Lt_066A:	.ascii	"fabs\0"
.balign 4
_Lt_066B:	.ascii	"fyl2x\0"
.balign 4
_Lt_066C:	.ascii	"fld st(0)\0"
.balign 4
_Lt_066D:	.ascii	"frndint\0"
.balign 4
_Lt_066E:	.ascii	"fsub st(1), st(0)\0"
.balign 4
_Lt_066F:	.ascii	"f2xm1\0"
.balign 4
_Lt_0670:	.ascii	"fld1\0"
.balign 4
_Lt_0671:	.ascii	"fscale\0"
.balign 4
_Lt_0672:	.ascii	"fstp st(1)\0"
.balign 4
_Lt_0679:	.ascii	"j\0"
.balign 4
_Lt_068D:	.ascii	"test \0"
.balign 4
_Lt_0697:	.ascii	"xchg edx, \0"
.balign 4
_Lt_0698:	.ascii	"set\0"
.balign 4
_Lt_0699:	.ascii	" dl\0"
.balign 4
_Lt_06A3:	.ascii	", 1\0"
.balign 4
_Lt_06A6:	.ascii	", -1\0"
.balign 4
_Lt_06AE:	.ascii	"fcompp\0"
.balign 4
_Lt_06B3:	.ascii	"fcomp \0"
.balign 4
_Lt_06B4:	.ascii	"ficomp \0"
.balign 4
_Lt_06BB:	.ascii	"test ah, \0"
.balign 4
_Lt_06BD:	.ascii	"sahf\0"
.balign 4
_Lt_06C9:	.ascii	"\tdl\0"
.balign 4
_Lt_06D8:	.ascii	"g\0"
.balign 4
_Lt_06D9:	.ascii	"l\0"
.balign 4
_Lt_06DA:	.ascii	"a\0"
.balign 4
_Lt_06DB:	.ascii	"b\0"
.balign 4
_Lt_06E4:	.ascii	"z\0"
.balign 4
_Lt_06E5:	.ascii	"0b01000001\0"
.balign 4
_Lt_06F4:	.ascii	"nz\0"
.balign 4
_Lt_06F5:	.ascii	"0b00000001\0"
.balign 4
_Lt_06F8:	.ascii	"ne\0"
.balign 4
_Lt_06F9:	.ascii	"e\0"
.balign 4
_Lt_06FE:	.ascii	"0b01000000\0"
.balign 4
_Lt_070B:	.ascii	"be\0"
.balign 4
_Lt_0712:	.ascii	"le\0"
.balign 4
_Lt_071B:	.ascii	"ae\0"
.balign 4
_Lt_0722:	.ascii	"ge\0"
.balign 4
_Lt_0727:	.ascii	"neg \0"
.balign 4
_Lt_072C:	.ascii	"fchs\0"
.balign 4
_Lt_074A:	.ascii	"jl\0"
.balign 4
_Lt_074B:	.ascii	"jg\0"
.balign 4
_Lt_074F:	.ascii	"jne\0"
.balign 4
_Lt_0757:	.ascii	"je\0"
.balign 4
_Lt_075C:	.ascii	"ftst\0"
.balign 4
_Lt_075F:	.ascii	"fstp st(0)\0"
.balign 4
_Lt_0760:	.ascii	"ja\0"
.balign 4
_Lt_0763:	.ascii	"fsin\0"
.balign 4
_Lt_0766:	.ascii	"fmul st(0), st(0)\0"
.balign 4
_Lt_0767:	.ascii	"fsqrt\0"
.balign 4
_Lt_076A:	.ascii	"fcos\0"
.balign 4
_Lt_076F:	.ascii	"fptan\0"
.balign 4
_Lt_0776:	.ascii	"fldln2\0"
.balign 4
_Lt_0779:	.ascii	"fldl2e\0"
.balign 4
_Lt_077A:	.ascii	"fmulp st(1), st\0"
.balign 4
_Lt_077B:	.ascii	"fld st\0"
.balign 4
_Lt_077C:	.ascii	"fsub st(1), st\0"
.balign 4
_Lt_077D:	.ascii	"0x3f800000\0"
.balign 4
_Lt_077E:	.ascii	"fadd dword ptr [esp]\0"
.balign 4
_Lt_0781:	.ascii	"fnstcw [esp]\0"
.balign 4
_Lt_0782:	.ascii	"[esp]\0"
.balign 4
_Lt_0783:	.ascii	"11\0"
.balign 4
_Lt_0786:	.ascii	", 0b1111001111111111\0"
.balign 4
_Lt_078A:	.ascii	", 0b0000\0"
.balign 4
_Lt_078B:	.ascii	"0000000000\0"
.balign 4
_Lt_0791:	.ascii	"fldcw [esp]\0"
.balign 4
_Lt_079B:	.ascii	"01\0"
.balign 4
_Lt_07A0:	.ascii	"fsubp\0"
.balign 4
_Lt_07AB:	.ascii	"fstp dword ptr [esp]\0"
.balign 4
_Lt_07AC:	.ascii	"fld dword ptr [esp]\0"
.balign 4
_Lt_07AF:	.ascii	"fxch \0"
.balign 4
_Lt_07E1:	.ascii	"sub esp,\0"
.balign 4
_Lt_07F1:	.ascii	", 16\0"
.balign 4
_Lt_082D:	.ascii	"add esp,\0"
.balign 4
_Lt_0832:	.ascii	"lea \0"
.balign 4
_Lt_0851:	.ascii	"mov ecx, \0"
.balign 4
_Lt_0852:	.ascii	"rep movsd\0"
.balign 4
_Lt_0854:	.ascii	"mov ecx, [esi]\0"
.balign 4
_Lt_0855:	.ascii	"mov [edi], ecx\0"
.balign 4
_Lt_0858:	.ascii	"add esi, 4\0"
.balign 4
_Lt_0859:	.ascii	"add edi, 4\0"
.balign 4
_Lt_085E:	.ascii	"mov cx, [esi]\0"
.balign 4
_Lt_085F:	.ascii	"mov [edi], cx\0"
.balign 4
_Lt_0862:	.ascii	"add esi, 2\0"
.balign 4
_Lt_0863:	.ascii	"add edi, 2\0"
.balign 4
_Lt_0866:	.ascii	"mov cl, [esi]\0"
.balign 4
_Lt_0867:	.ascii	"mov [edi], cl\0"
.balign 4
_Lt_0894:	.ascii	"mov dword ptr [edi], eax\0"
.balign 4
_Lt_089B:	.ascii	"mov word ptr [edi], ax\0"
.balign 4
_Lt_08A0:	.ascii	"mov byte ptr [edi], al\0"
.balign 4
_Lt_08C4:	.ascii	"lea edi, \0"
.balign 4
_Lt_08C5:	.ascii	"push ecx\0"
.balign 4
_Lt_08C6:	.ascii	"shr ecx, 2\0"
.balign 4
_Lt_08C7:	.ascii	"pop ecx\0"
.balign 4
_Lt_08C8:	.ascii	"and ecx, 3\0"
.balign 4
_Lt_08C9:	.ascii	"rep stosb\0"
.balign 4
_Lt_0902:	.ascii	"setne \0"
.balign 4
_Lt_0935:	.ascii	"push eax\0"
.balign 4
_Lt_0936:	.ascii	"setnz al\0"
.balign 4
_Lt_0939:	.ascii	", al\0"
.balign 4
_Lt_0942:	.ascii	"pop eax\0"
.balign 4
_Lt_094D:	.ascii	"fldz\0"
.balign 4
_Lt_09C8:	.ascii	"0x\0"
.balign 4
_Lt_09D6:	.ascii	".int \0"
.balign 4
_Lt_09DE:	.ascii	"\\0\"\r\n\0"
.balign 4
_Lt_09EB:	.ascii	".skip \0"
.balign 4
_Lt_09EC:	.ascii	",0\0"
.balign 4
_Lt_09F5:	.ascii	" \"\0"
.balign 4
_Lt_09F6:	.ascii	"\\0\"\0"
.balign 4
__OPFNTB:
.int __EMITNOP@0
.int __EMITLOADI2I@8
.int __EMITLOADF2I@8
.int __EMITLOADL2I@8
.int __EMITLOADB2I@8
.int __EMITLOADI2F@8
.int __EMITLOADF2F@8
.int __EMITLOADL2F@8
.int __EMITLOADB2F@8
.int __EMITLOADI2L@8
.int __EMITLOADF2L@8
.int __EMITLOADL2L@8
.int __EMITLOADB2L@8
.int __EMITLOADI2B@8
.int __EMITLOADF2B@8
.int __EMITLOADL2B@8
.int __EMITLOADB2B@8
.int __EMITSTORI2I@8
.int __EMITSTORF2I@8
.int __EMITSTORL2I@8
.int __EMITSTORB2I@8
.int __EMITSTORI2F@8
.int __EMITSTORF2F@8
.int __EMITSTORL2F@8
.int __EMITSTORB2F@8
.int __EMITSTORI2L@8
.int __EMITSTORF2L@8
.int __EMITSTORL2L@8
.int __EMITSTORB2L@8
.int __EMITSTORI2B@8
.int __EMITSTORF2B@8
.int __EMITSTORL2B@8
.int __EMITSTORB2B@8
.int __EMITMOVI@8
.int __EMITMOVF@8
.int __EMITMOVL@8
.int __EMITADDI@8
.int __EMITADDF@8
.int __EMITADDL@8
.int __EMITSUBI@8
.int __EMITSUBF@8
.int __EMITSUBL@8
.int __EMITMULI@8
.int __EMITMULF@8
.int __EMITMULL@8
.int __EMITDIVI@8
.int __EMITDIVF@8
.long 0
.int __EMITMODI@8
.long 0
.long 0
.int __EMITSHLI@8
.int __EMITSHLL@8
.int __EMITSHRI@8
.int __EMITSHRL@8
.int __EMITANDI@8
.int __EMITANDL@8
.int __EMITORI@8
.int __EMITORL@8
.int __EMITXORI@8
.int __EMITXORL@8
.int __EMITEQVI@8
.int __EMITEQVL@8
.int __EMITIMPI@8
.int __EMITIMPL@8
.int __EMITATN2@8
.int __EMITPOW@8
.int __EMITADDROF@8
.int __EMITDEREF@8
.int __EMITCGTI@16
.int __EMITCGTF@16
.int __EMITCGTL@16
.int __EMITCLTI@16
.int __EMITCLTF@16
.int __EMITCLTL@16
.int __EMITCEQI@16
.int __EMITCEQF@16
.int __EMITCEQL@16
.int __EMITCNEI@16
.int __EMITCNEF@16
.int __EMITCNEL@16
.int __EMITCGEI@16
.int __EMITCGEF@16
.int __EMITCGEL@16
.int __EMITCLEI@16
.int __EMITCLEF@16
.int __EMITCLEL@16
.int __EMITNEGI@4
.int __EMITNEGF@4
.int __EMITNEGL@4
.int __EMITNOTI@4
.int __EMITNOTL@4
.long 0
.int __EMITABSI@4
.int __EMITABSF@4
.int __EMITABSL@4
.int __EMITSGNI@4
.int __EMITSGNF@4
.int __EMITSGNL@4
.int __EMITFIX@4
.int __EMITFRAC@4
.int __EMITCONVFD2FS@4
.long 0
.int __EMITSIN@4
.int __EMITASIN@4
.int __EMITCOS@4
.int __EMITACOS@4
.int __EMITTAN@4
.int __EMITATAN@4
.int __EMITSQRT@4
.long 0
.long 0
.int __EMITLOG@4
.int __EMITEXP@4
.int __EMITFLOOR@4
.int __EMITXCHGTOS@4
.int __EMITSTACKALIGN@8
.int __EMITPUSHI@8
.int __EMITPUSHF@8
.int __EMITPUSHL@8
.int __EMITPOPI@8
.int __EMITPOPF@8
.int __EMITPOPL@8
.int __EMITPUSHUDT@8
.int __EMITPOPST0@0
.int __EMITCALL@12
.int __EMITCALLPTR@12
.int __EMITBRANCH@12
.int __EMITJUMP@12
.int __EMITJUMPPTR@12
.int __EMITRET@4
.int __EMITLABEL@4
.int __EMITPUBLIC@4
.int __EMITLIT@4
.int __EMITJMPTB@36
.int __EMITMEMMOVE@16
.int __EMITMEMSWAP@16
.int __EMITMEMCLEAR@16
.int __EMITSTKCLEAR@16
.int __EMITLINEINI@16
.int __EMITLINEEND@12
.int __EMITSCOPEINI@12
.int __EMITSCOPEEND@12
.balign 4
_Lt_0A0B:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
_Lt_0A60:	.ascii	".type \0"
.balign 4
_Lt_0A61:	.ascii	", @function\0"
.balign 4
_Lt_0A76:	.ascii	".byte\0"
.balign 4
_Lt_0A78:	.ascii	".short\0"
.balign 4
_Lt_0A7A:	.ascii	".int\0"
.balign 4
_Lt_0A7C:	.ascii	".long\0"
.balign 4
_Lt_0A7E:	.ascii	".quad\0"
.balign 4
_Lt_0A80:	.ascii	".ascii\0"
.balign 4
_Lt_0A82:	.ascii	".INVALID\0"
.balign 4
_Lt_0A8C:	.ascii	".section \0"
.balign 4
_Lt_0A95:	.ascii	"rdata\0"
.balign 4
_Lt_0A97:	.ascii	"const\0"
.balign 4
_Lt_0A99:	.ascii	"rodata\0"
.balign 4
_Lt_0A9C:	.ascii	"data\0"
.balign 4
_Lt_0A9E:	.ascii	"bss\0"
.balign 4
_Lt_0AA0:	.ascii	"text\0"
.balign 4
_Lt_0AA2:	.ascii	"drectve\0"
.balign 4
_Lt_0AA5:	.ascii	"ctors\0"
.balign 4
_Lt_0AA8:	.ascii	"00000\0"
.balign 4
_Lt_0AB1:	.ascii	", \"aw\", @progbits\0"
.balign 4
_Lt_0AB3:	.ascii	"dtors\0"

.section .ctors
.int _fb_ctor__emit_x86
