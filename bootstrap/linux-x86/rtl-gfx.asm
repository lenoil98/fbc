	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLGFXMODINIT
RTLGFXMODINIT:
.type RTLGFXMODINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00C8:
sub esp, 12
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 16
.Lt_00C9:
mov esp, ebp
pop ebp
ret
.size RTLGFXMODINIT, .-RTLGFXMODINIT
.balign 16

.globl RTLGFXMODEND
RTLGFXMODEND:
.type RTLGFXMODEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00CA:
.Lt_00CB:
mov esp, ebp
pop ebp
ret
.size RTLGFXMODEND, .-RTLGFXMODEND
.balign 16

.globl RTLGFXPSET
RTLGFXPSET:
.type RTLGFXPSET, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E8:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 300
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00EB
jmp .Lt_00E9
.Lt_00EB:
.Lt_00EA:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00ED
jmp .Lt_00E9
.Lt_00ED:
.Lt_00EC:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00EF
jmp .Lt_00E9
.Lt_00EF:
.Lt_00EE:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00F1
jmp .Lt_00E9
.Lt_00F1:
.Lt_00F0:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00F3
jmp .Lt_00E9
.Lt_00F3:
.Lt_00F2:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+28]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00F5
jmp .Lt_00E9
.Lt_00F5:
.Lt_00F4:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_00E9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXPSET, .-RTLGFXPSET
.balign 16

.globl RTLGFXPOINT
RTLGFXPOINT:
.type RTLGFXPOINT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00F6:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 301
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00F9
jmp .Lt_00F7
.Lt_00F9:
.Lt_00F8:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00FB
jmp .Lt_00F7
.Lt_00FB:
.Lt_00FA:
cmp dword ptr [ebp+16], 0
jne .Lt_00FD
sub esp, 4
push 15
push dword ptr [Lt_0100+4]
push dword ptr [Lt_0100]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp+16], eax
.Lt_00FD:
.Lt_00FC:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00FF
jmp .Lt_00F7
.Lt_00FF:
.Lt_00FE:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00F7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLGFXPOINT, .-RTLGFXPOINT
.balign 16

.globl RTLGFXLINE
RTLGFXLINE:
.type RTLGFXLINE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0101:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 302
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0104
jmp .Lt_0102
.Lt_0104:
.Lt_0103:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0106
jmp .Lt_0102
.Lt_0106:
.Lt_0105:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0108
jmp .Lt_0102
.Lt_0108:
.Lt_0107:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_010A
jmp .Lt_0102
.Lt_010A:
.Lt_0109:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_010C
jmp .Lt_0102
.Lt_010C:
.Lt_010B:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_010E
jmp .Lt_0102
.Lt_010E:
.Lt_010D:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0110
jmp .Lt_0102
.Lt_0110:
.Lt_010F:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0112
jmp .Lt_0102
.Lt_0112:
.Lt_0111:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0114
jmp .Lt_0102
.Lt_0114:
.Lt_0113:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0102:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXLINE, .-RTLGFXLINE
.balign 16

.globl RTLGFXCIRCLE
RTLGFXCIRCLE:
.type RTLGFXCIRCLE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0115:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 303
push offset Lt_006A
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0118
jmp .Lt_0116
.Lt_0118:
.Lt_0117:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_011A
jmp .Lt_0116
.Lt_011A:
.Lt_0119:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_011C
jmp .Lt_0116
.Lt_011C:
.Lt_011B:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_011E
jmp .Lt_0116
.Lt_011E:
.Lt_011D:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0120
jmp .Lt_0116
.Lt_0120:
.Lt_011F:
cmp dword ptr [ebp+28], 0
jne .Lt_0122
sub esp, 4
push 15
push dword ptr [Lt_0131+4]
push dword ptr [Lt_0131]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp+28], eax
.Lt_0122:
.Lt_0121:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0124
jmp .Lt_0116
.Lt_0124:
.Lt_0123:
cmp dword ptr [ebp+32], 0
jne .Lt_0126
sub esp, 4
push 15
push dword ptr [Lt_0131+4]
push dword ptr [Lt_0131]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp+32], eax
.Lt_0126:
.Lt_0125:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0128
jmp .Lt_0116
.Lt_0128:
.Lt_0127:
cmp dword ptr [ebp+36], 0
jne .Lt_012A
sub esp, 4
push 15
push dword ptr [Lt_0132+4]
push dword ptr [Lt_0132]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp+36], eax
.Lt_012A:
.Lt_0129:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_012C
jmp .Lt_0116
.Lt_012C:
.Lt_012B:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_012E
jmp .Lt_0116
.Lt_012E:
.Lt_012D:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+44]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0130
jmp .Lt_0116
.Lt_0130:
.Lt_012F:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0116:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXCIRCLE, .-RTLGFXCIRCLE
.balign 16

