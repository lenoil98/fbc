	.intel_syntax noprefix

.section .text
.balign 16

.globl CGFXPSET
CGFXPSET:
.type CGFXPSET, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00E4:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .Lt_00E7
mov dword ptr [ebp-8], 5
jmp .Lt_00E6
.Lt_00E7:
mov dword ptr [ebp-8], 4
.Lt_00E6:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_00E9
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_00E8
.Lt_00E9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00E8:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00EB
jmp .Lt_00E5
.Lt_00EB:
.Lt_00EA:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_00ED
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_00EC
.Lt_00ED:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00EC:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00EF
jmp .Lt_00E5
.Lt_00EF:
.Lt_00EE:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00F1
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_00F0
.Lt_00F1:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00F0:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_00F3
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00F5
jmp .Lt_00E5
.Lt_00F5:
.Lt_00F4:
jmp .Lt_00F2
.Lt_00F3:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
or dword ptr [ebp-8], -2147483648
.Lt_00F2:
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call RTLGFXPSET
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_00E5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXPSET, .-CGFXPSET
.balign 16

.globl CGFXLINE
CGFXLINE:
.type CGFXLINE, @function
push ebp
mov ebp, esp
sub esp, 56
mov dword ptr [ebp-4], 0
.Lt_00F6:
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
sub esp, 8
push 0
push 45
call HMATCH
add esp, 16
test eax, eax
je .Lt_00F9
mov dword ptr [ebp-8], 5
sub esp, 4
push 15
push dword ptr [Lt_012A+4]
push dword ptr [Lt_012A]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 4
push 15
push dword ptr [Lt_012A+4]
push dword ptr [Lt_012A]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_00F8
.Lt_00F9:
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-40], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .Lt_00FB
mov dword ptr [ebp-8], 5
jmp .Lt_00FA
.Lt_00FB:
mov dword ptr [ebp-8], 4
.Lt_00FA:
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .Lt_00FD
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00FF
jmp .Lt_00F7
.Lt_00FF:
.Lt_00FE:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0101
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0100
.Lt_0101:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0100:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0103
jmp .Lt_00F7
.Lt_0103:
.Lt_0102:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0105
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0104
.Lt_0105:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0104:
jmp .Lt_00FC
.Lt_00FD:
mov dword ptr [ebp-8], 5
sub esp, 4
push 15
push dword ptr [Lt_012A+4]
push dword ptr [Lt_012A]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 4
push 15
push dword ptr [Lt_012A+4]
push dword ptr [Lt_012A]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_00FC:
sub esp, 8
push 0
push 45
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0107
sub esp, 4
push 0
push 0
push 15
call ERRREPORT
add esp, 16
jmp .Lt_00F7
.Lt_0107:
.Lt_0106:
.Lt_00F8:
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .Lt_0109
cmp dword ptr [ebp-8], 5
jne .Lt_010B
mov dword ptr [ebp-8], 3
jmp .Lt_010A
.Lt_010B:
mov dword ptr [ebp-8], 1
.Lt_010A:
jmp .Lt_0108
.Lt_0109:
cmp dword ptr [ebp-8], 5
jne .Lt_010D
mov dword ptr [ebp-8], 2
jmp .Lt_010C
.Lt_010D:
mov dword ptr [ebp-8], 0
.Lt_010C:
.Lt_0108:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_010F
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_010E
.Lt_010F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_010E:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_0111
jmp .Lt_00F7
.Lt_0111:
.Lt_0110:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0113
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0112
.Lt_0113:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0112:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0115
jmp .Lt_00F7
.Lt_0115:
.Lt_0114:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0117
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0116
.Lt_0117:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0116:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0119
call CEXPRESSION
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_011B
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
or dword ptr [ebp-8], -2147483648
.Lt_011B:
.Lt_011A:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_011D
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrInit
add esp, 32
push 2
push offset Lt_0121
push -1
lea eax, [ebp-52]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0120
.Lt_0122:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], 1
jmp .Lt_011E
.Lt_0120:
push 3
push offset Lt_0124
push -1
lea eax, [ebp-52]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0123
.Lt_0125:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], 2
.Lt_0123:
.Lt_011E:
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0127
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0129
jmp .Lt_00F7
.Lt_0129:
.Lt_0128:
.Lt_0127:
.Lt_0126:
.Lt_011D:
.Lt_011C:
jmp .Lt_0118
.Lt_0119:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
or dword ptr [ebp-8], -2147483648
.Lt_0118:
sub esp, 12
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-40]
call RTLGFXLINE
add esp, 48
mov dword ptr [ebp-4], eax
.Lt_00F7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXLINE, .-CGFXLINE
.balign 16

