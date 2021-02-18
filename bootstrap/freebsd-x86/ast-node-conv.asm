	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTCHECKCONVNONPTRTOPTR
ASTCHECKCONVNONPTRTOPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A2:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_00A4
mov dword ptr [ebp-8], 24
jmp .Lt_00B0
.Lt_00A4:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00B0:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .Lt_00A7
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .Lt_00A9
push dword ptr [ebp+16]
call ASTCONSTEQZERO
add esp, 4
test eax, eax
je .Lt_00AB
mov dword ptr [ebp-4], 0
jmp .Lt_00A3
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_00AC
mov dword ptr [ebp-12], 24
jmp .Lt_00B1
.Lt_00AC:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00B1:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [ENV+272]
cmp dword ptr [SYMB_DTYPETB+eax+4], ebx
jne .Lt_00AF
mov dword ptr [ebp-4], 0
jmp .Lt_00A3
.Lt_00AF:
.Lt_00AE:
.Lt_00A7:
.Lt_00A6:
push dword ptr [ebp+20]
call HGETTYPEMISMATCHERRMSG
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCHECKCONV
ASTCHECKCONV:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DD:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_00DF
mov dword ptr [ebp-12], 24
jmp .Lt_00FA
.Lt_00DF:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_00FA:
mov ebx, dword ptr [ebp-12]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_00E1
mov dword ptr [ebp-16], 24
jmp .Lt_00FB
.Lt_00E1:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_00FB:
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-24]
je .Lt_00E4
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_00E5
mov dword ptr [ebp-28], 24
jmp .Lt_00FD
.Lt_00E5:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_00FD:
mov ebx, dword ptr [ebp-28]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_00E7
mov dword ptr [ebp-32], 24
jmp .Lt_00FE
.Lt_00E7:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_00FE:
mov ebx, dword ptr [ebp-32]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-36]
je .Lt_00EA
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_00EA:
.Lt_00E9:
jmp .Lt_00DE
.Lt_00E4:
.Lt_00E3:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_00EB
mov dword ptr [ebp-20], 24
jmp .Lt_0100
.Lt_00EB:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0100:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 2
jne .Lt_00EE
jmp .Lt_00DE
.Lt_00EE:
.Lt_00ED:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKPTR
add esp, 20
test eax, eax
je .Lt_00F0
jmp .Lt_00DE
.Lt_00F0:
.Lt_00EF:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_00F1
mov dword ptr [ebp-24], 24
jmp .Lt_0101
.Lt_00F1:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_0101:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 4
je .Lt_00F6
.Lt_00F7:
cmp dword ptr [ebp-28], 7
jne .Lt_00F5
.Lt_00F6:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .Lt_00F9
jmp .Lt_00DE
.Lt_00F9:
.Lt_00F8:
.Lt_00F5:
.Lt_00F3:
mov dword ptr [ebp-4], -1
.Lt_00DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTRYOVLSTRINGCONV
ASTTRYOVLSTRINGCONV:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0107:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
jne .Lt_010A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
je .Lt_010C
mov dword ptr [ebp-20], 4
jmp .Lt_010B
.Lt_010C:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+116]
and eax, 65536
test eax, eax
je .Lt_010D
mov dword ptr [ebp-20], 7
jmp .Lt_010B
.Lt_010D:
mov dword ptr [ebp-20], 0
.Lt_010B:
cmp dword ptr [ebp-20], 0
je .Lt_010F
push 0
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 0
push dword ptr [ebp-20]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0111
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp-20]
cmp ebx, eax
jne .Lt_0113
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-8]
call ASTBUILDCALL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
jmp .Lt_0108
.Lt_0113:
.Lt_0112:
.Lt_0111:
.Lt_0110:
.Lt_010F:
.Lt_010E:
.Lt_010A:
.Lt_0109:
mov dword ptr [ebp-4], 0
.Lt_0108:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWCONV
ASTNEWCONV:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.Lt_0114:
cmp dword ptr [ebp+24], 0
je .Lt_0117
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 0
.Lt_0117:
.Lt_0116:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 511
mov eax, dword ptr [ebp+8]
and eax, 511
cmp ebx, eax
jne .Lt_0119
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+8], ebx
jne .Lt_011B
mov ebx, dword ptr [ebp-16]
and ebx, 261632
mov eax, dword ptr [ebp+8]
and eax, 261632
cmp ebx, eax
je .Lt_011D
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .Lt_011F
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTSETTYPE
add esp, 12
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
jmp .Lt_011E
.Lt_011F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], -1
mov ebx, dword ptr [ebp+20]
and ebx, 16
test ebx, ebx
jne .Lt_0121
mov ebx, dword ptr [ENV+196]
and ebx, 128
test ebx, ebx
je .Lt_0123
push 0
push 1
push 0
push 40
call ERRREPORTWARN
add esp, 16
.Lt_0123:
.Lt_0122:
.Lt_0121:
.Lt_0120:
.Lt_011E:
jmp .Lt_011C
.Lt_011D:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-8], ebx
.Lt_011C:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0115
.Lt_011B:
.Lt_011A:
.Lt_0119:
.Lt_0118:
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0124
mov dword ptr [ebp-32], 24
jmp .Lt_01AD
.Lt_0124:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_01AD:
cmp dword ptr [ebp-32], 20
jne .Lt_0127
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0129
mov dword ptr [ebp-48], 0
push -1
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .Lt_012B
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-48]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_012B:
.Lt_012A:
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+116]
and ecx, 131072
test ecx, ecx
je .Lt_012D
push -1
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push 0
push 36
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
jmp .Lt_012C
.Lt_012D:
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
je .Lt_012E
push -1
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push 0
push 39
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-48], eax
.Lt_012E:
.Lt_012C:
cmp dword ptr [ebp-48], 0
je .Lt_0130
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-48]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_0130:
.Lt_012F:
mov eax, dword ptr [ebp+20]
and eax, 2
je .Lt_0132
lea eax, [ebp+16]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 4
test eax, eax
je .Lt_0134
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-16], ecx
.Lt_0134:
.Lt_0133:
.Lt_0132:
.Lt_0131:
.Lt_0129:
.Lt_0128:
.Lt_0127:
.Lt_0126:
push 0
lea ecx, [ebp-48]
push ecx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .Lt_0136
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-44]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0115
jmp .Lt_0135
.Lt_0136:
cmp dword ptr [ebp-48], 0
je .Lt_0138
mov dword ptr [ebp-4], 0
jmp .Lt_0115
.Lt_0138:
.Lt_0137:
.Lt_0135:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0139
mov dword ptr [ebp-44], 24
jmp .Lt_01AE
.Lt_0139:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_01AE:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
jmp .Lt_013C
.Lt_013E:
jmp .Lt_0115
jmp .Lt_013B
.Lt_013F:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0140
mov dword ptr [ebp-52], 24
jmp .Lt_01AF
.Lt_0140:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_01AF:
cmp dword ptr [ebp-52], 20
je .Lt_0143
jmp .Lt_0115
.Lt_0143:
.Lt_0142:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .Lt_0145
jmp .Lt_0115
.Lt_0145:
.Lt_0144:
jmp .Lt_013B
.Lt_0146:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0147
mov dword ptr [ebp-52], 24
jmp .Lt_01B0
.Lt_0147:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_01B0:
cmp dword ptr [ebp-52], 20
jne .Lt_014A
jmp .Lt_0115
.Lt_014A:
.Lt_0149:
jmp .Lt_013B
.Lt_013C:
cmp dword ptr [ebp-48], 20
ja .Lt_0146
mov eax, dword ptr [ebp-48]
jmp dword ptr [.LT_014B+eax*4]
.LT_014B:
.int .Lt_013E
.int .Lt_0146
.int .Lt_0146
.int .Lt_0146
.int .Lt_013E
.int .Lt_0146
.int .Lt_0146
.int .Lt_013E
.int .Lt_0146
.int .Lt_0146
.int .Lt_0146
.int .Lt_0146
.int .Lt_0146
.int .Lt_0146
.int .Lt_0146
.int .Lt_0146
.int .Lt_0146
.int .Lt_013E
.int .Lt_013E
.int .Lt_0146
.int .Lt_013F
.Lt_013B:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_014C
mov dword ptr [ebp-36], 24
jmp .Lt_01B1
.Lt_014C:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_01B1:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+20]
and ecx, 1
je .Lt_014F
cmp dword ptr [ebp-12], 0
je .Lt_0151
jmp .Lt_0115
.Lt_0151:
.Lt_0150:
.Lt_014F:
.Lt_014E:
mov ecx, dword ptr [ebp+20]
and ecx, 8
test ecx, ecx
jne .Lt_0153
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKPTR
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0155
cmp dword ptr [ebp+24], 0
je .Lt_0157
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-20]
mov dword ptr [eax], ecx
.Lt_0157:
.Lt_0156:
jmp .Lt_0115
.Lt_0155:
.Lt_0154:
.Lt_0153:
.Lt_0152:
mov ecx, dword ptr [ebp+20]
and ecx, 2
je .Lt_0159
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .Lt_015A
mov dword ptr [ebp-44], 24
jmp .Lt_01B2
.Lt_015A:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-44], ecx
.Lt_01B2:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ecx
jmp .Lt_015D
.Lt_015F:
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call RTLSTRTOVAL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_0115
jmp .Lt_015C
.Lt_015D:
mov eax, dword ptr [ebp-48]
add eax, 4294967292
cmp eax, 14
ja .Lt_015C
mov eax, dword ptr [ebp-48]
jmp dword ptr [.LT_0160+eax*4-16]
.LT_0160:
.int .Lt_015F
.int .Lt_015C
.int .Lt_015C
.int .Lt_015F
.int .Lt_015C
.int .Lt_015C
.int .Lt_015C
.int .Lt_015C
.int .Lt_015C
.int .Lt_015C
.int .Lt_015C
.int .Lt_015C
.int .Lt_015C
.int .Lt_015F
.int .Lt_015F
.Lt_015C:
jmp .Lt_0158
.Lt_0159:
cmp dword ptr [ebp-12], 2
jne .Lt_0162
jmp .Lt_0115
jmp .Lt_0161
.Lt_0162:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0163
mov dword ptr [ebp-44], 24
jmp .Lt_01B3
.Lt_0163:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_01B3:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 4
je .Lt_0168
.Lt_0169:
cmp dword ptr [ebp-48], 7
jne .Lt_0167
.Lt_0168:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .Lt_016B
jmp .Lt_0115
.Lt_016B:
.Lt_016A:
.Lt_0167:
.Lt_0165:
.Lt_0161:
.Lt_0158:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .Lt_016D
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call ASTCHECKCONST
add esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HCONSTCONV
add esp, 8
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_016D:
.Lt_016C:
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_016E
mov dword ptr [ebp-40], 24
jmp .Lt_01B4
.Lt_016E:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_01B4:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
cmp dword ptr [ebp-12], ecx
jne .Lt_0171
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_0172
mov dword ptr [ebp-44], 24
jmp .Lt_01B5
.Lt_0172:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-44], ecx
.Lt_01B5:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ecx
cmp dword ptr [ebp-48], 20
jne .Lt_0176
.Lt_0177:
mov dword ptr [ebp-28], 0
jmp .Lt_0174
.Lt_0176:
mov ecx, dword ptr [ebp-16]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_017A
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-16], eax
jne .Lt_017C
mov dword ptr [ebp-28], 0
.Lt_017C:
.Lt_017B:
jmp .Lt_0179
.Lt_017A:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_017D
mov dword ptr [ebp-52], 24
jmp .Lt_01B6
.Lt_017D:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_01B6:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_017F
mov dword ptr [ebp-56], 24
jmp .Lt_01B7
.Lt_017F:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_01B7:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ecx, dword ptr [ebp-60]
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [SYMB_DTYPETB+ecx+4], ebx
jne .Lt_0182
mov dword ptr [ebp-28], 0
.Lt_0182:
.Lt_0181:
.Lt_0179:
.Lt_0178:
.Lt_0174:
.Lt_0171:
.Lt_0170:
mov ebx, dword ptr [IR+276]
and ebx, 1
test ebx, ebx
je .Lt_0184
mov ebx, dword ptr [ebp-12]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_0185
mov dword ptr [ebp-44], 24
jmp .Lt_01B9
.Lt_0185:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_01B9:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov ecx, dword ptr [SYMB_DTYPETB+ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-48]
je .Lt_0188
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .Lt_0189
mov dword ptr [ebp-52], 24
jmp .Lt_01BB
.Lt_0189:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-52], ecx
.Lt_01BB:
mov ecx, dword ptr [ebp-52]
imul ecx, 28
mov dword ptr [ebp-60], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_018B
mov dword ptr [ebp-56], 24
jmp .Lt_01BC
.Lt_018B:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-56], ecx
.Lt_01BC:
mov ecx, dword ptr [ebp-56]
imul ecx, 28
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], eax
je .Lt_018E
mov dword ptr [ebp-28], -1
.Lt_018E:
.Lt_018D:
.Lt_0188:
.Lt_0187:
.Lt_0184:
.Lt_0183:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 5
jne .Lt_0190
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+20], 0
jne .Lt_0192
cmp dword ptr [ebp-28], 0
jne .Lt_0194
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_0194:
.Lt_0193:
.Lt_0192:
.Lt_0191:
.Lt_0190:
.Lt_018F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-28]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-16]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0196
mov dword ptr [ebp-24], 0
lea ebx, [ebp-24]
push ebx
mov dword ptr [ebp-44], 0
lea ebx, [ebp-44]
push ebx
push 0
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call SYMBCHECKCONSTASSIGN
add esp, 28
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+28], 0
je .Lt_0199
cmp dword ptr [ebp-24], 0
je .Lt_019B
mov eax, dword ptr [ebp+20]
and eax, 32
test eax, eax
jne .Lt_019D
push offset Lt_019E
push 1
push 0
push dword ptr [ebp-24]
call ERRREPORTWARN
add esp, 16
.Lt_019D:
.Lt_019C:
jmp .Lt_019A
.Lt_019B:
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
jne .Lt_01A0
mov eax, dword ptr [ENV+196]
and eax, 128
test eax, eax
je .Lt_01A2
push 0
push 1
push 0
push 40
call ERRREPORTWARN
add esp, 16
.Lt_01A2:
.Lt_01A1:
.Lt_01A0:
.Lt_019F:
.Lt_019A:
.Lt_0199:
.Lt_0198:
.Lt_0196:
.Lt_0195:
cmp dword ptr [ENV+104], 0
jne .Lt_01A4
cmp dword ptr [ebp-28], 0
je .Lt_01A6
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_01A7
mov dword ptr [ebp-44], 24
jmp .Lt_01BE
.Lt_01A7:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_01BE:
cmp dword ptr [ebp-44], 16
jne .Lt_01AA
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_01AB
mov dword ptr [ebp-48], 24
jmp .Lt_01BF
.Lt_01AB:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_01BF:
mov eax, dword ptr [ebp-48]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], eax
.Lt_01AA:
.Lt_01A9:
.Lt_01A6:
.Lt_01A5:
.Lt_01A4:
.Lt_01A3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0115:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWOVLCONV
ASTNEWOVLCONV:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_01CA:
push 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_01CD
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01CB
jmp .Lt_01CC
.Lt_01CD:
cmp dword ptr [ebp-12], 0
je .Lt_01CF
mov dword ptr [ebp-4], 0
jmp .Lt_01CB
.Lt_01CF:
.Lt_01CE:
.Lt_01CC:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_01CB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTUPDATECONVFD2FS
ASTUPDATECONVFD2FS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01D0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
jne .Lt_01D3
jmp .Lt_01D1
.Lt_01D3:
.Lt_01D2:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_01D4
mov dword ptr [ebp-4], 24
jmp .Lt_01DA
.Lt_01D4:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_01DA:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ebx, 4
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_01D6
mov dword ptr [ebp-8], 24
jmp .Lt_01DB
.Lt_01D6:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_01DB:
cmp dword ptr [ebp-8], 15
jne .Lt_01D9
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+24], eax
.Lt_01D9:
.Lt_01D8:
.Lt_01D1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADCONV
ASTLOADCONV:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_01DD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_01E0
mov dword ptr [ebp-4], 0
jmp .Lt_01DE
.Lt_01E0:
.Lt_01DF:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [AST+136], 0
je .Lt_01E2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .Lt_01E4
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
call dword ptr [IR+228]
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [eax+16]
mov dword ptr [ecx+20], ebx
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call dword ptr [IR+60]
add esp, 8
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 0
je .Lt_01E6
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+4], 16
jne .Lt_01E8
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+4], 15
jne .Lt_01EA
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+16], 0
jne .Lt_01EC
push 0
push dword ptr [ebp-16]
push 74
call dword ptr [IR+100]
add esp, 12
.Lt_01EC:
.Lt_01EB:
.Lt_01EA:
.Lt_01E9:
.Lt_01E8:
.Lt_01E7:
.Lt_01E6:
.Lt_01E5:
jmp .Lt_01E3
.Lt_01E4:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push dword ptr [ebp-16]
call dword ptr [IR+256]
add esp, 12
.Lt_01E3:
.Lt_01E2:
.Lt_01E1:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_01DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSKIPCONSTCASTS
ASTSKIPCONSTCASTS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01ED:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_01F0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jne .Lt_01F2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.Lt_01F2:
.Lt_01F1:
.Lt_01F0:
.Lt_01EF:
.Lt_01EE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSKIPNOCONVCAST
ASTSKIPNOCONVCAST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01F3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_01F6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_01F8
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp-4], ebx
.Lt_01F8:
.Lt_01F7:
.Lt_01F6:
.Lt_01F5:
.Lt_01F4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREMOVENOCONVCAST
ASTREMOVENOCONVCAST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01FB:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_01FE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0200
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], 0
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
.Lt_0200:
.Lt_01FF:
.Lt_01FE:
.Lt_01FD:
.Lt_01FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTSKIPCASTS
ASTSKIPCASTS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0203:
.Lt_0205:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_0206
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+8], ebx
jmp .Lt_0205
.Lt_0206:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0204:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREMOVECASTS
ASTREMOVECASTS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0207:
.Lt_0209:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_020A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
jmp .Lt_0209
.Lt_020A:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0208:
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
HCONSTCONV:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
.Lt_005E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 480
je .Lt_0060
mov dword ptr [ebp-8], 24
jmp .Lt_020B
.Lt_0060:
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_020B:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .Lt_0063
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_0064
mov dword ptr [ebp-16], 24
jmp .Lt_020C
.Lt_0064:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_020C:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+20]
mov dword ptr [ebp-20], eax
jmp .Lt_0067
.Lt_0069:
mov eax, dword ptr [ebp-4]
and eax, 511
cmp eax, 16
jne .Lt_006B
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
fstp dword ptr [ebp-24]
mov eax, dword ptr [ebp+12]
fld dword ptr [ebp-24]
fstp qword ptr [eax+20]
.Lt_006B:
.Lt_006A:
jmp .Lt_0066
.Lt_006C:
jmp .Lt_0066
.Lt_006D:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
push eax
ftst
fnstsw ax
sahf
setnz al
fstp st(0)
mov bl, al
pop eax
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .Lt_0066
.Lt_006E:
mov ecx, dword ptr [ebp+12]
fld qword ptr [ecx+20]
sub esp, 4
fistp dword ptr [esp]
mov al, byte ptr [esp]
add esp, 4
movsx ebx, al
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ebx
mov dword ptr [eax+24], ecx
jmp .Lt_0066
.Lt_006F:
mov ebx, dword ptr [ebp+12]
fld qword ptr [ebx+20]
sub esp, 4
fistp dword ptr [esp]
mov cl, byte ptr [esp]
add esp, 4
movzx eax, cl
mov ebx, 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .Lt_0066
.Lt_0070:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
sub esp, 4
fistp word ptr [esp]
pop ebx
movsx ecx, bx
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .Lt_0066
.Lt_0071:
mov ecx, dword ptr [ebp+12]
fld qword ptr [ecx+20]
sub esp, 4
fistp dword ptr [esp]
pop ax
add esp, 2
movzx ebx, ax
mov ecx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ebx
mov dword ptr [eax+24], ecx
jmp .Lt_0066
.Lt_0072:
mov ebx, dword ptr [ebp+12]
fld qword ptr [ebx+20]
sub esp, 4
fistp dword ptr [esp]
pop ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .Lt_0066
.Lt_0073:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
sub esp, 8
fistp qword ptr [esp]
pop ebx
add esp, 4
mov ecx, ebx
mov eax, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .Lt_0066
.Lt_0074:
mov ecx, dword ptr [ebp+12]
fld qword ptr [ecx+20]
sub esp, 8
fistp qword ptr [esp]
pop ebx
pop eax
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .Lt_0066
.Lt_0075:
mov ebx, dword ptr [ebp+12]
fld qword ptr [ebx+20]
fcomp qword ptr [Lt_020D]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0076
mov ebx, dword ptr [ebp+12]
fld qword ptr [Lt_020F]
fmul qword ptr [ebx+20]
sub esp, 8
fistp qword ptr [esp]
pop eax
pop ebx
shld ebx, eax, 1
shl eax, 1
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
jmp .Lt_020E
.Lt_0076:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+20]
sub esp, 8
fistp qword ptr [esp]
pop ecx
pop ebx
mov dword ptr [ebp-28], ecx
mov dword ptr [ebp-24], ebx
.Lt_020E:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .Lt_0066
.Lt_0067:
cmp dword ptr [ebp-20], 10
ja .Lt_0066
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_0078+eax*4]
.LT_0078:
.int .Lt_006D
.int .Lt_006E
.int .Lt_006F
.int .Lt_0070
.int .Lt_0071
.int .Lt_0072
.int .Lt_0073
.int .Lt_0074
.int .Lt_0075
.int .Lt_0069
.int .Lt_006C
.Lt_0066:
jmp .Lt_0062
.Lt_0063:
mov eax, dword ptr [ebp-4]
and eax, 480
je .Lt_007A
mov dword ptr [ebp-12], 24
jmp .Lt_0210
.Lt_007A:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0210:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_0079
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_007C
mov dword ptr [ebp-16], 24
jmp .Lt_0211
.Lt_007C:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0211:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .Lt_007F
.Lt_0081:
mov ebx, dword ptr [ebp+12]
fild qword ptr [ebx+20]
mov ebx, dword ptr [ebp+12]
fstp qword ptr [ebx+20]
jmp .Lt_007E
.Lt_0082:
mov ebx, dword ptr [ebp+12]
fild qword ptr [ebx+20]
mov ebx, dword ptr [ebp+12]
fstp qword ptr [ebx+20]
jmp .Lt_007E
.Lt_0083:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
or eax, dword ptr [ebx+24]
cmp eax, 0
setne al
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_007E
.Lt_0084:
mov ecx, dword ptr [ebp+12]
mov bl, byte ptr [ecx+20]
movsx eax, bl
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .Lt_007E
.Lt_0085:
mov eax, dword ptr [ebp+12]
mov cl, byte ptr [eax+20]
movzx ebx, cl
mov eax, 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .Lt_007E
.Lt_0086:
mov ebx, dword ptr [ebp+12]
mov ax, word ptr [ebx+20]
movsx ecx, ax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_007E
.Lt_0087:
mov ecx, dword ptr [ebp+12]
mov bx, word ptr [ecx+20]
movzx eax, bx
mov ecx, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .Lt_007E
.Lt_0088:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .Lt_007E
.Lt_0089:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
mov ecx, eax
mov ebx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_007E
.Lt_008A:
jmp .Lt_007E
.Lt_008B:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
jmp .Lt_007E
.Lt_007F:
cmp dword ptr [ebp-20], 10
ja .Lt_007E
mov esi, dword ptr [ebp-20]
jmp dword ptr [.LT_008C+esi*4]
.LT_008C:
.int .Lt_0083
.int .Lt_0084
.int .Lt_0085
.int .Lt_0086
.int .Lt_0087
.int .Lt_0088
.int .Lt_0089
.int .Lt_008A
.int .Lt_008B
.int .Lt_0081
.int .Lt_0082
.Lt_007E:
jmp .Lt_0062
.Lt_0079:
mov esi, dword ptr [ebp+8]
and esi, 480
je .Lt_008D
mov dword ptr [ebp-16], 24
jmp .Lt_0212
.Lt_008D:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-16], esi
.Lt_0212:
mov esi, dword ptr [ebp-16]
imul esi, 28
mov eax, dword ptr [SYMB_DTYPETB+esi+20]
mov dword ptr [ebp-20], eax
jmp .Lt_0090
.Lt_0092:
mov eax, dword ptr [ebp+12]
fild qword ptr [eax+20]
cmp dword ptr [eax+24], 0
jns .Lt_0213
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0213:
mov eax, dword ptr [ebp+12]
fstp qword ptr [eax+20]
jmp .Lt_008F
.Lt_0093:
mov eax, dword ptr [ebp+12]
fild qword ptr [eax+20]
cmp dword ptr [eax+24], 0
jns .Lt_0214
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0214:
mov eax, dword ptr [ebp+12]
fstp qword ptr [eax+20]
jmp .Lt_008F
.Lt_0094:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
or ebx, dword ptr [eax+24]
cmp ebx, 0
setne bl
movzx esi, bl
neg esi
mov eax, esi
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
jmp .Lt_008F
.Lt_0095:
mov esi, dword ptr [ebp+12]
mov al, byte ptr [esi+20]
movsx ebx, al
mov esi, ebx
sar esi, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], ebx
mov dword ptr [eax+24], esi
jmp .Lt_008F
.Lt_0096:
mov ebx, dword ptr [ebp+12]
mov al, byte ptr [ebx+20]
movzx esi, al
mov ebx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], esi
mov dword ptr [eax+24], ebx
jmp .Lt_008F
.Lt_0097:
mov esi, dword ptr [ebp+12]
mov bx, word ptr [esi+20]
movsx eax, bx
mov esi, eax
sar esi, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], esi
jmp .Lt_008F
.Lt_0098:
mov eax, dword ptr [ebp+12]
mov si, word ptr [eax+20]
movzx ebx, si
mov eax, 0
mov esi, dword ptr [ebp+12]
mov dword ptr [esi+20], ebx
mov dword ptr [esi+24], eax
jmp .Lt_008F
.Lt_0099:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+20]
mov esi, eax
mov ebx, esi
sar ebx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], esi
mov dword ptr [eax+24], ebx
jmp .Lt_008F
.Lt_009A:
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+20]
mov eax, ebx
mov esi, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], esi
jmp .Lt_008F
.Lt_009B:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], ebx
jmp .Lt_008F
.Lt_009C:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+20]
mov esi, dword ptr [ecx+24]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], esi
jmp .Lt_008F
.Lt_0090:
cmp dword ptr [ebp-20], 10
ja .Lt_008F
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_009D+eax*4]
.LT_009D:
.int .Lt_0094
.int .Lt_0095
.int .Lt_0096
.int .Lt_0097
.int .Lt_0098
.int .Lt_0099
.int .Lt_009A
.int .Lt_009B
.int .Lt_009C
.int .Lt_0092
.int .Lt_0093
.Lt_008F:
.Lt_0062:
.Lt_005F:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETTYPEMISMATCHERRMSG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_009E:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00A1
mov dword ptr [ebp-4], 28
jmp .Lt_00A0
.Lt_00A1:
mov dword ptr [ebp-4], 20
.Lt_00A0:
.Lt_009F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B2:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .Lt_00B5
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
jne .Lt_00B7
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call ASTCHECKCONVNONPTRTOPTR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00B3
.Lt_00B7:
.Lt_00B6:
jmp .Lt_00B4
.Lt_00B5:
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
je .Lt_00B8
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00B9
mov dword ptr [ebp-8], 24
jmp .Lt_0215
.Lt_00B9:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0215:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .Lt_00BC
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 16
jne .Lt_00BE
push dword ptr [ebp+20]
call ASTCONSTEQZERO
add esp, 4
test eax, eax
je .Lt_00C0
jmp .Lt_00B3
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
.Lt_00BD:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00C1
mov dword ptr [ebp-12], 24
jmp .Lt_0216
.Lt_00C1:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0216:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [ENV+272]
cmp dword ptr [SYMB_DTYPETB+eax+4], ebx
jne .Lt_00C4
jmp .Lt_00B3
.Lt_00C4:
.Lt_00C3:
.Lt_00BC:
.Lt_00BB:
push dword ptr [ebp+24]
call HGETTYPEMISMATCHERRMSG
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00B3
jmp .Lt_00B4
.Lt_00B8:
jmp .Lt_00B3
.Lt_00B4:
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 20
jne .Lt_00C6
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .Lt_00C8
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 20
je .Lt_00CA
mov eax, dword ptr [ebp+16]
and eax, 31
test eax, eax
je .Lt_00CC
mov dword ptr [ebp-4], 300
jmp .Lt_00B3
.Lt_00CC:
.Lt_00CB:
jmp .Lt_00C9
.Lt_00CA:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .Lt_00CE
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
push dword ptr [ebp+12]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .Lt_00D0
mov dword ptr [ebp-4], 301
jmp .Lt_00B3
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
.Lt_00CD:
.Lt_00C9:
.Lt_00C8:
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 20
jne .Lt_00D2
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+8]
cmp dword ptr [ebx+96], 0
je .Lt_00D4
mov ebx, dword ptr [ebp+8]
and ebx, 31
cmp ebx, 20
je .Lt_00D6
mov ebx, dword ptr [ebp+8]
and ebx, 31
test ebx, ebx
je .Lt_00D8
mov dword ptr [ebp-4], 302
jmp .Lt_00B3
.Lt_00D8:
.Lt_00D7:
jmp .Lt_00D5
.Lt_00D6:
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+8]
push dword ptr [ebp+12]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .Lt_00DA
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .Lt_00DC
mov dword ptr [ebp-4], 303
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
.Lt_00D9:
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
.Lt_00B3:
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
.balign 4
Lt_019E:	.ascii	" in function pointer\0"
.balign 8
Lt_020D:	.quad	0x4341C37937E08000
.balign 8
Lt_020F:	.quad	0x3FE0000000000000