.globl RTLGFXPAINT
RTLGFXPAINT:
.type RTLGFXPAINT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0133:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 304
push offset Lt_006B
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0136
jmp .Lt_0134
.Lt_0136:
.Lt_0135:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0138
jmp .Lt_0134
.Lt_0138:
.Lt_0137:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_013A
jmp .Lt_0134
.Lt_013A:
.Lt_0139:
sub esp, 12
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBISSTRING
add esp, 16
test eax, eax
je .Lt_013C
mov dword ptr [ebp-12], -1
push -1
push -2147483648
sub esp, 8
push 0
push 8
push 4294967295
push 4294901760
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_013E
jmp .Lt_0134
.Lt_013E:
.Lt_013D:
jmp .Lt_013B
.Lt_013C:
mov dword ptr [ebp-12], 0
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0140
jmp .Lt_0134
.Lt_0140:
.Lt_013F:
.Lt_013B:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0142
jmp .Lt_0134
.Lt_0142:
.Lt_0141:
cmp dword ptr [ebp-12], 0
je .Lt_0144
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0146
jmp .Lt_0134
.Lt_0146:
.Lt_0145:
jmp .Lt_0143
.Lt_0144:
push -1
push -2147483648
sub esp, 4
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push offset Lt_0000
call SYMBALLOCSTRCONST
add esp, 20
push eax
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0148
jmp .Lt_0134
.Lt_0148:
.Lt_0147:
.Lt_0143:
push -1
push -2147483648
sub esp, 8
push 0
push 8
cmp dword ptr [ebp-12], 0
je .Lt_0149
mov dword ptr [ebp-16], 1
jmp .Lt_014F
.Lt_0149:
mov dword ptr [ebp-16], 0
.Lt_014F:
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_014C
jmp .Lt_0134
.Lt_014C:
.Lt_014B:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+28]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_014E
jmp .Lt_0134
.Lt_014E:
.Lt_014D:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0134:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXPAINT, .-RTLGFXPAINT
.balign 16

.globl RTLGFXDRAW
RTLGFXDRAW:
.type RTLGFXDRAW, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0150:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 305
push offset Lt_006C
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0153
jmp .Lt_0151
.Lt_0153:
.Lt_0152:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0155
jmp .Lt_0151
.Lt_0155:
.Lt_0154:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0151:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLGFXDRAW, .-RTLGFXDRAW
.balign 16

.globl RTLGFXDRAWSTRING
RTLGFXDRAWSTRING:
.type RTLGFXDRAWSTRING, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0156:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 306
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0159
jmp .Lt_0157
.Lt_0159:
.Lt_0158:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_015B
jmp .Lt_0157
.Lt_015B:
.Lt_015A:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_015D
jmp .Lt_0157
.Lt_015D:
.Lt_015C:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_015F
jmp .Lt_0157
.Lt_015F:
.Lt_015E:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0161
jmp .Lt_0157
.Lt_0161:
.Lt_0160:
cmp dword ptr [ebp+40], 0
je .Lt_0163
mov eax, dword ptr [ebp+40]
mov dword ptr [ebp+24], eax
.Lt_0163:
.Lt_0162:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0165
jmp .Lt_0157
.Lt_0165:
.Lt_0164:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0167
jmp .Lt_0157
.Lt_0167:
.Lt_0166:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+36]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0169
jmp .Lt_0157
.Lt_0169:
.Lt_0168:
push -1
push -2147483648
cmp dword ptr [ebp+28], 0
je .Lt_016A
sub esp, 4
push dword ptr [ebp+36]
call HGETPUTTER
add esp, 8
mov dword ptr [ebp-16], eax
jmp .Lt_0174
.Lt_016A:
sub esp, 8
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 24
mov dword ptr [ebp-16], eax
.Lt_0174:
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_016D
jmp .Lt_0157
.Lt_016D:
.Lt_016C:
push -1
push -2147483648
push dword ptr [ebp+44]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_016F
jmp .Lt_0157
.Lt_016F:
.Lt_016E:
cmp dword ptr [ebp+48], 0
jne .Lt_0171
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+48], eax
.Lt_0171:
.Lt_0170:
push -1
push -2147483648
push dword ptr [ebp+48]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0173
jmp .Lt_0157
.Lt_0173:
.Lt_0172:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0157:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXDRAWSTRING, .-RTLGFXDRAWSTRING
.balign 16

.globl RTLGFXVIEW
RTLGFXVIEW:
.type RTLGFXVIEW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0175:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 307
push offset Lt_006E
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0178
jmp .Lt_0176
.Lt_0178:
.Lt_0177:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_017A
jmp .Lt_0176
.Lt_017A:
.Lt_0179:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_017C
jmp .Lt_0176
.Lt_017C:
.Lt_017B:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_017E
jmp .Lt_0176
.Lt_017E:
.Lt_017D:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0180
jmp .Lt_0176
.Lt_0180:
.Lt_017F:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0182
jmp .Lt_0176
.Lt_0182:
.Lt_0181:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0184
jmp .Lt_0176
.Lt_0184:
.Lt_0183:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0176:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXVIEW, .-RTLGFXVIEW
.balign 16

