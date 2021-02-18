	.intel_syntax noprefix

.section .text
.balign 16

.globl CIDENTIFIER
CIDENTIFIER:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_008E:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
cmp dword ptr [PARSER+92], 0
je .Lt_0091
mov eax, dword ptr [PARSER+92]
mov dword ptr [ebp-8], eax
mov dword ptr [PARSER+92], 0
jmp .Lt_0090
.Lt_0091:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-8], eax
.Lt_0090:
mov eax, dword ptr [ENV+888]
and eax, 4
test eax, eax
jne .Lt_0093
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_008F
.Lt_0093:
.Lt_0092:
cmp dword ptr [ebp-8], 0
jne .Lt_0095
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_0097
mov dword ptr [ebp-4], 0
jmp .Lt_008F
.Lt_0097:
.Lt_0096:
push dword ptr [ebp+12]
call HGLOBALID
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0099
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_009B
call LEXGETTEXT
push eax
push 8
call ERRREPORTUNDEF
add esp, 8
jmp .Lt_009A
.Lt_009B:
call HSKIPSYMBOL
.Lt_009A:
mov dword ptr [ebp-4], 0
jmp .Lt_008F
.Lt_0099:
.Lt_0098:
.Lt_0095:
.Lt_0094:
mov dword ptr [ebp-12], 0
.Lt_009C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-20], eax
jmp .Lt_00A0
.Lt_00A2:
jmp .Lt_009F
.Lt_00A3:
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .Lt_00A5
jmp .Lt_009D
.Lt_00A5:
.Lt_00A4:
jmp .Lt_009F
.Lt_00A6:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 20
jne .Lt_00A9
.Lt_00AA:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-16], eax
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .Lt_00AC
jmp .Lt_009D
.Lt_00AC:
.Lt_00AB:
jmp .Lt_00A7
.Lt_00A9:
cmp dword ptr [ebp-24], 10
jne .Lt_00AD
.Lt_00AE:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-16], ebx
jmp .Lt_00A7
.Lt_00AD:
jmp .Lt_009D
.Lt_00AF:
.Lt_00A7:
jmp .Lt_009F
.Lt_00B0:
jmp .Lt_009D
jmp .Lt_009F
.Lt_00A0:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967288
cmp ebx, 5
ja .Lt_00B0
mov ebx, dword ptr [ebp-20]
jmp dword ptr [.LT_00B1+ebx*4-32]
.LT_00B1:
.int .Lt_00A2
.int .Lt_00A2
.int .Lt_00A3
.int .Lt_00A2
.int .Lt_00B0
.int .Lt_00A6
.Lt_009F:
cmp dword ptr [ebp-12], 0
je .Lt_00B3
push dword ptr [ebp-16]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00B5
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00B7
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
.Lt_00B3:
.Lt_00B2:
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .Lt_00B9
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 8
jne .Lt_00BB
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00BD
push 2112
call LEXSKIPTOKEN
add esp, 4
push 0
push 0
push 120
call ERRREPORT
add esp, 12
.Lt_00BD:
.Lt_00BC:
.Lt_00BB:
.Lt_00BA:
jmp .Lt_009D
.Lt_00B9:
.Lt_00B8:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 9
jne .Lt_00BF
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+76], 0
jne .Lt_00C1
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00C3
push 0
push 0
push 257
call ERRREPORT
add esp, 12
.Lt_00C3:
.Lt_00C2:
jmp .Lt_009D
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
push 2112
call LEXSKIPTOKEN
add esp, 4
push 64
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00C5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
.Lt_00C5:
.Lt_00C4:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_00C7
.Lt_00C9:
jmp .Lt_00C6
.Lt_00CA:
mov eax, dword ptr [ebp+12]
and eax, 8
test eax, eax
je .Lt_00CC
jmp .Lt_009D
.Lt_00CC:
.Lt_00CB:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00CE
push 0
push 0
push 14
call ERRREPORT
add esp, 12
.Lt_00CE:
.Lt_00CD:
mov dword ptr [ebp-4], 0
jmp .Lt_008F
jmp .Lt_00C6
.Lt_00CF:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .Lt_00D1
mov eax, dword ptr [ebp+12]
and eax, 8
test eax, eax
je .Lt_00D3
jmp .Lt_009D
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
.Lt_00D0:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00D5
push 0
push 0
push 14
call ERRREPORT
add esp, 12
.Lt_00D5:
.Lt_00D4:
mov dword ptr [ebp-4], 0
jmp .Lt_008F
jmp .Lt_00C6
.Lt_00C7:
cmp dword ptr [ebp-20], 5
ja .Lt_00CF
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00D6+eax*4]
.LT_00D6:
.int .Lt_00C9
.int .Lt_00CA
.int .Lt_00C9
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CA
.Lt_00C6:
push -1
push 0
call LEXGETTEXT
push eax
push dword ptr [ebp-12]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00D8
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00DA
call LEXGETTEXT
push eax
push 8
call ERRREPORTUNDEF
add esp, 8
jmp .Lt_00D9
.Lt_00DA:
call HSKIPSYMBOL
.Lt_00D9:
mov dword ptr [ebp-4], 0
jmp .Lt_008F
.Lt_00D8:
.Lt_00D7:
mov eax, dword ptr [ebp+12]
and eax, 32
test eax, eax
je .Lt_00DC
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 10
je .Lt_00E0
.Lt_00E1:
cmp dword ptr [ebp-20], 11
jne .Lt_00DF
.Lt_00E0:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-24], ebx
.Lt_00E2:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
.Lt_00E5:
mov eax, dword ptr [ebp-28]
cmp dword ptr [eax], 12
jne .Lt_00E9
push 0
push 0
push 209
call ERRREPORT
add esp, 12
jmp .Lt_00E3
.Lt_00E9:
.Lt_00E8:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-28], ebx
.Lt_00E7:
cmp dword ptr [ebp-28], 0
jne .Lt_00E5
.Lt_00E6:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
.Lt_00E4:
cmp dword ptr [ebp-24], 0
jne .Lt_00E2
.Lt_00E3:
.Lt_00DF:
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
.Lt_009E:
jmp .Lt_009C
.Lt_009D:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
je .Lt_00EB
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .Lt_00ED
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00EF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+160]
mov ebx, dword ptr [SYMB+98528]
cmp dword ptr [eax], ebx
je .Lt_00F1
push 0
push 0
push 131
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_008F
.Lt_00F1:
.Lt_00F0:
.Lt_00EF:
.Lt_00EE:
jmp .Lt_00EC
.Lt_00ED:
cmp dword ptr [ebp-8], 0
je .Lt_00F3
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+4], 0
je .Lt_00F5
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+8], 0
je .Lt_00F7
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
je .Lt_00F8
mov eax, dword ptr [ebp-16]
cmp eax, dword ptr [ebp-12]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_00FC
.Lt_00F8:
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-20]
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
.Lt_00FC:
cmp dword ptr [ebp-24], 0
je .Lt_00FB
push 0
push 0
push 255
call ERRREPORT
add esp, 12
.Lt_00FB:
.Lt_00FA:
.Lt_00F7:
.Lt_00F6:
.Lt_00F5:
.Lt_00F4:
.Lt_00F3:
.Lt_00F2:
.Lt_00EC:
.Lt_00EB:
.Lt_00EA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPARENTID
CPARENTID:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FF:
mov eax, dword ptr [ENV+888]
and eax, 4
test eax, eax
jne .Lt_0102
mov dword ptr [ebp-4], 0
jmp .Lt_0100
.Lt_0102:
.Lt_0101:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0104
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_0106
push 2
call HGLOBALID
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0106:
.Lt_0105:
.Lt_0104:
.Lt_0103:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.Lt_0107:
cmp dword ptr [ebp-8], 0
je .Lt_0108
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-24], eax
jmp .Lt_010A
.Lt_010C:
jmp .Lt_0109
.Lt_010D:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .Lt_010F
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .Lt_0108
.Lt_010F:
.Lt_010E:
jmp .Lt_0109
.Lt_0110:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .Lt_0113
.Lt_0114:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call HISSTRUCTALLOWED
add esp, 8
test eax, eax
jne .Lt_0116
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .Lt_0108
.Lt_0116:
.Lt_0115:
jmp .Lt_0111
.Lt_0113:
cmp dword ptr [ebp-28], 10
jne .Lt_0117
.Lt_0118:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
jmp .Lt_0111
.Lt_0117:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .Lt_0108
.Lt_0119:
.Lt_0111:
jmp .Lt_0109
.Lt_011A:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
jmp .Lt_0108
jmp .Lt_0109
.Lt_010A:
mov ebx, dword ptr [ebp-24]
add ebx, 4294967288
cmp ebx, 5
ja .Lt_011A
mov ebx, dword ptr [ebp-24]
jmp dword ptr [.LT_011B+ebx*4-32]
.LT_011B:
.int .Lt_010C
.int .Lt_010C
.int .Lt_010D
.int .Lt_010C
.int .Lt_011A
.int .Lt_0110
.Lt_0109:
cmp dword ptr [ebp-16], 0
je .Lt_011D
push dword ptr [ebp-12]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_011F
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.Lt_011F:
.Lt_011E:
.Lt_011D:
.Lt_011C:
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .Lt_0121
push 64
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
je .Lt_0123
jmp .Lt_0108
.Lt_0123:
.Lt_0122:
push 0
push 0
push 120
call ERRREPORT
add esp, 12
jmp .Lt_0108
.Lt_0121:
.Lt_0120:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
jne .Lt_0125
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+76], 0
jne .Lt_0127
push 0
push 0
push 257
call ERRREPORT
add esp, 12
jmp .Lt_0108
.Lt_0127:
.Lt_0126:
.Lt_0125:
.Lt_0124:
push 2112
call LEXSKIPTOKEN
add esp, 4
push 64
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0129
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
.Lt_0129:
.Lt_0128:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_012B
.Lt_012D:
jmp .Lt_012A
.Lt_012E:
mov eax, dword ptr [ebp+8]
and eax, 8
test eax, eax
je .Lt_0130
jmp .Lt_0108
.Lt_0130:
.Lt_012F:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
jmp .Lt_0108
jmp .Lt_012A
.Lt_0131:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .Lt_0133
mov eax, dword ptr [ebp+8]
and eax, 8
test eax, eax
je .Lt_0135
jmp .Lt_0108
.Lt_0135:
.Lt_0134:
.Lt_0133:
.Lt_0132:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
jmp .Lt_0108
jmp .Lt_012A
.Lt_012B:
cmp dword ptr [ebp-24], 5
ja .Lt_0131
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_0136+eax*4]
.LT_0136:
.int .Lt_012D
.int .Lt_012E
.int .Lt_012D
.int .Lt_0131
.int .Lt_0131
.int .Lt_012E
.Lt_012A:
push -1
push 0
call LEXGETTEXT
push eax
push dword ptr [ebp-12]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0107
.Lt_0108:
mov eax, dword ptr [ebp+8]
and eax, 2
test eax, eax
je .Lt_0138
mov eax, dword ptr [ebp+8]
and eax, 4
test eax, eax
je .Lt_013A
cmp dword ptr [ebp-20], 0
je .Lt_013C
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [SYMB+98528]
cmp dword ptr [ebx], eax
je .Lt_013E
push 0
push 0
push 131
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_0100
.Lt_013E:
.Lt_013D:
.Lt_013C:
.Lt_013B:
jmp .Lt_0139
.Lt_013A:
cmp dword ptr [ebp-8], 0
je .Lt_0140
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], 0
je .Lt_0142
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+8], 0
je .Lt_0144
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
je .Lt_0145
mov ebx, dword ptr [ebp-24]
cmp ebx, dword ptr [ebp-16]
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
jmp .Lt_0149
.Lt_0145:
mov eax, dword ptr [ebp-24]
cmp eax, dword ptr [ebp-28]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
.Lt_0149:
cmp dword ptr [ebp-32], 0
je .Lt_0148
push 0
push 0
push 255
call ERRREPORT
add esp, 12
.Lt_0148:
.Lt_0147:
.Lt_0144:
.Lt_0143:
.Lt_0142:
.Lt_0141:
.Lt_0140:
.Lt_013F:
.Lt_0139:
.Lt_0138:
.Lt_0137:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_0100:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCURRENTPARENTID
CCURRENTPARENTID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_014C:
push 0
call CPARENTID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_014F
jmp .Lt_014D
.Lt_014F:
.Lt_014E:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 8
jne .Lt_0152
.Lt_0153:
mov ebx, dword ptr [SYMB+98528]
cmp dword ptr [ebp-4], ebx
je .Lt_0155
push 0
push 0
push 131
call ERRREPORT
add esp, 12
.Lt_0155:
.Lt_0154:
jmp .Lt_0150
.Lt_0152:
cmp dword ptr [ebp-8], 11
jne .Lt_0156
.Lt_0157:
mov ebx, dword ptr [SYMB+98528]
cmp dword ptr [ebp-4], ebx
je .Lt_0159
push 0
push 0
push 158
call ERRREPORT
add esp, 12
.Lt_0159:
.Lt_0158:
.Lt_0156:
.Lt_0150:
.Lt_014D:
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
HSKIPSYMBOL:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0067:
.Lt_0069:
push 64
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_006D
jmp .Lt_006A
.Lt_006D:
.Lt_006C:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_006F
.Lt_0071:
jmp .Lt_006E
.Lt_0072:
jmp .Lt_006A
jmp .Lt_006E
.Lt_006F:
cmp dword ptr [ebp-4], 2
ja .Lt_0072
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_0073+eax*4]
.LT_0073:
.int .Lt_0071
.int .Lt_0071
.int .Lt_0071
.Lt_006E:
.Lt_006B:
jmp .Lt_0069
.Lt_006A:
.Lt_0068:
mov esp, ebp
pop ebp
ret
.balign 16
HGLOBALID:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0074:
mov dword ptr [ebp-4], 0
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .Lt_0077
push 64
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_0076
.Lt_0077:
cmp dword ptr [PARSER+52], 0
je .Lt_0079
jmp .Lt_0075
.Lt_0079:
.Lt_0078:
.Lt_0076:
mov eax, dword ptr [ebp+8]
and eax, 4
test eax, eax
je .Lt_007B
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_007D
push 0
push 0
push 131
call ERRREPORT
add esp, 12
.Lt_007D:
.Lt_007C:
.Lt_007B:
.Lt_007A:
push 64
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0081
.Lt_0082:
cmp dword ptr [ebp-8], 2
jne .Lt_0080
.Lt_0081:
jmp .Lt_007E
.Lt_0080:
mov eax, dword ptr [ebp+8]
and eax, 2
test eax, eax
je .Lt_0085
push 0
push 0
push 14
call ERRREPORT
add esp, 12
.Lt_0085:
.Lt_0084:
jmp .Lt_0075
.Lt_0083:
.Lt_007E:
push -1
push 0
call LEXGETTEXT
push eax
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0075:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HISSTRUCTALLOWED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0086:
mov eax, dword ptr [ebp+12]
and eax, 16
test eax, eax
jne .Lt_0089
mov dword ptr [ebp-4], 0
jmp .Lt_0087
.Lt_0089:
.Lt_0088:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
jne .Lt_008B
mov dword ptr [ebp-4], 0
jmp .Lt_0087
.Lt_008B:
.Lt_008A:
mov ebx, dword ptr [ebp+12]
and ebx, 64
je .Lt_008D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+116]
and eax, 16384
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_0087
.Lt_008D:
.Lt_008C:
mov dword ptr [ebp-4], -1
.Lt_0087:
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