.globl CGFXCIRCLE
CGFXCIRCLE:
.type CGFXCIRCLE, @function
push ebp
mov ebp, esp
sub esp, 56
mov dword ptr [ebp-4], 0
.Lt_012B:
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
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-44], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .Lt_012E
mov dword ptr [ebp-8], 5
jmp .Lt_012D
.Lt_012E:
mov dword ptr [ebp-8], 4
.Lt_012D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_0130
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_012F
.Lt_0130:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_012F:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0132
jmp .Lt_012C
.Lt_0132:
.Lt_0131:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0134
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0133
.Lt_0134:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0133:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0136
jmp .Lt_012C
.Lt_0136:
.Lt_0135:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0138
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0137
.Lt_0138:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0137:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_013A
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0139
.Lt_013A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0139:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_013C
jmp .Lt_012C
.Lt_013C:
.Lt_013B:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-12], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_013E
call CEXPRESSION
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0140
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-8], -2147483648
.Lt_0140:
.Lt_013F:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0142
call CEXPRESSION
mov dword ptr [ebp-32], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0144
call CEXPRESSION
mov dword ptr [ebp-36], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0146
call CEXPRESSION
mov dword ptr [ebp-40], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0148
push 2
push offset Lt_0149
push -1
sub esp, 12
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_014B
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .Lt_012C
.Lt_014B:
.Lt_014A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], -1
.Lt_0148:
.Lt_0147:
.Lt_0146:
.Lt_0145:
.Lt_0144:
.Lt_0143:
.Lt_0142:
.Lt_0141:
jmp .Lt_013D
.Lt_013E:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-8], -2147483648
.Lt_013D:
sub esp, 8
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
call RTLGFXCIRCLE
add esp, 48
mov dword ptr [ebp-4], eax
.Lt_012C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXCIRCLE, .-CGFXCIRCLE
.balign 16

.globl CGFXPAINT
CGFXPAINT:
.type CGFXPAINT, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.Lt_014C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .Lt_014F
mov dword ptr [ebp-28], 5
jmp .Lt_014E
.Lt_014F:
mov dword ptr [ebp-28], 4
.Lt_014E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_0151
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0150
.Lt_0151:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0150:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0153
jmp .Lt_014D
.Lt_0153:
.Lt_0152:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0155
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0154
.Lt_0155:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0154:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0157
jmp .Lt_014D
.Lt_0157:
.Lt_0156:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0159
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0158
.Lt_0159:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0158:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_015B
call CEXPRESSION
mov dword ptr [ebp-16], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_015D
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_015F
jmp .Lt_014D
.Lt_015F:
.Lt_015E:
.Lt_015D:
.Lt_015C:
.Lt_015B:
.Lt_015A:
cmp dword ptr [ebp-16], 0
jne .Lt_0161
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
or dword ptr [ebp-28], -2147483648
.Lt_0161:
.Lt_0160:
cmp dword ptr [ebp-20], 0
jne .Lt_0163
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
or dword ptr [ebp-28], 1073741824
.Lt_0163:
.Lt_0162:
sub esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call RTLGFXPAINT
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_014D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXPAINT, .-CGFXPAINT
.balign 16

.globl CGFXDRAWSTRING
CGFXDRAWSTRING:
.type CGFXDRAWSTRING, @function
push ebp
mov ebp, esp
sub esp, 56
mov dword ptr [ebp-4], 0
.Lt_0164:
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
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .Lt_0167
mov dword ptr [ebp-44], 5
jmp .Lt_0166
.Lt_0167:
mov dword ptr [ebp-44], 4
.Lt_0166:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_0169
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0168
.Lt_0169:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0168:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_016B
jmp .Lt_0165
.Lt_016B:
.Lt_016A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_016D
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_016C
.Lt_016D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_016C:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_016F
jmp .Lt_0165
.Lt_016F:
.Lt_016E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0171
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0170
.Lt_0171:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0170:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0173
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0172
.Lt_0173:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0172:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0175
jmp .Lt_0165
.Lt_0175:
.Lt_0174:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-48], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0177
call CEXPRESSION
mov dword ptr [ebp-24], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0179
sub esp, 8
push 0
push -1
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_017B
lea eax, [ebp-40]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-48]
push eax
call HGETMODE
add esp, 16
test eax, eax
jne .Lt_017D
jmp .Lt_0165
.Lt_017D:
.Lt_017C:
.Lt_017B:
.Lt_017A:
.Lt_0179:
.Lt_0178:
.Lt_0177:
.Lt_0176:
cmp dword ptr [ebp-24], 0
jne .Lt_017F
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-44], -2147483648
.Lt_017F:
.Lt_017E:
sub esp, 4
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
call RTLGFXDRAWSTRING
add esp, 48
mov dword ptr [ebp-4], eax
.Lt_0165:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXDRAWSTRING, .-CGFXDRAWSTRING
.balign 16