.globl RTLGFXWINDOW
RTLGFXWINDOW:
.type RTLGFXWINDOW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0185:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 308
push offset Lt_006F
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0188
sub esp, 4
push 15
push dword ptr [Lt_0131+4]
push dword ptr [Lt_0131]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0188:
.Lt_0187:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_018A
jmp .Lt_0186
.Lt_018A:
.Lt_0189:
cmp dword ptr [ebp+12], 0
jne .Lt_018C
sub esp, 4
push 15
push dword ptr [Lt_0131+4]
push dword ptr [Lt_0131]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_018C:
.Lt_018B:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_018E
jmp .Lt_0186
.Lt_018E:
.Lt_018D:
cmp dword ptr [ebp+16], 0
jne .Lt_0190
sub esp, 4
push 15
push dword ptr [Lt_0131+4]
push dword ptr [Lt_0131]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp+16], eax
.Lt_0190:
.Lt_018F:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0192
jmp .Lt_0186
.Lt_0192:
.Lt_0191:
cmp dword ptr [ebp+20], 0
jne .Lt_0194
sub esp, 4
push 15
push dword ptr [Lt_0131+4]
push dword ptr [Lt_0131]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp+20], eax
.Lt_0194:
.Lt_0193:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0196
jmp .Lt_0186
.Lt_0196:
.Lt_0195:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0198
jmp .Lt_0186
.Lt_0198:
.Lt_0197:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0186:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXWINDOW, .-RTLGFXWINDOW
.balign 16

.globl RTLGFXPALETTE
RTLGFXPALETTE:
.type RTLGFXPALETTE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0199:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
je .Lt_019C
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_019D
mov dword ptr [ebp-24], 24
jmp .Lt_01AF
.Lt_019D:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_01AF:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .Lt_01A0
sub esp, 8
push 313
push offset Lt_0074
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_019F
.Lt_01A0:
sub esp, 8
push 312
push offset Lt_0073
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_019F:
jmp .Lt_019B
.Lt_019C:
sub esp, 8
push 309
push offset Lt_0070
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_019B:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01A2
jmp .Lt_019A
.Lt_01A2:
.Lt_01A1:
cmp dword ptr [ebp+12], 0
jne .Lt_01A4
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_01A4:
.Lt_01A3:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01A6
jmp .Lt_019A
.Lt_01A6:
.Lt_01A5:
cmp dword ptr [ebp+16], 0
je .Lt_01A8
mov dword ptr [ebp-20], -1
jmp .Lt_01A7
.Lt_01A8:
cmp dword ptr [ebp+24], 0
je .Lt_01AA
mov dword ptr [ebp-16], 0
jmp .Lt_01A9
.Lt_01AA:
mov dword ptr [ebp-16], -1
.Lt_01A9:
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+20], eax
mov dword ptr [ebp-20], 1
.Lt_01A7:
push dword ptr [ebp-20]
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01AC
jmp .Lt_019A
.Lt_01AC:
.Lt_01AB:
push dword ptr [ebp-20]
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01AE
jmp .Lt_019A
.Lt_01AE:
.Lt_01AD:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_019A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXPALETTE, .-RTLGFXPALETTE
.balign 16

.globl RTLGFXPALETTEUSING
RTLGFXPALETTEUSING:
.type RTLGFXPALETTEUSING, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_01B0:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
je .Lt_01B3
cmp dword ptr [ebp+12], 0
je .Lt_01B5
sub esp, 8
push 315
push offset Lt_0076
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01B4
.Lt_01B5:
sub esp, 8
push 311
push offset Lt_0072
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_01B4:
jmp .Lt_01B2
.Lt_01B3:
cmp dword ptr [ebp+12], 0
je .Lt_01B7
sub esp, 8
push 314
push offset Lt_0075
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01B6
.Lt_01B7:
sub esp, 8
push 310
push offset Lt_0071
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_01B6:
.Lt_01B2:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01B9
jmp .Lt_01B1
.Lt_01B9:
.Lt_01B8:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_01B1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLGFXPALETTEUSING, .-RTLGFXPALETTEUSING
.balign 16

.globl RTLGFXPUT
RTLGFXPUT:
.type RTLGFXPUT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BA:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 316
push offset Lt_0077
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01BD
jmp .Lt_01BB
.Lt_01BD:
.Lt_01BC:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01BF
jmp .Lt_01BB
.Lt_01BF:
.Lt_01BE:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01C1
jmp .Lt_01BB
.Lt_01C1:
.Lt_01C0:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01C3
jmp .Lt_01BB
.Lt_01C3:
.Lt_01C2:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01C5
jmp .Lt_01BB
.Lt_01C5:
.Lt_01C4:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01C7
jmp .Lt_01BB
.Lt_01C7:
.Lt_01C6:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01C9
jmp .Lt_01BB
.Lt_01C9:
.Lt_01C8:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01CB
jmp .Lt_01BB
.Lt_01CB:
.Lt_01CA:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+56]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01CD
jmp .Lt_01BB
.Lt_01CD:
.Lt_01CC:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01CF
jmp .Lt_01BB
.Lt_01CF:
.Lt_01CE:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp+40]
call HGETPUTTER
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01D1
jmp .Lt_01BB
.Lt_01D1:
.Lt_01D0:
push -1
push -2147483648
push dword ptr [ebp+44]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01D3
jmp .Lt_01BB
.Lt_01D3:
.Lt_01D2:
push -1
push -2147483648
push dword ptr [ebp+48]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01D5
jmp .Lt_01BB
.Lt_01D5:
.Lt_01D4:
push -1
push -2147483648
push dword ptr [ebp+52]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01D7
jmp .Lt_01BB
.Lt_01D7:
.Lt_01D6:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_01BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXPUT, .-RTLGFXPUT
.balign 16

