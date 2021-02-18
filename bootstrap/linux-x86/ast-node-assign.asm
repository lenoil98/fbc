	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTCHECKASSIGN
ASTCHECKASSIGN:
.type ASTCHECKASSIGN, @function
push ebp
mov ebp, esp
sub esp, 80
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00AE:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00B0
mov dword ptr [ebp-36], 24
jmp .Lt_00EA
.Lt_00B0:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_00EA:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_00B2
mov dword ptr [ebp-40], 24
jmp .Lt_00EB
.Lt_00B2:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_00EB:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_00B4
mov dword ptr [ebp-44], 24
jmp .Lt_00EC
.Lt_00B4:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_00EC:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_00B6
mov dword ptr [ebp-48], 24
jmp .Lt_00ED
.Lt_00B6:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_00ED:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
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
je .Lt_00B9
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
je .Lt_00BB
push dword ptr [ebp-32]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call HCHECKSTRINGOPS
add esp, 16
test eax, eax
jne .Lt_00BD
jmp .Lt_00AF
.Lt_00BD:
.Lt_00BC:
.Lt_00BB:
.Lt_00BA:
mov dword ptr [ebp-4], -1
jmp .Lt_00AF
jmp .Lt_00B8
.Lt_00B9:
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
je .Lt_00BE
sub esp, 12
push -1
push dword ptr [ebp-32]
lea ebx, [ebp+12]
push ebx
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call HCHECKUDTOPS
add esp, 32
test eax, eax
jne .Lt_00C0
jmp .Lt_00AF
.Lt_00C0:
.Lt_00BF:
mov dword ptr [ebp-4], -1
jmp .Lt_00AF
jmp .Lt_00B8
.Lt_00BE:
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
je .Lt_00C1
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
je .Lt_00C3
mov dword ptr [ebp-52], 0
sub esp, 12
lea ebx, [ebp-52]
push ebx
lea ebx, [ebp-24]
push ebx
push dword ptr [ebp+12]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call HCHECKWSTRINGOPS
add esp, 32
test eax, eax
jne .Lt_00C5
jmp .Lt_00AF
.Lt_00C5:
.Lt_00C4:
cmp dword ptr [ebp-52], 0
je .Lt_00C7
mov dword ptr [ebp-4], -1
jmp .Lt_00AF
.Lt_00C7:
.Lt_00C6:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00C8
mov dword ptr [ebp-56], 24
jmp .Lt_00EE
.Lt_00C8:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_00EE:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_00CA
mov dword ptr [ebp-60], 24
jmp .Lt_00EF
.Lt_00CA:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.Lt_00EF:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00CC
mov dword ptr [ebp-64], 24
jmp .Lt_00F0
.Lt_00CC:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-64], eax
.Lt_00F0:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_00CE
mov dword ptr [ebp-68], 24
jmp .Lt_00F1
.Lt_00CE:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-68], eax
.Lt_00F1:
mov eax, dword ptr [ebp-68]
mov dword ptr [ebp-16], eax
.Lt_00C3:
.Lt_00C2:
jmp .Lt_00B8
.Lt_00C1:
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
je .Lt_00D0
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jne .Lt_00D2
mov dword ptr [ebp-4], -1
jmp .Lt_00AF
.Lt_00D2:
.Lt_00D1:
lea ebx, [ebp-24]
push ebx
push dword ptr [ebp+12]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call HCHECKZSTRINGOPS
add esp, 16
test eax, eax
jne .Lt_00D4
jmp .Lt_00AF
.Lt_00D4:
.Lt_00D3:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00D5
mov dword ptr [ebp-52], 24
jmp .Lt_00F2
.Lt_00D5:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_00F2:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_00D7
mov dword ptr [ebp-56], 24
jmp .Lt_00F3
.Lt_00D7:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-56], ebx
.Lt_00F3:
mov ebx, dword ptr [ebp-56]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00D9
mov dword ptr [ebp-60], 24
jmp .Lt_00F4
.Lt_00D9:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-60], eax
.Lt_00F4:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_00DB
mov dword ptr [ebp-64], 24
jmp .Lt_00F5
.Lt_00DB:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-64], eax
.Lt_00F5:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp-16], eax
jmp .Lt_00B8
.Lt_00D0:
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
je .Lt_00DD
push dword ptr [ebp-32]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call HCHECKENUMOPS
add esp, 16
.Lt_00DD:
.Lt_00B8:
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call HCHECKCONSTANDPOINTEROPS
add esp, 16
test eax, eax
jne .Lt_00DF
jmp .Lt_00AF
.Lt_00DF:
.Lt_00DE:
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
je .Lt_00E1
cmp dword ptr [ebp-32], 2
je .Lt_00E3
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .Lt_00E5
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-20]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_00E7
jmp .Lt_00AF
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
.Lt_00E4:
sub esp, 4
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call ASTCHECKCONV
add esp, 16
test eax, eax
jne .Lt_00E9
jmp .Lt_00AF
.Lt_00E9:
.Lt_00E8:
.Lt_00E3:
.Lt_00E2:
.Lt_00E1:
.Lt_00E0:
mov dword ptr [ebp-4], -1
.Lt_00AF:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCHECKASSIGN, .-ASTCHECKASSIGN
.balign 16

