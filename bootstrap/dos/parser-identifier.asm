	.intel_syntax noprefix

.section .text
.balign 16

.globl _CIDENTIFIER
_CIDENTIFIER:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_008F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
cmp dword ptr [_PARSER+92], 0
je .Lt_0092
mov eax, dword ptr [_PARSER+92]
mov dword ptr [ebp-8], eax
mov dword ptr [_PARSER+92], 0
jmp .Lt_0091
.Lt_0092:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1044]
mov dword ptr [ebp-8], eax
.Lt_0091:
mov eax, dword ptr [_ENV+888]
and eax, 4
test eax, eax
jne .Lt_0094
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0090
.Lt_0094:
.Lt_0093:
cmp dword ptr [ebp-8], 0
jne .Lt_0096
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_0098
mov dword ptr [ebp-4], 0
jmp .Lt_0090
.Lt_0098:
.Lt_0097:
push dword ptr [ebp+12]
call _HGLOBALID
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_009A
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_009C
call _LEXGETTEXT
push eax
push 8
call _ERRREPORTUNDEF
add esp, 8
jmp .Lt_009B
.Lt_009C:
call _HSKIPSYMBOL
.Lt_009B:
mov dword ptr [ebp-4], 0
jmp .Lt_0090
.Lt_009A:
.Lt_0099:
.Lt_0096:
.Lt_0095:
mov dword ptr [ebp-12], 0
.Lt_009D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-20], eax
jmp .Lt_00A1
.Lt_00A3:
jmp .Lt_00A0
.Lt_00A4:
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .Lt_00A6
jmp .Lt_009E
.Lt_00A6:
.Lt_00A5:
jmp .Lt_00A0
.Lt_00A7:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 20
jne .Lt_00AA
.Lt_00AB:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-16], eax
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .Lt_00AD
jmp .Lt_009E
.Lt_00AD:
.Lt_00AC:
jmp .Lt_00A8
.Lt_00AA:
cmp dword ptr [ebp-24], 10
jne .Lt_00AE
.Lt_00AF:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-16], ebx
jmp .Lt_00A8
.Lt_00AE:
jmp .Lt_009E
.Lt_00B0:
.Lt_00A8:
jmp .Lt_00A0
.Lt_00B1:
jmp .Lt_009E
jmp .Lt_00A0
.Lt_00A1:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967288
cmp ebx, 5
ja .Lt_00B1
mov ebx, dword ptr [ebp-20]
jmp dword ptr [_.LT_00B2+ebx*4-32]
_.LT_00B2:
.int .Lt_00A3
.int .Lt_00A3
.int .Lt_00A4
.int .Lt_00A3
.int .Lt_00B1
.int .Lt_00A7
.Lt_00A0:
cmp dword ptr [ebp-12], 0
je .Lt_00B4
push dword ptr [ebp-16]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00B6
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00B8
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.Lt_00B8:
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
.Lt_00B3:
push 64
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .Lt_00BA
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 8
jne .Lt_00BC
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00BE
push 2112
call _LEXSKIPTOKEN
add esp, 4
push 0
push 0
push 120
call _ERRREPORT
add esp, 12
.Lt_00BE:
.Lt_00BD:
.Lt_00BC:
.Lt_00BB:
jmp .Lt_009E
.Lt_00BA:
.Lt_00B9:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 9
jne .Lt_00C0
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+76], 0
jne .Lt_00C2
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00C4
push 0
push 0
push 257
call _ERRREPORT
add esp, 12
.Lt_00C4:
.Lt_00C3:
jmp .Lt_009E
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
push 2112
call _LEXSKIPTOKEN
add esp, 4
push 64
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00C6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
.Lt_00C6:
.Lt_00C5:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_00C8
.Lt_00CA:
jmp .Lt_00C7
.Lt_00CB:
mov eax, dword ptr [ebp+12]
and eax, 8
test eax, eax
je .Lt_00CD
jmp .Lt_009E
.Lt_00CD:
.Lt_00CC:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00CF
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
.Lt_00CF:
.Lt_00CE:
mov dword ptr [ebp-4], 0
jmp .Lt_0090
jmp .Lt_00C7
.Lt_00D0:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .Lt_00D2
mov eax, dword ptr [ebp+12]
and eax, 8
test eax, eax
je .Lt_00D4
jmp .Lt_009E
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00D6
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
.Lt_00D6:
.Lt_00D5:
mov dword ptr [ebp-4], 0
jmp .Lt_0090
jmp .Lt_00C7
.Lt_00C8:
cmp dword ptr [ebp-20], 5
ja .Lt_00D0
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00D7+eax*4]
_.LT_00D7:
.int .Lt_00CA
.int .Lt_00CB
.int .Lt_00CA
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00CB
.Lt_00C7:
push -1
push 0
call _LEXGETTEXT
push eax
push dword ptr [ebp-12]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00D9
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00DB
call _LEXGETTEXT
push eax
push 8
call _ERRREPORTUNDEF
add esp, 8
jmp .Lt_00DA
.Lt_00DB:
call _HSKIPSYMBOL
.Lt_00DA:
mov dword ptr [ebp-4], 0
jmp .Lt_0090
.Lt_00D9:
.Lt_00D8:
mov eax, dword ptr [ebp+12]
and eax, 32
test eax, eax
je .Lt_00DD
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 10
je .Lt_00E1
.Lt_00E2:
cmp dword ptr [ebp-20], 11
jne .Lt_00E0
.Lt_00E1:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-24], ebx
.Lt_00E3:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
.Lt_00E6:
mov eax, dword ptr [ebp-28]
cmp dword ptr [eax], 12
jne .Lt_00EA
push 0
push 0
push 209
call _ERRREPORT
add esp, 12
jmp .Lt_00E4
.Lt_00EA:
.Lt_00E9:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-28], ebx
.Lt_00E8:
cmp dword ptr [ebp-28], 0
jne .Lt_00E6
.Lt_00E7:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
.Lt_00E5:
cmp dword ptr [ebp-24], 0
jne .Lt_00E3
.Lt_00E4:
.Lt_00E0:
.Lt_00DE:
.Lt_00DD:
.Lt_00DC:
.Lt_009F:
jmp .Lt_009D
.Lt_009E:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00EC
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .Lt_00EE
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00F0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+160]
mov ebx, dword ptr [_SYMB+98528]
cmp dword ptr [eax], ebx
je .Lt_00F2
push 0
push 0
push 131
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_0090
.Lt_00F2:
.Lt_00F1:
.Lt_00F0:
.Lt_00EF:
jmp .Lt_00ED
.Lt_00EE:
cmp dword ptr [ebp-8], 0
je .Lt_00F4
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+4], 0
je .Lt_00F6
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+8], 0
je .Lt_00F8
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-12], 0
je .Lt_00F9
mov eax, dword ptr [ebp-16]
cmp eax, dword ptr [ebp-12]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_00FD
.Lt_00F9:
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-20]
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
.Lt_00FD:
cmp dword ptr [ebp-24], 0
je .Lt_00FC
push 0
push 0
push 255
call _ERRREPORT
add esp, 12
.Lt_00FC:
.Lt_00FB:
.Lt_00F8:
.Lt_00F7:
.Lt_00F6:
.Lt_00F5:
.Lt_00F4:
.Lt_00F3:
.Lt_00ED:
.Lt_00EC:
.Lt_00EB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0090:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPARENTID
_CPARENTID:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0100:
mov eax, dword ptr [_ENV+888]
and eax, 4
test eax, eax
jne .Lt_0103
mov dword ptr [ebp-4], 0
jmp .Lt_0101
.Lt_0103:
.Lt_0102:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1044]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0105
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_0107
push 2
call _HGLOBALID
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0107:
.Lt_0106:
.Lt_0105:
.Lt_0104:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.Lt_0108:
cmp dword ptr [ebp-8], 0
je .Lt_0109
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-24], eax
jmp .Lt_010B
.Lt_010D:
jmp .Lt_010A
.Lt_010E:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .Lt_0110
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .Lt_0109
.Lt_0110:
.Lt_010F:
jmp .Lt_010A
.Lt_0111:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .Lt_0114
.Lt_0115:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .Lt_0117
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .Lt_0109
.Lt_0117:
.Lt_0116:
jmp .Lt_0112
.Lt_0114:
cmp dword ptr [ebp-28], 10
jne .Lt_0118
.Lt_0119:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
jmp .Lt_0112
.Lt_0118:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .Lt_0109
.Lt_011A:
.Lt_0112:
jmp .Lt_010A
.Lt_011B:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .Lt_0109
jmp .Lt_010A
.Lt_010B:
mov ebx, dword ptr [ebp-24]
add ebx, 4294967288
cmp ebx, 5
ja .Lt_011B
mov ebx, dword ptr [ebp-24]
jmp dword ptr [_.LT_011C+ebx*4-32]
_.LT_011C:
.int .Lt_010D
.int .Lt_010D
.int .Lt_010E
.int .Lt_010D
.int .Lt_011B
.int .Lt_0111
.Lt_010A:
cmp dword ptr [ebp-16], 0
je .Lt_011E
push dword ptr [ebp-12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_0120
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.Lt_0120:
.Lt_011F:
.Lt_011E:
.Lt_011D:
push 64
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .Lt_0122
push 64
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
je .Lt_0124
jmp .Lt_0109
.Lt_0124:
.Lt_0123:
push 0
push 0
push 120
call _ERRREPORT
add esp, 12
jmp .Lt_0109
.Lt_0122:
.Lt_0121:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
jne .Lt_0126
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+76], 0
jne .Lt_0128
push 0
push 0
push 257
call _ERRREPORT
add esp, 12
jmp .Lt_0109
.Lt_0128:
.Lt_0127:
.Lt_0126:
.Lt_0125:
push 2112
call _LEXSKIPTOKEN
add esp, 4
push 64
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-20], 0
jne .Lt_012A
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
.Lt_012A:
.Lt_0129:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_012C
.Lt_012E:
jmp .Lt_012B
.Lt_012F:
mov eax, dword ptr [ebp+8]
and eax, 8
test eax, eax
je .Lt_0131
jmp .Lt_0109
.Lt_0131:
.Lt_0130:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
jmp .Lt_0109
jmp .Lt_012B
.Lt_0132:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .Lt_0134
mov eax, dword ptr [ebp+8]
and eax, 8
test eax, eax
je .Lt_0136
jmp .Lt_0109
.Lt_0136:
.Lt_0135:
.Lt_0134:
.Lt_0133:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
jmp .Lt_0109
jmp .Lt_012B
.Lt_012C:
cmp dword ptr [ebp-24], 5
ja .Lt_0132
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_0137+eax*4]
_.LT_0137:
.int .Lt_012E
.int .Lt_012F
.int .Lt_012E
.int .Lt_0132
.int .Lt_0132
.int .Lt_012F
.Lt_012B:
push -1
push 0
call _LEXGETTEXT
push eax
push dword ptr [ebp-12]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0108
.Lt_0109:
mov eax, dword ptr [ebp+8]
and eax, 2
test eax, eax
je .Lt_0139
mov eax, dword ptr [ebp+8]
and eax, 4
test eax, eax
je .Lt_013B
cmp dword ptr [ebp-20], 0
je .Lt_013D
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [_SYMB+98528]
cmp dword ptr [ebx], eax
je .Lt_013F
push 0
push 0
push 131
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_0101
.Lt_013F:
.Lt_013E:
.Lt_013D:
.Lt_013C:
jmp .Lt_013A
.Lt_013B:
cmp dword ptr [ebp-8], 0
je .Lt_0141
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], 0
je .Lt_0143
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+8], 0
je .Lt_0145
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-16], 0
je .Lt_0146
mov ebx, dword ptr [ebp-24]
cmp ebx, dword ptr [ebp-16]
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
jmp .Lt_014A
.Lt_0146:
mov eax, dword ptr [ebp-24]
cmp eax, dword ptr [ebp-28]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
.Lt_014A:
cmp dword ptr [ebp-32], 0
je .Lt_0149
push 0
push 0
push 255
call _ERRREPORT
add esp, 12
.Lt_0149:
.Lt_0148:
.Lt_0145:
.Lt_0144:
.Lt_0143:
.Lt_0142:
.Lt_0141:
.Lt_0140:
.Lt_013A:
.Lt_0139:
.Lt_0138:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_0101:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCURRENTPARENTID
_CCURRENTPARENTID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_014D:
push 0
call _CPARENTID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0150
jmp .Lt_014E
.Lt_0150:
.Lt_014F:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 8
jne .Lt_0153
.Lt_0154:
mov ebx, dword ptr [_SYMB+98528]
cmp dword ptr [ebp-4], ebx
je .Lt_0156
push 0
push 0
push 131
call _ERRREPORT
add esp, 12
.Lt_0156:
.Lt_0155:
jmp .Lt_0151
.Lt_0153:
cmp dword ptr [ebp-8], 11
jne .Lt_0157
.Lt_0158:
mov ebx, dword ptr [_SYMB+98528]
cmp dword ptr [ebp-4], ebx
je .Lt_015A
push 0
push 0
push 158
call _ERRREPORT
add esp, 12
.Lt_015A:
.Lt_0159:
.Lt_0157:
.Lt_0151:
.Lt_014E:
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
_HSKIPSYMBOL:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0068:
.Lt_006A:
push 64
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_006E
jmp .Lt_006B
.Lt_006E:
.Lt_006D:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0070
.Lt_0072:
jmp .Lt_006F
.Lt_0073:
jmp .Lt_006B
jmp .Lt_006F
.Lt_0070:
cmp dword ptr [ebp-4], 2
ja .Lt_0073
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_0074+eax*4]
_.LT_0074:
.int .Lt_0072
.int .Lt_0072
.int .Lt_0072
.Lt_006F:
.Lt_006C:
jmp .Lt_006A
.Lt_006B:
.Lt_0069:
mov esp, ebp
pop ebp
ret
.balign 16
_HGLOBALID:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0075:
mov dword ptr [ebp-4], 0
push 64
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .Lt_0078
push 64
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0077
.Lt_0078:
cmp dword ptr [_PARSER+52], 0
je .Lt_007A
jmp .Lt_0076
.Lt_007A:
.Lt_0079:
.Lt_0077:
mov eax, dword ptr [ebp+8]
and eax, 4
test eax, eax
je .Lt_007C
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .Lt_007E
push 0
push 0
push 131
call _ERRREPORT
add esp, 12
.Lt_007E:
.Lt_007D:
.Lt_007C:
.Lt_007B:
push 64
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0082
.Lt_0083:
cmp dword ptr [ebp-8], 2
jne .Lt_0081
.Lt_0082:
jmp .Lt_007F
.Lt_0081:
mov eax, dword ptr [ebp+8]
and eax, 2
test eax, eax
je .Lt_0086
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
.Lt_0086:
.Lt_0085:
jmp .Lt_0076
.Lt_0084:
.Lt_007F:
push -1
push 0
call _LEXGETTEXT
push eax
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0076:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HISSTRUCTALLOWED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0087:
mov eax, dword ptr [ebp+12]
and eax, 16
test eax, eax
jne .Lt_008A
mov dword ptr [ebp-4], 0
jmp .Lt_0088
.Lt_008A:
.Lt_0089:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
jne .Lt_008C
mov dword ptr [ebp-4], 0
jmp .Lt_0088
.Lt_008C:
.Lt_008B:
mov ebx, dword ptr [ebp+12]
and ebx, 64
je .Lt_008E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+116]
and eax, 16384
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_0088
.Lt_008E:
.Lt_008D:
mov dword ptr [ebp-4], -1
.Lt_0088:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
