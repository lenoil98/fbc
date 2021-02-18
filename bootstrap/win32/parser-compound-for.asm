	.intel_syntax noprefix

.section .text
.balign 16

.globl _CFORSTMTBEGIN@0
_CFORSTMTBEGIN@0:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.Lt_00FA:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 38
lea eax, [ebp-16]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-12], eax
call _ASTSCOPEBEGIN@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00FD
push 0
push 0
push 27
call _ERRREPORT@12
.Lt_00FD:
.Lt_00FC:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 376
jne .Lt_00FF
push -1
push 0
call _LEXGETTOKEN@4
push eax
push 0
push 0
call _CVARDECL@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0101
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
jmp .Lt_0100
.Lt_0101:
or dword ptr [ebp-4], 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
.Lt_0100:
jmp .Lt_00FE
.Lt_00FF:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 40
jne .Lt_0102
push 0
push -1
push 52
call _ERRREPORT@12
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
jmp .Lt_00FE
.Lt_0102:
push -1
push dword ptr [ebp-12]
call _CVARIABLE@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0104
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
.Lt_0104:
.Lt_0103:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax], 17
je .Lt_0106
push 0
push -1
push 52
call _ERRREPORT@12
push dword ptr [ebp-24]
call _ASTDELTREE@4
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
.Lt_0106:
.Lt_0105:
.Lt_00FE:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_0108
push 0
push 0
push 119
call _ERRREPORT@12
.Lt_0108:
.Lt_0107:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-64], ebx
jmp .Lt_010A
.Lt_010C:
push 0
push -1
push 20
call _ERRREPORT@12
push dword ptr [ebp-24]
call _ASTDELTREE@4
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
jmp .Lt_0109
.Lt_010D:
jmp .Lt_0109
.Lt_010E:
jmp .Lt_0109
.Lt_010F:
jmp .Lt_0109
.Lt_0110:
jmp .Lt_0109
.Lt_0111:
jmp .Lt_0109
.Lt_0112:
jmp .Lt_0109
.Lt_0113:
jmp .Lt_0109
.Lt_0114:
jmp .Lt_0109
.Lt_0115:
or dword ptr [ebp-4], 1
mov ebx, dword ptr [ebp-24]
push dword ptr [ebx+12]
call _SYMBHASCTOR@4
test eax, eax
je .Lt_0117
or dword ptr [ebp-4], 2
.Lt_0117:
.Lt_0116:
jmp .Lt_0109
.Lt_0118:
mov eax, dword ptr [ebp-32]
and eax, 480
test eax, eax
jne .Lt_011A
push 0
push -1
push 52
call _ERRREPORT@12
push dword ptr [ebp-24]
call _ASTDELTREE@4
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
.Lt_011A:
.Lt_0119:
jmp .Lt_0109
.Lt_010A:
mov ebx, dword ptr [ebp-64]
add ebx, 4294967295
cmp ebx, 19
ja .Lt_0118
mov ebx, dword ptr [ebp-64]
jmp dword ptr [_.LT_011B+ebx*4-4]
_.LT_011B:
.int .Lt_010C
.int .Lt_010D
.int .Lt_010D
.int .Lt_010F
.int .Lt_010E
.int .Lt_010E
.int .Lt_010F
.int .Lt_0110
.int .Lt_0110
.int .Lt_0111
.int .Lt_0112
.int .Lt_0112
.int .Lt_0113
.int .Lt_0113
.int .Lt_0114
.int .Lt_0114
.int .Lt_0118
.int .Lt_0118
.int .Lt_0118
.int .Lt_0115
.Lt_0109:
push 1
push 281
call _CCOMPSTMTPUSH@8
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-40]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+24], ecx
mov ecx, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-32]
mov dword ptr [ecx+40], ebx
mov dword ptr [ebp-44], 0
push dword ptr [ebp-24]
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call _HFORASSIGN@24
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call _HFORTO@20
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call _HFORSTEP@20
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-52], eax
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-60], eax
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-56]
mov dword ptr [eax+132], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 1
test ebx, ebx
je .Lt_011D
push dword ptr [ebp-40]
call _HUDTFOR@4
.Lt_011D:
.Lt_011C:
cmp dword ptr [ebp-44], 3
jne .Lt_011F
push 1
push 0
push 0
mov ebx, dword ptr [ebp-40]
push dword ptr [ebx+64]
mov ebx, dword ptr [ebp-40]
lea eax, [ebx+56]
push eax
call _ASTNEWCONST@12
push eax
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [eax+40]
mov eax, dword ptr [ebp-40]
lea ebx, [eax+32]
push ebx
call _ASTNEWCONST@12
push eax
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+108], 0
jne .Lt_0125
cmp dword ptr [eax+104], 0
je .Lt_0120
.Lt_0125:
mov dword ptr [ebp-64], 50
jmp .Lt_0124
.Lt_0120:
mov dword ptr [ebp-64], 49
.Lt_0124:
push dword ptr [ebp-64]
call _ASTNEWBOP@20
mov dword ptr [ebp-28], eax
push 8
push dword ptr [ebp-28]
call _ASTCONSTFLUSHTOINT@8
cmp edx, 0
jne .Lt_0123
cmp eax, 0
jne .Lt_0123
.Lt_0126:
push 0
push dword ptr [ebp-56]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
.Lt_0123:
.Lt_0122:
jmp .Lt_011E
.Lt_011F:
push 0
push dword ptr [ebp-52]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
.Lt_011E:
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-48], eax
push -1
push dword ptr [ebp-48]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
call _ASTSCOPEBEGIN@0
mov edx, dword ptr [ebp-40]
mov dword ptr [edx+8], eax
mov eax, dword ptr [ebp-40]
mov edx, dword ptr [ebp-20]
mov dword ptr [eax+16], edx
mov edx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-52]
mov dword ptr [edx+120], eax
mov eax, dword ptr [ebp-40]
mov edx, dword ptr [ebp-48]
mov dword ptr [eax+124], edx
mov edx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-60]
mov dword ptr [edx+128], eax
.Lt_00FB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CFORSTMTEND@0
_CFORSTMTEND@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0153:
push 2048
call _LEXSKIPTOKEN@4
.Lt_0155:
push -1
push 281
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0159
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0154
.Lt_0159:
.Lt_0158:
push dword ptr [ebp-4]
call _HFORSTMTCLOSE@4
push 0
call _LEXGETCLASS@4
test eax, eax
je .Lt_015B
push dword ptr [ebp-4]
call _CCOMPSTMTPOP@4
jmp .Lt_0156
.Lt_015B:
.Lt_015A:
push 38
lea eax, [ebp-12]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-8]
call _CVARIABLE@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_015D
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_015C
.Lt_015D:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+24]
cmp dword ptr [eax+12], ecx
je .Lt_015F
push 0
push 0
push 283
call _ERRREPORT@12
.Lt_015F:
.Lt_015E:
mov ecx, dword ptr [_ENV+196]
and ecx, 8
test ecx, ecx
je .Lt_0161
push 0
push 1
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+12]
push dword ptr [eax+16]
push 26
call _ERRREPORTWARN@16
.Lt_0161:
.Lt_0160:
push dword ptr [ebp-16]
call _ASTDELTREE@4
.Lt_015C:
push dword ptr [ebp-4]
call _CCOMPSTMTPOP@4
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0163
jmp .Lt_0156
.Lt_0163:
.Lt_0162:
push 0
call _LEXSKIPTOKEN@4
.Lt_0157:
jmp .Lt_0155
.Lt_0156:
.Lt_0154:
pop ebx
mov esp, ebp
pop ebp
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
_HELMTOEXPR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_006B
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
jmp .Lt_006A
.Lt_006B:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
call _ASTNEWCONST@12
mov dword ptr [ebp-4], eax
.Lt_006A:
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HUDTFOR@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_006C:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_006F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
call _HELMTOEXPR@4
mov dword ptr [ebp-8], eax
.Lt_006F:
.Lt_006E:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+24]
push ebx
call _HELMTOEXPR@4
push eax
push 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push dword ptr [ebx+32]
call _HUDTCALLOPOVL@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_0071
push dword ptr [ebp-4]
call _ASTADD@4
.Lt_0071:
.Lt_0070:
.Lt_006D:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HUDTSTEP@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0072:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_0075
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
call _HELMTOEXPR@4
mov dword ptr [ebp-8], eax
.Lt_0075:
.Lt_0074:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+24]
push ebx
call _HELMTOEXPR@4
push eax
push 25
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push dword ptr [ebx+32]
call _HUDTCALLOPOVL@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_0077
push dword ptr [ebp-4]
call _ASTADD@4
.Lt_0077:
.Lt_0076:
.Lt_0073:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HUDTNEXT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0078:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_007B
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
call _HELMTOEXPR@4
mov dword ptr [ebp-8], eax
.Lt_007B:
.Lt_007A:
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
call _HELMTOEXPR@4
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+24]
push ebx
call _HELMTOEXPR@4
push eax
push 26
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push dword ptr [ebx+32]
call _HUDTCALLOPOVL@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_007D
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+124]
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-4]
push 48
call _ASTNEWBOP@20
push eax
call _ASTADD@4
.Lt_007D:
.Lt_007C:
.Lt_0079:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSCALARSTEP@4:
push ebp
mov ebp, esp
push ebx
.Lt_007E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+24]
push eax
push 1
call _HFLUSHSELFBOP@12
.Lt_007F:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSCALARNEXT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0080:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
jne .Lt_0083
mov eax, dword ptr [ebp+8]
push dword ptr [eax+124]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+24]
push eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+108], 0
jne .Lt_0165
cmp dword ptr [eax+104], 0
je .Lt_0084
.Lt_0165:
mov dword ptr [ebp-4], 50
jmp .Lt_0164
.Lt_0084:
mov dword ptr [ebp-4], 49
.Lt_0164:
push dword ptr [ebp-4]
call _HFLUSHBOP@16
jmp .Lt_0082
.Lt_0083:
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+96]
push ebx
call _HELMTOEXPR@4
push eax
push 48
call _ASTNEWBOP@20
push eax
call _ASTADD@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+124]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+24]
push eax
push 49
call _HFLUSHBOP@16
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+132]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push 0
push dword ptr [ebp-4]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+124]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+24]
push eax
push 50
call _HFLUSHBOP@16
.Lt_0082:
.Lt_0081:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HADDIMPLICITVAR@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0086:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [_ENV+888]
and eax, 2
test eax, eax
jne .Lt_0089
or dword ptr [ebp-12], 2
.Lt_0089:
.Lt_0088:
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDIMPLICITVAR@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
and eax, 2
je .Lt_008B
push -1
push dword ptr [ebp-8]
call _ASTNEWDECL@8
push eax
call _ASTADDUNSCOPED@4
jmp .Lt_008A
.Lt_008B:
push 0
push dword ptr [ebp-8]
call _ASTNEWDECL@8
push eax
call _ASTADD@4
.Lt_008A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0087:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HSTORETEMP@12:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_008C:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+888]
and eax, 2
test eax, eax
jne .Lt_008F
or dword ptr [ebp-8], 2
.Lt_008F:
.Lt_008E:
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDIMPLICITVAR@12
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
and eax, 2
je .Lt_0091
push -1
push dword ptr [ebp-12]
call _ASTNEWDECL@8
push eax
call _ASTADDUNSCOPED@4
jmp .Lt_0090
.Lt_0091:
push 0
push dword ptr [ebp-12]
call _ASTNEWDECL@8
mov dword ptr [ebp-16], eax
.Lt_0090:
push 0
push dword ptr [ebp+16]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0093
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0094
mov dword ptr [ebp-20], 24
jmp .Lt_0166
.Lt_0094:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0166:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
jmp .Lt_0097
.Lt_0099:
push 0
push 0
push 24
call _ERRREPORT@12
jmp .Lt_0096
.Lt_009A:
push dword ptr [_AST_OPTB+8]
push -1
push 198
call _ERRREPORT@12
jmp .Lt_0096
.Lt_0097:
mov eax, dword ptr [ebp-24]
add eax, 4294967276
test eax, eax
ja .Lt_009A
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_009B+eax*4-80]
_.LT_009B:
.int .Lt_0099
.Lt_0096:
.Lt_0093:
.Lt_0092:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_008D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_HFLUSHBOP@16:
push ebp
mov ebp, esp
sub esp, 12
.Lt_009C:
push dword ptr [ebp+12]
call _HELMTOEXPR@4
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call _HELMTOEXPR@4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_009F
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
push -1
push 198
call _ERRREPORT@12
jmp .Lt_009D
.Lt_009F:
.Lt_009E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 20
jne .Lt_00A1
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp-12]
call _ASTBUILDBRANCH@16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00A3
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
push -1
push 198
call _ERRREPORT@12
jmp .Lt_009D
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
push dword ptr [ebp-12]
call _ASTADD@4
.Lt_009D:
mov esp, ebp
pop ebp
ret 16
.balign 16
_HSTEPEXPRESSION@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A4:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .Lt_00A7
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCALCDEREFLEN@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], edx
cmp dword ptr [ebp-8], 0
jg .Lt_00A9
jl .Lt_0167
cmp dword ptr [ebp-12], 0
ja .Lt_00A9
.Lt_0167:
push 0
push 0
push 71
call _ERRREPORT@12
mov dword ptr [ebp-12], 1
mov dword ptr [ebp-8], 0
.Lt_00A9:
.Lt_00A8:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .Lt_00AB
push 1
push 0
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWCONSTI@16
push eax
push 0
push 8
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _ASTNEWVAR@20
push eax
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
jmp .Lt_00AA
.Lt_00AB:
push 0
push 8
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-12]
mov edx, dword ptr [ebp-8]
push dword ptr [eax+12]
push dword ptr [eax+8]
push edx
push ebx
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop ebx
pop edx
add esp, 8
push edx
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_00AA:
jmp .Lt_00A6
.Lt_00A7:
push dword ptr [ebp+16]
call _HELMTOEXPR@4
mov dword ptr [ebp-4], eax
.Lt_00A6:
.Lt_00A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HFLUSHSELFBOP@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00AC:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
call _HSTEPEXPRESSION@12
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _ASTNEWSELFBOP@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00AF
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
push -1
push 198
call _ERRREPORT@12
jmp .Lt_00AD
.Lt_00AF:
.Lt_00AE:
push dword ptr [ebp-12]
call _ASTADD@4
.Lt_00AD:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCALLCTOR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00B0:
push 0
push -2147483648
push 1
push dword ptr [ebp+8]
call _CINITIALIZER@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00B3
jmp .Lt_00B1
.Lt_00B3:
.Lt_00B2:
push 64
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00B5
jmp .Lt_00B1
.Lt_00B5:
.Lt_00B4:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_00B1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFORASSIGN@24:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00B6:
call _CASSIGNTOKEN@0
test eax, eax
jne .Lt_00B9
push 0
push 0
push 10
call _ERRREPORT@12
.Lt_00B9:
.Lt_00B8:
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
and ebx, 4
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00BB
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00BD
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_00BD:
.Lt_00BC:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00BF
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _ASTNEWCONV@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00C1
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_00C1:
.Lt_00C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+24]
mov dword ptr [eax+32], ecx
mov ecx, dword ptr [ebx+28]
mov dword ptr [eax+36], ecx
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
.Lt_00BF:
.Lt_00BE:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+28]
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00C3
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
je .Lt_00C5
push 0
push 0
push 24
call _ERRREPORT@12
jmp .Lt_00C4
.Lt_00C5:
push offset _Lt_00C6
push -1
push 198
call _ERRREPORT@12
.Lt_00C4:
jmp .Lt_00C2
.Lt_00C3:
push dword ptr [ebp-4]
call _ASTADD@4
.Lt_00C2:
jmp .Lt_00BA
.Lt_00BB:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _HCALLCTOR@4
test eax, eax
jne .Lt_00C8
push 0
push 0
push 9
call _ERRREPORT@12
.Lt_00C8:
.Lt_00C7:
.Lt_00BA:
.Lt_00B7:
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16
_HFORTO@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00C9:
push 0
call _LEXGETTOKEN@4
cmp eax, 284
je .Lt_00CC
push 0
push 0
push 12
call _ERRREPORT@12
jmp .Lt_00CB
.Lt_00CC:
push 2048
call _LEXSKIPTOKEN@4
.Lt_00CB:
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
jne .Lt_00CE
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00D0
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_00D0:
.Lt_00CF:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00D2
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _ASTNEWCONV@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00D4
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_00D4:
.Lt_00D3:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+48], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+24]
mov dword ptr [ebx+56], ecx
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx+60], ecx
push dword ptr [ebp-4]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .Lt_00D1
.Lt_00D2:
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HSTORETEMP@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+48], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
.Lt_00D1:
jmp .Lt_00CD
.Lt_00CE:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HADDIMPLICITVAR@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+48], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call _HCALLCTOR@4
test eax, eax
jne .Lt_00D6
push 0
push 0
push 24
call _ERRREPORT@12
.Lt_00D6:
.Lt_00D5:
.Lt_00CD:
.Lt_00CA:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HFORSTEP@20:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_00D7:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+140], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 282
jne .Lt_00DA
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+140], -1
.Lt_00DA:
.Lt_00D9:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
jne .Lt_00DC
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_00DE
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00E0
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.Lt_00E0:
.Lt_00DF:
jmp .Lt_00DD
.Lt_00DE:
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.Lt_00DD:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
jne .Lt_00E2
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00E3
mov dword ptr [ebp-16], 24
jmp .Lt_016E
.Lt_00E3:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_016E:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_00E6
push dword ptr [ebp+16]
call _TYPETOSIGNED@4
mov dword ptr [ebp+16], eax
jmp .Lt_00E5
.Lt_00E6:
push dword ptr [ebp+16]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp+16], eax
.Lt_00E5:
.Lt_00E2:
.Lt_00E1:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00E8
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _ASTNEWCONV@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00EA
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.Lt_00EA:
.Lt_00E9:
push dword ptr [ebp-12]
call _ASTCONSTGEZERO@4
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+104], ecx
mov dword ptr [eax+108], ebx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+72], 0
mov ecx, dword ptr [ebp+16]
and ecx, 480
test ecx, ecx
je .Lt_00EC
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+88], 11
jmp .Lt_00EB
.Lt_00EC:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+88], ebx
.Lt_00EB:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+80], eax
mov eax, dword ptr [ecx+28]
mov dword ptr [ebx+84], eax
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
jmp .Lt_00E7
.Lt_00E8:
mov dword ptr [ebp-4], -1
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+20]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
test ecx, ecx
je .Lt_00EE
mov dword ptr [ebp-16], 11
mov dword ptr [ebp-20], 0
.Lt_00EE:
.Lt_00ED:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _HSTORETEMP@12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+72], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+72]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+88], eax
.Lt_00E7:
jmp .Lt_00DB
.Lt_00DC:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_00F0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HADDIMPLICITVAR@8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+72], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+72]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+88], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+72]
call _HCALLCTOR@4
test eax, eax
jne .Lt_00F2
push 0
push 0
push 24
call _ERRREPORT@12
.Lt_00F2:
.Lt_00F1:
.Lt_00F0:
.Lt_00EF:
.Lt_00DB:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_00F3
mov dword ptr [ebp-8], 24
jmp .Lt_016F
.Lt_00F3:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_016F:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+8]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_00F6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+112], 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+104], 4294967295
mov dword ptr [eax+108], 4294967295
jmp .Lt_00F5
.Lt_00F6:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-4]
je .Lt_00F7
lea eax, [ebp-32]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 6
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+88]
mov dword ptr [ebp-16], ecx
push 0
push 8
call _HADDIMPLICITVAR@8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+96], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+112], 8
push 1
push 0
lea eax, [ebp-32]
push eax
call _HELMTOEXPR@4
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+72]
push ecx
call _HELMTOEXPR@4
push eax
push 49
call _ASTNEWBOP@20
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_00F9
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-36], eax
.Lt_00F9:
.Lt_00F8:
push 0
push dword ptr [ebp-36]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+96]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
jmp .Lt_00F5
.Lt_00F7:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+96], 0
.Lt_00F5:
.Lt_00D8:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HUDTCALLOPOVL@20:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.Lt_0127:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBGETCOMPOPOVLHEAD@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_012A
mov eax, dword ptr [ebp+12]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
push -1
push 198
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
jmp .Lt_0128
.Lt_012A:
.Lt_0129:
cmp dword ptr [ebp+20], 0
jne .Lt_012C
push 0
lea eax, [ebp-12]
push eax
push 0
push 0
push dword ptr [ebp-8]
call _SYMBFINDCLOSESTOVLPROC@20
mov dword ptr [ebp-8], eax
jmp .Lt_012B
.Lt_012C:
lea eax, [ebp-36]
mov dword ptr [ebp-72], eax
lea eax, [ebp-36]
mov dword ptr [ebp-68], eax
mov dword ptr [ebp-64], 24
mov dword ptr [ebp-60], 12
mov dword ptr [ebp-56], 1
mov dword ptr [ebp-52], 49
mov dword ptr [ebp-48], 2
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 1
mov dword ptr [ebp-76], 1
lea eax, [ebp-36]
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-80]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-80]
mov dword ptr [ebx+4], -1
mov ebx, dword ptr [ebp-80]
mov dword ptr [ebx+8], 0
cmp dword ptr [ebp+12], 26
jne .Lt_0130
cmp dword ptr [ebp+24], 0
je .Lt_0132
lea ebx, [ebp-24]
mov dword ptr [ebp-28], ebx
inc dword ptr [ebp-76]
lea ebx, [ebp-24]
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp-80]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-80]
mov dword ptr [eax+4], -1
mov eax, dword ptr [ebp-80]
mov dword ptr [eax+8], 0
.Lt_0132:
.Lt_0131:
.Lt_0130:
.Lt_012F:
push 0
lea eax, [ebp-12]
push eax
lea eax, [ebp-36]
push eax
push dword ptr [ebp-76]
push dword ptr [ebp-8]
call _SYMBFINDCLOSESTOVLPROC@20
mov dword ptr [ebp-8], eax
.Lt_012B:
cmp dword ptr [ebp-8], 0
jne .Lt_0135
cmp dword ptr [ebp-12], 0
je .Lt_0137
push 0
push -1
push dword ptr [ebp-12]
call _ERRREPORT@12
jmp .Lt_0136
.Lt_0137:
push 0
push -1
push 7
push offset _Lt_0138
push 0
mov eax, dword ptr [ebp+12]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-40], eax
jmp .Lt_013B
.Lt_013D:
cmp dword ptr [ebp+20], 0
jne .Lt_013F
push 0
push 4
push offset _Lt_0140
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_013F:
.Lt_013E:
jmp .Lt_013A
.Lt_0141:
cmp dword ptr [ebp+24], 0
jne .Lt_0143
push 0
push 4
push offset _Lt_0140
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_0143:
.Lt_0142:
jmp .Lt_013A
.Lt_013B:
mov eax, dword ptr [ebp-40]
add eax, 4294967272
cmp eax, 2
ja .Lt_013A
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.LT_0144+eax*4-96]
_.LT_0144:
.int .Lt_013D
.int .Lt_013D
.int .Lt_0141
.Lt_013A:
push 0
push 7
push offset _Lt_0145
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-24]
push -1
push 198
call _ERRREPORT@12
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0136:
mov dword ptr [ebp-4], 0
jmp .Lt_0128
jmp .Lt_0134
.Lt_0135:
push dword ptr [ebp-8]
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_0147
push 0
push 1
push 0
push dword ptr [ebp-8]
call _SYMBGETFULLPROCNAME@4
push eax
push 202
call _ERRREPORTEX@20
mov dword ptr [ebp-4], 0
jmp .Lt_0128
.Lt_0147:
.Lt_0146:
.Lt_0134:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
.Lt_0128:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HFORSTMTCLOSE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0148:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_014B
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
.Lt_014B:
.Lt_014A:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+128]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 20
jne .Lt_014E
.Lt_014F:
push dword ptr [ebp+8]
call _HUDTSTEP@4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+120]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push dword ptr [ebp+8]
call _HUDTNEXT@4
jmp .Lt_014C
.Lt_014E:
push dword ptr [ebp+8]
call _HSCALARSTEP@4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+120]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push dword ptr [ebp+8]
call _HSCALARNEXT@4
.Lt_0150:
.Lt_014C:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+132]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_0152
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTSCOPEEND@4
.Lt_0152:
.Lt_0151:
.Lt_0149:
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
.balign 4
_Lt_00C6:	.ascii	"let\0"
.balign 4
_Lt_0138:	.ascii	" (with\0"
.balign 4
_Lt_0140:	.ascii	"out\0"
.balign 4
_Lt_0145:	.ascii	" step)\0"