.globl CGFXDRAW
CGFXDRAW:
.type CGFXDRAW, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0180:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
sub esp, 8
push 2048
push 369
call HMATCH
add esp, 16
test eax, eax
je .Lt_0183
call CGFXDRAWSTRING
mov dword ptr [ebp-4], eax
jmp .Lt_0181
.Lt_0183:
.Lt_0182:
sub esp, 12
push -1
call CEXPRESSIONWITHNIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0185
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .Lt_0181
.Lt_0185:
.Lt_0184:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0187
sub esp, 4
push 0
push 0
push dword ptr [ebp-8]
call HCHECKFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0189
jmp .Lt_0181
.Lt_0189:
.Lt_0188:
jmp .Lt_0186
.Lt_0187:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .Lt_018B
sub esp, 4
push 0
push -1
push 73
call ERRREPORT
add esp, 16
jmp .Lt_0181
.Lt_018B:
.Lt_018A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
.Lt_0186:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLGFXDRAW
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0181:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXDRAW, .-CGFXDRAW
.balign 16

.globl CGFXVIEW
CGFXVIEW:
.type CGFXVIEW, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.Lt_018C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 508
je .Lt_0191
.Lt_0192:
cmp dword ptr [ebp-36], 509
jne .Lt_0190
.Lt_0191:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 1
jmp .Lt_018E
.Lt_0190:
mov dword ptr [ebp-8], 0
.Lt_0193:
.Lt_018E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .Lt_0195
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0197
jmp .Lt_018D
.Lt_0197:
.Lt_0196:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0199
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0198
.Lt_0199:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0198:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_019B
jmp .Lt_018D
.Lt_019B:
.Lt_019A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_019D
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_019C
.Lt_019D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_019C:
sub esp, 8
push 0
push 45
call HMATCH
add esp, 16
test eax, eax
jne .Lt_019F
sub esp, 4
push 0
push 0
push 15
call ERRREPORT
add esp, 16
jmp .Lt_018D
.Lt_019F:
.Lt_019E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_01A1
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_01A0
.Lt_01A1:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01A0:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01A3
jmp .Lt_018D
.Lt_01A3:
.Lt_01A2:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_01A5
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_01A4
.Lt_01A5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01A4:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_01A7
jmp .Lt_018D
.Lt_01A7:
.Lt_01A6:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_01A9
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_01A8
.Lt_01A9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01A8:
cmp dword ptr [ebp+8], 0
je .Lt_01AB
or dword ptr [ebp-8], -1073741824
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_01AD
call CEXPRESSION
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_01AF
and dword ptr [ebp-8], 2147483647
.Lt_01AF:
.Lt_01AE:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_01B1
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_01B3
jmp .Lt_018D
.Lt_01B3:
.Lt_01B2:
and dword ptr [ebp-8], -1073741825
.Lt_01B1:
.Lt_01B0:
.Lt_01AD:
.Lt_01AC:
.Lt_01AB:
.Lt_01AA:
.Lt_0195:
.Lt_0194:
cmp dword ptr [ebp+8], 0
je .Lt_01B5
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLGFXVIEW
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_01B4
.Lt_01B5:
sub esp, 12
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLGFXWINDOW
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_01B4:
.Lt_018D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXVIEW, .-CGFXVIEW
.balign 16