.globl RTLGFXGET
RTLGFXGET:
.type RTLGFXGET, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D8:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
cmp dword ptr [ENV+136], 0
jne .Lt_01DA
sub esp, 12
push 327
push offset Lt_0078
call RTLPROCLOOKUP
add esp, 20
mov dword ptr [ebp-12], eax
jmp .Lt_01F0
.Lt_01DA:
sub esp, 12
push 328
push offset Lt_0079
call RTLPROCLOOKUP
add esp, 20
mov dword ptr [ebp-12], eax
.Lt_01F0:
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01DD
jmp .Lt_01D9
.Lt_01DD:
.Lt_01DC:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01DF
jmp .Lt_01D9
.Lt_01DF:
.Lt_01DE:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01E1
jmp .Lt_01D9
.Lt_01E1:
.Lt_01E0:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01E3
jmp .Lt_01D9
.Lt_01E3:
.Lt_01E2:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01E5
jmp .Lt_01D9
.Lt_01E5:
.Lt_01E4:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01E7
jmp .Lt_01D9
.Lt_01E7:
.Lt_01E6:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01E9
jmp .Lt_01D9
.Lt_01E9:
.Lt_01E8:
cmp dword ptr [ebp+36], 0
je .Lt_01EB
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01ED
jmp .Lt_01D9
.Lt_01ED:
.Lt_01EC:
jmp .Lt_01EA
.Lt_01EB:
push 1
push -2147483648
sub esp, 8
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01EF
jmp .Lt_01D9
.Lt_01EF:
.Lt_01EE:
.Lt_01EA:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_01D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXGET, .-RTLGFXGET
.balign 16

.globl RTLGFXSCREENSET
RTLGFXSCREENSET:
.type RTLGFXSCREENSET, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01F1:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 329
push offset Lt_007A
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01F4
jmp .Lt_01F2
.Lt_01F4:
.Lt_01F3:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01F6
jmp .Lt_01F2
.Lt_01F6:
.Lt_01F5:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01F8
jmp .Lt_01F2
.Lt_01F8:
.Lt_01F7:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01FA
jmp .Lt_01F2
.Lt_01FA:
.Lt_01F9:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01FC
jmp .Lt_01F2
.Lt_01FC:
.Lt_01FB:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_01F2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLGFXSCREENSET, .-RTLGFXSCREENSET
.balign 16

.globl RTLGFXSCREENSETQB
RTLGFXSCREENSETQB:
.type RTLGFXSCREENSETQB, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01FD:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 330
push offset Lt_007B
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0200
jmp .Lt_01FE
.Lt_0200:
.Lt_01FF:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0202
jmp .Lt_01FE
.Lt_0202:
.Lt_0201:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0204
jmp .Lt_01FE
.Lt_0204:
.Lt_0203:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_01FE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLGFXSCREENSETQB, .-RTLGFXSCREENSETQB
.balign 16

.globl RTLGFXIMAGECREATE
RTLGFXIMAGECREATE:
.type RTLGFXIMAGECREATE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0205:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
cmp dword ptr [ENV+136], 0
jne .Lt_0207
sub esp, 12
push 331
push offset Lt_00AE
call RTLPROCLOOKUP
add esp, 20
mov dword ptr [ebp-12], eax
jmp .Lt_0213
.Lt_0207:
sub esp, 12
push 332
push offset Lt_00AF
call RTLPROCLOOKUP
add esp, 20
mov dword ptr [ebp-12], eax
.Lt_0213:
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_020A
jmp .Lt_0206
.Lt_020A:
.Lt_0209:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_020C
jmp .Lt_0206
.Lt_020C:
.Lt_020B:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_020E
jmp .Lt_0206
.Lt_020E:
.Lt_020D:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0210
jmp .Lt_0206
.Lt_0210:
.Lt_020F:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0212
jmp .Lt_0206
.Lt_0212:
.Lt_0211:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0206:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLGFXIMAGECREATE, .-RTLGFXIMAGECREATE
.balign 16
fb_ctor__rtlzgfx:
.type fb_ctor__rtlzgfx, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__rtlzgfx, .-fb_ctor__rtlzgfx
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
HPORTS_CB:
.type HPORTS_CB, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00CC:
cmp dword ptr [Lt_0214], 0
jne .Lt_00CF
mov dword ptr [Lt_0214], -1
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00D3
.Lt_00D4:
cmp dword ptr [ebp-8], 1
jne .Lt_00D2
.Lt_00D3:
sub esp, 12
push offset Lt_00D5
call FBADDLIB
add esp, 16
.Lt_00D2:
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
mov dword ptr [ebp-4], -1
.Lt_00CD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HPORTS_CB, .-HPORTS_CB

.section .data
.balign 4
Lt_0214:
.int 0

