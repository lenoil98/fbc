	.intel_syntax noprefix

.section .text
.balign 16

.globl _CMIDSTMT
_CMIDSTMT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
mov dword ptr [ebp-4], 0
push 8192
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_006C
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_006B
.Lt_006C:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_006B:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006E
jmp .Lt_006A
.Lt_006E:
.Lt_006D:
push dword ptr [ebp-8]
call _ASTISCONSTANT
add esp, 4
test eax, eax
je .Lt_0070
push 0
push -1
push 119
call _ERRREPORT
add esp, 12
.Lt_0070:
.Lt_006F:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0072
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_0071
.Lt_0072:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0071:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0074
jmp .Lt_006A
.Lt_0074:
.Lt_0073:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0076
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0078
jmp .Lt_006A
.Lt_0078:
.Lt_0077:
jmp .Lt_0075
.Lt_0076:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_0075:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_007A
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0079
.Lt_007A:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0079:
call _CASSIGNTOKEN
test eax, eax
jne .Lt_007C
push 0
push 0
push 10
call _ERRREPORT
add esp, 12
.Lt_007C:
.Lt_007B:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_007E
jmp .Lt_006A
.Lt_007E:
.Lt_007D:
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRASSIGNMID
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_006A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLRSETSTMT
_CLRSETSTMT:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0080:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp eax, 417
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0083
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push -2147483648
push 0
push 0
push 0
push 17
call _SYMBADDTEMPVAR
add esp, 8
push eax
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0083:
.Lt_0082:
lea eax, [ebp-8]
push eax
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-36], ebx
jmp .Lt_0085
.Lt_0087:
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-32]
je .Lt_0089
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-32], 0
.Lt_0089:
.Lt_0088:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .Lt_008B
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 20
jne .Lt_008D
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 0
je .Lt_008E
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-44], eax
jmp .Lt_00A8
.Lt_008E:
mov dword ptr [ebp-44], 0
.Lt_00A8:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-40], eax
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_008A:
cmp dword ptr [ebp-40], 0
jne .Lt_0091
push 0
push -1
push 14
call _ERRREPORT
add esp, 12
jmp .Lt_0090
.Lt_0091:
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
je .Lt_0093
push 0
push -1
push 119
call _ERRREPORT
add esp, 12
.Lt_0093:
.Lt_0092:
.Lt_0090:
jmp .Lt_0084
.Lt_0094:
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push 0
push 17
call _SYMBADDTEMPVAR
add esp, 8
push eax
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_0084
.Lt_0085:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 16
ja .Lt_0094
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.LT_0095+eax*4-16]
_.LT_0095:
.int .Lt_0087
.int .Lt_0094
.int .Lt_0094
.int .Lt_0087
.int .Lt_0094
.int .Lt_0094
.int .Lt_0094
.int .Lt_0094
.int .Lt_0094
.int .Lt_0094
.int .Lt_0094
.int .Lt_0094
.int .Lt_0094
.int .Lt_0087
.int .Lt_0087
.int .Lt_0094
.int .Lt_0087
.Lt_0084:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0097
call _CASSIGNTOKEN
test eax, eax
jne .Lt_0099
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
.Lt_0099:
.Lt_0098:
.Lt_0097:
.Lt_0096:
push dword ptr [ebp-16]
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_009B
jmp .Lt_0081
.Lt_009B:
.Lt_009A:
lea eax, [ebp-12]
push eax
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-36], ecx
jmp .Lt_009D
.Lt_009F:
jmp .Lt_009C
.Lt_00A0:
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push 0
push 17
call _SYMBADDTEMPVAR
add esp, 8
push eax
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-12], eax
jmp .Lt_009C
.Lt_009D:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 16
ja .Lt_00A0
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.LT_00A1+eax*4-16]
_.LT_00A1:
.int .Lt_009F
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_009F
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_009F
.int .Lt_009F
.int .Lt_00A0
.int .Lt_009F
.Lt_009C:
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
je .Lt_00A3
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ecx
je .Lt_00A5
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], -1
jmp .Lt_0081
.Lt_00A5:
.Lt_00A4:
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
je .Lt_00A7
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], -1
jmp .Lt_0081
.Lt_00A7:
.Lt_00A6:
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
call _RTLMEMCOPYCLEAR
add esp, 24
mov dword ptr [ebp-4], eax
jmp .Lt_00A2
.Lt_00A3:
push dword ptr [ebp-32]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRLRSET
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_00A2:
.Lt_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCVXFUNCT
_CCVXFUNCT:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.Lt_0105:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], -2147483648
cmp dword ptr [ebp+8], 424
jne .Lt_0107
push 0
push 301
call _HMATCH
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .Lt_016E
.Lt_0107:
mov dword ptr [ebp-12], 0
.Lt_016E:
cmp dword ptr [ebp-12], 0
je .Lt_010A
push 8
call _CGTINPARENSONLYEXPR
push eax
call _CCONSTINTEXPR
add esp, 8
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], edx
cmp dword ptr [ebp-52], 0
jne .Lt_010C
cmp dword ptr [ebp-56], 8
jne .Lt_010C
.Lt_0175:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
.Lt_010C:
push 0
push dword ptr [ebp-52]
push dword ptr [ebp-56]
call _HINTEGERTYPEFROMBITSIZE
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 300
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_010E
push 0
push 0
push 309
call _ERRREPORT
add esp, 12
.Lt_010E:
.Lt_010D:
.Lt_010A:
.Lt_0109:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0110
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_010F
.Lt_0110:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_010F:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0112
jmp .Lt_0106
.Lt_0112:
.Lt_0111:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0114
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0113
.Lt_0114:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0113:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-16]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-52], edx
cmp dword ptr [ebp-52], 4
jne .Lt_0117
.Lt_0118:
push dword ptr [ebp-16]
call _ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], -1
jmp .Lt_0115
.Lt_0117:
cmp dword ptr [ebp-52], 17
je .Lt_011A
.Lt_011B:
cmp dword ptr [ebp-52], 18
je .Lt_011A
.Lt_011C:
cmp dword ptr [ebp-52], 7
jne .Lt_0119
.Lt_011A:
mov dword ptr [ebp-24], -1
.Lt_0119:
.Lt_0115:
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-52], eax
jmp .Lt_011E
.Lt_0120:
mov dword ptr [ebp-32], 16
mov dword ptr [ebp-28], 0
jmp .Lt_011D
.Lt_0121:
mov dword ptr [ebp-32], 15
mov dword ptr [ebp-28], 0
jmp .Lt_011D
.Lt_0122:
cmp dword ptr [ebp-8], -2147483648
je .Lt_0124
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
jmp .Lt_0123
.Lt_0124:
mov eax, dword ptr [_ENV+892]
mov dword ptr [ebp-32], eax
.Lt_0123:
jmp .Lt_011D
.Lt_0125:
mov dword ptr [ebp-32], 11
jmp .Lt_011D
.Lt_0126:
mov dword ptr [ebp-32], 5
jmp .Lt_011D
.Lt_0127:
mov dword ptr [ebp-32], 13
jmp .Lt_011D
.Lt_011E:
mov eax, dword ptr [ebp-52]
add eax, 4294966874
cmp eax, 4
ja .Lt_0127
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.LT_0128+eax*4-1688]
_.LT_0128:
.int .Lt_0120
.int .Lt_0121
.int .Lt_0122
.int .Lt_0125
.int .Lt_0126
.Lt_011D:
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
je .Lt_012A
mov edx, dword ptr [ebp-20]
push dword ptr [edx+56]
call _HUNESCAPE
add esp, 4
mov dword ptr [ebp-36], eax
push 0
push dword ptr [ebp-36]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-40], eax
jmp .Lt_0129
.Lt_012A:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
.Lt_0129:
mov dword ptr [ebp-44], 0
cmp dword ptr [ebp-24], 0
jne .Lt_012B
mov eax, dword ptr [ebp-32]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .Lt_016F
.Lt_012B:
mov dword ptr [ebp-48], -1
.Lt_016F:
cmp dword ptr [ebp-48], 0
je .Lt_012E
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_012F
mov dword ptr [ebp-52], 24
jmp .Lt_0170
.Lt_012F:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_0170:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [ebp-40], edx
jl .Lt_0132
cmp dword ptr [ebp-32], 16
jne .Lt_0134
.Lt_0135:
push 16
push dword ptr [ebp-36]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_CVD
add esp, 4
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-44], eax
jmp .Lt_0133
.Lt_0134:
cmp dword ptr [ebp-32], 15
jne .Lt_0136
.Lt_0137:
push 15
push dword ptr [ebp-36]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_CVS
add esp, 4
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-44], eax
jmp .Lt_0133
.Lt_0136:
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_0139
mov dword ptr [ebp-56], 24
jmp .Lt_0171
.Lt_0139:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_0171:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-60], edx
cmp dword ptr [ebp-60], 2
jne .Lt_013D
.Lt_013E:
push 0
push 5
push dword ptr [ebp-36]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_CVSHORT
add esp, 4
movsx ebx, ax
mov edx, ebx
sar edx, 31
push edx
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-44], eax
jmp .Lt_013B
.Lt_013D:
cmp dword ptr [ebp-60], 4
jne .Lt_013F
.Lt_0140:
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_CVL
add esp, 4
mov edx, eax
mov ebx, edx
sar ebx, 31
push ebx
push edx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-44], eax
jmp .Lt_013B
.Lt_013F:
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_CVLONGINT
add esp, 4
push edx
push eax
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-44], eax
.Lt_0141:
.Lt_013B:
.Lt_0138:
.Lt_0133:
push dword ptr [ebp-16]
call _ASTDELNODE
add esp, 4
jmp .Lt_0131
.Lt_0132:
cmp dword ptr [ebp-32], 16
jne .Lt_0143
.Lt_0144:
push 0
push 37
push offset _Lt_0145
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_0142
.Lt_0143:
cmp dword ptr [ebp-32], 15
jne .Lt_0146
.Lt_0147:
push 0
push 38
push offset _Lt_0148
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_0142
.Lt_0146:
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_014A
mov dword ptr [ebp-56], 24
jmp .Lt_0172
.Lt_014A:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_0172:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-60], edx
cmp dword ptr [ebp-60], 2
jne .Lt_014E
.Lt_014F:
push 0
push 40
push offset _Lt_0150
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_014C
.Lt_014E:
cmp dword ptr [ebp-60], 4
jne .Lt_0151
.Lt_0152:
push 0
push 39
push offset _Lt_0153
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_014C
.Lt_0151:
push 0
push 41
push offset _Lt_0155
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
.Lt_0154:
.Lt_014C:
.Lt_0149:
.Lt_0142:
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-44]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0157
mov dword ptr [ebp-44], 0
.Lt_0157:
.Lt_0156:
.Lt_0131:
jmp .Lt_012D
.Lt_012E:
cmp dword ptr [ebp-32], 16
jne .Lt_0159
.Lt_015A:
push 0
push 42
push offset _Lt_015B
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_0158
.Lt_0159:
cmp dword ptr [ebp-32], 15
jne .Lt_015C
.Lt_015D:
push 0
push 43
push offset _Lt_015E
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_0158
.Lt_015C:
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_0160
mov dword ptr [ebp-52], 24
jmp .Lt_0173
.Lt_0160:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_0173:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 4
jne .Lt_0163
push 0
push 44
push offset _Lt_0164
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
jmp .Lt_0162
.Lt_0163:
push 0
push 45
push offset _Lt_0165
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-44], eax
.Lt_0162:
.Lt_015F:
.Lt_0158:
cmp dword ptr [ebp-44], 0
je .Lt_0167
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-44]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0169
mov dword ptr [ebp-44], 0
.Lt_0169:
.Lt_0168:
.Lt_0167:
.Lt_0166:
.Lt_012D:
cmp dword ptr [ebp-44], 0
je .Lt_016B
push 0
push 0
push dword ptr [ebp-44]
push 0
push dword ptr [ebp-32]
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-44], eax
.Lt_016B:
.Lt_016A:
cmp dword ptr [ebp-44], 0
jne .Lt_016D
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
.Lt_016D:
.Lt_016C:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
.Lt_0106:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMKXFUNCT
_CMKXFUNCT:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.Lt_0179:
push 8192
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], -2147483648
cmp dword ptr [ebp+8], 430
jne .Lt_017B
push 0
push 301
call _HMATCH
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .Lt_01AD
.Lt_017B:
mov dword ptr [ebp-12], 0
.Lt_01AD:
cmp dword ptr [ebp-12], 0
je .Lt_017E
push 8
call _CGTINPARENSONLYEXPR
push eax
call _CCONSTINTEXPR
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
cmp dword ptr [ebp-24], 0
jne .Lt_0180
cmp dword ptr [ebp-28], 8
jne .Lt_0180
.Lt_01B0:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
.Lt_0180:
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _HINTEGERTYPEFROMBITSIZE
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 300
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0182
push 0
push 0
push 309
call _ERRREPORT
add esp, 12
.Lt_0182:
.Lt_0181:
.Lt_017E:
.Lt_017D:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0184
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_0183
.Lt_0184:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0183:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0186
jmp .Lt_017A
.Lt_0186:
.Lt_0185:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0188
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0187
.Lt_0188:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0187:
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp-16], 0
je .Lt_018A
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .Lt_018C
.Lt_018E:
push 0
push 31
push offset _Lt_018F
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_018B
.Lt_0190:
push 0
push 32
push offset _Lt_0191
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_018B
.Lt_0192:
cmp dword ptr [ebp-8], -2147483648
jne .Lt_0194
mov eax, dword ptr [_ENV+892]
mov dword ptr [ebp-8], eax
.Lt_0194:
.Lt_0193:
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 8
jne .Lt_0196
push 0
push 33
push offset _Lt_0197
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_0195
.Lt_0196:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0198
mov dword ptr [ebp-28], 24
jmp .Lt_01AE
.Lt_0198:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_01AE:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-32], edx
cmp dword ptr [ebp-32], 3
jne .Lt_019C
.Lt_019D:
push 0
push 35
push offset _Lt_019E
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_019A
.Lt_019C:
cmp dword ptr [ebp-32], 5
jne .Lt_019F
.Lt_01A0:
push 0
push 34
push offset _Lt_01A1
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_019A
.Lt_019F:
cmp dword ptr [ebp-32], 7
jne .Lt_01A2
.Lt_01A3:
push 0
push 36
push offset _Lt_01A4
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
.Lt_01A2:
.Lt_019A:
.Lt_0195:
jmp .Lt_018B
.Lt_01A5:
push 0
push 34
push offset _Lt_01A1
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_018B
.Lt_01A6:
push 0
push 35
push offset _Lt_019E
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_018B
.Lt_01A7:
push 0
push 36
push offset _Lt_01A4
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_018B
.Lt_018C:
mov eax, dword ptr [ebp-24]
add eax, 4294966868
cmp eax, 4
ja .Lt_01A7
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_01A8+eax*4-1712]
_.LT_01A8:
.int .Lt_018E
.int .Lt_0190
.int .Lt_0192
.int .Lt_01A5
.int .Lt_01A6
.Lt_018B:
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01AA
mov dword ptr [ebp-20], 0
.Lt_01AA:
.Lt_01A9:
.Lt_018A:
.Lt_0189:
cmp dword ptr [ebp-20], 0
jne .Lt_01AC
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
.Lt_01AC:
.Lt_01AB:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_017A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSTRINGFUNCT
_CSTRINGFUNCT:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.Lt_01B1:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 421
je .Lt_01B5
.Lt_01B6:
cmp dword ptr [ebp+8], 434
jne .Lt_01B4
.Lt_01B5:
mov eax, dword ptr [ebp+8]
cmp eax, 434
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_01B7
mov dword ptr [ebp-36], 2048
jmp .Lt_023B
.Lt_01B7:
mov dword ptr [ebp-36], 8192
.Lt_023B:
push dword ptr [ebp-36]
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_01BA
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_01B9
.Lt_01BA:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_01B9:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01BC
jmp .Lt_01B2
.Lt_01BC:
.Lt_01BB:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_01BE
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_01BD
.Lt_01BE:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_01BD:
cmp dword ptr [ebp-32], 0
jne .Lt_01C0
mov eax, dword ptr [_ENV+136]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call _RTLTOSTR
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_01BF
.Lt_01C0:
push dword ptr [ebp-8]
call _RTLTOWSTR
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01BF:
cmp dword ptr [ebp-8], 0
jne .Lt_01C2
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_01C2:
.Lt_01C1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B3
.Lt_01B4:
cmp dword ptr [ebp+8], 435
jne .Lt_01C3
.Lt_01C4:
push 8192
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_01C6
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_01C5
.Lt_01C6:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_01C5:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01C8
jmp .Lt_01B2
.Lt_01C8:
.Lt_01C7:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_01CA
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_01C9
.Lt_01CA:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_01C9:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01CC
jmp .Lt_01B2
.Lt_01CC:
.Lt_01CB:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_01CE
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01D0
jmp .Lt_01B2
.Lt_01D0:
.Lt_01CF:
jmp .Lt_01CD
.Lt_01CE:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_01CD:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_01D2
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_01D1
.Lt_01D2:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_01D1:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRMID
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01D4
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_01D4:
.Lt_01D3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B3
.Lt_01C3:
cmp dword ptr [ebp+8], 369
je .Lt_01D6
.Lt_01D7:
cmp dword ptr [ebp+8], 371
jne .Lt_01D5
.Lt_01D6:
mov eax, dword ptr [ebp+8]
cmp eax, 371
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_01D8
mov dword ptr [ebp-36], 2048
jmp .Lt_023C
.Lt_01D8:
mov dword ptr [ebp-36], 8192
.Lt_023C:
push dword ptr [ebp-36]
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_01DB
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_01DA
.Lt_01DB:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_01DA:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01DD
jmp .Lt_01B2
.Lt_01DD:
.Lt_01DC:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_01DF
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_01DE
.Lt_01DF:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_01DE:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01E1
jmp .Lt_01B2
.Lt_01E1:
.Lt_01E0:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_01E3
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_01E2
.Lt_01E3:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_01E2:
cmp dword ptr [ebp-32], 0
jne .Lt_01E5
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRFILL
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_01E4
.Lt_01E5:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLWSTRFILL
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_01E4:
cmp dword ptr [ebp-8], 0
jne .Lt_01E7
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_01E7:
.Lt_01E6:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B3
.Lt_01D5:
cmp dword ptr [ebp+8], 419
je .Lt_01E9
.Lt_01EA:
cmp dword ptr [ebp+8], 420
jne .Lt_01E8
.Lt_01E9:
mov eax, dword ptr [ebp+8]
cmp eax, 420
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_01EB
mov dword ptr [ebp-36], 2048
jmp .Lt_023D
.Lt_01EB:
mov dword ptr [ebp-36], 8192
.Lt_023D:
push dword ptr [ebp-36]
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-32]
call _CSTRCHR
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01B3
.Lt_01E8:
cmp dword ptr [ebp+8], 418
jne .Lt_01ED
.Lt_01EE:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CSTRASC
mov dword ptr [ebp-4], eax
jmp .Lt_01B3
.Lt_01ED:
cmp dword ptr [ebp+8], 436
jne .Lt_01EF
.Lt_01F0:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_01F2
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_01F1
.Lt_01F2:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_01F1:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01F4
jmp .Lt_01B2
.Lt_01F4:
.Lt_01F3:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_01F6
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_01F5
.Lt_01F6:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_01F5:
push 2048
push 372
call _HMATCH
add esp, 8
mov dword ptr [ebp-28], eax
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01F8
jmp .Lt_01B2
.Lt_01F8:
.Lt_01F7:
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp-28], 0
jne .Lt_01FA
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_01FC
push 2048
push 372
call _HMATCH
add esp, 8
mov dword ptr [ebp-28], eax
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01FE
jmp .Lt_01B2
.Lt_01FE:
.Lt_01FD:
.Lt_01FC:
.Lt_01FB:
.Lt_01FA:
.Lt_01F9:
cmp dword ptr [ebp-16], 0
jne .Lt_0200
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0200:
.Lt_01FF:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0202
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0201
.Lt_0202:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0201:
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRINSTR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0204
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0204:
.Lt_0203:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B3
.Lt_01EF:
cmp dword ptr [ebp+8], 437
jne .Lt_0205
.Lt_0206:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0208
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_0207
.Lt_0208:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0207:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_020A
jmp .Lt_01B2
.Lt_020A:
.Lt_0209:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_020C
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_020B
.Lt_020C:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_020B:
push 2048
push 372
call _HMATCH
add esp, 8
mov dword ptr [ebp-28], eax
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_020E
jmp .Lt_01B2
.Lt_020E:
.Lt_020D:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0210
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0212
jmp .Lt_01B2
.Lt_0212:
.Lt_0211:
jmp .Lt_020F
.Lt_0210:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_020F:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0214
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0213
.Lt_0214:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0213:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _RTLSTRINSTRREV
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0216
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0216:
.Lt_0215:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B3
.Lt_0205:
cmp dword ptr [ebp+8], 438
je .Lt_0218
.Lt_0219:
cmp dword ptr [ebp+8], 440
je .Lt_0218
.Lt_021A:
cmp dword ptr [ebp+8], 439
jne .Lt_0217
.Lt_0218:
push 8192
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_021C
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_021B
.Lt_021C:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_021B:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_021E
jmp .Lt_01B2
.Lt_021E:
.Lt_021D:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0220
push 2048
push 372
call _HMATCH
add esp, 8
mov dword ptr [ebp-28], eax
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0222
jmp .Lt_01B2
.Lt_0222:
.Lt_0221:
jmp .Lt_021F
.Lt_0220:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-12], 0
.Lt_021F:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0224
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0223
.Lt_0224:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0223:
cmp dword ptr [ebp+8], 438
jne .Lt_0226
.Lt_0227:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRTRIM
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_0225
.Lt_0226:
cmp dword ptr [ebp+8], 440
jne .Lt_0228
.Lt_0229:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRLTRIM
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_0225
.Lt_0228:
cmp dword ptr [ebp+8], 439
jne .Lt_022A
.Lt_022B:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRRTRIM
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_022A:
.Lt_0225:
cmp dword ptr [ebp-8], 0
jne .Lt_022D
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_022D:
.Lt_022C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B3
.Lt_0217:
cmp dword ptr [ebp+8], 441
je .Lt_022F
.Lt_0230:
cmp dword ptr [ebp+8], 442
jne .Lt_022E
.Lt_022F:
push 8192
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0232
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_0231
.Lt_0232:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0231:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0234
jmp .Lt_01B2
.Lt_0234:
.Lt_0233:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0236
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0238
jmp .Lt_01B2
.Lt_0238:
.Lt_0237:
jmp .Lt_0235
.Lt_0236:
mov dword ptr [ebp-12], 0
.Lt_0235:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_023A
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0239
.Lt_023A:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0239:
mov eax, dword ptr [ebp+8]
cmp eax, 441
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRCASE
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_022E:
.Lt_01B3:
.Lt_01B2:
mov eax, dword ptr [ebp-4]
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
_CSTRCHR:
push ebp
mov ebp, esp
sub esp, 224
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B1:
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
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_00B5
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_00B4
.Lt_00B5:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00B4:
mov dword ptr [ebp-16], 0
.Lt_00B6:
push 12
call _HMATCHEXPR
add esp, 4
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp+ebx*4-148], eax
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp+eax*4-148], 0
jne .Lt_00BA
jmp .Lt_00B2
.Lt_00BA:
.Lt_00B9:
inc dword ptr [ebp-16]
cmp dword ptr [ebp-16], 32
jl .Lt_00BC
jmp .Lt_00B7
.Lt_00BC:
.Lt_00BB:
.Lt_00B8:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00B6
.Lt_00B7:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00BE
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00BD
.Lt_00BE:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00BD:
mov dword ptr [ebp-20], -1
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-188], eax
jmp .Lt_00C0
.Lt_00C3:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+eax*4-148]
cmp dword ptr [ebx], 16
je .Lt_00C5
mov dword ptr [ebp-20], 0
jmp .Lt_00C2
.Lt_00C5:
.Lt_00C4:
mov ebx, dword ptr [ebp-12]
push dword ptr [ebp+ebx*4-148]
call _ASTCONSTEQZERO
add esp, 4
test eax, eax
je .Lt_00C7
mov dword ptr [ebp-20], 0
jmp .Lt_00C2
.Lt_00C7:
.Lt_00C6:
.Lt_00C1:
inc dword ptr [ebp-12]
.Lt_00C0:
mov eax, dword ptr [ebp-188]
cmp dword ptr [ebp-12], eax
jle .Lt_00C3
.Lt_00C2:
cmp dword ptr [ebp-20], 0
je .Lt_00C9
cmp dword ptr [ebp+8], 0
jne .Lt_00CB
push 0
push 1
push offset _Lt_0000
push 417
push offset _Lt_0243
call _fb_StrAssign
add esp, 20
jmp .Lt_00CA
.Lt_00CB:
push 1
push offset _Lt_0000
push 417
push offset _Lt_0244
call _fb_WstrAssignFromA
add esp, 16
.Lt_00CA:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-188], eax
jmp .Lt_00CD
.Lt_00D0:
push 12
mov eax, dword ptr [ebp-12]
push dword ptr [ebp+eax*4-148]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov ebx, eax
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp+ebx*4-148], 0
cmp dword ptr [ebp+8], 0
jne .Lt_00D2
mov eax, dword ptr [ebp-8]
mov ebx, eax
sar ebx, 31
cmp ebx, 0
jb .Lt_00D4
ja .Lt_0245
cmp eax, 255
jbe .Lt_00D4
.Lt_0245:
mov dword ptr [ebp-8], 255
.Lt_00D4:
.Lt_00D3:
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
je .Lt_00D6
push 0
push -1
push 2
push offset _Lt_00D7
push 417
push offset _Lt_0243
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea ebx, [ebp-200]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push 417
push offset _Lt_0243
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-8]
call _fb_OCT_i
add esp, 4
push eax
push 12
push offset _Lt_0248
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 12
push offset _Lt_0248
call _fb_StrLen
add esp, 8
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push 417
push offset _Lt_0243
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 417
push offset _Lt_0243
call _fb_StrAssign
add esp, 20
push 0
push -1
push 12
push offset _Lt_0248
push 417
push offset _Lt_0243
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 417
push offset _Lt_0243
call _fb_StrAssign
add esp, 20
jmp .Lt_00D5
.Lt_00D6:
push 0
push -1
push -1
push dword ptr [ebp-8]
push 1
call _fb_CHR
add esp, 8
push eax
push 417
push offset _Lt_0243
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 417
push offset _Lt_0243
call _fb_StrAssign
add esp, 20
.Lt_00D5:
jmp .Lt_00D1
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
je .Lt_00DD
push 2
push offset _Lt_00D7
push offset _Lt_0244
call _fb_WstrConcatWA
add esp, 12
mov dword ptr [ebp-192], eax
push dword ptr [ebp-192]
push 417
push offset _Lt_0244
call _fb_WstrAssign
add esp, 12
push dword ptr [ebp-192]
call _fb_WstrDelete
add esp, 4
push 0
push -1
push dword ptr [ebp-8]
call _fb_OCT_i
add esp, 4
push eax
push 12
push offset _Lt_0248
call _fb_StrAssign
add esp, 20
push 12
push offset _Lt_0248
call _fb_StrLen
add esp, 8
push eax
push 1
call _fb_WstrChr
add esp, 8
mov dword ptr [ebp-196], eax
push dword ptr [ebp-196]
push 417
push offset _Lt_0244
call _fb_WstrConcatAssign
add esp, 12
push dword ptr [ebp-196]
call _fb_WstrDelete
add esp, 4
push 12
push offset _Lt_0248
push offset _Lt_0244
call _fb_WstrConcatWA
add esp, 12
mov dword ptr [ebp-200], eax
push dword ptr [ebp-200]
push 417
push offset _Lt_0244
call _fb_WstrAssign
add esp, 12
push dword ptr [ebp-200]
call _fb_WstrDelete
add esp, 4
jmp .Lt_00DC
.Lt_00DD:
push dword ptr [ebp-8]
push 1
call _fb_WstrChr
add esp, 8
mov dword ptr [ebp-192], eax
push dword ptr [ebp-192]
push 417
push offset _Lt_0244
call _fb_WstrConcatAssign
add esp, 12
push dword ptr [ebp-192]
call _fb_WstrDelete
add esp, 4
.Lt_00DC:
.Lt_00D1:
.Lt_00CE:
inc dword ptr [ebp-12]
.Lt_00CD:
mov eax, dword ptr [ebp-188]
cmp dword ptr [ebp-12], eax
jle .Lt_00D0
.Lt_00CF:
cmp dword ptr [ebp+8], 0
jne .Lt_00E3
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
push offset _Lt_0243
call _SYMBALLOCSTRCONST
add esp, 8
push eax
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
.Lt_00E3:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
push offset _Lt_0244
call _SYMBALLOCWSTRCONST
add esp, 8
push eax
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_00E2:
jmp .Lt_00C8
.Lt_00C9:
push dword ptr [ebp+8]
lea eax, [ebp-184]
push eax
push dword ptr [ebp-16]
call _RTLSTRCHR
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_00C8:
.Lt_00B2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0248,12
.balign 4
	.lcomm	_Lt_0243,417