.globl CGFXPALETTE
CGFXPALETTE:
.type CGFXPALETTE, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B6:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
sub esp, 8
push 2048
push offset Lt_01B8
call HMATCHIDORKW
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 2048
push 287
call HMATCH
add esp, 16
test eax, eax
je .Lt_01BA
sub esp, 8
push 0
mov eax, dword ptr [ebp-28]
not eax
push eax
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01BC
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_01B7
.Lt_01BC:
.Lt_01BB:
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
je .Lt_01BD
mov dword ptr [ebp-36], 24
jmp .Lt_01E7
.Lt_01BD:
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
.Lt_01E7:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [SYMB_DTYPETB+312]
cmp eax, dword ptr [ebp-32]
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [SYMB_DTYPETB+368]
cmp ecx, dword ptr [ebp-32]
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_01C0
mov ecx, dword ptr [SYMB_DTYPETB+228]
mov dword ptr [ebp-32], ecx
.Lt_01C0:
.Lt_01BF:
sub esp, 4
mov ecx, dword ptr [SYMB_DTYPETB+368]
cmp ecx, dword ptr [ebp-32]
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
push dword ptr [ebp-28]
push dword ptr [ebp-8]
call RTLGFXPALETTEUSING
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01B9
.Lt_01BA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_01C2
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_01C4
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_01C3
.Lt_01C4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01C3:
cmp dword ptr [ebp-28], 0
je .Lt_01C6
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01C8
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_01B7
.Lt_01C8:
.Lt_01C7:
jmp .Lt_01C5
.Lt_01C6:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01CA
jmp .Lt_01B7
.Lt_01CA:
.Lt_01C9:
.Lt_01C5:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_01CC
cmp dword ptr [ebp-28], 0
je .Lt_01CE
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01D0
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_01B7
.Lt_01D0:
.Lt_01CF:
jmp .Lt_01CD
.Lt_01CE:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01D2
jmp .Lt_01B7
.Lt_01D2:
.Lt_01D1:
.Lt_01CD:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_01D4
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_01D3
.Lt_01D4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01D3:
cmp dword ptr [ebp-28], 0
je .Lt_01D6
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_01D8
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_01B7
.Lt_01D8:
.Lt_01D7:
jmp .Lt_01D5
.Lt_01D6:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_01DA
jmp .Lt_01B7
.Lt_01DA:
.Lt_01D9:
.Lt_01D5:
.Lt_01CC:
.Lt_01CB:
jmp .Lt_01C1
.Lt_01C2:
cmp dword ptr [ebp-28], 0
je .Lt_01DC
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .Lt_01B7
.Lt_01DC:
.Lt_01DB:
.Lt_01C1:
mov dword ptr [ebp-36], 0
cmp dword ptr [ebp-28], 0
je .Lt_01DE
cmp dword ptr [ebp-16], 0
je .Lt_01DF
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-40], ecx
jmp .Lt_01E8
.Lt_01DF:
mov dword ptr [ebp-40], 0
.Lt_01E8:
mov ecx, dword ptr [ebp-40]
or dword ptr [ebp-36], ecx
cmp dword ptr [ebp-20], 0
je .Lt_01E1
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+4]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .Lt_01E9
.Lt_01E1:
mov dword ptr [ebp-44], 0
.Lt_01E9:
mov eax, dword ptr [ebp-44]
or dword ptr [ebp-36], eax
cmp dword ptr [ebp-24], 0
je .Lt_01E3
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
jmp .Lt_01EA
.Lt_01E3:
mov dword ptr [ebp-48], 0
.Lt_01EA:
mov ecx, dword ptr [ebp-48]
or dword ptr [ebp-36], ecx
.Lt_01DE:
.Lt_01DD:
cmp dword ptr [ebp-36], 0
je .Lt_01E6
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.Lt_01E6:
.Lt_01E5:
sub esp, 12
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLGFXPALETTE
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_01B9:
.Lt_01B7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CGFXPALETTE, .-CGFXPALETTE
.balign 16

.globl CGFXPUT
CGFXPUT:
.type CGFXPUT, @function
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
.Lt_01F1:
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
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .Lt_01F4
mov dword ptr [ebp-8], 2
jmp .Lt_01F3
.Lt_01F4:
mov dword ptr [ebp-8], 0
.Lt_01F3:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_01F6
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_01F5
.Lt_01F6:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01F5:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01F8
jmp .Lt_01F2
.Lt_01F8:
.Lt_01F7:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_01FA
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_01F9
.Lt_01FA:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01F9:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_01FC
jmp .Lt_01F2
.Lt_01FC:
.Lt_01FB:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_01FE
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_01FD
.Lt_01FE:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01FD:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0200
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_01FF
.Lt_0200:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01FF:
sub esp, 8
push 0
push -1
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_0202
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_01F2
.Lt_0202:
.Lt_0201:
mov dword ptr [ebp-12], 5
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0204
mov dword ptr [ebp-16], -1
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .Lt_0206
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_0208
jmp .Lt_01F2
.Lt_0208:
.Lt_0207:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_020A
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0209
.Lt_020A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0209:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .Lt_020C
jmp .Lt_01F2
.Lt_020C:
.Lt_020B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_020E
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_020D
.Lt_020E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_020D:
sub esp, 8
push 0
push 45
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0210
sub esp, 4
push 0
push 0
push 15
call ERRREPORT
add esp, 16
jmp .Lt_01F2
.Lt_0210:
.Lt_020F:
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .Lt_0212
cmp dword ptr [ebp-8], 2
jne .Lt_0214
mov dword ptr [ebp-8], 3
jmp .Lt_0213
.Lt_0214:
mov dword ptr [ebp-8], 1
.Lt_0213:
.Lt_0212:
.Lt_0211:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_0216
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0215
.Lt_0216:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0215:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .Lt_0218
jmp .Lt_01F2
.Lt_0218:
.Lt_0217:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_021A
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0219
.Lt_021A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0219:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_021C
jmp .Lt_01F2
.Lt_021C:
.Lt_021B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_021E
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_021D
.Lt_021E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_021D:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0220
mov dword ptr [ebp-16], 0
.Lt_0220:
.Lt_021F:
.Lt_0206:
.Lt_0205:
cmp dword ptr [ebp-16], 0
je .Lt_0222
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-12]
push eax
call HGETMODE
add esp, 16
test eax, eax
jne .Lt_0224
jmp .Lt_01F2
.Lt_0224:
.Lt_0223:
.Lt_0222:
.Lt_0221:
.Lt_0204:
.Lt_0203:
sub esp, 12
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
call RTLGFXPUT
add esp, 64
mov dword ptr [ebp-4], eax
.Lt_01F2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXPUT, .-CGFXPUT
.balign 16