.section .text
.balign 16
HGFXLIB_CB:
.type HGFXLIB_CB, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00D6:
mov dword ptr [ENV+220], -1
mov dword ptr [ebp-4], -1
.Lt_00D7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HGFXLIB_CB, .-HGFXLIB_CB
.balign 16
HGETPUTTER:
.type HGETPUTTER, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00D8:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_00DB
.Lt_00DD:
sub esp, 8
push 317
push offset Lt_00BD
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DA
.Lt_00DE:
sub esp, 8
push 318
push offset Lt_00BE
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DA
.Lt_00DF:
sub esp, 8
push 319
push offset Lt_00BF
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DA
.Lt_00E0:
sub esp, 8
push 320
push offset Lt_00C0
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DA
.Lt_00E1:
sub esp, 8
push 321
push offset Lt_00C1
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DA
.Lt_00E2:
sub esp, 8
push 322
push offset Lt_00C2
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DA
.Lt_00E3:
sub esp, 8
push 323
push offset Lt_00C3
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DA
.Lt_00E4:
sub esp, 8
push 324
push offset Lt_00C4
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DA
.Lt_00E5:
sub esp, 8
push 325
push offset Lt_00C5
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DA
.Lt_00E6:
sub esp, 8
push 326
push offset Lt_00C6
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DA
.Lt_00DB:
cmp dword ptr [ebp-12], 9
ja .Lt_00E6
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00E7+eax*4]
.LT_00E7:
.int .Lt_00DD
.int .Lt_00DE
.int .Lt_00DF
.int .Lt_00E0
.int .Lt_00E1
.int .Lt_00E2
.int .Lt_00E3
.int .Lt_00E5
.int .Lt_00E6
.int .Lt_00E4
.Lt_00DA:
sub esp, 12
push dword ptr [ebp-8]
call ASTBUILDPROCADDROF
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00D9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HGETPUTTER, .-HGETPUTTER