.globl ASTCHECKASSIGNTOTYPE
ASTCHECKASSIGNTOTYPE:
.type ASTCHECKASSIGNTOTYPE, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0102:
sub esp, 12
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
push 0
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTCHECKASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
.Lt_0103:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTCHECKASSIGNTOTYPE, .-ASTCHECKASSIGNTOTYPE
.balign 16

.globl ASTCHECKBYREFASSIGN
ASTCHECKBYREFASSIGN:
.type ASTCHECKBYREFASSIGN, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0104:
sub esp, 12
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call TYPECALCMATCH
add esp, 32
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0105:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTCHECKBYREFASSIGN, .-ASTCHECKBYREFASSIGN
.balign 16

.globl ASTNEWASSIGN
ASTNEWASSIGN:
.type ASTNEWASSIGN, @function
push ebp
mov ebp, esp
sub esp, 96
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0113:
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
je .Lt_0116
jmp .Lt_0114
.Lt_0116:
.Lt_0115:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0117
mov dword ptr [ebp-56], 24
jmp .Lt_0190
.Lt_0117:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_0190:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0119
mov dword ptr [ebp-60], 24
jmp .Lt_0191
.Lt_0119:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-60], eax
.Lt_0191:
mov eax, dword ptr [ebp-60]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .Lt_011B
mov dword ptr [ebp-64], 24
jmp .Lt_0192
.Lt_011B:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-64], ebx
.Lt_0192:
mov ebx, dword ptr [ebp-64]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_011D
mov dword ptr [ebp-68], 24
jmp .Lt_0193
.Lt_011D:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-68], ebx
.Lt_0193:
mov ebx, dword ptr [ebp-68]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+16]
and eax, 32
test eax, eax
jne .Lt_0120
mov dword ptr [ebp-80], -1
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-84], eax
jmp .Lt_0122
.Lt_0124:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jne .Lt_0126
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+8]
cmp dword ptr [eax+8], ecx
jne .Lt_0128
mov ecx, dword ptr [ebp+16]
and ecx, 64
test ecx, ecx
jne .Lt_012A
sub esp, 12
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
call SYMBCOMPHASCOPYLETOPS
add esp, 16
mov dword ptr [ebp-80], eax
jmp .Lt_0129
.Lt_012A:
mov dword ptr [ebp-80], 0
.Lt_0129:
.Lt_0128:
.Lt_0127:
.Lt_0126:
.Lt_0125:
jmp .Lt_0121
.Lt_0122:
mov eax, dword ptr [ebp-84]
add eax, 4294967276
test eax, eax
ja .Lt_0121
mov eax, dword ptr [ebp-84]
jmp dword ptr [.LT_012B+eax*4-80]
.LT_012B:
.int .Lt_0124
.Lt_0121:
cmp dword ptr [ebp-80], 0
je .Lt_012D
lea eax, [ebp-48]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call SYMBFINDSELFBOPOVLPROC
add esp, 16
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .Lt_012F
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .Lt_0131
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call SYMBGETCOMPDEFCTOR
add esp, 16
test eax, eax
je .Lt_0133
sub esp, 8
sub esp, 4
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTBUILDCTORCALL
add esp, 16
mov dword ptr [ebp-84], eax
jmp .Lt_0132
.Lt_0133:
sub esp, 12
push 0
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 8
push eax
push 107
call ASTNEWMEM
add esp, 32
mov dword ptr [ebp-84], eax
.Lt_0132:
jmp .Lt_0130
.Lt_0131:
mov dword ptr [ebp-84], 0
.Lt_0130:
sub esp, 4
push 0
sub esp, 8
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-44]
call ASTBUILDCALL
add esp, 24
push eax
push dword ptr [ebp-84]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_012F:
.Lt_012E:
cmp dword ptr [ebp-48], 0
je .Lt_0135
mov dword ptr [ebp-4], 0
jmp .Lt_0114
.Lt_0135:
.Lt_0134:
.Lt_012D:
.Lt_012C:
.Lt_0120:
.Lt_011F:
mov eax, dword ptr [ebp+16]
and eax, 32
test eax, eax
jne .Lt_0137
sub esp, 12
push 0
lea eax, [ebp-48]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
call SYMBFINDCASTOVLPROC
add esp, 32
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .Lt_0139
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+12], eax
jmp .Lt_0138
.Lt_0139:
cmp dword ptr [ebp-48], 0
je .Lt_013B
mov dword ptr [ebp-4], 0
jmp .Lt_0114
.Lt_013B:
.Lt_013A:
.Lt_0138:
.Lt_0137:
.Lt_0136:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-28]
and ecx, 480
je .Lt_013C
mov dword ptr [ebp-72], 24
jmp .Lt_0194
.Lt_013C:
mov ecx, dword ptr [ebp-28]
and ecx, 31
mov dword ptr [ebp-72], ecx
.Lt_0194:
mov ecx, dword ptr [ebp-72]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .Lt_013E
mov dword ptr [ebp-76], 24
jmp .Lt_0195
.Lt_013E:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-76], ecx
.Lt_0195:
mov ecx, dword ptr [ebp-76]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx]
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
je .Lt_0141
mov ecx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ecx
je .Lt_0143
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call HCHECKSTRINGOPS
add esp, 16
test eax, eax
jne .Lt_0145
jmp .Lt_0114
.Lt_0145:
.Lt_0144:
sub esp, 4
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0143:
.Lt_0142:
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .Lt_0147
sub esp, 4
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0147:
.Lt_0146:
jmp .Lt_0140
.Lt_0141:
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
je .Lt_0148
sub esp, 12
push 0
push dword ptr [ebp-36]
lea ecx, [ebp+12]
push ecx
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call HCHECKUDTOPS
add esp, 32
test eax, eax
jne .Lt_014A
jmp .Lt_0114
.Lt_014A:
.Lt_0149:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 36
jne .Lt_014C
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call TYPEHASCTOR
add esp, 16
sub esp, 8
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
mov ebx, eax
call TYPEHASDTOR
add esp, 16
or ebx, eax
test ebx, ebx
jne .Lt_014E
mov ebx, dword ptr [ebp+16]
and ebx, 64
push ebx
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTREMOVENOCONVCAST
add esp, 4
push eax
call _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_014E:
.Lt_014D:
.Lt_014C:
.Lt_014B:
sub esp, 12
push dword ptr [ebp+12]
call ASTSKIPNOCONVCAST
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
je .Lt_0150
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HSHALLOWCOPY
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0150:
.Lt_014F:
sub esp, 12
mov eax, dword ptr [ebp-12]
push dword ptr [eax+12]
call SYMBPROCRETURNSONSTACK
add esp, 16
test eax, eax
je .Lt_0152
sub esp, 4
push dword ptr [ebp+16]
sub esp, 4
push dword ptr [ebp+12]
call ASTREMOVENOCONVCAST
add esp, 4
push eax
call ASTBUILDCALLRESULTVAR
add esp, 8
push eax
push dword ptr [ebp+8]
call HSHALLOWCOPY
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0152:
.Lt_0151:
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVENOCONVCAST
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+12]
call ASTREMOVENOCONVCAST
add esp, 16
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0153
mov dword ptr [ebp-80], 24
jmp .Lt_0196
.Lt_0153:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-80], eax
.Lt_0196:
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0155
mov dword ptr [ebp-84], 24
jmp .Lt_0197
.Lt_0155:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-84], eax
.Lt_0197:
mov eax, dword ptr [ebp-84]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
sub esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 16
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
sub esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp-28]
push dword ptr [ebp+12]
call ASTSETTYPE
add esp, 16
jmp .Lt_0140
.Lt_0148:
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
je .Lt_0157
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jne .Lt_0159
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
je .Lt_015B
sub esp, 4
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLWSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_015B:
.Lt_015A:
jmp .Lt_0158
.Lt_0159:
mov dword ptr [ebp-80], 0
sub esp, 12
lea eax, [ebp-80]
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call HCHECKWSTRINGOPS
add esp, 32
test eax, eax
jne .Lt_015D
jmp .Lt_0114
.Lt_015D:
.Lt_015C:
cmp dword ptr [ebp-80], 0
je .Lt_015F
sub esp, 4
mov eax, dword ptr [ebp+16]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLWSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_015F:
.Lt_015E:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0160
mov dword ptr [ebp-84], 24
jmp .Lt_0198
.Lt_0160:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-84], eax
.Lt_0198:
mov eax, dword ptr [ebp-84]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .Lt_0162
mov dword ptr [ebp-88], 24
jmp .Lt_0199
.Lt_0162:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-88], ebx
.Lt_0199:
mov ebx, dword ptr [ebp-88]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0164
mov dword ptr [ebp-92], 24
jmp .Lt_019A
.Lt_0164:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-92], eax
.Lt_019A:
mov eax, dword ptr [ebp-92]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_0166
mov dword ptr [ebp-96], 24
jmp .Lt_019B
.Lt_0166:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-96], eax
.Lt_019B:
mov eax, dword ptr [ebp-96]
mov dword ptr [ebp-20], eax
.Lt_0158:
jmp .Lt_0140
.Lt_0157:
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
je .Lt_0168
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jne .Lt_016A
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_016A:
.Lt_0169:
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call HCHECKZSTRINGOPS
add esp, 16
test eax, eax
jne .Lt_016C
jmp .Lt_0114
.Lt_016C:
.Lt_016B:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_016D
mov dword ptr [ebp-80], 24
jmp .Lt_019C
.Lt_016D:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-80], eax
.Lt_019C:
mov eax, dword ptr [ebp-80]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .Lt_016F
mov dword ptr [ebp-84], 24
jmp .Lt_019D
.Lt_016F:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-84], ebx
.Lt_019D:
mov ebx, dword ptr [ebp-84]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0171
mov dword ptr [ebp-88], 24
jmp .Lt_019E
.Lt_0171:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-88], eax
.Lt_019E:
mov eax, dword ptr [ebp-88]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_0173
mov dword ptr [ebp-92], 24
jmp .Lt_019F
.Lt_0173:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-92], eax
.Lt_019F:
mov eax, dword ptr [ebp-92]
mov dword ptr [ebp-20], eax
jmp .Lt_0140
.Lt_0168:
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
je .Lt_0175
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push dword ptr [ebp-32]
push dword ptr [ebp+8]
call HCHECKENUMOPS
add esp, 16
.Lt_0175:
.Lt_0140:
mov ebx, dword ptr [ebp+16]
and ebx, 16
test ebx, ebx
jne .Lt_0177
push dword ptr [ebp-28]
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HCHECKCONSTANDPOINTEROPS
add esp, 16
test eax, eax
jne .Lt_0179
jmp .Lt_0114
.Lt_0179:
.Lt_0178:
.Lt_0177:
.Lt_0176:
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
je .Lt_017B
cmp dword ptr [ebp-36], 2
je .Lt_017D
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .Lt_017F
sub esp, 12
push 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .Lt_0180
mov dword ptr [ebp-84], 8
jmp .Lt_01A0
.Lt_0180:
mov dword ptr [ebp-84], 0
.Lt_01A0:
push dword ptr [ebp-84]
push dword ptr [ebp+12]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_0183
jmp .Lt_0114
.Lt_0183:
.Lt_0182:
.Lt_017F:
.Lt_017E:
mov dword ptr [ebp-80], -1
cmp dword ptr [ENV+104], 0
jne .Lt_0185
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
je .Lt_0187
cmp dword ptr [ebp-16], 14
je .Lt_0189
mov ebx, dword ptr [IR+276]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-80], ebx
.Lt_0189:
.Lt_0188:
.Lt_0187:
.Lt_0186:
.Lt_0185:
.Lt_0184:
cmp dword ptr [ebp-80], 0
je .Lt_018B
sub esp, 12
push 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .Lt_018C
mov dword ptr [ebp-84], 8
jmp .Lt_01A1
.Lt_018C:
mov dword ptr [ebp-84], 0
.Lt_01A1:
push dword ptr [ebp-84]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-24]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_018F
jmp .Lt_0114
.Lt_018F:
.Lt_018E:
.Lt_018B:
.Lt_018A:
.Lt_017D:
.Lt_017C:
.Lt_017B:
.Lt_017A:
sub esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push 2
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0114:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWASSIGN, .-ASTNEWASSIGN
.balign 16