.globl CGFXGET
CGFXGET:
.type CGFXGET, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.Lt_0225:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push -1
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .Lt_0228
mov dword ptr [ebp-8], 5
jmp .Lt_0227
.Lt_0228:
mov dword ptr [ebp-8], 4
.Lt_0227:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_022A
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0229
.Lt_022A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0229:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_022C
jmp .Lt_0226
.Lt_022C:
.Lt_022B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_022E
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_022D
.Lt_022E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_022D:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0230
jmp .Lt_0226
.Lt_0230:
.Lt_022F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0232
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0231
.Lt_0232:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0231:
sub esp, 8
push 0
push 45
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0234
sub esp, 4
push 0
push 0
push 15
call ERRREPORT
add esp, 16
jmp .Lt_0226
.Lt_0234:
.Lt_0233:
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .Lt_0236
cmp dword ptr [ebp-8], 5
jne .Lt_0238
mov dword ptr [ebp-8], 3
jmp .Lt_0237
.Lt_0238:
mov dword ptr [ebp-8], 1
.Lt_0237:
jmp .Lt_0235
.Lt_0236:
cmp dword ptr [ebp-8], 5
jne .Lt_023A
mov dword ptr [ebp-8], 2
jmp .Lt_0239
.Lt_023A:
mov dword ptr [ebp-8], 0
.Lt_0239:
.Lt_0235:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_023C
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_023B
.Lt_023C:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_023B:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_023E
jmp .Lt_0226
.Lt_023E:
.Lt_023D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0240
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_023F
.Lt_0240:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_023F:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0242
jmp .Lt_0226
.Lt_0242:
.Lt_0241:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0244
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0243
.Lt_0244:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0243:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0246
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0245
.Lt_0246:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0245:
sub esp, 8
lea eax, [ebp-36]
push eax
push 0
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_0248
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_0226
.Lt_0248:
.Lt_0247:
push dword ptr [ebp-36]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
call RTLGFXGET
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0226:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXGET, .-CGFXGET
.balign 16

.globl CGFXSCREEN
CGFXSCREEN:
.type CGFXSCREEN, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0249:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_024C
call CEXPRESSION
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_024E
call CEXPRESSION
mov dword ptr [ebp-12], eax
.Lt_024E:
.Lt_024D:
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0250
call CEXPRESSION
mov dword ptr [ebp-16], eax
.Lt_0250:
.Lt_024F:
cmp dword ptr [ebp-8], 0
jne .Lt_0252
sub esp, 4
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLPAGESET
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_024A
.Lt_0252:
.Lt_0251:
mov dword ptr [ebp-20], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0254
call CEXPRESSION
mov dword ptr [ebp-20], eax
.Lt_0254:
.Lt_0253:
mov dword ptr [ebp-24], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0256
call CEXPRESSION
mov dword ptr [ebp-24], eax
.Lt_0256:
.Lt_0255:
sub esp, 12
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLGFXSCREENSET
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_024B
.Lt_024C:
call CEXPRESSION
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0258
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_025A
sub esp, 12
push dword ptr [ebp-20]
call ASTDELTREE
add esp, 16
.Lt_025A:
.Lt_0259:
.Lt_0258:
.Lt_0257:
mov dword ptr [ebp-12], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_025C
call CEXPRESSION
mov dword ptr [ebp-12], eax
.Lt_025C:
.Lt_025B:
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_025E
call CEXPRESSION
mov dword ptr [ebp-16], eax
.Lt_025E:
.Lt_025D:
cmp dword ptr [ebp-8], 0
jne .Lt_0260
sub esp, 4
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLPAGESET
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_025F
.Lt_0260:
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLGFXSCREENSETQB
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_025F:
.Lt_024B:
.Lt_024A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CGFXSCREEN, .-CGFXSCREEN
.balign 16