.section .rodata
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
FUNCDATA:
.int Lt_0067
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 6
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.skip 200,0
.int Lt_0068
.long 0
.int 12
.int -1
.int HGFXLIB_CB
.int 0
.int 3
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.skip 260,0
.int Lt_0069
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 9
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int -1
.int 65535
.skip 4,0
.int 523
.int 1
.int 0
.skip 8,0
.skip 140,0
.int Lt_006A
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 10
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.skip 120,0
.int Lt_006B
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 8
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int 0
.skip 8,0
.int 529
.int 2
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.skip 160,0
.int Lt_006C
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 2
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 529
.int 2
.int 0
.skip 8,0
.skip 280,0
.int Lt_006D
.long 0
.int 8
.int -1
.int HGFXLIB_CB
.int 2
.int 11
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 529
.int 2
.int 0
.skip 8,0
.int 524
.int 1
.int 0
.skip 8,0
.int 1056
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 100,0
.int Lt_006E
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 7
.int 523
.int 1
.int -1
.int -32768
.skip 4,0
.int 523
.int 1
.int -1
.int -32768
.skip 4,0
.int 523
.int 1
.int -1
.int -32768
.skip 4,0
.int 523
.int 1
.int -1
.int -32768
.skip 4,0
.int 524
.int 1
.int -1
.int 0
.skip 4,0
.int 524
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 8,0
.skip 180,0
.int Lt_006F
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 5
.int 527
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 220,0
.int Lt_0070
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 4
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 240,0
.int Lt_0071
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 1
.int 1067
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0072
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 1
.int 1069
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0073
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 4
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 11
.int 2
.int 0
.skip 8,0
.int 11
.int 2
.int 0
.skip 8,0
.int 11
.int 2
.int 0
.skip 8,0
.skip 240,0
.int Lt_0074
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 4
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 13
.int 2
.int 0
.skip 8,0
.int 13
.int 2
.int 0
.skip 8,0
.int 13
.int 2
.int 0
.skip 8,0
.skip 240,0
.int Lt_0075
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 1
.int 43
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0076
.long 0
.int 0
.int -1
.int HGFXLIB_CB
.int 0
.int 1
.int 45
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0077
.long 0
.int 11
.int -1
.int HGFXLIB_CB
.int 2
.int 14
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 1056
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int -65536
.skip 4,0
.int 523
.int 1
.int -1
.int -65536
.skip 4,0
.int 523
.int 1
.int -1
.int -65536
.skip 4,0
.int 523
.int 1
.int -1
.int -65536
.skip 4,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.skip 40,0
.int Lt_0078
.long 0
.int 11
.int -1
.int HGFXLIB_CB
.int 1026
.int 8
.int 1056
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 512
.int 3
.int 0
.skip 8,0
.skip 160,0
.int Lt_0079
.long 0
.int 11
.int -1
.int HGFXLIB_CB
.int 514
.int 8
.int 1056
.int 1
.int -1
.int 0
.skip 4,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 527
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 0
.int 3
.int 0
.skip 8,0
.skip 160,0
.int Lt_007A
.long 0
.int 11
.int -1
.int HGFXLIB_CB
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 8
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 220,0
.int Lt_007B
.long 0
.int 11
.int -1
.int HGFXLIB_CB
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 260,0
.int Lt_007C
.int Lt_007D
.int 11
.int -1
.int HGFXLIB_CB
.int 130
.int 6
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 8
.skip 4,0
.int 523
.int 1
.int -1
.int 1
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 200,0
.int Lt_007E
.int Lt_007F
.int 11
.int -1
.int HGFXLIB_CB
.int 1026
.int 3
.int 529
.int 2
.int 0
.skip 8,0
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.skip 260,0
.int Lt_007E
.int Lt_0080
.int 11
.int -1
.int HGFXLIB_CB
.int 514
.int 3
.int 529
.int 2
.int 0
.skip 8,0
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.skip 260,0
.int Lt_0081
.int Lt_0082
.int 11
.int -1
.int HGFXLIB_CB
.int 3
.int 4
.int 529
.int 2
.int 0
.skip 8,0
.int 1056
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int -1
.int 0
.skip 4,0
.int 1056
.int 1
.int -1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0081
.int Lt_0083
.int 11
.int -1
.int HGFXLIB_CB
.int 3
.int 5
.int 529
.int 2
.int 0
.skip 8,0
.int 1056
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int -1
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.skip 220,0
.int Lt_0084
.int Lt_0085
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 2
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 280,0
.int Lt_0086
.int Lt_0085
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 2
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 280,0
.int Lt_0087
.int Lt_0088
.int 15
.int -1
.int HGFXLIB_CB
.int 128
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0089
.int Lt_008A
.int 15
.int -1
.int HGFXLIB_CB
.int 0
.int 2
.int 527
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.skip 280,0
.int Lt_008B
.int Lt_008C
.int 11
.int -1
.int HPORTS_CB
.int 2
.int 2
.int 518
.int 1
.int 0
.skip 8,0
.int 515
.int 1
.int 0
.skip 8,0
.skip 280,0
.int Lt_008D
.int Lt_008E
.int 11
.int -1
.int HPORTS_CB
.int 0
.int 1
.int 518
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_008F
.int Lt_0090
.int 11
.int -1
.int HPORTS_CB
.int 2
.int 3
.int 518
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 260,0
.int Lt_0091
.int Lt_0092
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 0
.skip 320,0
.int Lt_0093
.int Lt_0094
.int 11
.int 3
.int HGFXLIB_CB
.int 128
.int 2
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 280,0
.int Lt_0095
.int Lt_0096
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 0
.skip 320,0
.int Lt_0097
.int Lt_0098
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 2
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 280,0
.int Lt_0099
.int Lt_009A
.int 32
.int -1
.int HGFXLIB_CB
.int 128
.int 0
.skip 320,0
.int Lt_009B
.int Lt_009C
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int Lt_009D
.int Lt_009E
.int 11
.int -1
.long 0
.int 128
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_009F
.int Lt_00A0
.int 11
.int -1
.long 0
.int 129
.int 5
.int 11
.int 2
.int 0
.int 0
.int -1
.int 11
.int 2
.int 0
.int 0
.int -1
.int 11
.int 2
.int -1
.int 0
.int -1
.int 11
.int 2
.int -1
.int 0
.int -1
.int 11
.int 2
.int -1
.int 0
.int -1
.skip 220,0
.int Lt_009F
.int Lt_00A1
.int 11
.int -1
.long 0
.int 129
.int 5
.int 13
.int 2
.int 0
.int 0
.int -1
.int 13
.int 2
.int 0
.int 0
.int -1
.int 13
.int 2
.int -1
.int 0
.int -1
.int 13
.int 2
.int -1
.int 0
.int -1
.int 13
.int 2
.int -1
.int 0
.int -1
.skip 220,0
.int Lt_00A2
.int Lt_00A3
.int 11
.int -1
.long 0
.int 128
.int 4
.int 523
.int 1
.int -1
.int -2147483648
.skip 4,0
.int 523
.int 1
.int -1
.int -2147483648
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 240,0
.int Lt_00A4
.int Lt_00A5
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 10
.int 523
.int 1
.int 0
.int 0
.int -1
.int 8
.int 2
.int -1
.int 0
.int -1
.int 15
.int 2
.int -1
.int 0
.int -1
.int 15
.int 2
.int -1
.int 0
.int -1
.int 15
.int 2
.int -1
.int 0
.int -1
.int 15
.int 2
.int -1
.int 0
.int -1
.int 15
.int 2
.int -1
.int 0
.int -1
.int 15
.int 2
.int -1
.int 0
.int -1
.int 15
.int 2
.int -1
.int 0
.int -1
.int 15
.int 2
.int -1
.int 0
.int -1
.skip 120,0
.int Lt_00A6
.int Lt_00A7
.int 11
.int -1
.int HGFXLIB_CB
.int 256
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_00A8
.int Lt_00A9
.int 11
.int -1
.int HGFXLIB_CB
.int 256
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_00AA
.int Lt_00AB
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 7
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.int 17
.int 2
.int -1
.int 0
.skip 4,0
.skip 180,0
.int Lt_00AC
.int Lt_00AD
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 1
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 300,0
.int Lt_00AE
.long 0
.int 32
.int -1
.int HGFXLIB_CB
.int 1024
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 220,0
.int Lt_00AF
.long 0
.int 32
.int -1
.int HGFXLIB_CB
.int 128
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 220,0
.int Lt_00B0
.int Lt_00B1
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 1
.int 1056
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_00B2
.int Lt_00B3
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 7
.int 1056
.int 1
.int 0
.skip 8,0
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.int 32
.int 2
.int -1
.int 0
.skip 4,0
.int 8
.int 2
.int -1
.int 0
.skip 4,0
.skip 180,0
.int Lt_00B4
.int Lt_00B5
.int 0
.int -1
.int HGFXLIB_CB
.int 128
.int 6
.int 1056
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 1
.skip 4,0
.skip 200,0
.int Lt_00B6
.int Lt_00B7
.int 11
.int -1
.int HGFXLIB_CB
.int 128
.int 1
.int 32
.int 1
.int -1
.int 0
.int -1
.skip 300,0
.int Lt_00B8
.int Lt_00B9
.int 0
.int -1
.int HGFXLIB_CB
.int 129
.int 2
.int 523
.int 1
.int 0
.skip 8,0
.int 17
.int 2
.skip 12,0
.skip 280,0
.int Lt_00B8
.int Lt_00BA
.int 0
.int -1
.int HGFXLIB_CB
.int 129
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 8
.int 2
.int -1
.int -2147483648
.skip 4,0
.int 8
.int 2
.int -1
.int -2147483648
.skip 4,0
.int 8
.int 2
.int -1
.int -2147483648
.skip 4,0
.int 8
.int 2
.int -1
.int -2147483648
.skip 4,0
.skip 220,0
.int Lt_00BB
.int Lt_00BC
.int 32
.int -1
.int HGFXLIB_CB
.int 129
.int 1
.int 1060
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_00BD
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 8,0
.int 35
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 140,0
.int Lt_00BE
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 8,0
.int 35
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 140,0
.int Lt_00BF
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 8,0
.int 35
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 140,0
.int Lt_00C0
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 8,0
.int 35
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 140,0
.int Lt_00C1
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 8,0
.int 35
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 140,0
.int Lt_00C2
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 8,0
.int 35
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 140,0
.int Lt_00C3
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 8,0
.int 35
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 140,0
.int Lt_00C4
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 8,0
.int 35
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 140,0
.int Lt_00C5
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 8,0
.int 35
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 140,0
.int Lt_00C6
.long 0
.int 0
.int 3
.int HGFXLIB_CB
.int 0
.int 9
.int 1059
.int 1
.int 0
.skip 8,0
.int 35
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 140,0
.long 0
.skip 344,0