.globl ASTLOADASSIGN
ASTLOADASSIGN:
.type ASTLOADASSIGN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
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
je .Lt_01B8
mov dword ptr [ebp-4], 0
jmp .Lt_01B6
.Lt_01B8:
.Lt_01B7:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 5
jne .Lt_01BA
sub esp, 4
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
push dword ptr [ebp-12]
call ASTUPDATECONVFD2FS
add esp, 16
.Lt_01BA:
.Lt_01B9:
sub esp, 12
push dword ptr [ebp-12]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [AST+136], 0
je .Lt_01BC
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call dword ptr [IR+104]
add esp, 16
.Lt_01BC:
.Lt_01BB:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_01B6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADASSIGN, .-ASTLOADASSIGN
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0012:
sub esp, 12
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
add esp, 32
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
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.balign 16
HCHECKSTRINGOPS:
.type HCHECKSTRINGOPS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_005E:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 2
jne .Lt_0061
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
jmp .Lt_0060
.Lt_0061:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.Lt_0060:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 4
je .Lt_0065
.Lt_0066:
cmp dword ptr [ebp-12], 7
jne .Lt_0064
.Lt_0065:
jmp .Lt_0062
.Lt_0064:
jmp .Lt_005F
.Lt_0067:
.Lt_0062:
mov dword ptr [ebp-4], -1
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKSTRINGOPS, .-HCHECKSTRINGOPS
.balign 16
HCHECKUDTOPS:
.type HCHECKUDTOPS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .Lt_006B
jmp .Lt_0069
jmp .Lt_006A
.Lt_006B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 9
jne .Lt_006D
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
.Lt_006A:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .Lt_006F
jmp .Lt_0069
.Lt_006F:
.Lt_006E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+8]
cmp dword ptr [ebx+8], eax
je .Lt_0071
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
call SYMBGETUDTBASELEVEL
add esp, 16
test eax, eax
jne .Lt_0073
jmp .Lt_0069
.Lt_0073:
.Lt_0072:
cmp dword ptr [ebp+24], 0
jne .Lt_0075
sub esp, 12
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
call ASTNEWCONV
add esp, 32
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
.Lt_0075:
.Lt_0074:
.Lt_0071:
.Lt_0070:
mov dword ptr [ebp-4], -1
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKUDTOPS, .-HCHECKUDTOPS
.balign 16
HCHECKWSTRINGOPS:
.type HCHECKWSTRINGOPS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0076:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 480
je .Lt_0078
mov dword ptr [ebp-16], 24
jmp .Lt_01BF
.Lt_0078:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_01BF:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
and ebx, 480
je .Lt_007A
mov dword ptr [ebp-20], 24
jmp .Lt_01C0
.Lt_007A:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_01C0:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 7
jne .Lt_007D
mov eax, dword ptr [ebp-12]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
jmp .Lt_007C
.Lt_007D:
mov eax, dword ptr [ebp-8]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
.Lt_007C:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 0
je .Lt_007F
mov dword ptr [ebp-4], -1
jmp .Lt_0077
.Lt_007F:
.Lt_007E:
cmp dword ptr [ebp-8], 7
jne .Lt_0081
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .Lt_0083
jmp .Lt_0077
.Lt_0083:
.Lt_0082:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, -512
mov eax, dword ptr [ENV+248]
and eax, 511
or ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
jmp .Lt_0080
.Lt_0081:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 20
je .Lt_0085
jmp .Lt_0077
.Lt_0085:
.Lt_0084:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, -512
mov ebx, dword ptr [ENV+248]
and ebx, 511
or eax, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.Lt_0080:
mov dword ptr [ebp-4], -1
.Lt_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKWSTRINGOPS, .-HCHECKWSTRINGOPS
.balign 16
HCHECKZSTRINGOPS:
.type HCHECKZSTRINGOPS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0086:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 480
je .Lt_0088
mov dword ptr [ebp-8], 24
jmp .Lt_01C3
.Lt_0088:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_01C3:
cmp dword ptr [ebp-8], 4
jne .Lt_008B
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .Lt_008D
jmp .Lt_0087
.Lt_008D:
.Lt_008C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, -512
or ebx, 3
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
jmp .Lt_008A
.Lt_008B:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 20
je .Lt_008F
jmp .Lt_0087
.Lt_008F:
.Lt_008E:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
and eax, -512
or eax, 3
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.Lt_008A:
mov dword ptr [ebp-4], -1
.Lt_0087:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKZSTRINGOPS, .-HCHECKZSTRINGOPS
.balign 16
HCHECKENUMOPS:
.type HCHECKENUMOPS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0090:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ebx, ecx
je .Lt_0093
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
je .Lt_0095
push 0
push 1
push 0
push 5
call ERRREPORTWARN
add esp, 16
.Lt_0095:
.Lt_0094:
.Lt_0093:
.Lt_0092:
.Lt_0091:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKENUMOPS, .-HCHECKENUMOPS
.balign 16
HCHECKCONSTANDPOINTEROPS:
.type HCHECKCONSTANDPOINTEROPS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0096:
mov dword ptr [ebp-4], 0
sub esp, 8
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
call SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 32
test eax, eax
jne .Lt_009A
sub esp, 4
push 0
push -1
push 181
call ERRREPORT
add esp, 16
jmp .Lt_0097
.Lt_009A:
.Lt_0099:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .Lt_009C
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_009D
mov dword ptr [ebp-12], 24
jmp .Lt_01C6
.Lt_009D:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_01C6:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_00A0
jmp .Lt_0097
.Lt_00A0:
.Lt_009F:
push dword ptr [ebp+16]
push 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp+12]
call ASTPTRCHECK
add esp, 16
test eax, eax
jne .Lt_00A2
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
je .Lt_00A4
sub esp, 8
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
call SYMBGETUDTBASELEVEL
add esp, 16
test eax, eax
jle .Lt_00A6
sub esp, 4
push 0
push -1
push 181
call ERRREPORT
add esp, 16
jmp .Lt_0097
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
.Lt_00A3:
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTCHECKCONV
add esp, 16
test eax, eax
je .Lt_00A8
push 0
push 1
push 0
push 4
call ERRREPORTWARN
add esp, 16
.Lt_00A8:
.Lt_00A7:
.Lt_00A2:
.Lt_00A1:
jmp .Lt_009B
.Lt_009C:
mov eax, dword ptr [ebp+20]
and eax, 480
test eax, eax
je .Lt_00A9
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_00AA
mov dword ptr [ebp-12], 24
jmp .Lt_01C7
.Lt_00AA:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_01C7:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_00AD
jmp .Lt_0097
.Lt_00AD:
.Lt_00AC:
push 0
push 1
push 0
push 5
call ERRREPORTWARN
add esp, 16
.Lt_00A9:
.Lt_009B:
mov dword ptr [ebp-4], -1
.Lt_0097:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKCONSTANDPOINTEROPS, .-HCHECKCONSTANDPOINTEROPS
.balign 16
HSHALLOWCOPY:
.type HSHALLOWCOPY, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0107:
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
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVENOCONVCAST
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+12]
call ASTREMOVENOCONVCAST
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-28], 0
je .Lt_010A
mov ecx, dword ptr [ENV+272]
mov eax, ecx
sar eax, 31
sub dword ptr [ebp-24], ecx
sbb dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_010C
cmp dword ptr [ebp-24], 0
jne .Lt_010C
.Lt_01CB:
mov dword ptr [ebp-8], 0
sub esp, 12
push dword ptr [ebp+8]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .Lt_010E
sub esp, 4
push 0
sub esp, 4
lea eax, [ebp+8]
push eax
call ASTREMSIDEFX
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_010E:
.Lt_010D:
sub esp, 12
push dword ptr [ebp+12]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .Lt_0110
sub esp, 4
push 0
sub esp, 4
lea eax, [ebp+12]
push eax
call ASTREMSIDEFX
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0110:
.Lt_010F:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
cmp dword ptr [ebp-8], 0
jne .Lt_0112
call ASTNEWNOP
mov dword ptr [ebp-8], eax
.Lt_0112:
.Lt_0111:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0108
.Lt_010C:
.Lt_010B:
sub esp, 8
push 0
push 0
push 2
mov ecx, dword ptr [ENV+272]
mov eax, ecx
sar eax, 31
push eax
push ecx
push dword ptr [ebp+8]
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 8
push 0
push 0
push 2
mov ecx, dword ptr [ENV+272]
mov eax, ecx
sar eax, 31
push eax
push ecx
push dword ptr [ebp+12]
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp+12], eax
.Lt_010A:
.Lt_0109:
sub esp, 12
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 105
call ASTNEWMEM
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0108:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HSHALLOWCOPY, .-HSHALLOWCOPY

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