.balign 4
	.lcomm	_Lt_0244,417

.section .text
.balign 16
_CSTRASC:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E4:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_00E7
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_00E6
.Lt_00E7:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00E6:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00E9
jmp .Lt_00E5
.Lt_00E9:
.Lt_00E8:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_00EB
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00ED
jmp .Lt_00E5
.Lt_00ED:
.Lt_00EC:
jmp .Lt_00EA
.Lt_00EB:
mov dword ptr [ebp-12], 0
.Lt_00EA:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00EF
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00EE
.Lt_00EF:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00EE:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 4
je .Lt_00F3
.Lt_00F4:
cmp dword ptr [ebp-28], 7
jne .Lt_00F2
.Lt_00F3:
push dword ptr [ebp-8]
call _ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_00F2:
.Lt_00F0:
cmp dword ptr [ebp-24], 0
je .Lt_00F6
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_ENV+264]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00F8
mov dword ptr [ebp-20], 4294967295
mov dword ptr [ebp-16], 4294967295
jmp .Lt_00F7
.Lt_00F8:
cmp dword ptr [ebp-12], 0
je .Lt_00FA
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .Lt_00FC
push 8
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp-16], 0
jg .Lt_00FE
jl .Lt_024D
cmp dword ptr [ebp-20], 0
jae .Lt_00FE
.Lt_024D:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
.Lt_00FE:
.Lt_00FD:
jmp .Lt_00FB
.Lt_00FC:
mov dword ptr [ebp-20], 4294967295
mov dword ptr [ebp-16], 4294967295
.Lt_00FB:
jmp .Lt_00F9
.Lt_00FA:
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-16], 0
.Lt_00F9:
.Lt_00F7:
cmp dword ptr [ebp-16], 0
jl .Lt_0100
jg .Lt_024E
cmp dword ptr [ebp-20], 0
jb .Lt_0100
.Lt_024E:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+4]
and edx, 511
cmp edx, 7
je .Lt_0102
mov edx, dword ptr [ebp-24]
push dword ptr [edx+56]
call _HUNESCAPE
add esp, 4
mov dword ptr [ebp-28], eax
push 0
push 9
mov eax, dword ptr [ebp-20]
push eax
push dword ptr [ebp-28]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_ASC
add esp, 8
mov ebx, eax
mov edx, 0
push edx
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0101
.Lt_0102:
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call _HUNESCAPEW
add esp, 4
mov dword ptr [ebp-28], eax
push 0
push 9
mov eax, dword ptr [ebp-20]
push eax
push dword ptr [ebp-28]
call _fb_WstrAsc
add esp, 8
mov edx, eax
mov ebx, 0
push ebx
push edx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0101:
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov dword ptr [ebp-8], 0
.Lt_0100:
.Lt_00FF:
.Lt_00F6:
.Lt_00F5:
cmp dword ptr [ebp-8], 0
je .Lt_0104
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRASC
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0104:
.Lt_0103:
.Lt_00E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_00D7:	.ascii	"\33""\0"
.balign 4
_Lt_0145:	.ascii	"fb_CVD\0"
.balign 4
_Lt_0148:	.ascii	"fb_CVS\0"
.balign 4
_Lt_0150:	.ascii	"fb_CVSHORT\0"
.balign 4
_Lt_0153:	.ascii	"fb_CVL\0"
.balign 4
_Lt_0155:	.ascii	"fb_CVLONGINT\0"
.balign 4
_Lt_015B:	.ascii	"fb_CVDFROMLONGINT\0"
.balign 4
_Lt_015E:	.ascii	"fb_CVSFROML\0"
.balign 4
_Lt_0164:	.ascii	"fb_CVLFROMS\0"
.balign 4
_Lt_0165:	.ascii	"fb_CVLONGINTFROMD\0"
.balign 4
_Lt_018F:	.ascii	"fb_MKD\0"
.balign 4
_Lt_0191:	.ascii	"fb_MKS\0"
.balign 4
_Lt_0197:	.ascii	"fb_MKI\0"
.balign 4
_Lt_019E:	.ascii	"fb_MKSHORT\0"
.balign 4
_Lt_01A1:	.ascii	"fb_MKL\0"
.balign 4
_Lt_01A4:	.ascii	"fb_MKLONGINT\0"