.section .rodata
.balign 4
Lt_0067:	.ascii	"fb_GfxPset\0"
.balign 4
Lt_0068:	.ascii	"fb_GfxPoint\0"
.balign 4
Lt_0069:	.ascii	"fb_GfxLine\0"
.balign 4
Lt_006A:	.ascii	"fb_GfxEllipse\0"
.balign 4
Lt_006B:	.ascii	"fb_GfxPaint\0"
.balign 4
Lt_006C:	.ascii	"fb_GfxDraw\0"
.balign 4
Lt_006D:	.ascii	"fb_GfxDrawString\0"
.balign 4
Lt_006E:	.ascii	"fb_GfxView\0"
.balign 4
Lt_006F:	.ascii	"fb_GfxWindow\0"
.balign 4
Lt_0070:	.ascii	"fb_GfxPalette\0"
.balign 4
Lt_0071:	.ascii	"fb_GfxPaletteUsing\0"
.balign 4
Lt_0072:	.ascii	"fb_GfxPaletteUsing64\0"
.balign 4
Lt_0073:	.ascii	"fb_GfxPaletteGet\0"
.balign 4
Lt_0074:	.ascii	"fb_GfxPaletteGet64\0"
.balign 4
Lt_0075:	.ascii	"fb_GfxPaletteGetUsing\0"
.balign 4
Lt_0076:	.ascii	"fb_GfxPaletteGetUsing64\0"
.balign 4
Lt_0077:	.ascii	"fb_GfxPut\0"
.balign 4
Lt_0078:	.ascii	"fb_GfxGet\0"
.balign 4
Lt_0079:	.ascii	"fb_GfxGetQB\0"
.balign 4
Lt_007A:	.ascii	"fb_GfxScreen\0"
.balign 4
Lt_007B:	.ascii	"fb_GfxScreenQB\0"
.balign 4
Lt_007C:	.ascii	"screenres\0"
.balign 4
Lt_007D:	.ascii	"fb_GfxScreenRes\0"
.balign 4
Lt_007E:	.ascii	"bload\0"
.balign 4
Lt_007F:	.ascii	"fb_GfxBload\0"
.balign 4
Lt_0080:	.ascii	"fb_GfxBloadQB\0"
.balign 4
Lt_0081:	.ascii	"bsave\0"
.balign 4
Lt_0082:	.ascii	"fb_GfxBsave\0"
.balign 4
Lt_0083:	.ascii	"fb_GfxBsaveEx\0"
.balign 4
Lt_0084:	.ascii	"flip\0"
.balign 4
Lt_0085:	.ascii	"fb_GfxFlip\0"
.balign 4
Lt_0086:	.ascii	"screencopy\0"
.balign 4
Lt_0087:	.ascii	"pointcoord\0"
.balign 4
Lt_0088:	.ascii	"fb_GfxCursor\0"
.balign 4
Lt_0089:	.ascii	"pmap\0"
.balign 4
Lt_008A:	.ascii	"fb_GfxPMap\0"
.balign 4
Lt_008B:	.ascii	"out\0"
.balign 4
Lt_008C:	.ascii	"fb_Out\0"
.balign 4
Lt_008D:	.ascii	"inp\0"
.balign 4
Lt_008E:	.ascii	"fb_In\0"
.balign 4
Lt_008F:	.ascii	"wait\0"
.balign 4
Lt_0090:	.ascii	"fb_Wait\0"
.balign 4
Lt_0091:	.ascii	"screensync\0"
.balign 4
Lt_0092:	.ascii	"fb_GfxWaitVSync\0"
.balign 4
Lt_0093:	.ascii	"screenset\0"
.balign 4
Lt_0094:	.ascii	"fb_GfxPageSet\0"
.balign 4
Lt_0095:	.ascii	"screenlock\0"
.balign 4
Lt_0096:	.ascii	"fb_GfxLock\0"
.balign 4
Lt_0097:	.ascii	"screenunlock\0"
.balign 4
Lt_0098:	.ascii	"fb_GfxUnlock\0"
.balign 4
Lt_0099:	.ascii	"screenptr\0"
.balign 4
Lt_009A:	.ascii	"fb_GfxScreenPtr\0"
.balign 4
Lt_009B:	.ascii	"windowtitle\0"
.balign 4
Lt_009C:	.ascii	"fb_GfxSetWindowTitle\0"
.balign 4
Lt_009D:	.ascii	"multikey\0"
.balign 4
Lt_009E:	.ascii	"fb_Multikey\0"
.balign 4
Lt_009F:	.ascii	"getmouse\0"
.balign 4
Lt_00A0:	.ascii	"fb_GetMouse\0"
.balign 4
Lt_00A1:	.ascii	"fb_GetMouse64\0"
.balign 4
Lt_00A2:	.ascii	"setmouse\0"
.balign 4
Lt_00A3:	.ascii	"fb_SetMouse\0"
.balign 4
Lt_00A4:	.ascii	"getjoystick\0"
.balign 4
Lt_00A5:	.ascii	"fb_GfxGetJoystick\0"
.balign 4
Lt_00A6:	.ascii	"stick\0"
.balign 4
Lt_00A7:	.ascii	"fb_GfxStickQB\0"
.balign 4
Lt_00A8:	.ascii	"strig\0"
.balign 4
Lt_00A9:	.ascii	"fb_GfxStrigQB\0"
.balign 4
Lt_00AA:	.ascii	"screeninfo\0"
.balign 4
Lt_00AB:	.ascii	"fb_GfxScreenInfo\0"
.balign 4
Lt_00AC:	.ascii	"screenlist\0"
.balign 4
Lt_00AD:	.ascii	"fb_GfxScreenList\0"
.balign 4
Lt_00AE:	.ascii	"fb_GfxImageCreate\0"
.balign 4
Lt_00AF:	.ascii	"fb_GfxImageCreateQB\0"
.balign 4
Lt_00B0:	.ascii	"imagedestroy\0"
.balign 4
Lt_00B1:	.ascii	"fb_GfxImageDestroy\0"
.balign 4
Lt_00B2:	.ascii	"imageinfo\0"
.balign 4
Lt_00B3:	.ascii	"fb_GfxImageInfo\0"
.balign 4
Lt_00B4:	.ascii	"imageconvertrow\0"
.balign 4
Lt_00B5:	.ascii	"fb_GfxImageConvertRow\0"
.balign 4
Lt_00B6:	.ascii	"screenevent\0"
.balign 4
Lt_00B7:	.ascii	"fb_GfxEvent\0"
.balign 4
Lt_00B8:	.ascii	"screencontrol\0"
.balign 4
Lt_00B9:	.ascii	"fb_GfxControl_s\0"
.balign 4
Lt_00BA:	.ascii	"fb_GfxControl_i\0"
.balign 4
Lt_00BB:	.ascii	"screenglproc\0"
.balign 4
Lt_00BC:	.ascii	"fb_GfxGetGLProcAddress\0"
.balign 4
Lt_00BD:	.ascii	"fb_hPutTrans\0"
.balign 4
Lt_00BE:	.ascii	"fb_hPutPSet\0"
.balign 4
Lt_00BF:	.ascii	"fb_hPutPReset\0"
.balign 4
Lt_00C0:	.ascii	"fb_hPutAnd\0"
.balign 4
Lt_00C1:	.ascii	"fb_hPutOr\0"
.balign 4
Lt_00C2:	.ascii	"fb_hPutXor\0"
.balign 4
Lt_00C3:	.ascii	"fb_hPutAlpha\0"
.balign 4
Lt_00C4:	.ascii	"fb_hPutBlend\0"
.balign 4
Lt_00C5:	.ascii	"fb_hPutAdd\0"
.balign 4
Lt_00C6:	.ascii	"fb_hPutCustom\0"
.balign 4
Lt_00D5:	.ascii	"advapi32\0"
.balign 8
Lt_0100:	.quad	0xC15FFFFFC0000000
.balign 8
Lt_0131:	.quad	0x0000000000000000
.balign 8
Lt_0132:	.quad	0x401921FB82C2BD7F

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzgfx
