	.intel_syntax noprefix

.section .text
.balign 16

.globl CMIDSTMT
CMIDSTMT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], 0
push 8192
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_006B
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_006A
.Lt_006B:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_006A:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006D
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
push dword ptr [ebp-8]
call ASTISCONSTANT
add esp, 4
test eax, eax
je .Lt_006F
push 0
push -1
push 119
call ERRREPORT
add esp, 12
.Lt_006F:
.Lt_006E:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0071
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_0070
.Lt_0071:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0070:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0073
jmp .Lt_0069
.Lt_0073:
.Lt_0072:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_0075
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0077
jmp .Lt_0069
.Lt_0077:
.Lt_0076:
jmp .Lt_0074
.Lt_0075:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_0074:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0079
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0078
.Lt_0079:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0078:
call CASSIGNTOKEN
test eax, eax
jne .Lt_007B
push 0
push 0
push 10
call ERRREPORT
add esp, 12
.Lt_007B:
.Lt_007A:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_007D
jmp .Lt_0069
.Lt_007D:
.Lt_007C:
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRASSIGNMID
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CLRSETSTMT
CLRSETSTMT:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_007F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp eax, 417
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0082
push 0
push 0
push 14
call ERRREPORT
add esp, 12
push 0
push -2147483648
push 0
push 0
push 0
push 17
call SYMBADDTEMPVAR
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0082:
.Lt_0081:
lea eax, [ebp-8]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-36], ebx
jmp .Lt_0084
.Lt_0086:
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-32]
je .Lt_0088
push 0
push 0
push 24
call ERRREPORT
add esp, 12
mov dword ptr [ebp-32], 0
.Lt_0088:
.Lt_0087:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .Lt_008A
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 20
jne .Lt_008C
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 0
je .Lt_008D
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-44], eax
jmp .Lt_00A7
.Lt_008D:
mov dword ptr [ebp-44], 0
.Lt_00A7:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-40], eax
.Lt_008C:
.Lt_008B:
.Lt_008A:
.Lt_0089:
cmp dword ptr [ebp-40], 0
jne .Lt_0090
push 0
push -1
push 14
call ERRREPORT
add esp, 12
jmp .Lt_008F
.Lt_0090:
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax+4]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0092
push 0
push -1
push 119
call ERRREPORT
add esp, 12
.Lt_0092:
.Lt_0091:
.Lt_008F:
jmp .Lt_0083
.Lt_0093:
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push 0
push 17
call SYMBADDTEMPVAR
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_0083
.Lt_0084:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 16
ja .Lt_0093
mov eax, dword ptr [ebp-36]
jmp dword ptr [.LT_0094+eax*4-16]
.LT_0094:
.int .Lt_0086
.int .Lt_0093
.int .Lt_0093
.int .Lt_0086
.int .Lt_0093
.int .Lt_0093
.int .Lt_0093
.int .Lt_0093
.int .Lt_0093
.int .Lt_0093
.int .Lt_0093
.int .Lt_0093
.int .Lt_0093
.int .Lt_0086
.int .Lt_0086
.int .Lt_0093
.int .Lt_0086
.Lt_0083:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0096
call CASSIGNTOKEN
test eax, eax
jne .Lt_0098
push 0
push 0
push 16
call ERRREPORT
add esp, 12
.Lt_0098:
.Lt_0097:
.Lt_0096:
.Lt_0095:
push dword ptr [ebp-16]
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_009A
jmp .Lt_0080
.Lt_009A:
.Lt_0099:
lea eax, [ebp-12]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 4
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-36], ecx
jmp .Lt_009C
.Lt_009E:
jmp .Lt_009B
.Lt_009F:
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push 0
push 17
call SYMBADDTEMPVAR
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-12], eax
jmp .Lt_009B
.Lt_009C:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 16
ja .Lt_009F
mov eax, dword ptr [ebp-36]
jmp dword ptr [.LT_00A0+eax*4-16]
.LT_00A0:
.int .Lt_009E
.int .Lt_009F
.int .Lt_009F
.int .Lt_009E
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009E
.int .Lt_009E
.int .Lt_009F
.int .Lt_009E
.Lt_009B:
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
je .Lt_00A2
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ecx
je .Lt_00A4
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], -1
jmp .Lt_0080
.Lt_00A4:
.Lt_00A3:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebp-28], ecx
cmp dword ptr [ebp-24], 0
sete cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-28], 0
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_00A6
push 0
push 0
push 14
call ERRREPORT
add esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], -1
jmp .Lt_0080
.Lt_00A6:
.Lt_00A5:
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+32]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
push dword ptr [ebp-12]
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ecx+32]
push dword ptr [eax+44]
push dword ptr [eax+40]
push dword ptr [ebp-8]
call RTLMEMCOPYCLEAR
add esp, 24
mov dword ptr [ebp-4], eax
jmp .Lt_00A1
.Lt_00A2:
push dword ptr [ebp-32]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRLRSET
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_00A1:
.Lt_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCVXFUNCT
CCVXFUNCT:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.Lt_0104:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], -2147483648
cmp dword ptr [ebp+8], 424
jne .Lt_0106
push 0
push 301
call HMATCH
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .Lt_016D
.Lt_0106:
mov dword ptr [ebp-12], 0
.Lt_016D:
cmp dword ptr [ebp-12], 0
je .Lt_0109
push 8
call CGTINPARENSONLYEXPR
push eax
call CCONSTINTEXPR
add esp, 8
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], edx
cmp dword ptr [ebp-52], 0
jne .Lt_010B
cmp dword ptr [ebp-56], 8
jne .Lt_010B
.Lt_0174:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
.Lt_010B:
push 0
push dword ptr [ebp-52]
push dword ptr [ebp-56]
call HINTEGERTYPEFROMBITSIZE
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 300
call HMATCH
add esp, 8
test eax, eax
jne .Lt_010D
push 0
push 0
push 309
call ERRREPORT
add esp, 12
.Lt_010D:
.Lt_010C:
.Lt_0109:
.Lt_0108:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_010F
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_010E
.Lt_010F:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_010E:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0111
jmp .Lt_0105
.Lt_0111:
.Lt_0110:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0113
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0112
.Lt_0113:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0112:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-16]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-52], edx
cmp dword ptr [ebp-52], 4
jne .Lt_0116
.Lt_0117:
push dword ptr [ebp-16]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], -1
jmp .Lt_0114
.Lt_0116:
cmp dword ptr [ebp-52], 17
je .Lt_0119
.Lt_011A:
cmp dword ptr [ebp-52], 18
je .Lt_0119
.Lt_011B:
cmp dword ptr [ebp-52], 7
jne .Lt_0118
.Lt_0119:
mov dword ptr [ebp-24], -1
.Lt_0118:
.Lt_0114:
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-52], eax
jmp .Lt_011D
.Lt_011F:
mov dword ptr [ebp-32], 16
mov dword ptr [ebp-28], 0
jmp .Lt_011C
.Lt_0120:
mov dword ptr [ebp-32], 15
mov dword ptr [ebp-28], 0
jmp .Lt_011C
.Lt_0121:
cmp dword ptr [ebp-8], -2147483648
je .Lt_0123
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
jmp .Lt_0122
.Lt_0123:
mov eax, dword ptr [ENV+892]
mov dword ptr [ebp-32], eax
.Lt_0122:
jmp .Lt_011C
.Lt_0124:
mov dword ptr [ebp-32], 11
jmp .Lt_011C
.Lt_0125:
mov dword ptr [ebp-32], 5
jmp .Lt_011C
.Lt_0126:
mov dword ptr [ebp-32], 13
jmp .Lt_011C
.Lt_011D:
mov eax, dword ptr [ebp-52]
add eax, 4294966874
cmp eax, 4
ja .Lt_0126
mov eax, dword ptr [ebp-52]
jmp dword ptr [.LT_0127+eax*4-1688]
.LT_0127:
.int .Lt_011F
.int .Lt_0120
.int .Lt_0121
.int .Lt_0124
.int .Lt_0125
.Lt_011C:
mov eax, dword ptr [ebp-28]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
setne dl
shr edx, 1
sbb edx, edx
and eax, edx
je .Lt_0129
mov edx, dword ptr [ebp-20]
push dword ptr [edx+56]
call HUNESCAPE
add esp, 4
mov dword ptr [ebp-36], eax
push 0
push dword ptr [ebp-36]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-40], eax
jmp .Lt_0128
.Lt_0129:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
.Lt_0128:
mov dword ptr [ebp-44], 0
cmp dword ptr [ebp-24], 0
jne .Lt_012A
mov eax, dword ptr [ebp-32]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .Lt_016E
.Lt_012A:
mov dword ptr [ebp-48], -1
.Lt_016E:
cmp dword ptr [ebp-48], 0
je .Lt_012D
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_012E
mov dword ptr [ebp-52], 24
jmp .Lt_016F
.Lt_012E:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_016F:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [ebp-40], edx
jl .Lt_0131
cmp dword ptr [ebp-32], 16
jne .Lt_0133
.Lt_0134:
push 16
push dword ptr [ebp-36]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_CVD
add esp, 4
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-44], eax
jmp .Lt_0132
.Lt_0133:
cmp dword ptr [ebp-32], 15
jne .Lt_0135
.Lt_0136:
push 15
push dword ptr [ebp-36]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_CVS
add esp, 4
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-44], eax
jmp .Lt_0132
.Lt_0135:
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_0138
mov dword ptr [ebp-56], 24
jmp .Lt_0170
.Lt_0138:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_0170:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-60], edx
cmp dword ptr [ebp-60], 2
jne .Lt_013C
.Lt_013D:
push 0
push 5
push dword ptr [ebp-36]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_CVSHORT
add esp, 4
movsx ebx, ax
mov edx, ebx
sar edx, 31
push edx
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-44], eax
jmp .Lt_013A
.Lt_013C:
cmp dword ptr [ebp-60], 4
jne .Lt_013E
.Lt_013F:
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_CVL
add esp, 4
mov edx, eax
mov ebx, edx
sar ebx, 31
push ebx
push edx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-44], eax
jmp .Lt_013A
.Lt_013E:
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_CVLONGINT
add esp, 4
push edx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-44], eax
.Lt_0140:
.Lt_013A:
.Lt_0137:
.Lt_0132:
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
jmp .Lt_0130
.Lt_0131:
cmp dword ptr [ebp-32], 16
jne .Lt_0142
.Lt_0143:
push 0
push 37
push offset Lt_0144
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_0141
.Lt_0142:
cmp dword ptr [ebp-32], 15
jne .Lt_0145
.Lt_0146:
push 0
push 38
push offset Lt_0147
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_0141
.Lt_0145:
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_0149
mov dword ptr [ebp-56], 24
jmp .Lt_0171
.Lt_0149:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_0171:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-60], edx
cmp dword ptr [ebp-60], 2
jne .Lt_014D
.Lt_014E:
push 0
push 40
push offset Lt_014F
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_014B
.Lt_014D:
cmp dword ptr [ebp-60], 4
jne .Lt_0150
.Lt_0151:
push 0
push 39
push offset Lt_0152
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_014B
.Lt_0150:
push 0
push 41
push offset Lt_0154
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
.Lt_0153:
.Lt_014B:
.Lt_0148:
.Lt_0141:
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-44]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0156
mov dword ptr [ebp-44], 0
.Lt_0156:
.Lt_0155:
.Lt_0130:
jmp .Lt_012C
.Lt_012D:
cmp dword ptr [ebp-32], 16
jne .Lt_0158
.Lt_0159:
push 0
push 42
push offset Lt_015A
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_0157
.Lt_0158:
cmp dword ptr [ebp-32], 15
jne .Lt_015B
.Lt_015C:
push 0
push 43
push offset Lt_015D
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_0157
.Lt_015B:
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_015F
mov dword ptr [ebp-52], 24
jmp .Lt_0172
.Lt_015F:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_0172:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 4
jne .Lt_0162
push 0
push 44
push offset Lt_0163
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_0161
.Lt_0162:
push 0
push 45
push offset Lt_0164
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
.Lt_0161:
.Lt_015E:
.Lt_0157:
cmp dword ptr [ebp-44], 0
je .Lt_0166
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-44]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0168
mov dword ptr [ebp-44], 0
.Lt_0168:
.Lt_0167:
.Lt_0166:
.Lt_0165:
.Lt_012C:
cmp dword ptr [ebp-44], 0
je .Lt_016A
push 0
push 0
push dword ptr [ebp-44]
push 0
push dword ptr [ebp-32]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-44], eax
.Lt_016A:
.Lt_0169:
cmp dword ptr [ebp-44], 0
jne .Lt_016C
push 0
push 0
push 24
call ERRREPORT
add esp, 12
.Lt_016C:
.Lt_016B:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
.Lt_0105:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CMKXFUNCT
CMKXFUNCT:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.Lt_0178:
push 8192
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], -2147483648
cmp dword ptr [ebp+8], 430
jne .Lt_017A
push 0
push 301
call HMATCH
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .Lt_01AC
.Lt_017A:
mov dword ptr [ebp-12], 0
.Lt_01AC:
cmp dword ptr [ebp-12], 0
je .Lt_017D
push 8
call CGTINPARENSONLYEXPR
push eax
call CCONSTINTEXPR
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
cmp dword ptr [ebp-24], 0
jne .Lt_017F
cmp dword ptr [ebp-28], 8
jne .Lt_017F
.Lt_01AF:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
.Lt_017F:
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call HINTEGERTYPEFROMBITSIZE
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 300
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0181
push 0
push 0
push 309
call ERRREPORT
add esp, 12
.Lt_0181:
.Lt_0180:
.Lt_017D:
.Lt_017C:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0183
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_0182
.Lt_0183:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0182:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0185
jmp .Lt_0179
.Lt_0185:
.Lt_0184:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0187
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0186
.Lt_0187:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0186:
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp-16], 0
je .Lt_0189
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .Lt_018B
.Lt_018D:
push 0
push 31
push offset Lt_018E
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_018A
.Lt_018F:
push 0
push 32
push offset Lt_0190
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_018A
.Lt_0191:
cmp dword ptr [ebp-8], -2147483648
jne .Lt_0193
mov eax, dword ptr [ENV+892]
mov dword ptr [ebp-8], eax
.Lt_0193:
.Lt_0192:
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 8
jne .Lt_0195
push 0
push 33
push offset Lt_0196
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_0194
.Lt_0195:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0197
mov dword ptr [ebp-28], 24
jmp .Lt_01AD
.Lt_0197:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_01AD:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-32], edx
cmp dword ptr [ebp-32], 3
jne .Lt_019B
.Lt_019C:
push 0
push 35
push offset Lt_019D
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_0199
.Lt_019B:
cmp dword ptr [ebp-32], 5
jne .Lt_019E
.Lt_019F:
push 0
push 34
push offset Lt_01A0
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_0199
.Lt_019E:
cmp dword ptr [ebp-32], 7
jne .Lt_01A1
.Lt_01A2:
push 0
push 36
push offset Lt_01A3
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
.Lt_01A1:
.Lt_0199:
.Lt_0194:
jmp .Lt_018A
.Lt_01A4:
push 0
push 34
push offset Lt_01A0
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_018A
.Lt_01A5:
push 0
push 35
push offset Lt_019D
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_018A
.Lt_01A6:
push 0
push 36
push offset Lt_01A3
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_018A
.Lt_018B:
mov eax, dword ptr [ebp-24]
add eax, 4294966868
cmp eax, 4
ja .Lt_01A6
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_01A7+eax*4-1712]
.LT_01A7:
.int .Lt_018D
.int .Lt_018F
.int .Lt_0191
.int .Lt_01A4
.int .Lt_01A5
.Lt_018A:
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01A9
mov dword ptr [ebp-20], 0
.Lt_01A9:
.Lt_01A8:
.Lt_0189:
.Lt_0188:
cmp dword ptr [ebp-20], 0
jne .Lt_01AB
push 0
push 0
push 24
call ERRREPORT
add esp, 12
.Lt_01AB:
.Lt_01AA:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0179:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSTRINGFUNCT
CSTRINGFUNCT:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.Lt_01B0:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 421
je .Lt_01B4
.Lt_01B5:
cmp dword ptr [ebp+8], 434
jne .Lt_01B3
.Lt_01B4:
mov eax, dword ptr [ebp+8]
cmp eax, 434
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_01B6
mov dword ptr [ebp-36], 2048
jmp .Lt_023A
.Lt_01B6:
mov dword ptr [ebp-36], 8192
.Lt_023A:
push dword ptr [ebp-36]
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_01B9
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_01B8
.Lt_01B9:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01B8:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01BB
jmp .Lt_01B1
.Lt_01BB:
.Lt_01BA:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_01BD
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_01BC
.Lt_01BD:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01BC:
cmp dword ptr [ebp-32], 0
jne .Lt_01BF
mov eax, dword ptr [ENV+136]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call RTLTOSTR
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_01BE
.Lt_01BF:
push dword ptr [ebp-8]
call RTLTOWSTR
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01BE:
cmp dword ptr [ebp-8], 0
jne .Lt_01C1
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_01C1:
.Lt_01C0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B2
.Lt_01B3:
cmp dword ptr [ebp+8], 435
jne .Lt_01C2
.Lt_01C3:
push 8192
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_01C5
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_01C4
.Lt_01C5:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01C4:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01C7
jmp .Lt_01B1
.Lt_01C7:
.Lt_01C6:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_01C9
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_01C8
.Lt_01C9:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01C8:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01CB
jmp .Lt_01B1
.Lt_01CB:
.Lt_01CA:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_01CD
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01CF
jmp .Lt_01B1
.Lt_01CF:
.Lt_01CE:
jmp .Lt_01CC
.Lt_01CD:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_01CC:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_01D1
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_01D0
.Lt_01D1:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01D0:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRMID
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01D3
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_01D3:
.Lt_01D2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B2
.Lt_01C2:
cmp dword ptr [ebp+8], 369
je .Lt_01D5
.Lt_01D6:
cmp dword ptr [ebp+8], 371
jne .Lt_01D4
.Lt_01D5:
mov eax, dword ptr [ebp+8]
cmp eax, 371
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_01D7
mov dword ptr [ebp-36], 2048
jmp .Lt_023B
.Lt_01D7:
mov dword ptr [ebp-36], 8192
.Lt_023B:
push dword ptr [ebp-36]
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_01DA
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_01D9
.Lt_01DA:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01D9:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01DC
jmp .Lt_01B1
.Lt_01DC:
.Lt_01DB:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_01DE
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_01DD
.Lt_01DE:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01DD:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01E0
jmp .Lt_01B1
.Lt_01E0:
.Lt_01DF:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_01E2
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_01E1
.Lt_01E2:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01E1:
cmp dword ptr [ebp-32], 0
jne .Lt_01E4
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRFILL
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_01E3
.Lt_01E4:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLWSTRFILL
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_01E3:
cmp dword ptr [ebp-8], 0
jne .Lt_01E6
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_01E6:
.Lt_01E5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B2
.Lt_01D4:
cmp dword ptr [ebp+8], 419
je .Lt_01E8
.Lt_01E9:
cmp dword ptr [ebp+8], 420
jne .Lt_01E7
.Lt_01E8:
mov eax, dword ptr [ebp+8]
cmp eax, 420
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_01EA
mov dword ptr [ebp-36], 2048
jmp .Lt_023C
.Lt_01EA:
mov dword ptr [ebp-36], 8192
.Lt_023C:
push dword ptr [ebp-36]
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-32]
call CSTRCHR
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01B2
.Lt_01E7:
cmp dword ptr [ebp+8], 418
jne .Lt_01EC
.Lt_01ED:
push 2048
call LEXSKIPTOKEN
add esp, 4
call CSTRASC
mov dword ptr [ebp-4], eax
jmp .Lt_01B2
.Lt_01EC:
cmp dword ptr [ebp+8], 436
jne .Lt_01EE
.Lt_01EF:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_01F1
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_01F0
.Lt_01F1:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01F0:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01F3
jmp .Lt_01B1
.Lt_01F3:
.Lt_01F2:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_01F5
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_01F4
.Lt_01F5:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01F4:
push 2048
push 372
call HMATCH
add esp, 8
mov dword ptr [ebp-28], eax
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01F7
jmp .Lt_01B1
.Lt_01F7:
.Lt_01F6:
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp-28], 0
jne .Lt_01F9
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_01FB
push 2048
push 372
call HMATCH
add esp, 8
mov dword ptr [ebp-28], eax
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01FD
jmp .Lt_01B1
.Lt_01FD:
.Lt_01FC:
.Lt_01FB:
.Lt_01FA:
.Lt_01F9:
.Lt_01F8:
cmp dword ptr [ebp-16], 0
jne .Lt_01FF
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
push 0
push 8
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_01FF:
.Lt_01FE:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0201
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0200
.Lt_0201:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0200:
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRINSTR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0203
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0203:
.Lt_0202:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B2
.Lt_01EE:
cmp dword ptr [ebp+8], 437
jne .Lt_0204
.Lt_0205:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0207
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_0206
.Lt_0207:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0206:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0209
jmp .Lt_01B1
.Lt_0209:
.Lt_0208:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_020B
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_020A
.Lt_020B:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_020A:
push 2048
push 372
call HMATCH
add esp, 8
mov dword ptr [ebp-28], eax
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_020D
jmp .Lt_01B1
.Lt_020D:
.Lt_020C:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_020F
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0211
jmp .Lt_01B1
.Lt_0211:
.Lt_0210:
jmp .Lt_020E
.Lt_020F:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_020E:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0213
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0212
.Lt_0213:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0212:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call RTLSTRINSTRREV
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0215
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0215:
.Lt_0214:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B2
.Lt_0204:
cmp dword ptr [ebp+8], 438
je .Lt_0217
.Lt_0218:
cmp dword ptr [ebp+8], 440
je .Lt_0217
.Lt_0219:
cmp dword ptr [ebp+8], 439
jne .Lt_0216
.Lt_0217:
push 8192
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_021B
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_021A
.Lt_021B:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_021A:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_021D
jmp .Lt_01B1
.Lt_021D:
.Lt_021C:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_021F
push 2048
push 372
call HMATCH
add esp, 8
mov dword ptr [ebp-28], eax
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0221
jmp .Lt_01B1
.Lt_0221:
.Lt_0220:
jmp .Lt_021E
.Lt_021F:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-12], 0
.Lt_021E:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0223
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0222
.Lt_0223:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0222:
cmp dword ptr [ebp+8], 438
jne .Lt_0225
.Lt_0226:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRTRIM
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_0224
.Lt_0225:
cmp dword ptr [ebp+8], 440
jne .Lt_0227
.Lt_0228:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRLTRIM
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_0224
.Lt_0227:
cmp dword ptr [ebp+8], 439
jne .Lt_0229
.Lt_022A:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRRTRIM
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0229:
.Lt_0224:
cmp dword ptr [ebp-8], 0
jne .Lt_022C
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_022C:
.Lt_022B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B2
.Lt_0216:
cmp dword ptr [ebp+8], 441
je .Lt_022E
.Lt_022F:
cmp dword ptr [ebp+8], 442
jne .Lt_022D
.Lt_022E:
push 8192
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0231
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_0230
.Lt_0231:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0230:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0233
jmp .Lt_01B1
.Lt_0233:
.Lt_0232:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_0235
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0237
jmp .Lt_01B1
.Lt_0237:
.Lt_0236:
jmp .Lt_0234
.Lt_0235:
mov dword ptr [ebp-12], 0
.Lt_0234:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0239
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0238
.Lt_0239:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0238:
mov eax, dword ptr [ebp+8]
cmp eax, 441
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRCASE
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_022D:
.Lt_01B2:
.Lt_01B1:
mov eax, dword ptr [ebp-4]
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
CSTRCHR:
push ebp
mov ebp, esp
sub esp, 224
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B0:
lea eax, [ebp-148]
mov dword ptr [ebp-184], eax
lea eax, [ebp-148]
mov dword ptr [ebp-180], eax
mov dword ptr [ebp-176], 128
mov dword ptr [ebp-172], 4
mov dword ptr [ebp-168], 1
mov dword ptr [ebp-164], 49
mov dword ptr [ebp-160], 32
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 31
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_00B4
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_00B3
.Lt_00B4:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_00B3:
mov dword ptr [ebp-16], 0
.Lt_00B5:
push 12
call HMATCHEXPR
add esp, 4
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp+ebx*4-148], eax
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp+eax*4-148], 0
jne .Lt_00B9
jmp .Lt_00B1
.Lt_00B9:
.Lt_00B8:
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 32
jl .Lt_00BB
jmp .Lt_00B6
.Lt_00BB:
.Lt_00BA:
.Lt_00B7:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_00B5
.Lt_00B6:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00BD
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_00BC
.Lt_00BD:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_00BC:
mov dword ptr [ebp-20], -1
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-188], eax
jmp .Lt_00BF
.Lt_00C2:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+eax*4-148]
cmp dword ptr [ebx], 16
je .Lt_00C4
mov dword ptr [ebp-20], 0
jmp .Lt_00C1
.Lt_00C4:
.Lt_00C3:
mov ebx, dword ptr [ebp-12]
push dword ptr [ebp+ebx*4-148]
call ASTCONSTEQZERO
add esp, 4
test eax, eax
je .Lt_00C6
mov dword ptr [ebp-20], 0
jmp .Lt_00C1
.Lt_00C6:
.Lt_00C5:
.Lt_00C0:
inc dword ptr [ebp-12]
.Lt_00BF:
mov eax, dword ptr [ebp-188]
cmp dword ptr [ebp-12], eax
jle .Lt_00C2
.Lt_00C1:
cmp dword ptr [ebp-20], 0
je .Lt_00C8
cmp dword ptr [ebp+8], 0
jne .Lt_00CA
push 0
push 1
push offset Lt_0000
push 417
push offset Lt_0242
call fb_StrAssign
add esp, 20
jmp .Lt_00C9
.Lt_00CA:
push 1
push offset Lt_0000
push 417
push offset Lt_0243
call fb_WstrAssignFromA
add esp, 16
.Lt_00C9:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-188], eax
jmp .Lt_00CC
.Lt_00CF:
push 12
mov eax, dword ptr [ebp-12]
push dword ptr [ebp+eax*4-148]
call ASTCONSTFLUSHTOINT
add esp, 8
mov ebx, eax
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp+ebx*4-148], 0
cmp dword ptr [ebp+8], 0
jne .Lt_00D1
mov eax, dword ptr [ebp-8]
mov ebx, eax
sar ebx, 31
cmp ebx, 0
jb .Lt_00D3
ja .Lt_0244
cmp eax, 255
jbe .Lt_00D3
.Lt_0244:
mov dword ptr [ebp-8], 255
.Lt_00D3:
.Lt_00D2:
mov eax, dword ptr [ebp-8]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 127
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00D5
push 0
push -1
push 2
push offset Lt_00D6
push 417
push offset Lt_0242
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea ebx, [ebp-200]
push ebx
call fb_StrConcat
add esp, 20
push eax
push 417
push offset Lt_0242
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-8]
call fb_OCT_i
add esp, 4
push eax
push 12
push offset Lt_0247
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 12
push offset Lt_0247
call fb_StrLen
add esp, 8
push eax
push 1
call fb_CHR
add esp, 8
push eax
push 417
push offset Lt_0242
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 20
push eax
push 417
push offset Lt_0242
call fb_StrAssign
add esp, 20
push 0
push -1
push 12
push offset Lt_0247
push 417
push offset Lt_0242
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 20
push eax
push 417
push offset Lt_0242
call fb_StrAssign
add esp, 20
jmp .Lt_00D4
.Lt_00D5:
push 0
push -1
push -1
push dword ptr [ebp-8]
push 1
call fb_CHR
add esp, 8
push eax
push 417
push offset Lt_0242
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 20
push eax
push 417
push offset Lt_0242
call fb_StrAssign
add esp, 20
.Lt_00D4:
jmp .Lt_00D0
.Lt_00D1:
mov eax, dword ptr [ebp-8]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 127
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00DC
push 2
push offset Lt_00D6
push offset Lt_0243
call fb_WstrConcatWA
add esp, 12
mov dword ptr [ebp-192], eax
push dword ptr [ebp-192]
push 417
push offset Lt_0243
call fb_WstrAssign
add esp, 12
push dword ptr [ebp-192]
call fb_WstrDelete
add esp, 4
push 0
push -1
push dword ptr [ebp-8]
call fb_OCT_i
add esp, 4
push eax
push 12
push offset Lt_0247
call fb_StrAssign
add esp, 20
push 12
push offset Lt_0247
call fb_StrLen
add esp, 8
push eax
push 1
call fb_WstrChr
add esp, 8
mov dword ptr [ebp-196], eax
push dword ptr [ebp-196]
push 417
push offset Lt_0243
call fb_WstrConcatAssign
add esp, 12
push dword ptr [ebp-196]
call fb_WstrDelete
add esp, 4
push 12
push offset Lt_0247
push offset Lt_0243
call fb_WstrConcatWA
add esp, 12
mov dword ptr [ebp-200], eax
push dword ptr [ebp-200]
push 417
push offset Lt_0243
call fb_WstrAssign
add esp, 12
push dword ptr [ebp-200]
call fb_WstrDelete
add esp, 4
jmp .Lt_00DB
.Lt_00DC:
push dword ptr [ebp-8]
push 1
call fb_WstrChr
add esp, 8
mov dword ptr [ebp-192], eax
push dword ptr [ebp-192]
push 417
push offset Lt_0243
call fb_WstrConcatAssign
add esp, 12
push dword ptr [ebp-192]
call fb_WstrDelete
add esp, 4
.Lt_00DB:
.Lt_00D0:
.Lt_00CD:
inc dword ptr [ebp-12]
.Lt_00CC:
mov eax, dword ptr [ebp-188]
cmp dword ptr [ebp-12], eax
jle .Lt_00CF
.Lt_00CE:
cmp dword ptr [ebp+8], 0
jne .Lt_00E2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
push offset Lt_0242
call SYMBALLOCSTRCONST
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
.Lt_00E2:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
push offset Lt_0243
call SYMBALLOCWSTRCONST
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_00E1:
jmp .Lt_00C7
.Lt_00C8:
push dword ptr [ebp+8]
lea eax, [ebp-184]
push eax
push dword ptr [ebp-16]
call RTLSTRCHR
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_00C7:
.Lt_00B1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0247,12
.balign 4
	.lcomm	Lt_0242,417
.balign 4
	.lcomm	Lt_0243,1668

.section .text
.balign 16
CSTRASC:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E3:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_00E6
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_00E5
.Lt_00E6:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_00E5:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00E8
jmp .Lt_00E4
.Lt_00E8:
.Lt_00E7:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_00EA
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00EC
jmp .Lt_00E4
.Lt_00EC:
.Lt_00EB:
jmp .Lt_00E9
.Lt_00EA:
mov dword ptr [ebp-12], 0
.Lt_00E9:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00EE
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_00ED
.Lt_00EE:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_00ED:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 4
je .Lt_00F2
.Lt_00F3:
cmp dword ptr [ebp-28], 7
jne .Lt_00F1
.Lt_00F2:
push dword ptr [ebp-8]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_00F1:
.Lt_00EF:
cmp dword ptr [ebp-24], 0
je .Lt_00F5
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ENV+264]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00F7
mov dword ptr [ebp-20], 4294967295
mov dword ptr [ebp-16], 4294967295
jmp .Lt_00F6
.Lt_00F7:
cmp dword ptr [ebp-12], 0
je .Lt_00F9
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .Lt_00FB
push 8
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp-16], 0
jg .Lt_00FD
jl .Lt_024C
cmp dword ptr [ebp-20], 0
jae .Lt_00FD
.Lt_024C:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
.Lt_00FD:
.Lt_00FC:
jmp .Lt_00FA
.Lt_00FB:
mov dword ptr [ebp-20], 4294967295
mov dword ptr [ebp-16], 4294967295
.Lt_00FA:
jmp .Lt_00F8
.Lt_00F9:
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-16], 0
.Lt_00F8:
.Lt_00F6:
cmp dword ptr [ebp-16], 0
jl .Lt_00FF
jg .Lt_024D
cmp dword ptr [ebp-20], 0
jb .Lt_00FF
.Lt_024D:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+4]
and edx, 511
cmp edx, 7
je .Lt_0101
mov edx, dword ptr [ebp-24]
push dword ptr [edx+56]
call HUNESCAPE
add esp, 4
mov dword ptr [ebp-28], eax
push 0
push 9
mov eax, dword ptr [ebp-20]
push eax
push dword ptr [ebp-28]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_ASC
add esp, 8
mov ebx, eax
mov edx, 0
push edx
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0100
.Lt_0101:
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 4
mov dword ptr [ebp-28], eax
push 0
push 9
mov eax, dword ptr [ebp-20]
push eax
push dword ptr [ebp-28]
call fb_WstrAsc
add esp, 8
mov edx, eax
mov ebx, 0
push ebx
push edx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0100:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov dword ptr [ebp-8], 0
.Lt_00FF:
.Lt_00FE:
.Lt_00F5:
.Lt_00F4:
cmp dword ptr [ebp-8], 0
je .Lt_0103
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRASC
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0103:
.Lt_0102:
.Lt_00E4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
Lt_00D6:	.ascii	"\33""\0"
.balign 4
Lt_0144:	.ascii	"fb_CVD\0"
.balign 4
Lt_0147:	.ascii	"fb_CVS\0"
.balign 4
Lt_014F:	.ascii	"fb_CVSHORT\0"
.balign 4
Lt_0152:	.ascii	"fb_CVL\0"
.balign 4
Lt_0154:	.ascii	"fb_CVLONGINT\0"
.balign 4
Lt_015A:	.ascii	"fb_CVDFROMLONGINT\0"
.balign 4
Lt_015D:	.ascii	"fb_CVSFROML\0"
.balign 4
Lt_0163:	.ascii	"fb_CVLFROMS\0"
.balign 4
Lt_0164:	.ascii	"fb_CVLONGINTFROMD\0"
.balign 4
Lt_018E:	.ascii	"fb_MKD\0"
.balign 4
Lt_0190:	.ascii	"fb_MKS\0"
.balign 4
Lt_0196:	.ascii	"fb_MKI\0"
.balign 4
Lt_019D:	.ascii	"fb_MKSHORT\0"
.balign 4
Lt_01A0:	.ascii	"fb_MKL\0"
.balign 4
Lt_01A3:	.ascii	"fb_MKLONGINT\0"
