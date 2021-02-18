	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTCHECKCONVNONPTRTOPTR@16
_ASTCHECKCONVNONPTRTOPTR@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A3:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_00A5
mov dword ptr [ebp-8], 24
jmp .Lt_00B1
.Lt_00A5:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00B1:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .Lt_00A8
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .Lt_00AA
push dword ptr [ebp+16]
call _ASTCONSTEQZERO@4
test eax, eax
je .Lt_00AC
mov dword ptr [ebp-4], 0
jmp .Lt_00A4
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_00AD
mov dword ptr [ebp-12], 24
jmp .Lt_00B2
.Lt_00AD:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00B2:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_ENV+272]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ebx
jne .Lt_00B0
mov dword ptr [ebp-4], 0
jmp .Lt_00A4
.Lt_00B0:
.Lt_00AF:
.Lt_00A8:
.Lt_00A7:
push dword ptr [ebp+20]
call _HGETTYPEMISMATCHERRMSG@4
mov dword ptr [ebp-4], eax
.Lt_00A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTCHECKCONV@12
_ASTCHECKCONV@12:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DE:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_00E0
mov dword ptr [ebp-12], 24
jmp .Lt_00FB
.Lt_00E0:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_00FB:
mov ebx, dword ptr [ebp-12]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_00E2
mov dword ptr [ebp-16], 24
jmp .Lt_00FC
.Lt_00E2:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_00FC:
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-24]
je .Lt_00E5
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_00E6
mov dword ptr [ebp-28], 24
jmp .Lt_00FE
.Lt_00E6:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_00FE:
mov ebx, dword ptr [ebp-28]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_00E8
mov dword ptr [ebp-32], 24
jmp .Lt_00FF
.Lt_00E8:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_00FF:
mov ebx, dword ptr [ebp-32]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-36]
je .Lt_00EB
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_00EB:
.Lt_00EA:
jmp .Lt_00DF
.Lt_00E5:
.Lt_00E4:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_00EC
mov dword ptr [ebp-20], 24
jmp .Lt_0101
.Lt_00EC:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0101:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 2
jne .Lt_00EF
jmp .Lt_00DF
.Lt_00EF:
.Lt_00EE:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKPTR@20
test eax, eax
je .Lt_00F1
jmp .Lt_00DF
.Lt_00F1:
.Lt_00F0:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_00F2
mov dword ptr [ebp-24], 24
jmp .Lt_0102
.Lt_00F2:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_0102:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 4
je .Lt_00F7
.Lt_00F8:
cmp dword ptr [ebp-28], 7
jne .Lt_00F6
.Lt_00F7:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .Lt_00FA
jmp .Lt_00DF
.Lt_00FA:
.Lt_00F9:
.Lt_00F6:
.Lt_00F4:
mov dword ptr [ebp-4], -1
.Lt_00DF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTTRYOVLSTRINGCONV@4
_ASTTRYOVLSTRINGCONV@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0108:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
jne .Lt_010B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+120]
and ebx, 131072
test ebx, ebx
je .Lt_010D
mov dword ptr [ebp-20], 4
jmp .Lt_010C
.Lt_010D:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+120]
and eax, 65536
test eax, eax
je .Lt_010E
mov dword ptr [ebp-20], 7
jmp .Lt_010C
.Lt_010E:
mov dword ptr [ebp-20], 0
.Lt_010C:
cmp dword ptr [ebp-20], 0
je .Lt_0110
push 0
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 0
push dword ptr [ebp-20]
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0112
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp-20]
cmp ebx, eax
jne .Lt_0114
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-8]
call _ASTBUILDCALL@16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
jmp .Lt_0109
.Lt_0114:
.Lt_0113:
.Lt_0112:
.Lt_0111:
.Lt_0110:
.Lt_010F:
.Lt_010B:
.Lt_010A:
mov dword ptr [ebp-4], 0
.Lt_0109:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWCONV@20
_ASTNEWCONV@20:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.Lt_0115:
cmp dword ptr [ebp+24], 0
je .Lt_0118
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 0
.Lt_0118:
.Lt_0117:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 511
mov eax, dword ptr [ebp+8]
and eax, 511
cmp ebx, eax
jne .Lt_011A
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+8], ebx
jne .Lt_011C
mov ebx, dword ptr [ebp-16]
and ebx, 261632
mov eax, dword ptr [ebp+8]
and eax, 261632
cmp ebx, eax
je .Lt_011E
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .Lt_0120
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTSETTYPE@12
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
jmp .Lt_011F
.Lt_0120:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+32], -1
mov ebx, dword ptr [ebp+20]
and ebx, 16
test ebx, ebx
jne .Lt_0122
mov ebx, dword ptr [_ENV+196]
and ebx, 128
test ebx, ebx
je .Lt_0124
push 0
push 1
push 0
push 40
call _ERRREPORTWARN@16
.Lt_0124:
.Lt_0123:
.Lt_0122:
.Lt_0121:
.Lt_011F:
jmp .Lt_011D
.Lt_011E:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-8], ebx
.Lt_011D:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0116
.Lt_011C:
.Lt_011B:
.Lt_011A:
.Lt_0119:
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0125
mov dword ptr [ebp-32], 24
jmp .Lt_01AE
.Lt_0125:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_01AE:
cmp dword ptr [ebp-32], 20
jne .Lt_0128
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+120]
and ebx, 131072
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+120]
and ecx, 65536
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_012A
mov dword ptr [ebp-48], 0
push -1
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .Lt_012C
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-48]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
jmp .Lt_0116
.Lt_012C:
.Lt_012B:
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+120]
and ecx, 131072
test ecx, ecx
je .Lt_012E
push -1
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push 0
push 36
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-48], eax
jmp .Lt_012D
.Lt_012E:
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+120]
and ecx, 65536
test ecx, ecx
je .Lt_012F
push -1
lea ecx, [ebp-52]
push ecx
push dword ptr [ebp+16]
push 0
push 39
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-48], eax
.Lt_012F:
.Lt_012D:
cmp dword ptr [ebp-48], 0
je .Lt_0131
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-48]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
jmp .Lt_0116
.Lt_0131:
.Lt_0130:
mov eax, dword ptr [ebp+20]
and eax, 2
je .Lt_0133
lea eax, [ebp+16]
push eax
call _ASTTRYOVLSTRINGCONV@4
test eax, eax
je .Lt_0135
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-16], ecx
.Lt_0135:
.Lt_0134:
.Lt_0133:
.Lt_0132:
.Lt_012A:
.Lt_0129:
.Lt_0128:
.Lt_0127:
push 0
lea ecx, [ebp-48]
push ecx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .Lt_0137
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-44]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
jmp .Lt_0116
jmp .Lt_0136
.Lt_0137:
cmp dword ptr [ebp-48], 0
je .Lt_0139
mov dword ptr [ebp-4], 0
jmp .Lt_0116
.Lt_0139:
.Lt_0138:
.Lt_0136:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_013A
mov dword ptr [ebp-44], 24
jmp .Lt_01AF
.Lt_013A:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_01AF:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
jmp .Lt_013D
.Lt_013F:
jmp .Lt_0116
jmp .Lt_013C
.Lt_0140:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0141
mov dword ptr [ebp-52], 24
jmp .Lt_01B0
.Lt_0141:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_01B0:
cmp dword ptr [ebp-52], 20
je .Lt_0144
jmp .Lt_0116
.Lt_0144:
.Lt_0143:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jne .Lt_0146
jmp .Lt_0116
.Lt_0146:
.Lt_0145:
jmp .Lt_013C
.Lt_0147:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0148
mov dword ptr [ebp-52], 24
jmp .Lt_01B1
.Lt_0148:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_01B1:
cmp dword ptr [ebp-52], 20
jne .Lt_014B
jmp .Lt_0116
.Lt_014B:
.Lt_014A:
jmp .Lt_013C
.Lt_013D:
cmp dword ptr [ebp-48], 20
ja .Lt_0147
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_014C+eax*4]
_.LT_014C:
.int .Lt_013F
.int .Lt_0147
.int .Lt_0147
.int .Lt_0147
.int .Lt_013F
.int .Lt_0147
.int .Lt_0147
.int .Lt_013F
.int .Lt_0147
.int .Lt_0147
.int .Lt_0147
.int .Lt_0147
.int .Lt_0147
.int .Lt_0147
.int .Lt_0147
.int .Lt_0147
.int .Lt_0147
.int .Lt_013F
.int .Lt_013F
.int .Lt_0147
.int .Lt_0140
.Lt_013C:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_014D
mov dword ptr [ebp-36], 24
jmp .Lt_01B2
.Lt_014D:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_01B2:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+20]
and ecx, 1
je .Lt_0150
cmp dword ptr [ebp-12], 0
je .Lt_0152
jmp .Lt_0116
.Lt_0152:
.Lt_0151:
.Lt_0150:
.Lt_014F:
mov ecx, dword ptr [ebp+20]
and ecx, 8
test ecx, ecx
jne .Lt_0154
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKPTR@20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0156
cmp dword ptr [ebp+24], 0
je .Lt_0158
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-20]
mov dword ptr [eax], ecx
.Lt_0158:
.Lt_0157:
jmp .Lt_0116
.Lt_0156:
.Lt_0155:
.Lt_0154:
.Lt_0153:
mov ecx, dword ptr [ebp+20]
and ecx, 2
je .Lt_015A
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .Lt_015B
mov dword ptr [ebp-44], 24
jmp .Lt_01B3
.Lt_015B:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-44], ecx
.Lt_01B3:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ecx
jmp .Lt_015E
.Lt_0160:
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _RTLSTRTOVAL@8
mov dword ptr [ebp-4], eax
jmp .Lt_0116
jmp .Lt_015D
.Lt_015E:
mov eax, dword ptr [ebp-48]
add eax, 4294967292
cmp eax, 14
ja .Lt_015D
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_0161+eax*4-16]
_.LT_0161:
.int .Lt_0160
.int .Lt_015D
.int .Lt_015D
.int .Lt_0160
.int .Lt_015D
.int .Lt_015D
.int .Lt_015D
.int .Lt_015D
.int .Lt_015D
.int .Lt_015D
.int .Lt_015D
.int .Lt_015D
.int .Lt_015D
.int .Lt_0160
.int .Lt_0160
.Lt_015D:
jmp .Lt_0159
.Lt_015A:
cmp dword ptr [ebp-12], 2
jne .Lt_0163
jmp .Lt_0116
jmp .Lt_0162
.Lt_0163:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0164
mov dword ptr [ebp-44], 24
jmp .Lt_01B4
.Lt_0164:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_01B4:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 4
je .Lt_0169
.Lt_016A:
cmp dword ptr [ebp-48], 7
jne .Lt_0168
.Lt_0169:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .Lt_016C
jmp .Lt_0116
.Lt_016C:
.Lt_016B:
.Lt_0168:
.Lt_0166:
.Lt_0162:
.Lt_0159:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .Lt_016E
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _ASTCHECKCONST@8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HCONSTCONV@8
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0116
.Lt_016E:
.Lt_016D:
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_016F
mov dword ptr [ebp-40], 24
jmp .Lt_01B5
.Lt_016F:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_01B5:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
cmp dword ptr [ebp-12], ecx
jne .Lt_0172
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_0173
mov dword ptr [ebp-44], 24
jmp .Lt_01B6
.Lt_0173:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-44], ecx
.Lt_01B6:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ecx
cmp dword ptr [ebp-48], 20
jne .Lt_0177
.Lt_0178:
mov dword ptr [ebp-28], 0
jmp .Lt_0175
.Lt_0177:
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
je .Lt_017B
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-16], eax
jne .Lt_017D
mov dword ptr [ebp-28], 0
.Lt_017D:
.Lt_017C:
jmp .Lt_017A
.Lt_017B:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_017E
mov dword ptr [ebp-52], 24
jmp .Lt_01B7
.Lt_017E:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_01B7:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0180
mov dword ptr [ebp-56], 24
jmp .Lt_01B8
.Lt_0180:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_01B8:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ecx, dword ptr [ebp-60]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ecx+4], ebx
jne .Lt_0183
mov dword ptr [ebp-28], 0
.Lt_0183:
.Lt_0182:
.Lt_017A:
.Lt_0179:
.Lt_0175:
.Lt_0172:
.Lt_0171:
mov ebx, dword ptr [_IR+276]
and ebx, 1
test ebx, ebx
je .Lt_0185
mov ebx, dword ptr [ebp-12]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_0186
mov dword ptr [ebp-44], 24
jmp .Lt_01BA
.Lt_0186:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_01BA:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov ecx, dword ptr [_SYMB_DTYPETB+ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-48]
je .Lt_0189
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .Lt_018A
mov dword ptr [ebp-52], 24
jmp .Lt_01BC
.Lt_018A:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-52], ecx
.Lt_01BC:
mov ecx, dword ptr [ebp-52]
imul ecx, 28
mov dword ptr [ebp-60], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_018C
mov dword ptr [ebp-56], 24
jmp .Lt_01BD
.Lt_018C:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-56], ecx
.Lt_01BD:
mov ecx, dword ptr [ebp-56]
imul ecx, 28
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], eax
je .Lt_018F
mov dword ptr [ebp-28], -1
.Lt_018F:
.Lt_018E:
.Lt_0189:
.Lt_0188:
.Lt_0185:
.Lt_0184:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 5
jne .Lt_0191
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+24], 0
jne .Lt_0193
cmp dword ptr [ebp-28], 0
jne .Lt_0195
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0116
.Lt_0195:
.Lt_0194:
.Lt_0193:
.Lt_0192:
.Lt_0191:
.Lt_0190:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-28]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+32], 0
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
je .Lt_0197
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
call _SYMBCHECKCONSTASSIGN@28
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+32], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+32], 0
je .Lt_019A
cmp dword ptr [ebp-24], 0
je .Lt_019C
mov eax, dword ptr [ebp+20]
and eax, 32
test eax, eax
jne .Lt_019E
push offset _Lt_019F
push 1
push 0
push dword ptr [ebp-24]
call _ERRREPORTWARN@16
.Lt_019E:
.Lt_019D:
jmp .Lt_019B
.Lt_019C:
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
jne .Lt_01A1
mov eax, dword ptr [_ENV+196]
and eax, 128
test eax, eax
je .Lt_01A3
push 0
push 1
push 0
push 40
call _ERRREPORTWARN@16
.Lt_01A3:
.Lt_01A2:
.Lt_01A1:
.Lt_01A0:
.Lt_019B:
.Lt_019A:
.Lt_0199:
.Lt_0197:
.Lt_0196:
cmp dword ptr [_ENV+104], 0
jne .Lt_01A5
cmp dword ptr [ebp-28], 0
je .Lt_01A7
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_01A8
mov dword ptr [ebp-44], 24
jmp .Lt_01BF
.Lt_01A8:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_01BF:
cmp dword ptr [ebp-44], 16
jne .Lt_01AB
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_01AC
mov dword ptr [ebp-48], 24
jmp .Lt_01C0
.Lt_01AC:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_01C0:
mov eax, dword ptr [ebp-48]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], eax
.Lt_01AB:
.Lt_01AA:
.Lt_01A7:
.Lt_01A6:
.Lt_01A5:
.Lt_01A4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0116:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTNEWOVLCONV@12
_ASTNEWOVLCONV@12:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_01CB:
push 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_01CE
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
jmp .Lt_01CC
jmp .Lt_01CD
.Lt_01CE:
cmp dword ptr [ebp-12], 0
je .Lt_01D0
mov dword ptr [ebp-4], 0
jmp .Lt_01CC
.Lt_01D0:
.Lt_01CF:
.Lt_01CD:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_01CC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTUPDATECONVFD2FS@12
_ASTUPDATECONVFD2FS@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01D1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .Lt_01D4
jmp .Lt_01D2
.Lt_01D4:
.Lt_01D3:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_01D5
mov dword ptr [ebp-4], 24
jmp .Lt_01DB
.Lt_01D5:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_01DB:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ebx, 4
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_01D7
mov dword ptr [ebp-8], 24
jmp .Lt_01DC
.Lt_01D7:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_01DC:
cmp dword ptr [ebp-8], 15
jne .Lt_01DA
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+28], eax
.Lt_01DA:
.Lt_01D9:
.Lt_01D2:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTLOADCONV@4
_ASTLOADCONV@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_01DE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_01E1
mov dword ptr [ebp-4], 0
jmp .Lt_01DF
.Lt_01E1:
.Lt_01E0:
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
cmp dword ptr [_AST+136], 0
je .Lt_01E3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+24], 0
je .Lt_01E5
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
call dword ptr [_IR+228]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [eax+16]
mov dword ptr [ecx+20], ebx
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call dword ptr [_IR+60]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+28], 0
je .Lt_01E7
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+4], 16
jne .Lt_01E9
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+4], 15
jne .Lt_01EB
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+16], 0
jne .Lt_01ED
push 0
push dword ptr [ebp-16]
push 74
call dword ptr [_IR+100]
.Lt_01ED:
.Lt_01EC:
.Lt_01EB:
.Lt_01EA:
.Lt_01E9:
.Lt_01E8:
.Lt_01E7:
.Lt_01E6:
jmp .Lt_01E4
.Lt_01E5:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push dword ptr [ebp-16]
call dword ptr [_IR+256]
.Lt_01E4:
.Lt_01E3:
.Lt_01E2:
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_01DF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTSKIPCONSTCASTS@4
_ASTSKIPCONSTCASTS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01EE:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_01F1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
jne .Lt_01F3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_01F3:
.Lt_01F2:
.Lt_01F1:
.Lt_01F0:
.Lt_01EF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTSKIPNOCONVCAST@4
_ASTSKIPNOCONVCAST@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01F4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_01F7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_01F9
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+64]
mov dword ptr [ebp-4], ebx
.Lt_01F9:
.Lt_01F8:
.Lt_01F7:
.Lt_01F6:
.Lt_01F5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTREMOVENOCONVCAST@4
_ASTREMOVENOCONVCAST@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01FC:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_01FF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0201
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+64]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], 0
push dword ptr [ebp+8]
call _ASTDELTREE@4
.Lt_0201:
.Lt_0200:
.Lt_01FF:
.Lt_01FE:
.Lt_01FD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTSKIPCASTS@4
_ASTSKIPCASTS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0204:
.Lt_0206:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_0207
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp+8], ebx
jmp .Lt_0206
.Lt_0207:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0205:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTREMOVECASTS@4
_ASTREMOVECASTS@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0208:
.Lt_020A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_020B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ebx
jmp .Lt_020A
.Lt_020B:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0209:
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
_HCONSTCONV@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
.Lt_005F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 480
je .Lt_0061
mov dword ptr [ebp-8], 24
jmp .Lt_020C
.Lt_0061:
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_020C:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .Lt_0064
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_0065
mov dword ptr [ebp-16], 24
jmp .Lt_020D
.Lt_0065:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_020D:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+20]
mov dword ptr [ebp-20], eax
jmp .Lt_0068
.Lt_006A:
mov eax, dword ptr [ebp-4]
and eax, 511
cmp eax, 16
jne .Lt_006C
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+24]
fstp dword ptr [ebp-24]
mov eax, dword ptr [ebp+12]
fld dword ptr [ebp-24]
fstp qword ptr [eax+24]
.Lt_006C:
.Lt_006B:
jmp .Lt_0067
.Lt_006D:
jmp .Lt_0067
.Lt_006E:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+24]
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
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .Lt_0067
.Lt_006F:
mov ecx, dword ptr [ebp+12]
fld qword ptr [ecx+24]
sub esp, 4
fistp dword ptr [esp]
mov al, byte ptr [esp]
add esp, 4
movsx ebx, al
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], ebx
mov dword ptr [eax+28], ecx
jmp .Lt_0067
.Lt_0070:
mov ebx, dword ptr [ebp+12]
fld qword ptr [ebx+24]
sub esp, 4
fistp dword ptr [esp]
mov cl, byte ptr [esp]
add esp, 4
movzx eax, cl
mov ebx, 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
jmp .Lt_0067
.Lt_0071:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+24]
sub esp, 4
fistp word ptr [esp]
pop ebx
movsx ecx, bx
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .Lt_0067
.Lt_0072:
mov ecx, dword ptr [ebp+12]
fld qword ptr [ecx+24]
sub esp, 4
fistp dword ptr [esp]
pop ax
add esp, 2
movzx ebx, ax
mov ecx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], ebx
mov dword ptr [eax+28], ecx
jmp .Lt_0067
.Lt_0073:
mov ebx, dword ptr [ebp+12]
fld qword ptr [ebx+24]
sub esp, 4
fistp dword ptr [esp]
pop ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
jmp .Lt_0067
.Lt_0074:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+24]
sub esp, 8
fistp qword ptr [esp]
pop ebx
add esp, 4
mov ecx, ebx
mov eax, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .Lt_0067
.Lt_0075:
mov ecx, dword ptr [ebp+12]
fld qword ptr [ecx+24]
sub esp, 8
fistp qword ptr [esp]
pop ebx
pop eax
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+24], ebx
mov dword ptr [ecx+28], eax
jmp .Lt_0067
.Lt_0076:
mov ebx, dword ptr [ebp+12]
fld qword ptr [ebx+24]
fcomp qword ptr [_Lt_020E]
fnstsw ax
test ah, 0b00000001
jnz .Lt_0077
mov ebx, dword ptr [ebp+12]
fld qword ptr [_Lt_0210]
fmul qword ptr [ebx+24]
sub esp, 8
fistp qword ptr [esp]
pop eax
pop ebx
shld ebx, eax, 1
shl eax, 1
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
jmp .Lt_020F
.Lt_0077:
mov eax, dword ptr [ebp+12]
fld qword ptr [eax+24]
sub esp, 8
fistp qword ptr [esp]
pop ecx
pop ebx
mov dword ptr [ebp-28], ecx
mov dword ptr [ebp-24], ebx
.Lt_020F:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
jmp .Lt_0067
.Lt_0068:
cmp dword ptr [ebp-20], 10
ja .Lt_0067
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_0079+eax*4]
_.LT_0079:
.int .Lt_006E
.int .Lt_006F
.int .Lt_0070
.int .Lt_0071
.int .Lt_0072
.int .Lt_0073
.int .Lt_0074
.int .Lt_0075
.int .Lt_0076
.int .Lt_006A
.int .Lt_006D
.Lt_0067:
jmp .Lt_0063
.Lt_0064:
mov eax, dword ptr [ebp-4]
and eax, 480
je .Lt_007B
mov dword ptr [ebp-12], 24
jmp .Lt_0211
.Lt_007B:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0211:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_007A
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_007D
mov dword ptr [ebp-16], 24
jmp .Lt_0212
.Lt_007D:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0212:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .Lt_0080
.Lt_0082:
mov ebx, dword ptr [ebp+12]
fild qword ptr [ebx+24]
mov ebx, dword ptr [ebp+12]
fstp qword ptr [ebx+24]
jmp .Lt_007F
.Lt_0083:
mov ebx, dword ptr [ebp+12]
fild qword ptr [ebx+24]
mov ebx, dword ptr [ebp+12]
fstp qword ptr [ebx+24]
jmp .Lt_007F
.Lt_0084:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+24]
or eax, dword ptr [ebx+28]
cmp eax, 0
setne al
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_007F
.Lt_0085:
mov ecx, dword ptr [ebp+12]
mov bl, byte ptr [ecx+24]
movsx eax, bl
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], ecx
jmp .Lt_007F
.Lt_0086:
mov eax, dword ptr [ebp+12]
mov cl, byte ptr [eax+24]
movzx ebx, cl
mov eax, 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+24], ebx
mov dword ptr [ecx+28], eax
jmp .Lt_007F
.Lt_0087:
mov ebx, dword ptr [ebp+12]
mov ax, word ptr [ebx+24]
movsx ecx, ax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_007F
.Lt_0088:
mov ecx, dword ptr [ebp+12]
mov bx, word ptr [ecx+24]
movzx eax, bx
mov ecx, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], ecx
jmp .Lt_007F
.Lt_0089:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+24], ebx
mov dword ptr [ecx+28], eax
jmp .Lt_007F
.Lt_008A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+24]
mov ecx, eax
mov ebx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_007F
.Lt_008B:
jmp .Lt_007F
.Lt_008C:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+24]
mov eax, dword ptr [ecx+28]
mov dword ptr [ebx+24], esi
mov dword ptr [ebx+28], eax
jmp .Lt_007F
.Lt_0080:
cmp dword ptr [ebp-20], 10
ja .Lt_007F
mov esi, dword ptr [ebp-20]
jmp dword ptr [_.LT_008D+esi*4]
_.LT_008D:
.int .Lt_0084
.int .Lt_0085
.int .Lt_0086
.int .Lt_0087
.int .Lt_0088
.int .Lt_0089
.int .Lt_008A
.int .Lt_008B
.int .Lt_008C
.int .Lt_0082
.int .Lt_0083
.Lt_007F:
jmp .Lt_0063
.Lt_007A:
mov esi, dword ptr [ebp+8]
and esi, 480
je .Lt_008E
mov dword ptr [ebp-16], 24
jmp .Lt_0213
.Lt_008E:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-16], esi
.Lt_0213:
mov esi, dword ptr [ebp-16]
imul esi, 28
mov eax, dword ptr [_SYMB_DTYPETB+esi+20]
mov dword ptr [ebp-20], eax
jmp .Lt_0091
.Lt_0093:
mov eax, dword ptr [ebp+12]
fild qword ptr [eax+24]
cmp dword ptr [eax+28], 0
jns .Lt_0214
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0214:
mov eax, dword ptr [ebp+12]
fstp qword ptr [eax+24]
jmp .Lt_0090
.Lt_0094:
mov eax, dword ptr [ebp+12]
fild qword ptr [eax+24]
cmp dword ptr [eax+28], 0
jns .Lt_0215
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_0215:
mov eax, dword ptr [ebp+12]
fstp qword ptr [eax+24]
jmp .Lt_0090
.Lt_0095:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
or ebx, dword ptr [eax+28]
cmp ebx, 0
setne bl
movzx esi, bl
neg esi
mov eax, esi
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+24], esi
mov dword ptr [ebx+28], eax
jmp .Lt_0090
.Lt_0096:
mov esi, dword ptr [ebp+12]
mov al, byte ptr [esi+24]
movsx ebx, al
mov esi, ebx
sar esi, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], ebx
mov dword ptr [eax+28], esi
jmp .Lt_0090
.Lt_0097:
mov ebx, dword ptr [ebp+12]
mov al, byte ptr [ebx+24]
movzx esi, al
mov ebx, 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], esi
mov dword ptr [eax+28], ebx
jmp .Lt_0090
.Lt_0098:
mov esi, dword ptr [ebp+12]
mov bx, word ptr [esi+24]
movsx eax, bx
mov esi, eax
sar esi, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], esi
jmp .Lt_0090
.Lt_0099:
mov eax, dword ptr [ebp+12]
mov si, word ptr [eax+24]
movzx ebx, si
mov eax, 0
mov esi, dword ptr [ebp+12]
mov dword ptr [esi+24], ebx
mov dword ptr [esi+28], eax
jmp .Lt_0090
.Lt_009A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+24]
mov esi, eax
mov ebx, esi
sar ebx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], esi
mov dword ptr [eax+28], ebx
jmp .Lt_0090
.Lt_009B:
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+24]
mov eax, ebx
mov esi, 0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], esi
jmp .Lt_0090
.Lt_009C:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], ebx
jmp .Lt_0090
.Lt_009D:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+24]
mov esi, dword ptr [ecx+28]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], esi
jmp .Lt_0090
.Lt_0091:
cmp dword ptr [ebp-20], 10
ja .Lt_0090
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_009E+eax*4]
_.LT_009E:
.int .Lt_0095
.int .Lt_0096
.int .Lt_0097
.int .Lt_0098
.int .Lt_0099
.int .Lt_009A
.int .Lt_009B
.int .Lt_009C
.int .Lt_009D
.int .Lt_0093
.int .Lt_0094
.Lt_0090:
.Lt_0063:
.Lt_0060:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HGETTYPEMISMATCHERRMSG@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_009F:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00A2
mov dword ptr [ebp-4], 28
jmp .Lt_00A1
.Lt_00A2:
mov dword ptr [ebp-4], 20
.Lt_00A1:
.Lt_00A0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCHECKPTR@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B3:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .Lt_00B6
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
jne .Lt_00B8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _ASTCHECKCONVNONPTRTOPTR@16
mov dword ptr [ebp-4], eax
jmp .Lt_00B4
.Lt_00B8:
.Lt_00B7:
jmp .Lt_00B5
.Lt_00B6:
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
je .Lt_00B9
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00BA
mov dword ptr [ebp-8], 24
jmp .Lt_0216
.Lt_00BA:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0216:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .Lt_00BD
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 16
jne .Lt_00BF
push dword ptr [ebp+20]
call _ASTCONSTEQZERO@4
test eax, eax
je .Lt_00C1
jmp .Lt_00B4
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00C2
mov dword ptr [ebp-12], 24
jmp .Lt_0217
.Lt_00C2:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0217:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_ENV+272]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ebx
jne .Lt_00C5
jmp .Lt_00B4
.Lt_00C5:
.Lt_00C4:
.Lt_00BD:
.Lt_00BC:
push dword ptr [ebp+24]
call _HGETTYPEMISMATCHERRMSG@4
mov dword ptr [ebp-4], eax
jmp .Lt_00B4
jmp .Lt_00B5
.Lt_00B9:
jmp .Lt_00B4
.Lt_00B5:
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 20
jne .Lt_00C7
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .Lt_00C9
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 20
je .Lt_00CB
mov eax, dword ptr [ebp+16]
and eax, 31
test eax, eax
je .Lt_00CD
mov dword ptr [ebp-4], 300
jmp .Lt_00B4
.Lt_00CD:
.Lt_00CC:
jmp .Lt_00CA
.Lt_00CB:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jne .Lt_00CF
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
push dword ptr [ebp+12]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jne .Lt_00D1
mov dword ptr [ebp-4], 301
jmp .Lt_00B4
.Lt_00D1:
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
.Lt_00C7:
.Lt_00C6:
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 20
jne .Lt_00D3
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+8]
cmp dword ptr [ebx+96], 0
je .Lt_00D5
mov ebx, dword ptr [ebp+8]
and ebx, 31
cmp ebx, 20
je .Lt_00D7
mov ebx, dword ptr [ebp+8]
and ebx, 31
test ebx, ebx
je .Lt_00D9
mov dword ptr [ebp-4], 302
jmp .Lt_00B4
.Lt_00D9:
.Lt_00D8:
jmp .Lt_00D6
.Lt_00D7:
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+8]
push dword ptr [ebp+12]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jne .Lt_00DB
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jne .Lt_00DD
mov dword ptr [ebp-4], 303
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
.Lt_00D6:
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_019F:	.ascii	" in function pointer\0"
.balign 8
_Lt_020E:	.quad	0x4341C37937E08000
.balign 8
_Lt_0210:	.quad	0x3FE0000000000000