.globl CGFXPOINT
CGFXPOINT:
.type CGFXPOINT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0263:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_0266
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0265
.Lt_0266:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0265:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0268
jmp .Lt_0264
.Lt_0268:
.Lt_0267:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_026A
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_026C
jmp .Lt_0264
.Lt_026C:
.Lt_026B:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_026E
sub esp, 8
push 0
push -1
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0270
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .Lt_0264
.Lt_0270:
.Lt_026F:
.Lt_026E:
.Lt_026D:
.Lt_026A:
.Lt_0269:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0272
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0271
.Lt_0272:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0271:
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call RTLGFXPOINT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_0264:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CGFXPOINT, .-CGFXPOINT
.balign 16

.globl CGFXIMAGECREATE
CGFXIMAGECREATE:
.type CGFXIMAGECREATE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0274:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_0277
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0276
.Lt_0277:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0276:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0279
jmp .Lt_0275
.Lt_0279:
.Lt_0278:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_027B
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_027A
.Lt_027B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_027A:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_027D
jmp .Lt_0275
.Lt_027D:
.Lt_027C:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], -2147483648
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_027F
call CEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_0281
mov dword ptr [ebp-24], 0
.Lt_0281:
.Lt_0280:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0283
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0285
jmp .Lt_0275
.Lt_0285:
.Lt_0284:
.Lt_0283:
.Lt_0282:
.Lt_027F:
.Lt_027E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0287
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0286
.Lt_0287:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0286:
sub esp, 12
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLGFXIMAGECREATE
add esp, 32
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_0275:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CGFXIMAGECREATE, .-CGFXIMAGECREATE
.balign 16

.globl CGFXSTMT
CGFXSTMT:
.type CGFXSTMT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0289:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_028C
.Lt_028E:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0290
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_0290:
.Lt_028F:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CGFXPSET
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_0291:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0293
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_0293:
.Lt_0292:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
call CGFXPSET
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_0294:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0296
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_0296:
.Lt_0295:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXLINE
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_0297:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0299
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_0299:
.Lt_0298:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXCIRCLE
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_029A:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_029C
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_029C:
.Lt_029B:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXPAINT
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_029D:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_029F
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_029F:
.Lt_029E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXDRAW
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_02A0:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_02A2
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_02A2:
.Lt_02A1:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
call CGFXVIEW
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_02A3:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_02A5
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_02A5:
.Lt_02A4:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CGFXVIEW
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_02A6:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_02A8
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_02A8:
.Lt_02A7:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXPALETTE
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_02A9:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_02AB
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_02AB:
.Lt_02AA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXPUT
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_02AC:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_02AE
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_02AE:
.Lt_02AD:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXGET
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_02AF:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_02B1
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_02B1:
.Lt_02B0:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CGFXSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_02B2:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_02B4
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_028A
.Lt_02B4:
.Lt_02B3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
call CGFXSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_028B
.Lt_028C:
mov eax, dword ptr [ebp-8]
add eax, 4294966825
cmp eax, 40
ja .Lt_028B
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_02B5+eax*4-1884]
.LT_02B5:
.int .Lt_02A9
.int .Lt_02AC
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_0294
.int .Lt_02A0
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028B
.int .Lt_028E
.int .Lt_0291
.int .Lt_028B
.int .Lt_0297
.int .Lt_02A3
.int .Lt_02A6
.int .Lt_02AF
.int .Lt_02B2
.int .Lt_029A
.int .Lt_029D
.Lt_028B:
.Lt_028A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXSTMT, .-CGFXSTMT
.balign 16

