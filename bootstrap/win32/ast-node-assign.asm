	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTCHECKASSIGN@8
_ASTCHECKASSIGN@8:
push ebp
mov ebp, esp
sub esp, 68
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00AF:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00B1
mov dword ptr [ebp-36], 24
jmp .Lt_00EB
.Lt_00B1:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_00EB:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_00B3
mov dword ptr [ebp-40], 24
jmp .Lt_00EC
.Lt_00B3:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_00EC:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_00B5
mov dword ptr [ebp-44], 24
jmp .Lt_00ED
.Lt_00B5:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_00ED:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_00B7
mov dword ptr [ebp-48], 24
jmp .Lt_00EE
.Lt_00B7:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_00EE:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-28]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-32]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00BA
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
je .Lt_00BC
push dword ptr [ebp-32]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call _HCHECKSTRINGOPS@16
test eax, eax
jne .Lt_00BE
jmp .Lt_00B0
.Lt_00BE:
.Lt_00BD:
.Lt_00BC:
.Lt_00BB:
mov dword ptr [ebp-4], -1
jmp .Lt_00B0
jmp .Lt_00B9
.Lt_00BA:
mov eax, dword ptr [ebp-12]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00BF
push -1
push dword ptr [ebp-32]
lea ebx, [ebp+12]
push ebx
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call _HCHECKUDTOPS@20
test eax, eax
jne .Lt_00C1
jmp .Lt_00B0
.Lt_00C1:
.Lt_00C0:
mov dword ptr [ebp-4], -1
jmp .Lt_00B0
jmp .Lt_00B9
.Lt_00BF:
mov eax, dword ptr [ebp-12]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00C2
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
je .Lt_00C4
mov dword ptr [ebp-52], 0
lea ebx, [ebp-52]
push ebx
lea ebx, [ebp-24]
push ebx
push dword ptr [ebp+12]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call _HCHECKWSTRINGOPS@20
test eax, eax
jne .Lt_00C6
jmp .Lt_00B0
.Lt_00C6:
.Lt_00C5:
cmp dword ptr [ebp-52], 0
je .Lt_00C8
mov dword ptr [ebp-4], -1
jmp .Lt_00B0
.Lt_00C8:
.Lt_00C7:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00C9
mov dword ptr [ebp-56], 24
jmp .Lt_00EF
.Lt_00C9:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_00EF:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_00CB
mov dword ptr [ebp-60], 24
jmp .Lt_00F0
.Lt_00CB:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.Lt_00F0:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00CD
mov dword ptr [ebp-64], 24
jmp .Lt_00F1
.Lt_00CD:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-64], eax
.Lt_00F1:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_00CF
mov dword ptr [ebp-68], 24
jmp .Lt_00F2
.Lt_00CF:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-68], eax
.Lt_00F2:
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-16], eax
.Lt_00C4:
.Lt_00C3:
jmp .Lt_00B9
.Lt_00C2:
mov eax, dword ptr [ebp-12]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00D1
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jne .Lt_00D3
mov dword ptr [ebp-4], -1
jmp .Lt_00B0
.Lt_00D3:
.Lt_00D2:
lea ebx, [ebp-24]
push ebx
push dword ptr [ebp+12]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call _HCHECKZSTRINGOPS@16
test eax, eax
jne .Lt_00D5
jmp .Lt_00B0
.Lt_00D5:
.Lt_00D4:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00D6
mov dword ptr [ebp-52], 24
jmp .Lt_00F3
.Lt_00D6:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_00F3:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_00D8
mov dword ptr [ebp-56], 24
jmp .Lt_00F4
.Lt_00D8:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-56], ebx
.Lt_00F4:
mov ebx, dword ptr [ebp-56]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00DA
mov dword ptr [ebp-60], 24
jmp .Lt_00F5
.Lt_00DA:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-60], eax
.Lt_00F5:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_00DC
mov dword ptr [ebp-64], 24
jmp .Lt_00F6
.Lt_00DC:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-64], eax
.Lt_00F6:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-16], eax
jmp .Lt_00B9
.Lt_00D1:
mov eax, dword ptr [ebp-12]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00DE
push dword ptr [ebp-32]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call _HCHECKENUMOPS@16
.Lt_00DE:
.Lt_00B9:
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _HCHECKCONSTANDPOINTEROPS@16
test eax, eax
jne .Lt_00E0
jmp .Lt_00B0
.Lt_00E0:
.Lt_00DF:
mov eax, dword ptr [ebp-16]
cmp eax, dword ptr [ebp-12]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+8]
cmp esi, dword ptr [ecx+8]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00E2
cmp dword ptr [ebp-32], 2
je .Lt_00E4
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .Lt_00E6
push 0
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-20]
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_00E8
jmp .Lt_00B0
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call _ASTCHECKCONV@12
test eax, eax
jne .Lt_00EA
jmp .Lt_00B0
.Lt_00EA:
.Lt_00E9:
.Lt_00E4:
.Lt_00E3:
.Lt_00E2:
.Lt_00E1:
mov dword ptr [ebp-4], -1
.Lt_00B0:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTCHECKASSIGNTOTYPE@12
_ASTCHECKASSIGNTOTYPE@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0103:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
push 0
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTCHECKASSIGN@8
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
call _ASTDELTREE@4
.Lt_0104:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTCHECKBYREFASSIGN@12
_ASTCHECKBYREFASSIGN@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0105:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _TYPECALCMATCH@20
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0106:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTNEWASSIGN@12
_ASTNEWASSIGN@12:
push ebp
mov ebp, esp
sub esp, 96
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0114:
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
je .Lt_0117
jmp .Lt_0115
.Lt_0117:
.Lt_0116:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0118
mov dword ptr [ebp-56], 24
jmp .Lt_0191
.Lt_0118:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_0191:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_011A
mov dword ptr [ebp-60], 24
jmp .Lt_0192
.Lt_011A:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-60], eax
.Lt_0192:
mov eax, dword ptr [ebp-60]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .Lt_011C
mov dword ptr [ebp-64], 24
jmp .Lt_0193
.Lt_011C:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-64], ebx
.Lt_0193:
mov ebx, dword ptr [ebp-64]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_011E
mov dword ptr [ebp-68], 24
jmp .Lt_0194
.Lt_011E:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-68], ebx
.Lt_0194:
mov ebx, dword ptr [ebp-68]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+16]
and eax, 32
test eax, eax
jne .Lt_0121
mov dword ptr [ebp-80], -1
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-84], eax
jmp .Lt_0123
.Lt_0125:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jne .Lt_0127
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+8]
cmp dword ptr [eax+8], ecx
jne .Lt_0129
mov ecx, dword ptr [ebp+16]
and ecx, 64
test ecx, ecx
jne .Lt_012B
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
call _SYMBCOMPHASCOPYLETOPS@4
mov dword ptr [ebp-80], eax
jmp .Lt_012A
.Lt_012B:
mov dword ptr [ebp-80], 0
.Lt_012A:
.Lt_0129:
.Lt_0128:
.Lt_0127:
.Lt_0126:
jmp .Lt_0122
.Lt_0123:
mov eax, dword ptr [ebp-84]
add eax, 4294967276
test eax, eax
ja .Lt_0122
mov eax, dword ptr [ebp-84]
jmp dword ptr [_.LT_012C+eax*4-80]
_.LT_012C:
.int .Lt_0125
.Lt_0122:
cmp dword ptr [ebp-80], 0
je .Lt_012E
lea eax, [ebp-48]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call _SYMBFINDSELFBOPOVLPROC@16
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .Lt_0130
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .Lt_0132
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _SYMBGETCOMPDEFCTOR@4
test eax, eax
je .Lt_0134
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTBUILDCTORCALL@8
mov dword ptr [ebp-84], eax
jmp .Lt_0133
.Lt_0134:
push 0
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
push 107
call _ASTNEWMEM@20
mov dword ptr [ebp-84], eax
.Lt_0133:
jmp .Lt_0131
.Lt_0132:
mov dword ptr [ebp-84], 0
.Lt_0131:
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-44]
call _ASTBUILDCALL@16
push eax
push dword ptr [ebp-84]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_0130:
.Lt_012F:
cmp dword ptr [ebp-48], 0
je .Lt_0136
mov dword ptr [ebp-4], 0
jmp .Lt_0115
.Lt_0136:
.Lt_0135:
.Lt_012E:
.Lt_012D:
.Lt_0121:
.Lt_0120:
mov eax, dword ptr [ebp+16]
and eax, 32
test eax, eax
jne .Lt_0138
push 0
lea eax, [ebp-48]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .Lt_013A
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call _ASTBUILDCALL@16
mov dword ptr [ebp+12], eax
jmp .Lt_0139
.Lt_013A:
cmp dword ptr [ebp-48], 0
je .Lt_013C
mov dword ptr [ebp-4], 0
jmp .Lt_0115
.Lt_013C:
.Lt_013B:
.Lt_0139:
.Lt_0138:
.Lt_0137:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-28]
and ecx, 480
je .Lt_013D
mov dword ptr [ebp-72], 24
jmp .Lt_0195
.Lt_013D:
mov ecx, dword ptr [ebp-28]
and ecx, 31
mov dword ptr [ebp-72], ecx
.Lt_0195:
mov ecx, dword ptr [ebp-72]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .Lt_013F
mov dword ptr [ebp-76], 24
jmp .Lt_0196
.Lt_013F:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-76], ecx
.Lt_0196:
mov ecx, dword ptr [ebp-76]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-32]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-36]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0142
mov ecx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ecx
je .Lt_0144
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call _HCHECKSTRINGOPS@16
test eax, eax
jne .Lt_0146
jmp .Lt_0115
.Lt_0146:
.Lt_0145:
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_0144:
.Lt_0143:
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .Lt_0148
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_0148:
.Lt_0147:
jmp .Lt_0141
.Lt_0142:
mov eax, dword ptr [ebp-16]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-20]
cmp ecx, 20
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0149
push 0
push dword ptr [ebp-36]
lea ecx, [ebp+12]
push ecx
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call _HCHECKUDTOPS@20
test eax, eax
jne .Lt_014B
jmp .Lt_0115
.Lt_014B:
.Lt_014A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 36
jne .Lt_014D
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _TYPEHASCTOR@8
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
mov ebx, eax
call _TYPEHASDTOR@8
or ebx, eax
test ebx, ebx
jne .Lt_014F
mov ebx, dword ptr [ebp+16]
and ebx, 64
push ebx
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTREMOVENOCONVCAST@4
push eax
call __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll@16
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_014F:
.Lt_014E:
.Lt_014D:
.Lt_014C:
push dword ptr [ebp+12]
call _ASTSKIPNOCONVCAST@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
je .Lt_0151
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HSHALLOWCOPY@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_0151:
.Lt_0150:
mov eax, dword ptr [ebp-12]
push dword ptr [eax+12]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .Lt_0153
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTREMOVENOCONVCAST@4
push eax
call _ASTBUILDCALLRESULTVAR@4
push eax
push dword ptr [ebp+8]
call _HSHALLOWCOPY@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_0153:
.Lt_0152:
push dword ptr [ebp+8]
call _ASTREMOVENOCONVCAST@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+12]
call _ASTREMOVENOCONVCAST@4
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0154
mov dword ptr [ebp-80], 24
jmp .Lt_0197
.Lt_0154:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-80], eax
.Lt_0197:
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0156
mov dword ptr [ebp-84], 24
jmp .Lt_0198
.Lt_0156:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-84], eax
.Lt_0198:
mov eax, dword ptr [ebp-84]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _ASTSETTYPE@12
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
push dword ptr [ebp-40]
push dword ptr [ebp-28]
push dword ptr [ebp+12]
call _ASTSETTYPE@12
jmp .Lt_0141
.Lt_0149:
mov ebx, dword ptr [ebp-16]
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-20]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0158
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jne .Lt_015A
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .Lt_015C
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLWSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_015C:
.Lt_015B:
jmp .Lt_0159
.Lt_015A:
mov dword ptr [ebp-80], 0
lea eax, [ebp-80]
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HCHECKWSTRINGOPS@20
test eax, eax
jne .Lt_015E
jmp .Lt_0115
.Lt_015E:
.Lt_015D:
cmp dword ptr [ebp-80], 0
je .Lt_0160
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLWSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_0160:
.Lt_015F:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0161
mov dword ptr [ebp-84], 24
jmp .Lt_0199
.Lt_0161:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-84], eax
.Lt_0199:
mov eax, dword ptr [ebp-84]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .Lt_0163
mov dword ptr [ebp-88], 24
jmp .Lt_019A
.Lt_0163:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-88], ebx
.Lt_019A:
mov ebx, dword ptr [ebp-88]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0165
mov dword ptr [ebp-92], 24
jmp .Lt_019B
.Lt_0165:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-92], eax
.Lt_019B:
mov eax, dword ptr [ebp-92]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_0167
mov dword ptr [ebp-96], 24
jmp .Lt_019C
.Lt_0167:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-96], eax
.Lt_019C:
mov eax, dword ptr [ebp-96]
mov dword ptr [ebp-20], eax
.Lt_0159:
jmp .Lt_0141
.Lt_0158:
mov eax, dword ptr [ebp-16]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0169
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jne .Lt_016B
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_016B:
.Lt_016A:
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HCHECKZSTRINGOPS@16
test eax, eax
jne .Lt_016D
jmp .Lt_0115
.Lt_016D:
.Lt_016C:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_016E
mov dword ptr [ebp-80], 24
jmp .Lt_019D
.Lt_016E:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-80], eax
.Lt_019D:
mov eax, dword ptr [ebp-80]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .Lt_0170
mov dword ptr [ebp-84], 24
jmp .Lt_019E
.Lt_0170:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-84], ebx
.Lt_019E:
mov ebx, dword ptr [ebp-84]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0172
mov dword ptr [ebp-88], 24
jmp .Lt_019F
.Lt_0172:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-88], eax
.Lt_019F:
mov eax, dword ptr [ebp-88]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_0174
mov dword ptr [ebp-92], 24
jmp .Lt_01A0
.Lt_0174:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-92], eax
.Lt_01A0:
mov eax, dword ptr [ebp-92]
mov dword ptr [ebp-20], eax
jmp .Lt_0141
.Lt_0169:
mov eax, dword ptr [ebp-16]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0176
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call _HCHECKENUMOPS@16
.Lt_0176:
.Lt_0141:
mov ebx, dword ptr [ebp+16]
and ebx, 16
test ebx, ebx
jne .Lt_0178
push dword ptr [ebp-28]
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HCHECKCONSTANDPOINTEROPS@16
test eax, eax
jne .Lt_017A
jmp .Lt_0115
.Lt_017A:
.Lt_0179:
.Lt_0178:
.Lt_0177:
mov eax, dword ptr [ebp-20]
cmp eax, dword ptr [ebp-16]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+8]
cmp esi, dword ptr [ecx+8]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_017C
cmp dword ptr [ebp-36], 2
je .Lt_017E
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .Lt_0180
push 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .Lt_0181
mov dword ptr [ebp-84], 8
jmp .Lt_01A1
.Lt_0181:
mov dword ptr [ebp-84], 0
.Lt_01A1:
push dword ptr [ebp-84]
push dword ptr [ebp+12]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_0184
jmp .Lt_0115
.Lt_0184:
.Lt_0183:
.Lt_0180:
.Lt_017F:
mov dword ptr [ebp-80], -1
cmp dword ptr [_ENV+104], 0
jne .Lt_0186
mov eax, dword ptr [ebp-32]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-36]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0188
cmp dword ptr [ebp-16], 14
je .Lt_018A
mov ebx, dword ptr [_IR+276]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-80], ebx
.Lt_018A:
.Lt_0189:
.Lt_0188:
.Lt_0187:
.Lt_0186:
.Lt_0185:
cmp dword ptr [ebp-80], 0
je .Lt_018C
push 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .Lt_018D
mov dword ptr [ebp-84], 8
jmp .Lt_01A2
.Lt_018D:
mov dword ptr [ebp-84], 0
.Lt_01A2:
push dword ptr [ebp-84]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-24]
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_0190
jmp .Lt_0115
.Lt_0190:
.Lt_018F:
.Lt_018C:
.Lt_018B:
.Lt_017E:
.Lt_017D:
.Lt_017C:
.Lt_017B:
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push 2
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0115:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTLOADASSIGN@4
_ASTLOADASSIGN@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01B9
mov dword ptr [ebp-4], 0
jmp .Lt_01B7
.Lt_01B9:
.Lt_01B8:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 5
jne .Lt_01BB
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
push dword ptr [ebp-12]
call _ASTUPDATECONVFD2FS@12
.Lt_01BB:
.Lt_01BA:
push dword ptr [ebp-12]
call _ASTLOAD@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-20], eax
cmp dword ptr [_AST+136], 0
je .Lt_01BD
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call dword ptr [_IR+104]
.Lt_01BD:
.Lt_01BC:
push dword ptr [ebp-8]
call _ASTDELNODE@4
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_01B7:
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
_HCHECKSTRINGOPS@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_005F:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 2
jne .Lt_0062
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
jmp .Lt_0061
.Lt_0062:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.Lt_0061:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 4
je .Lt_0066
.Lt_0067:
cmp dword ptr [ebp-12], 7
jne .Lt_0065
.Lt_0066:
jmp .Lt_0063
.Lt_0065:
jmp .Lt_0060
.Lt_0068:
.Lt_0063:
mov dword ptr [ebp-4], -1
.Lt_0060:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCHECKUDTOPS@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .Lt_006C
jmp .Lt_006A
jmp .Lt_006B
.Lt_006C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 9
jne .Lt_006E
jmp .Lt_006A
.Lt_006E:
.Lt_006D:
.Lt_006B:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .Lt_0070
jmp .Lt_006A
.Lt_0070:
.Lt_006F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+8]
cmp dword ptr [ebx+8], eax
je .Lt_0072
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jne .Lt_0074
jmp .Lt_006A
.Lt_0074:
.Lt_0073:
cmp dword ptr [ebp+24], 0
jne .Lt_0076
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _ASTNEWCONV@20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
.Lt_0076:
.Lt_0075:
.Lt_0072:
.Lt_0071:
mov dword ptr [ebp-4], -1
.Lt_006A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCHECKWSTRINGOPS@20:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0077:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 480
je .Lt_0079
mov dword ptr [ebp-16], 24
jmp .Lt_01C0
.Lt_0079:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_01C0:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
and ebx, 480
je .Lt_007B
mov dword ptr [ebp-20], 24
jmp .Lt_01C1
.Lt_007B:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_01C1:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 7
jne .Lt_007E
mov eax, dword ptr [ebp-12]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
jmp .Lt_007D
.Lt_007E:
mov eax, dword ptr [ebp-8]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
.Lt_007D:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 0
je .Lt_0080
mov dword ptr [ebp-4], -1
jmp .Lt_0078
.Lt_0080:
.Lt_007F:
cmp dword ptr [ebp-8], 7
jne .Lt_0082
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .Lt_0084
jmp .Lt_0078
.Lt_0084:
.Lt_0083:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, -512
mov eax, dword ptr [_ENV+248]
and eax, 511
or ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
jmp .Lt_0081
.Lt_0082:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 20
je .Lt_0086
jmp .Lt_0078
.Lt_0086:
.Lt_0085:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, -512
mov ebx, dword ptr [_ENV+248]
and ebx, 511
or eax, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.Lt_0081:
mov dword ptr [ebp-4], -1
.Lt_0078:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCHECKZSTRINGOPS@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0087:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 480
je .Lt_0089
mov dword ptr [ebp-8], 24
jmp .Lt_01C4
.Lt_0089:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_01C4:
cmp dword ptr [ebp-8], 4
jne .Lt_008C
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .Lt_008E
jmp .Lt_0088
.Lt_008E:
.Lt_008D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, -512
or ebx, 3
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
jmp .Lt_008B
.Lt_008C:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 20
je .Lt_0090
jmp .Lt_0088
.Lt_0090:
.Lt_008F:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, -512
or eax, 3
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.Lt_008B:
mov dword ptr [ebp-4], -1
.Lt_0088:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCHECKENUMOPS@16:
push ebp
mov ebp, esp
push ebx
.Lt_0091:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ebx, ecx
je .Lt_0094
mov ecx, dword ptr [ebp+12]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+20]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_0096
push 0
push 1
push 0
push 5
call _ERRREPORTWARN@16
.Lt_0096:
.Lt_0095:
.Lt_0094:
.Lt_0093:
.Lt_0092:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCHECKCONSTANDPOINTEROPS@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0097:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _SYMBCHECKCONSTASSIGNTOPLEVEL@24
test eax, eax
jne .Lt_009B
push 0
push -1
push 181
call _ERRREPORT@12
jmp .Lt_0098
.Lt_009B:
.Lt_009A:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .Lt_009D
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_009E
mov dword ptr [ebp-12], 24
jmp .Lt_01C7
.Lt_009E:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_01C7:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_00A1
jmp .Lt_0098
.Lt_00A1:
.Lt_00A0:
push dword ptr [ebp+16]
push 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp+12]
call _ASTPTRCHECK@16
test eax, eax
jne .Lt_00A3
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+20]
and ebx, 31
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00A5
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jle .Lt_00A7
push 0
push -1
push 181
call _ERRREPORT@12
jmp .Lt_0098
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTCHECKCONV@12
test eax, eax
je .Lt_00A9
push 0
push 1
push 0
push 4
call _ERRREPORTWARN@16
.Lt_00A9:
.Lt_00A8:
.Lt_00A3:
.Lt_00A2:
jmp .Lt_009C
.Lt_009D:
mov eax, dword ptr [ebp+20]
and eax, 480
test eax, eax
je .Lt_00AA
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_00AB
mov dword ptr [ebp-12], 24
jmp .Lt_01C8
.Lt_00AB:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_01C8:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_00AE
jmp .Lt_0098
.Lt_00AE:
.Lt_00AD:
push 0
push 1
push 0
push 5
call _ERRREPORTWARN@16
.Lt_00AA:
.Lt_009C:
mov dword ptr [ebp-4], -1
.Lt_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HSHALLOWCOPY@12:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0108:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov ecx, dword ptr [ebx+40]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+12]
and ecx, 4194304
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-28], ecx
push dword ptr [ebp+8]
call _ASTREMOVENOCONVCAST@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+12]
call _ASTREMOVENOCONVCAST@4
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-28], 0
je .Lt_010B
mov ecx, dword ptr [_ENV+272]
mov eax, ecx
sar eax, 31
sub dword ptr [ebp-24], ecx
sbb dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_010D
cmp dword ptr [ebp-24], 0
jne .Lt_010D
.Lt_01CC:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+8]
call _ASTHASSIDEFX@4
test eax, eax
je .Lt_010F
push 0
lea eax, [ebp+8]
push eax
call _ASTREMSIDEFX@4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
.Lt_010F:
.Lt_010E:
push dword ptr [ebp+12]
call _ASTHASSIDEFX@4
test eax, eax
je .Lt_0111
push 0
lea eax, [ebp+12]
push eax
call _ASTREMSIDEFX@4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
.Lt_0111:
.Lt_0110:
push dword ptr [ebp+8]
call _ASTDELTREE@4
push dword ptr [ebp+12]
call _ASTDELTREE@4
cmp dword ptr [ebp-8], 0
jne .Lt_0113
call _ASTNEWNOP@0
mov dword ptr [ebp-8], eax
.Lt_0113:
.Lt_0112:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0109
.Lt_010D:
.Lt_010C:
push 0
push 0
push 2
mov ecx, dword ptr [_ENV+272]
mov eax, ecx
sar eax, 31
push eax
push ecx
push dword ptr [ebp+8]
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp+8], eax
push 0
push 0
push 2
mov ecx, dword ptr [_ENV+272]
mov eax, ecx
sar eax, 31
push eax
push ecx
push dword ptr [ebp+12]
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp+12], eax
.Lt_010B:
.Lt_010A:
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 105
call _ASTNEWMEM@20
mov dword ptr [ebp-4], eax
.Lt_0109:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
