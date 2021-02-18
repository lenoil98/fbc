	.intel_syntax noprefix

.section .text
.balign 16

.globl _CGFXPSET@4
_CGFXPSET@4:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00E5:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-24], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .Lt_00E8
mov dword ptr [ebp-8], 5
jmp .Lt_00E7
.Lt_00E8:
mov dword ptr [ebp-8], 4
.Lt_00E7:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_00EA
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_00E9
.Lt_00EA:
push 0
call _LEXSKIPTOKEN@4
.Lt_00E9:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00EC
jmp .Lt_00E6
.Lt_00EC:
.Lt_00EB:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_00EE
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_00ED
.Lt_00EE:
push 0
call _LEXSKIPTOKEN@4
.Lt_00ED:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00F0
jmp .Lt_00E6
.Lt_00F0:
.Lt_00EF:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_00F2
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_00F1
.Lt_00F2:
push 0
call _LEXSKIPTOKEN@4
.Lt_00F1:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_00F4
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00F6
jmp .Lt_00E6
.Lt_00F6:
.Lt_00F5:
jmp .Lt_00F3
.Lt_00F4:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-20], eax
or dword ptr [ebp-8], -2147483648
.Lt_00F3:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call _RTLGFXPSET@24
mov dword ptr [ebp-4], eax
.Lt_00E6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXLINE@0
_CGFXLINE@0:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-4], 0
.Lt_00F7:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-4], 0
push 0
push 45
call _HMATCH@8
test eax, eax
je .Lt_00FA
mov dword ptr [ebp-8], 5
push 15
push dword ptr [_Lt_012B+4]
push dword ptr [_Lt_012B]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-20], eax
push 15
push dword ptr [_Lt_012B+4]
push dword ptr [_Lt_012B]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-24], eax
jmp .Lt_00F9
.Lt_00FA:
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-40], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .Lt_00FC
mov dword ptr [ebp-8], 5
jmp .Lt_00FB
.Lt_00FC:
mov dword ptr [ebp-8], 4
.Lt_00FB:
push 0
push 40
call _HMATCH@8
test eax, eax
je .Lt_00FE
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0100
jmp .Lt_00F8
.Lt_0100:
.Lt_00FF:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0102
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0101
.Lt_0102:
push 0
call _LEXSKIPTOKEN@4
.Lt_0101:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0104
jmp .Lt_00F8
.Lt_0104:
.Lt_0103:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0106
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0105
.Lt_0106:
push 0
call _LEXSKIPTOKEN@4
.Lt_0105:
jmp .Lt_00FD
.Lt_00FE:
mov dword ptr [ebp-8], 5
push 15
push dword ptr [_Lt_012B+4]
push dword ptr [_Lt_012B]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-20], eax
push 15
push dword ptr [_Lt_012B+4]
push dword ptr [_Lt_012B]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-24], eax
.Lt_00FD:
push 0
push 45
call _HMATCH@8
test eax, eax
jne .Lt_0108
push 0
push 0
push 15
call _ERRREPORT@12
jmp .Lt_00F8
.Lt_0108:
.Lt_0107:
.Lt_00F9:
push 2048
push 282
call _HMATCH@8
test eax, eax
je .Lt_010A
cmp dword ptr [ebp-8], 5
jne .Lt_010C
mov dword ptr [ebp-8], 3
jmp .Lt_010B
.Lt_010C:
mov dword ptr [ebp-8], 1
.Lt_010B:
jmp .Lt_0109
.Lt_010A:
cmp dword ptr [ebp-8], 5
jne .Lt_010E
mov dword ptr [ebp-8], 2
jmp .Lt_010D
.Lt_010E:
mov dword ptr [ebp-8], 0
.Lt_010D:
.Lt_0109:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0110
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_010F
.Lt_0110:
push 0
call _LEXSKIPTOKEN@4
.Lt_010F:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_0112
jmp .Lt_00F8
.Lt_0112:
.Lt_0111:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0114
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0113
.Lt_0114:
push 0
call _LEXSKIPTOKEN@4
.Lt_0113:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0116
jmp .Lt_00F8
.Lt_0116:
.Lt_0115:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0118
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0117
.Lt_0118:
push 0
call _LEXSKIPTOKEN@4
.Lt_0117:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_011A
call _CEXPRESSION@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_011C
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-36], eax
or dword ptr [ebp-8], -2147483648
.Lt_011C:
.Lt_011B:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_011E
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrInit@20
push 2
push offset _Lt_0122
push -1
lea eax, [ebp-52]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0121
.Lt_0123:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-12], 1
jmp .Lt_011F
.Lt_0121:
push 3
push offset _Lt_0125
push -1
lea eax, [ebp-52]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0124
.Lt_0126:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-12], 2
.Lt_0124:
.Lt_011F:
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0128
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_012A
jmp .Lt_00F8
.Lt_012A:
.Lt_0129:
.Lt_0128:
.Lt_0127:
.Lt_011E:
.Lt_011D:
jmp .Lt_0119
.Lt_011A:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-36], eax
or dword ptr [ebp-8], -2147483648
.Lt_0119:
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-40]
call _RTLGFXLINE@36
mov dword ptr [ebp-4], eax
.Lt_00F8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXCIRCLE@0
_CGFXCIRCLE@0:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-4], 0
.Lt_012C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-4], 0
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-44], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .Lt_012F
mov dword ptr [ebp-8], 5
jmp .Lt_012E
.Lt_012F:
mov dword ptr [ebp-8], 4
.Lt_012E:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0131
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0130
.Lt_0131:
push 0
call _LEXSKIPTOKEN@4
.Lt_0130:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0133
jmp .Lt_012D
.Lt_0133:
.Lt_0132:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0135
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0134
.Lt_0135:
push 0
call _LEXSKIPTOKEN@4
.Lt_0134:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0137
jmp .Lt_012D
.Lt_0137:
.Lt_0136:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0139
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0138
.Lt_0139:
push 0
call _LEXSKIPTOKEN@4
.Lt_0138:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_013B
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_013A
.Lt_013B:
push 0
call _LEXSKIPTOKEN@4
.Lt_013A:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_013D
jmp .Lt_012D
.Lt_013D:
.Lt_013C:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-12], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_013F
call _CEXPRESSION@0
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0141
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-8], -2147483648
.Lt_0141:
.Lt_0140:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0143
call _CEXPRESSION@0
mov dword ptr [ebp-32], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0145
call _CEXPRESSION@0
mov dword ptr [ebp-36], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0147
call _CEXPRESSION@0
mov dword ptr [ebp-40], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0149
push 2
push offset _Lt_014A
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_014C
push 0
push 0
push 9
call _ERRREPORT@12
jmp .Lt_012D
.Lt_014C:
.Lt_014B:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-12], -1
.Lt_0149:
.Lt_0148:
.Lt_0147:
.Lt_0146:
.Lt_0145:
.Lt_0144:
.Lt_0143:
.Lt_0142:
jmp .Lt_013E
.Lt_013F:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-8], -2147483648
.Lt_013E:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-44]
call _RTLGFXCIRCLE@40
mov dword ptr [ebp-4], eax
.Lt_012D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXPAINT@0
_CGFXPAINT@0:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-4], 0
.Lt_014D:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-24], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .Lt_0150
mov dword ptr [ebp-28], 5
jmp .Lt_014F
.Lt_0150:
mov dword ptr [ebp-28], 4
.Lt_014F:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0152
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0151
.Lt_0152:
push 0
call _LEXSKIPTOKEN@4
.Lt_0151:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0154
jmp .Lt_014E
.Lt_0154:
.Lt_0153:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0156
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0155
.Lt_0156:
push 0
call _LEXSKIPTOKEN@4
.Lt_0155:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0158
jmp .Lt_014E
.Lt_0158:
.Lt_0157:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_015A
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0159
.Lt_015A:
push 0
call _LEXSKIPTOKEN@4
.Lt_0159:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_015C
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_015E
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0160
jmp .Lt_014E
.Lt_0160:
.Lt_015F:
.Lt_015E:
.Lt_015D:
.Lt_015C:
.Lt_015B:
cmp dword ptr [ebp-16], 0
jne .Lt_0162
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
or dword ptr [ebp-28], -2147483648
.Lt_0162:
.Lt_0161:
cmp dword ptr [ebp-20], 0
jne .Lt_0164
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-20], eax
or dword ptr [ebp-28], 1073741824
.Lt_0164:
.Lt_0163:
push dword ptr [ebp-28]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call _RTLGFXPAINT@24
mov dword ptr [ebp-4], eax
.Lt_014E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXDRAWSTRING@0
_CGFXDRAWSTRING@0:
push ebp
mov ebp, esp
sub esp, 48
mov dword ptr [ebp-4], 0
.Lt_0165:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-4], 0
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-8], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .Lt_0168
mov dword ptr [ebp-44], 5
jmp .Lt_0167
.Lt_0168:
mov dword ptr [ebp-44], 4
.Lt_0167:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_016A
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0169
.Lt_016A:
push 0
call _LEXSKIPTOKEN@4
.Lt_0169:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_016C
jmp .Lt_0166
.Lt_016C:
.Lt_016B:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_016E
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_016D
.Lt_016E:
push 0
call _LEXSKIPTOKEN@4
.Lt_016D:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0170
jmp .Lt_0166
.Lt_0170:
.Lt_016F:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0172
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0171
.Lt_0172:
push 0
call _LEXSKIPTOKEN@4
.Lt_0171:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0174
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0173
.Lt_0174:
push 0
call _LEXSKIPTOKEN@4
.Lt_0173:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0176
jmp .Lt_0166
.Lt_0176:
.Lt_0175:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-48], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0178
call _CEXPRESSION@0
mov dword ptr [ebp-24], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_017A
push 0
push -1
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-28], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_017C
lea eax, [ebp-40]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-48]
push eax
call _HGETMODE@16
test eax, eax
jne .Lt_017E
jmp .Lt_0166
.Lt_017E:
.Lt_017D:
.Lt_017C:
.Lt_017B:
.Lt_017A:
.Lt_0179:
.Lt_0178:
.Lt_0177:
cmp dword ptr [ebp-24], 0
jne .Lt_0180
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-44], -2147483648
.Lt_0180:
.Lt_017F:
push dword ptr [ebp-40]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
push dword ptr [ebp-48]
push dword ptr [ebp-44]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLGFXDRAWSTRING@44
mov dword ptr [ebp-4], eax
.Lt_0166:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXDRAW@0
_CGFXDRAW@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0181:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 2048
push 369
call _HMATCH@8
test eax, eax
je .Lt_0184
call _CGFXDRAWSTRING@0
mov dword ptr [ebp-4], eax
jmp .Lt_0182
.Lt_0184:
.Lt_0183:
push -1
call _CEXPRESSIONWITHNIDXARRAY@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0186
push 0
push 0
push 9
call _ERRREPORT@12
jmp .Lt_0182
.Lt_0186:
.Lt_0185:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0188
push 0
push 0
push dword ptr [ebp-8]
call _HCHECKFBIMAGEEXPR@12
mov dword ptr [ebp-8], eax
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_018A
jmp .Lt_0182
.Lt_018A:
.Lt_0189:
jmp .Lt_0187
.Lt_0188:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .Lt_018C
push 0
push -1
push 73
call _ERRREPORT@12
jmp .Lt_0182
.Lt_018C:
.Lt_018B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
.Lt_0187:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLGFXDRAW@8
mov dword ptr [ebp-4], eax
.Lt_0182:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXVIEW@4
_CGFXVIEW@4:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.Lt_018D:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 508
je .Lt_0192
.Lt_0193:
cmp dword ptr [ebp-36], 509
jne .Lt_0191
.Lt_0192:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-8], 1
jmp .Lt_018F
.Lt_0191:
mov dword ptr [ebp-8], 0
.Lt_0194:
.Lt_018F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
push 0
push 40
call _HMATCH@8
test eax, eax
je .Lt_0196
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0198
jmp .Lt_018E
.Lt_0198:
.Lt_0197:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_019A
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0199
.Lt_019A:
push 0
call _LEXSKIPTOKEN@4
.Lt_0199:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_019C
jmp .Lt_018E
.Lt_019C:
.Lt_019B:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_019E
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_019D
.Lt_019E:
push 0
call _LEXSKIPTOKEN@4
.Lt_019D:
push 0
push 45
call _HMATCH@8
test eax, eax
jne .Lt_01A0
push 0
push 0
push 15
call _ERRREPORT@12
jmp .Lt_018E
.Lt_01A0:
.Lt_019F:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_01A2
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_01A1
.Lt_01A2:
push 0
call _LEXSKIPTOKEN@4
.Lt_01A1:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01A4
jmp .Lt_018E
.Lt_01A4:
.Lt_01A3:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_01A6
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_01A5
.Lt_01A6:
push 0
call _LEXSKIPTOKEN@4
.Lt_01A5:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_01A8
jmp .Lt_018E
.Lt_01A8:
.Lt_01A7:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_01AA
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_01A9
.Lt_01AA:
push 0
call _LEXSKIPTOKEN@4
.Lt_01A9:
cmp dword ptr [ebp+8], 0
je .Lt_01AC
or dword ptr [ebp-8], -1073741824
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_01AE
call _CEXPRESSION@0
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_01B0
and dword ptr [ebp-8], 2147483647
.Lt_01B0:
.Lt_01AF:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_01B2
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_01B4
jmp .Lt_018E
.Lt_01B4:
.Lt_01B3:
and dword ptr [ebp-8], -1073741825
.Lt_01B2:
.Lt_01B1:
.Lt_01AE:
.Lt_01AD:
.Lt_01AC:
.Lt_01AB:
.Lt_0196:
.Lt_0195:
cmp dword ptr [ebp+8], 0
je .Lt_01B6
push dword ptr [ebp-8]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLGFXVIEW@28
mov dword ptr [ebp-4], eax
jmp .Lt_01B5
.Lt_01B6:
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLGFXWINDOW@20
mov dword ptr [ebp-4], eax
.Lt_01B5:
.Lt_018E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXPALETTE@0
_CGFXPALETTE@0:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B7:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 2048
push offset _Lt_01B9
call _HMATCHIDORKW@8
mov dword ptr [ebp-28], eax
push 2048
push 287
call _HMATCH@8
test eax, eax
je .Lt_01BB
push 0
mov eax, dword ptr [ebp-28]
not eax
push eax
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01BD
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_01B8
.Lt_01BD:
.Lt_01BC:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 32505856
or ebx, ecx
and ebx, 480
je .Lt_01BE
mov dword ptr [ebp-36], 24
jmp .Lt_01E8
.Lt_01BE:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
and ecx, 511
and ecx, 31
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
add eax, -32
or ecx, eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 261632
sar ebx, 1
and ebx, 261632
or ecx, ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 32505856
or ecx, eax
and ecx, 31
mov dword ptr [ebp-36], ecx
.Lt_01E8:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [_SYMB_DTYPETB+312]
cmp eax, dword ptr [ebp-32]
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_SYMB_DTYPETB+368]
cmp ecx, dword ptr [ebp-32]
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_01C1
mov ecx, dword ptr [_SYMB_DTYPETB+228]
mov dword ptr [ebp-32], ecx
.Lt_01C1:
.Lt_01C0:
mov ecx, dword ptr [_SYMB_DTYPETB+368]
cmp ecx, dword ptr [ebp-32]
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
push dword ptr [ebp-28]
push dword ptr [ebp-8]
call _RTLGFXPALETTEUSING@12
mov dword ptr [ebp-4], eax
jmp .Lt_01BA
.Lt_01BB:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_01C3
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_01C5
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_01C4
.Lt_01C5:
push 0
call _LEXSKIPTOKEN@4
.Lt_01C4:
cmp dword ptr [ebp-28], 0
je .Lt_01C7
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01C9
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_01B8
.Lt_01C9:
.Lt_01C8:
jmp .Lt_01C6
.Lt_01C7:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01CB
jmp .Lt_01B8
.Lt_01CB:
.Lt_01CA:
.Lt_01C6:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_01CD
cmp dword ptr [ebp-28], 0
je .Lt_01CF
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01D1
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_01B8
.Lt_01D1:
.Lt_01D0:
jmp .Lt_01CE
.Lt_01CF:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01D3
jmp .Lt_01B8
.Lt_01D3:
.Lt_01D2:
.Lt_01CE:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_01D5
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_01D4
.Lt_01D5:
push 0
call _LEXSKIPTOKEN@4
.Lt_01D4:
cmp dword ptr [ebp-28], 0
je .Lt_01D7
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_01D9
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_01B8
.Lt_01D9:
.Lt_01D8:
jmp .Lt_01D6
.Lt_01D7:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_01DB
jmp .Lt_01B8
.Lt_01DB:
.Lt_01DA:
.Lt_01D6:
.Lt_01CD:
.Lt_01CC:
jmp .Lt_01C2
.Lt_01C3:
cmp dword ptr [ebp-28], 0
je .Lt_01DD
push 0
push 0
push 9
call _ERRREPORT@12
jmp .Lt_01B8
.Lt_01DD:
.Lt_01DC:
.Lt_01C2:
mov dword ptr [ebp-36], 0
cmp dword ptr [ebp-28], 0
je .Lt_01DF
cmp dword ptr [ebp-16], 0
je .Lt_01E0
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-40], ecx
jmp .Lt_01E9
.Lt_01E0:
mov dword ptr [ebp-40], 0
.Lt_01E9:
mov ecx, dword ptr [ebp-40]
or dword ptr [ebp-36], ecx
cmp dword ptr [ebp-20], 0
je .Lt_01E2
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+4]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .Lt_01EA
.Lt_01E2:
mov dword ptr [ebp-44], 0
.Lt_01EA:
mov eax, dword ptr [ebp-44]
or dword ptr [ebp-36], eax
cmp dword ptr [ebp-24], 0
je .Lt_01E4
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
jmp .Lt_01EB
.Lt_01E4:
mov dword ptr [ebp-48], 0
.Lt_01EB:
mov ecx, dword ptr [ebp-48]
or dword ptr [ebp-36], ecx
.Lt_01DF:
.Lt_01DE:
cmp dword ptr [ebp-36], 0
je .Lt_01E7
push 0
push -1
push 119
call _ERRREPORT@12
.Lt_01E7:
.Lt_01E6:
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLGFXPALETTE@20
mov dword ptr [ebp-4], eax
.Lt_01BA:
.Lt_01B8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXPUT@0
_CGFXPUT@0:
push ebp
mov ebp, esp
sub esp, 68
mov dword ptr [ebp-4], 0
.Lt_01F2:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-32], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .Lt_01F5
mov dword ptr [ebp-8], 2
jmp .Lt_01F4
.Lt_01F5:
mov dword ptr [ebp-8], 0
.Lt_01F4:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_01F7
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_01F6
.Lt_01F7:
push 0
call _LEXSKIPTOKEN@4
.Lt_01F6:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01F9
jmp .Lt_01F3
.Lt_01F9:
.Lt_01F8:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_01FB
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_01FA
.Lt_01FB:
push 0
call _LEXSKIPTOKEN@4
.Lt_01FA:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_01FD
jmp .Lt_01F3
.Lt_01FD:
.Lt_01FC:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_01FF
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_01FE
.Lt_01FF:
push 0
call _LEXSKIPTOKEN@4
.Lt_01FE:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0201
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0200
.Lt_0201:
push 0
call _LEXSKIPTOKEN@4
.Lt_0200:
push 0
push -1
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_0203
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_01F3
.Lt_0203:
.Lt_0202:
mov dword ptr [ebp-12], 5
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0205
mov dword ptr [ebp-16], -1
push 0
push 40
call _HMATCH@8
test eax, eax
je .Lt_0207
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_0209
jmp .Lt_01F3
.Lt_0209:
.Lt_0208:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_020B
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_020A
.Lt_020B:
push 0
call _LEXSKIPTOKEN@4
.Lt_020A:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .Lt_020D
jmp .Lt_01F3
.Lt_020D:
.Lt_020C:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_020F
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_020E
.Lt_020F:
push 0
call _LEXSKIPTOKEN@4
.Lt_020E:
push 0
push 45
call _HMATCH@8
test eax, eax
jne .Lt_0211
push 0
push 0
push 15
call _ERRREPORT@12
jmp .Lt_01F3
.Lt_0211:
.Lt_0210:
push 2048
push 282
call _HMATCH@8
test eax, eax
je .Lt_0213
cmp dword ptr [ebp-8], 2
jne .Lt_0215
mov dword ptr [ebp-8], 3
jmp .Lt_0214
.Lt_0215:
mov dword ptr [ebp-8], 1
.Lt_0214:
.Lt_0213:
.Lt_0212:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0217
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0216
.Lt_0217:
push 0
call _LEXSKIPTOKEN@4
.Lt_0216:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .Lt_0219
jmp .Lt_01F3
.Lt_0219:
.Lt_0218:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_021B
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_021A
.Lt_021B:
push 0
call _LEXSKIPTOKEN@4
.Lt_021A:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_021D
jmp .Lt_01F3
.Lt_021D:
.Lt_021C:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_021F
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_021E
.Lt_021F:
push 0
call _LEXSKIPTOKEN@4
.Lt_021E:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .Lt_0221
mov dword ptr [ebp-16], 0
.Lt_0221:
.Lt_0220:
.Lt_0207:
.Lt_0206:
cmp dword ptr [ebp-16], 0
je .Lt_0223
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-12]
push eax
call _HGETMODE@16
test eax, eax
jne .Lt_0225
jmp .Lt_01F3
.Lt_0225:
.Lt_0224:
.Lt_0223:
.Lt_0222:
.Lt_0205:
.Lt_0204:
push dword ptr [ebp-8]
push dword ptr [ebp-44]
push dword ptr [ebp-40]
push dword ptr [ebp-36]
push dword ptr [ebp-12]
push dword ptr [ebp-60]
push dword ptr [ebp-56]
push dword ptr [ebp-52]
push dword ptr [ebp-48]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-32]
call _RTLGFXPUT@52
mov dword ptr [ebp-4], eax
.Lt_01F3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXGET@0
_CGFXGET@0:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.Lt_0226:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-4], 0
push -1
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-32], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .Lt_0229
mov dword ptr [ebp-8], 5
jmp .Lt_0228
.Lt_0229:
mov dword ptr [ebp-8], 4
.Lt_0228:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_022B
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_022A
.Lt_022B:
push 0
call _LEXSKIPTOKEN@4
.Lt_022A:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_022D
jmp .Lt_0227
.Lt_022D:
.Lt_022C:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_022F
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_022E
.Lt_022F:
push 0
call _LEXSKIPTOKEN@4
.Lt_022E:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0231
jmp .Lt_0227
.Lt_0231:
.Lt_0230:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0233
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0232
.Lt_0233:
push 0
call _LEXSKIPTOKEN@4
.Lt_0232:
push 0
push 45
call _HMATCH@8
test eax, eax
jne .Lt_0235
push 0
push 0
push 15
call _ERRREPORT@12
jmp .Lt_0227
.Lt_0235:
.Lt_0234:
push 2048
push 282
call _HMATCH@8
test eax, eax
je .Lt_0237
cmp dword ptr [ebp-8], 5
jne .Lt_0239
mov dword ptr [ebp-8], 3
jmp .Lt_0238
.Lt_0239:
mov dword ptr [ebp-8], 1
.Lt_0238:
jmp .Lt_0236
.Lt_0237:
cmp dword ptr [ebp-8], 5
jne .Lt_023B
mov dword ptr [ebp-8], 2
jmp .Lt_023A
.Lt_023B:
mov dword ptr [ebp-8], 0
.Lt_023A:
.Lt_0236:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_023D
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_023C
.Lt_023D:
push 0
call _LEXSKIPTOKEN@4
.Lt_023C:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_023F
jmp .Lt_0227
.Lt_023F:
.Lt_023E:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0241
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0240
.Lt_0241:
push 0
call _LEXSKIPTOKEN@4
.Lt_0240:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0243
jmp .Lt_0227
.Lt_0243:
.Lt_0242:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0245
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0244
.Lt_0245:
push 0
call _LEXSKIPTOKEN@4
.Lt_0244:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0247
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0246
.Lt_0247:
push 0
call _LEXSKIPTOKEN@4
.Lt_0246:
lea eax, [ebp-36]
push eax
push 0
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_0249
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_0227
.Lt_0249:
.Lt_0248:
push dword ptr [ebp-36]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
call _RTLGFXGET@32
mov dword ptr [ebp-4], eax
.Lt_0227:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXSCREEN@4
_CGFXSCREEN@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_024A:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_024D
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_024F
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
.Lt_024F:
.Lt_024E:
mov dword ptr [ebp-16], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0251
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
.Lt_0251:
.Lt_0250:
cmp dword ptr [ebp-8], 0
jne .Lt_0253
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLPAGESET@12
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_024B
.Lt_0253:
.Lt_0252:
mov dword ptr [ebp-20], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0255
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
.Lt_0255:
.Lt_0254:
mov dword ptr [ebp-24], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0257
call _CEXPRESSION@0
mov dword ptr [ebp-24], eax
.Lt_0257:
.Lt_0256:
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLGFXSCREENSET@20
mov dword ptr [ebp-4], eax
jmp .Lt_024C
.Lt_024D:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0259
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_025B
push dword ptr [ebp-20]
call _ASTDELTREE@4
.Lt_025B:
.Lt_025A:
.Lt_0259:
.Lt_0258:
mov dword ptr [ebp-12], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_025D
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
.Lt_025D:
.Lt_025C:
mov dword ptr [ebp-16], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_025F
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
.Lt_025F:
.Lt_025E:
cmp dword ptr [ebp-8], 0
jne .Lt_0261
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLPAGESET@12
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_0260
.Lt_0261:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLGFXSCREENSETQB@12
mov dword ptr [ebp-4], eax
.Lt_0260:
.Lt_024C:
.Lt_024B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXPOINT@4
_CGFXPOINT@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0264:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0267
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0266
.Lt_0267:
push 0
call _LEXSKIPTOKEN@4
.Lt_0266:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0269
jmp .Lt_0265
.Lt_0269:
.Lt_0268:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_026B
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_026D
jmp .Lt_0265
.Lt_026D:
.Lt_026C:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_026F
push 0
push -1
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0271
push 0
push 0
push 9
call _ERRREPORT@12
jmp .Lt_0265
.Lt_0271:
.Lt_0270:
.Lt_026F:
.Lt_026E:
.Lt_026B:
.Lt_026A:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0273
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0272
.Lt_0273:
push 0
call _LEXSKIPTOKEN@4
.Lt_0272:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _RTLGFXPOINT@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_0265:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXIMAGECREATE@4
_CGFXIMAGECREATE@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0275:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0278
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0277
.Lt_0278:
push 0
call _LEXSKIPTOKEN@4
.Lt_0277:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_027A
jmp .Lt_0276
.Lt_027A:
.Lt_0279:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_027C
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_027B
.Lt_027C:
push 0
call _LEXSKIPTOKEN@4
.Lt_027B:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_027E
jmp .Lt_0276
.Lt_027E:
.Lt_027D:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], -2147483648
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0280
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_0282
mov dword ptr [ebp-24], 0
.Lt_0282:
.Lt_0281:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0284
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0286
jmp .Lt_0276
.Lt_0286:
.Lt_0285:
.Lt_0284:
.Lt_0283:
.Lt_0280:
.Lt_027F:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0288
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0287
.Lt_0288:
push 0
call _LEXSKIPTOKEN@4
.Lt_0287:
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLGFXIMAGECREATE@20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_0276:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXSTMT@4
_CGFXSTMT@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_028A:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_028D
.Lt_028F:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_0291
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_0291:
.Lt_0290:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _CGFXPSET@4
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_0292:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_0294
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_0294:
.Lt_0293:
push 2048
call _LEXSKIPTOKEN@4
push -1
call _CGFXPSET@4
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_0295:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_0297
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_0297:
.Lt_0296:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXLINE@0
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_0298:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_029A
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_029A:
.Lt_0299:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXCIRCLE@0
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_029B:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_029D
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_029D:
.Lt_029C:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXPAINT@0
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_029E:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_02A0
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_02A0:
.Lt_029F:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXDRAW@0
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_02A1:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_02A3
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_02A3:
.Lt_02A2:
push 2048
call _LEXSKIPTOKEN@4
push -1
call _CGFXVIEW@4
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_02A4:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_02A6
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_02A6:
.Lt_02A5:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _CGFXVIEW@4
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_02A7:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_02A9
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_02A9:
.Lt_02A8:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXPALETTE@0
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_02AA:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_02AC
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_02AC:
.Lt_02AB:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXPUT@0
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_02AD:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_02AF
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_02AF:
.Lt_02AE:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXGET@0
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_02B0:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_02B2
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_02B2:
.Lt_02B1:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _CGFXSCREEN@4
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_02B3:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_02B5
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_028B
.Lt_02B5:
.Lt_02B4:
push 2048
call _LEXSKIPTOKEN@4
push -1
call _CGFXSCREEN@4
mov dword ptr [ebp-4], eax
jmp .Lt_028C
.Lt_028D:
mov eax, dword ptr [ebp-8]
add eax, 4294966825
cmp eax, 40
ja .Lt_028C
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_02B6+eax*4-1884]
_.LT_02B6:
.int .Lt_02AA
.int .Lt_02AD
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_0295
.int .Lt_02A1
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028F
.int .Lt_0292
.int .Lt_028C
.int .Lt_0298
.int .Lt_02A4
.int .Lt_02A7
.int .Lt_02B0
.int .Lt_02B3
.int .Lt_029B
.int .Lt_029E
.Lt_028C:
.Lt_028B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXFUNCT@4
_CGFXFUNCT@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_02B7:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 504
jne .Lt_02BA
.Lt_02BB:
push 2048
call _LEXSKIPTOKEN@4
lea eax, [ebp-8]
push eax
call _CGFXPOINT@4
jmp .Lt_02B9
.Lt_02BA:
cmp dword ptr [ebp+8], 512
jne .Lt_02BC
.Lt_02BD:
push 2048
call _LEXSKIPTOKEN@4
lea eax, [ebp-8]
push eax
call _CGFXIMAGECREATE@4
.Lt_02BC:
.Lt_02B9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_02B8:
mov eax, dword ptr [ebp-4]
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
_HMAYBEUDT2PTR@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0069:
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
push 0
push 32
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_006C
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _ASTBUILDCALL@16
mov dword ptr [ebp+8], eax
jmp .Lt_006B
.Lt_006C:
cmp dword ptr [ebp-8], 0
je .Lt_006E
push dword ptr [ebp+8]
call _ASTDELTREE@4
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.Lt_006E:
.Lt_006D:
.Lt_006B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_006A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HNIDXARRAY2ARRAYACCESS@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_006F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 19
jne .Lt_0072
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0070
.Lt_0072:
.Lt_0071:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .Lt_0074
mov eax, dword ptr [_SYMB+99612]
mov ebx, eax
sar ebx, 31
push ebx
push eax
push 0
push 8
push 0
push 8
push 0
push 0
push dword ptr [ebp-20]
call _ASTNEWVAR@20
push eax
call _ASTNEWDEREF@20
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_SYMB+99632]
add eax, dword ptr [_SYMB+99624]
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
push 0
push 8
push 0
push 8
push 0
push 0
push dword ptr [ebp-20]
call _ASTNEWVAR@20
push eax
call _ASTNEWDEREF@20
mov dword ptr [ebp-16], eax
push 1
push 0
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-16]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-16], eax
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
push 0
push 8
push dword ptr [ebp-12]
call _ASTNEWLOAD@12
push dword ptr [ebp-8]
call _ASTDELTREE@4
push 0
push 8
push 0
push 0
push dword ptr [ebp-20]
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
jmp .Lt_0073
.Lt_0074:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
and ecx, 16388
test ecx, ecx
je .Lt_0075
push 0
push 8
mov eax, dword ptr [_SYMB+99612]
mov ecx, eax
sar ecx, 31
push ecx
push eax
mov eax, dword ptr [ebp-20]
push dword ptr [eax+88]
call _ASTNEWVAR@20
mov dword ptr [ebp-12], eax
push 0
push 8
mov eax, dword ptr [_SYMB+99632]
add eax, dword ptr [_SYMB+99624]
mov ebx, eax
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+88]
call _ASTNEWVAR@20
mov dword ptr [ebp-16], eax
push 1
push 0
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-16]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-16], eax
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
push 0
push 8
push dword ptr [ebp-12]
call _ASTNEWLOAD@12
mov dword ptr [ebp-12], eax
jmp .Lt_0073
.Lt_0075:
push 1
push 0
push 0
push 9
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBCALCLEN@8
push edx
push eax
call _ASTNEWCONSTI@16
push eax
push 0
push 8
mov eax, dword ptr [ebp-20]
mov edx, dword ptr [eax+68]
push dword ptr [edx+4]
push dword ptr [edx]
call _ASTNEWCONSTI@16
push eax
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
.Lt_0073:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWIDX@8
mov dword ptr [ebp-4], eax
.Lt_0070:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEARRAYACCESS2PTR@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0076:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
jne .Lt_007A
.Lt_007B:
cmp dword ptr [ebp+12], 0
je .Lt_007D
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _ASTNEWVAR@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_007D:
.Lt_007C:
push dword ptr [ebp+8]
call _ASTNEWADDROF@4
mov dword ptr [ebp+8], eax
jmp .Lt_0078
.Lt_007A:
cmp dword ptr [ebp-8], 19
jne .Lt_007E
.Lt_007F:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _SYMBISARRAY@4
test eax, eax
je .Lt_0081
cmp dword ptr [ebp+12], 0
je .Lt_0083
push dword ptr [ebp+8]
call _ASTHASSIDEFX@4
test eax, eax
je .Lt_0085
push 0
push -1
push 28
call _ERRREPORT@12
push dword ptr [ebp+8]
call _ASTDELTREE@4
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
jmp .Lt_0084
.Lt_0085:
push dword ptr [ebp+8]
call _ASTCLONETREE@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
push dword ptr [ebp+8]
call _ASTNEWADDROF@4
mov dword ptr [ebp+8], eax
.Lt_0084:
jmp .Lt_0082
.Lt_0083:
push dword ptr [ebp+8]
call _ASTNEWADDROF@4
mov dword ptr [ebp+8], eax
.Lt_0082:
.Lt_0081:
.Lt_0080:
.Lt_007E:
.Lt_0078:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKFBIMAGEEXPR@12:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_0086:
push dword ptr [ebp+8]
call _ASTREMOVENOCONVCAST@4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
jne .Lt_0089
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HNIDXARRAY2ARRAYACCESS@4
push eax
call _HMAYBEARRAYACCESS2PTR@8
mov dword ptr [ebp+8], eax
jmp .Lt_0088
.Lt_0089:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .Lt_008B
push dword ptr [ebp+8]
call _HMAYBEUDT2PTR@4
mov dword ptr [ebp+8], eax
.Lt_008B:
.Lt_008A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
jne .Lt_008D
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMAYBEARRAYACCESS2PTR@8
mov dword ptr [ebp+8], eax
.Lt_008D:
.Lt_008C:
.Lt_0088:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
jne .Lt_008F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
jne .Lt_0091
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 20
push offset _Lt_0093
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
push dword ptr [ebx+16]
push 3
push offset _Lt_0092
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
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-40]
push -1
push 99
call _ERRREPORT@12
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
jmp .Lt_0090
.Lt_0091:
push 0
push -1
push 28
call _ERRREPORT@12
.Lt_0090:
push dword ptr [ebp+8]
call _ASTNEWADDROF@4
mov dword ptr [ebp+8], eax
.Lt_008F:
.Lt_008E:
cmp dword ptr [ebp+12], 0
jne .Lt_0098
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
and ebx, 512
test ebx, ebx
je .Lt_009A
push 0
push -1
push 119
call _ERRREPORT@12
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0097:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0087:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HFBIMAGEEXPR@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_009B:
push -1
call _CEXPRESSIONWITHNIDXARRAY@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_009E
jmp .Lt_009C
.Lt_009E:
.Lt_009D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _HCHECKFBIMAGEEXPR@12
mov dword ptr [ebp-4], eax
.Lt_009C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HFBIMAGEEXPRINFRONTOFCOORD@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_009F:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .Lt_00A2
jmp .Lt_00A0
.Lt_00A2:
.Lt_00A1:
push 0
push dword ptr [ebp+8]
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00A4
jmp .Lt_00A0
.Lt_00A4:
.Lt_00A3:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_00A6
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_00A5
.Lt_00A6:
push 0
call _LEXSKIPTOKEN@4
.Lt_00A5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETMODE@16:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A7:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 288
jne .Lt_00AB
.Lt_00AC:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
mov dword ptr [ebp-4], -1
jmp .Lt_00A8
jmp .Lt_00A9
.Lt_00AB:
cmp dword ptr [ebp-24], 289
jne .Lt_00AD
.Lt_00AE:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
mov dword ptr [ebp-4], -1
jmp .Lt_00A8
jmp .Lt_00A9
.Lt_00AD:
cmp dword ptr [ebp-24], 292
jne .Lt_00AF
.Lt_00B0:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 5
mov dword ptr [ebp-4], -1
jmp .Lt_00A8
.Lt_00AF:
.Lt_00A9:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_00B4
.Lt_00B5:
cmp dword ptr [ebp-24], 2
je .Lt_00B4
.Lt_00B6:
cmp dword ptr [ebp-24], 1
jne .Lt_00B3
.Lt_00B4:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_00BA
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00B9
.Lt_00BB:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
jmp .Lt_00B7
.Lt_00B9:
push 7
push offset _Lt_00BD
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00BC
.Lt_00BE:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
jmp .Lt_00B7
.Lt_00BC:
push 6
push offset _Lt_00C0
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00BF
.Lt_00C1:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
jmp .Lt_00B7
.Lt_00BF:
push 4
push offset _Lt_00C3
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00C2
.Lt_00C4:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 7
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_00C6
push -1
call _HMATCHEXPR@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_00C8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
.Lt_00C8:
.Lt_00C7:
jmp .Lt_00C5
.Lt_00C6:
push 0
push 9
push 0
push 255
call _ASTNEWCONSTI@16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_00C5:
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
jmp .Lt_00B7
.Lt_00C2:
push 6
push offset _Lt_00CA
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00C9
.Lt_00CB:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 6
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_00CD
push -1
call _HMATCHEXPR@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_00CF
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
.Lt_00CF:
.Lt_00CE:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 9
.Lt_00CD:
.Lt_00CC:
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
jmp .Lt_00B7
.Lt_00C9:
push 7
push offset _Lt_00D1
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00D0
.Lt_00D2:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_00D4
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_00D3
.Lt_00D4:
push 0
call _LEXSKIPTOKEN@4
.Lt_00D3:
push -1
call _HMATCHEXPR@4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .Lt_00D6
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
.Lt_00D6:
.Lt_00D5:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_00D8
push -1
call _HMATCHEXPR@4
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_00DA
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
.Lt_00DA:
.Lt_00D9:
.Lt_00D8:
.Lt_00D7:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DC
push 0
push 0
push 20
call _ERRREPORT@12
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
.Lt_00DC:
.Lt_00DB:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 3
je .Lt_00DE
push 0
push 0
push 20
call _ERRREPORT@12
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
.Lt_00DE:
.Lt_00DD:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 12
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
movsx ecx, word ptr [eax+68]
cmp ecx, 3
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00E0
push 0
push 0
push 20
call _ERRREPORT@12
lea ecx, [ebp-36]
push ecx
call _fb_StrDelete@4
jmp .Lt_00A8
.Lt_00E0:
.Lt_00DF:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+176]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+176]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+84], 4
jne .Lt_00E2
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-12], ebx
pop dword ptr [ebp-20]
.Lt_00E2:
.Lt_00E1:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+28]
and ecx, 511
cmp ecx, 12
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 12
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
cmp ebx, 1
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_00E4
push 0
push 0
push 20
call _ERRREPORT@12
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
.Lt_00E4:
.Lt_00E3:
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00A8
.Lt_00D0:
.Lt_00B7:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_00B3:
.Lt_00B1:
push 0
push 0
push 17
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
.Lt_00A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_0092:	.ascii	" \"\0"
.balign 4
_Lt_0093:	.ascii	".cast() as any ptr\"\0"
.balign 4
_Lt_00BA:	.ascii	"PSET\0"
.balign 4
_Lt_00BD:	.ascii	"PRESET\0"
.balign 4
_Lt_00C0:	.ascii	"TRANS\0"
.balign 4
_Lt_00C3:	.ascii	"ADD\0"
.balign 4
_Lt_00CA:	.ascii	"ALPHA\0"
.balign 4
_Lt_00D1:	.ascii	"CUSTOM\0"
.balign 4
_Lt_0122:	.ascii	"B\0"
.balign 4
_Lt_0125:	.ascii	"BF\0"
.balign 8
_Lt_012B:	.quad	0x0000000000000000
.balign 4
_Lt_014A:	.ascii	"F\0"
.balign 4
_Lt_01B9:	.ascii	"GET\0"