.globl CGFXFUNCT
CGFXFUNCT:
.type CGFXFUNCT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_02B6:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 504
jne .Lt_02B9
.Lt_02BA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
lea eax, [ebp-8]
push eax
call CGFXPOINT
add esp, 16
jmp .Lt_02B8
.Lt_02B9:
cmp dword ptr [ebp+8], 512
jne .Lt_02BB
.Lt_02BC:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
lea eax, [ebp-8]
push eax
call CGFXIMAGECREATE
add esp, 16
.Lt_02BB:
.Lt_02B8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_02B7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGFXFUNCT, .-CGFXFUNCT
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
HMAYBEUDT2PTR:
.type HMAYBEUDT2PTR, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0068:
sub esp, 12
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
push 0
push 32
call SYMBFINDCASTOVLPROC
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_006B
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_006A
.Lt_006B:
cmp dword ptr [ebp-8], 0
je .Lt_006D
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_006D:
.Lt_006C:
.Lt_006A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HMAYBEUDT2PTR, .-HMAYBEUDT2PTR
.balign 16
HNIDXARRAY2ARRAYACCESS:
.type HNIDXARRAY2ARRAYACCESS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 19
jne .Lt_0071
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_006F
.Lt_0071:
.Lt_0070:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .Lt_0073
sub esp, 12
mov eax, dword ptr [SYMB+99604]
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 12
mov eax, dword ptr [SYMB+99624]
add eax, dword ptr [SYMB+99616]
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-16]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 4
push 0
push 8
push dword ptr [ebp-12]
call ASTNEWLOAD
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push 0
push 8
push 0
push 0
push dword ptr [ebp-20]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
jmp .Lt_0072
.Lt_0073:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
and ecx, 16388
test ecx, ecx
je .Lt_0074
sub esp, 12
push 0
push 8
mov eax, dword ptr [SYMB+99604]
mov ecx, eax
sar ecx, 31
push ecx
push eax
mov eax, dword ptr [ebp-20]
push dword ptr [eax+84]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 12
push 0
push 8
mov eax, dword ptr [SYMB+99624]
add eax, dword ptr [SYMB+99616]
mov ebx, eax
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+84]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-16]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 4
push 0
push 8
push dword ptr [ebp-12]
call ASTNEWLOAD
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0072
.Lt_0074:
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBCALCLEN
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 8
push 0
push 8
mov eax, dword ptr [ebp-20]
mov edx, dword ptr [eax+64]
push dword ptr [edx+4]
push dword ptr [edx]
call ASTNEWCONSTI
add esp, 24
push eax
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
.Lt_0072:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWIDX
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_006F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HNIDXARRAY2ARRAYACCESS, .-HNIDXARRAY2ARRAYACCESS
.balign 16
HMAYBEARRAYACCESS2PTR:
.type HMAYBEARRAYACCESS2PTR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0075:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
jne .Lt_0079
.Lt_007A:
cmp dword ptr [ebp+12], 0
je .Lt_007C
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call ASTNEWVAR
add esp, 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_007C:
.Lt_007B:
sub esp, 12
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_0077
.Lt_0079:
cmp dword ptr [ebp-8], 19
jne .Lt_007D
.Lt_007E:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call SYMBISARRAY
add esp, 16
test eax, eax
je .Lt_0080
cmp dword ptr [ebp+12], 0
je .Lt_0082
sub esp, 12
push dword ptr [ebp+8]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .Lt_0084
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_0083
.Lt_0084:
sub esp, 12
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
sub esp, 12
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0083:
jmp .Lt_0081
.Lt_0082:
sub esp, 12
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0081:
.Lt_0080:
.Lt_007F:
.Lt_007D:
.Lt_0077:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0076:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAYBEARRAYACCESS2PTR, .-HMAYBEARRAYACCESS2PTR
.balign 16
HCHECKFBIMAGEEXPR:
.type HCHECKFBIMAGEEXPR, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_0085:
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVENOCONVCAST
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
jne .Lt_0088
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HNIDXARRAY2ARRAYACCESS
add esp, 4
push eax
call HMAYBEARRAYACCESS2PTR
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_0087
.Lt_0088:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .Lt_008A
sub esp, 12
push dword ptr [ebp+8]
call HMAYBEUDT2PTR
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_008A:
.Lt_0089:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
jne .Lt_008C
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMAYBEARRAYACCESS2PTR
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_008C:
.Lt_008B:
.Lt_0087:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
jne .Lt_008E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
jne .Lt_0090
sub esp, 4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
sub esp, 8
push 0
push -1
sub esp, 8
push 20
push offset Lt_0092
push -1
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
push dword ptr [ebx+16]
push 3
push offset Lt_0091
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 28
push dword ptr [ebp-40]
push -1
push 99
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_008F
.Lt_0090:
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
.Lt_008F:
sub esp, 12
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_008E:
.Lt_008D:
cmp dword ptr [ebp+12], 0
jne .Lt_0097
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
je .Lt_0099
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.Lt_0099:
.Lt_0098:
.Lt_0097:
.Lt_0096:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0086:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKFBIMAGEEXPR, .-HCHECKFBIMAGEEXPR
.balign 16
HFBIMAGEEXPR:
.type HFBIMAGEEXPR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_009A:
sub esp, 12
push -1
call CEXPRESSIONWITHNIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_009D
jmp .Lt_009B
.Lt_009D:
.Lt_009C:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call HCHECKFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_009B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HFBIMAGEEXPR, .-HFBIMAGEEXPR
.balign 16
HFBIMAGEEXPRINFRONTOFCOORD:
.type HFBIMAGEEXPRINFRONTOFCOORD, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_009E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_00A1
jmp .Lt_009F
.Lt_00A1:
.Lt_00A0:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00A3
jmp .Lt_009F
.Lt_00A3:
.Lt_00A2:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_00A5
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_00A4
.Lt_00A5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00A4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_009F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HFBIMAGEEXPRINFRONTOFCOORD, .-HFBIMAGEEXPRINFRONTOFCOORD
.balign 16
HGETMODE:
.type HGETMODE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A6:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 288
jne .Lt_00AA
.Lt_00AB:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
mov dword ptr [ebp-4], -1
jmp .Lt_00A7
jmp .Lt_00A8
.Lt_00AA:
cmp dword ptr [ebp-24], 289
jne .Lt_00AC
.Lt_00AD:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
mov dword ptr [ebp-4], -1
jmp .Lt_00A7
jmp .Lt_00A8
.Lt_00AC:
cmp dword ptr [ebp-24], 292
jne .Lt_00AE
.Lt_00AF:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 5
mov dword ptr [ebp-4], -1
jmp .Lt_00A7
.Lt_00AE:
.Lt_00A8:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_00B3
.Lt_00B4:
cmp dword ptr [ebp-24], 2
je .Lt_00B3
.Lt_00B5:
cmp dword ptr [ebp-24], 1
jne .Lt_00B2
.Lt_00B3:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrInit
add esp, 32
push 5
push offset Lt_00B9
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00B8
.Lt_00BA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
jmp .Lt_00B6
.Lt_00B8:
push 7
push offset Lt_00BC
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00BB
.Lt_00BD:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
jmp .Lt_00B6
.Lt_00BB:
push 6
push offset Lt_00BF
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00BE
.Lt_00C0:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
jmp .Lt_00B6
.Lt_00BE:
push 4
push offset Lt_00C2
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00C1
.Lt_00C3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 7
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_00C5
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_00C7
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
.Lt_00C7:
.Lt_00C6:
jmp .Lt_00C4
.Lt_00C5:
push 0
push 9
push 0
push 255
call ASTNEWCONSTI
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_00C4:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
jmp .Lt_00B6
.Lt_00C1:
push 6
push offset Lt_00C9
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00C8
.Lt_00CA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 6
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_00CC
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_00CE
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
.Lt_00CE:
.Lt_00CD:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 9
.Lt_00CC:
.Lt_00CB:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
jmp .Lt_00B6
.Lt_00C8:
push 7
push offset Lt_00D0
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00CF
.Lt_00D1:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_00D3
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_00D2
.Lt_00D3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00D2:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .Lt_00D5
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
.Lt_00D5:
.Lt_00D4:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_00D7
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_00D9
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
.Lt_00D9:
.Lt_00D8:
.Lt_00D7:
.Lt_00D6:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DB
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
.Lt_00DB:
.Lt_00DA:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 3
je .Lt_00DD
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
.Lt_00DD:
.Lt_00DC:
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
je .Lt_00DF
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
sub esp, 12
lea ecx, [ebp-36]
push ecx
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
.Lt_00DF:
.Lt_00DE:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+84], 4
jne .Lt_00E1
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-12], ebx
pop dword ptr [ebp-20]
.Lt_00E1:
.Lt_00E0:
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
je .Lt_00E3
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
.Lt_00E3:
.Lt_00E2:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A7
.Lt_00CF:
.Lt_00B6:
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_00B2:
.Lt_00B0:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_00A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETMODE, .-HGETMODE

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_0091:	.ascii	" \"\0"
.balign 4
Lt_0092:	.ascii	".cast() as any ptr\"\0"
.balign 4
Lt_00B9:	.ascii	"PSET\0"
.balign 4
Lt_00BC:	.ascii	"PRESET\0"
.balign 4
Lt_00BF:	.ascii	"TRANS\0"
.balign 4
Lt_00C2:	.ascii	"ADD\0"
.balign 4
Lt_00C9:	.ascii	"ALPHA\0"
.balign 4
Lt_00D0:	.ascii	"CUSTOM\0"
.balign 4
Lt_0121:	.ascii	"B\0"
.balign 4
Lt_0124:	.ascii	"BF\0"
.balign 8
Lt_012A:	.quad	0x0000000000000000
.balign 4
Lt_0149:	.ascii	"F\0"
.balign 4
Lt_01B8:	.ascii	"GET\0"
