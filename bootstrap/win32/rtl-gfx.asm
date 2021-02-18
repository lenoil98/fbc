	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLGFXMODINIT@0
_RTLGFXMODINIT@0:
.Lt_00C9:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.Lt_00CA:
ret
.balign 16

.globl _RTLGFXMODEND@0
_RTLGFXMODEND@0:
.Lt_00CB:
.Lt_00CC:
ret
.balign 16

.globl _RTLGFXPSET@24
_RTLGFXPSET@24:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E9:
mov dword ptr [ebp-4], 0
push 0
push 300
push offset _Lt_0068
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00EC
jmp .Lt_00EA
.Lt_00EC:
.Lt_00EB:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00EE
jmp .Lt_00EA
.Lt_00EE:
.Lt_00ED:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F0
jmp .Lt_00EA
.Lt_00F0:
.Lt_00EF:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F2
jmp .Lt_00EA
.Lt_00F2:
.Lt_00F1:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F4
jmp .Lt_00EA
.Lt_00F4:
.Lt_00F3:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+28]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F6
jmp .Lt_00EA
.Lt_00F6:
.Lt_00F5:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_00EA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _RTLGFXPOINT@12
_RTLGFXPOINT@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00F7:
mov dword ptr [ebp-4], 0
push 0
push 301
push offset _Lt_0069
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00FA
jmp .Lt_00F8
.Lt_00FA:
.Lt_00F9:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00FC
jmp .Lt_00F8
.Lt_00FC:
.Lt_00FB:
cmp dword ptr [ebp+16], 0
jne .Lt_00FE
push 15
push dword ptr [_Lt_0101+4]
push dword ptr [_Lt_0101]
call _ASTNEWCONSTF@12
mov dword ptr [ebp+16], eax
.Lt_00FE:
.Lt_00FD:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0100
jmp .Lt_00F8
.Lt_0100:
.Lt_00FF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00F8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLGFXLINE@36
_RTLGFXLINE@36:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0102:
mov dword ptr [ebp-4], 0
push 0
push 302
push offset _Lt_006A
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0105
jmp .Lt_0103
.Lt_0105:
.Lt_0104:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0107
jmp .Lt_0103
.Lt_0107:
.Lt_0106:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0109
jmp .Lt_0103
.Lt_0109:
.Lt_0108:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_010B
jmp .Lt_0103
.Lt_010B:
.Lt_010A:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_010D
jmp .Lt_0103
.Lt_010D:
.Lt_010C:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_010F
jmp .Lt_0103
.Lt_010F:
.Lt_010E:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0111
jmp .Lt_0103
.Lt_0111:
.Lt_0110:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0113
jmp .Lt_0103
.Lt_0113:
.Lt_0112:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0115
jmp .Lt_0103
.Lt_0115:
.Lt_0114:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_0103:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 36
.balign 16

.globl _RTLGFXCIRCLE@40
_RTLGFXCIRCLE@40:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0116:
mov dword ptr [ebp-4], 0
push 0
push 303
push offset _Lt_006B
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0119
jmp .Lt_0117
.Lt_0119:
.Lt_0118:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_011B
jmp .Lt_0117
.Lt_011B:
.Lt_011A:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_011D
jmp .Lt_0117
.Lt_011D:
.Lt_011C:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_011F
jmp .Lt_0117
.Lt_011F:
.Lt_011E:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0121
jmp .Lt_0117
.Lt_0121:
.Lt_0120:
cmp dword ptr [ebp+28], 0
jne .Lt_0123
push 15
push dword ptr [_Lt_0132+4]
push dword ptr [_Lt_0132]
call _ASTNEWCONSTF@12
mov dword ptr [ebp+28], eax
.Lt_0123:
.Lt_0122:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0125
jmp .Lt_0117
.Lt_0125:
.Lt_0124:
cmp dword ptr [ebp+32], 0
jne .Lt_0127
push 15
push dword ptr [_Lt_0132+4]
push dword ptr [_Lt_0132]
call _ASTNEWCONSTF@12
mov dword ptr [ebp+32], eax
.Lt_0127:
.Lt_0126:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0129
jmp .Lt_0117
.Lt_0129:
.Lt_0128:
cmp dword ptr [ebp+36], 0
jne .Lt_012B
push 15
push dword ptr [_Lt_0133+4]
push dword ptr [_Lt_0133]
call _ASTNEWCONSTF@12
mov dword ptr [ebp+36], eax
.Lt_012B:
.Lt_012A:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_012D
jmp .Lt_0117
.Lt_012D:
.Lt_012C:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_012F
jmp .Lt_0117
.Lt_012F:
.Lt_012E:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+44]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0131
jmp .Lt_0117
.Lt_0131:
.Lt_0130:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_0117:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16

.globl _RTLGFXPAINT@24
_RTLGFXPAINT@24:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0134:
mov dword ptr [ebp-4], 0
push 0
push 304
push offset _Lt_006C
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0137
jmp .Lt_0135
.Lt_0137:
.Lt_0136:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0139
jmp .Lt_0135
.Lt_0139:
.Lt_0138:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_013B
jmp .Lt_0135
.Lt_013B:
.Lt_013A:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBISSTRING@4
test eax, eax
je .Lt_013D
mov dword ptr [ebp-12], -1
push -1
push -2147483648
push 0
push 8
push 4294967295
push 4294901760
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_013F
jmp .Lt_0135
.Lt_013F:
.Lt_013E:
jmp .Lt_013C
.Lt_013D:
mov dword ptr [ebp-12], 0
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0141
jmp .Lt_0135
.Lt_0141:
.Lt_0140:
.Lt_013C:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0143
jmp .Lt_0135
.Lt_0143:
.Lt_0142:
cmp dword ptr [ebp-12], 0
je .Lt_0145
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0147
jmp .Lt_0135
.Lt_0147:
.Lt_0146:
jmp .Lt_0144
.Lt_0145:
push -1
push -2147483648
push 0
push -2147483648
push 0
push 0
push 0
push offset _Lt_0000
call _SYMBALLOCSTRCONST@8
push eax
call _ASTNEWVAR@20
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0149
jmp .Lt_0135
.Lt_0149:
.Lt_0148:
.Lt_0144:
push -1
push -2147483648
push 0
push 8
cmp dword ptr [ebp-12], 0
je .Lt_014A
mov dword ptr [ebp-16], 1
jmp .Lt_0150
.Lt_014A:
mov dword ptr [ebp-16], 0
.Lt_0150:
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_014D
jmp .Lt_0135
.Lt_014D:
.Lt_014C:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+28]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_014F
jmp .Lt_0135
.Lt_014F:
.Lt_014E:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_0135:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _RTLGFXDRAW@8
_RTLGFXDRAW@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0151:
mov dword ptr [ebp-4], 0
push 0
push 305
push offset _Lt_006D
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0154
jmp .Lt_0152
.Lt_0154:
.Lt_0153:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0156
jmp .Lt_0152
.Lt_0156:
.Lt_0155:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_0152:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _RTLGFXDRAWSTRING@44
_RTLGFXDRAWSTRING@44:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0157:
mov dword ptr [ebp-4], 0
push 0
push 306
push offset _Lt_006E
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_015A
jmp .Lt_0158
.Lt_015A:
.Lt_0159:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_015C
jmp .Lt_0158
.Lt_015C:
.Lt_015B:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_015E
jmp .Lt_0158
.Lt_015E:
.Lt_015D:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0160
jmp .Lt_0158
.Lt_0160:
.Lt_015F:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0162
jmp .Lt_0158
.Lt_0162:
.Lt_0161:
cmp dword ptr [ebp+40], 0
je .Lt_0164
mov eax, dword ptr [ebp+40]
mov dword ptr [ebp+24], eax
.Lt_0164:
.Lt_0163:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0166
jmp .Lt_0158
.Lt_0166:
.Lt_0165:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0168
jmp .Lt_0158
.Lt_0168:
.Lt_0167:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+36]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_016A
jmp .Lt_0158
.Lt_016A:
.Lt_0169:
push -1
push -2147483648
cmp dword ptr [ebp+28], 0
je .Lt_016B
push dword ptr [ebp+36]
call _HGETPUTTER@4
mov dword ptr [ebp-16], eax
jmp .Lt_0175
.Lt_016B:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.Lt_0175:
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_016E
jmp .Lt_0158
.Lt_016E:
.Lt_016D:
push -1
push -2147483648
push dword ptr [ebp+44]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0170
jmp .Lt_0158
.Lt_0170:
.Lt_016F:
cmp dword ptr [ebp+48], 0
jne .Lt_0172
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+48], eax
.Lt_0172:
.Lt_0171:
push -1
push -2147483648
push dword ptr [ebp+48]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0174
jmp .Lt_0158
.Lt_0174:
.Lt_0173:
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_0158:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 44
.balign 16

.globl _RTLGFXVIEW@28
_RTLGFXVIEW@28:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0176:
mov dword ptr [ebp-4], 0
push 0
push 307
push offset _Lt_006F
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0179
jmp .Lt_0177
.Lt_0179:
.Lt_0178:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_017B
jmp .Lt_0177
.Lt_017B:
.Lt_017A:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_017D
jmp .Lt_0177
.Lt_017D:
.Lt_017C:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_017F
jmp .Lt_0177
.Lt_017F:
.Lt_017E:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0181
jmp .Lt_0177
.Lt_0181:
.Lt_0180:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0183
jmp .Lt_0177
.Lt_0183:
.Lt_0182:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0185
jmp .Lt_0177
.Lt_0185:
.Lt_0184:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_0177:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 28
.balign 16

.globl _RTLGFXWINDOW@20
_RTLGFXWINDOW@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0186:
mov dword ptr [ebp-4], 0
push 0
push 308
push offset _Lt_0070
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0189
push 15
push dword ptr [_Lt_0132+4]
push dword ptr [_Lt_0132]
call _ASTNEWCONSTF@12
mov dword ptr [ebp+8], eax
.Lt_0189:
.Lt_0188:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_018B
jmp .Lt_0187
.Lt_018B:
.Lt_018A:
cmp dword ptr [ebp+12], 0
jne .Lt_018D
push 15
push dword ptr [_Lt_0132+4]
push dword ptr [_Lt_0132]
call _ASTNEWCONSTF@12
mov dword ptr [ebp+12], eax
.Lt_018D:
.Lt_018C:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_018F
jmp .Lt_0187
.Lt_018F:
.Lt_018E:
cmp dword ptr [ebp+16], 0
jne .Lt_0191
push 15
push dword ptr [_Lt_0132+4]
push dword ptr [_Lt_0132]
call _ASTNEWCONSTF@12
mov dword ptr [ebp+16], eax
.Lt_0191:
.Lt_0190:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0193
jmp .Lt_0187
.Lt_0193:
.Lt_0192:
cmp dword ptr [ebp+20], 0
jne .Lt_0195
push 15
push dword ptr [_Lt_0132+4]
push dword ptr [_Lt_0132]
call _ASTNEWCONSTF@12
mov dword ptr [ebp+20], eax
.Lt_0195:
.Lt_0194:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0197
jmp .Lt_0187
.Lt_0197:
.Lt_0196:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0199
jmp .Lt_0187
.Lt_0199:
.Lt_0198:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_0187:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _RTLGFXPALETTE@20
_RTLGFXPALETTE@20:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_019A:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
je .Lt_019D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_019E
mov dword ptr [ebp-24], 24
jmp .Lt_01B0
.Lt_019E:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_01B0:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .Lt_01A1
push 313
push offset _Lt_0075
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01A0
.Lt_01A1:
push 312
push offset _Lt_0074
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_01A0:
jmp .Lt_019C
.Lt_019D:
push 309
push offset _Lt_0071
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_019C:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01A3
jmp .Lt_019B
.Lt_01A3:
.Lt_01A2:
cmp dword ptr [ebp+12], 0
jne .Lt_01A5
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.Lt_01A5:
.Lt_01A4:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01A7
jmp .Lt_019B
.Lt_01A7:
.Lt_01A6:
cmp dword ptr [ebp+16], 0
je .Lt_01A9
mov dword ptr [ebp-20], -1
jmp .Lt_01A8
.Lt_01A9:
cmp dword ptr [ebp+24], 0
je .Lt_01AB
mov dword ptr [ebp-16], 0
jmp .Lt_01AA
.Lt_01AB:
mov dword ptr [ebp-16], -1
.Lt_01AA:
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp+16], eax
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp+20], eax
mov dword ptr [ebp-20], 1
.Lt_01A8:
push dword ptr [ebp-20]
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01AD
jmp .Lt_019B
.Lt_01AD:
.Lt_01AC:
push dword ptr [ebp-20]
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01AF
jmp .Lt_019B
.Lt_01AF:
.Lt_01AE:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_019B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _RTLGFXPALETTEUSING@12
_RTLGFXPALETTEUSING@12:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_01B1:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
je .Lt_01B4
cmp dword ptr [ebp+12], 0
je .Lt_01B6
push 315
push offset _Lt_0077
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01B5
.Lt_01B6:
push 311
push offset _Lt_0073
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_01B5:
jmp .Lt_01B3
.Lt_01B4:
cmp dword ptr [ebp+12], 0
je .Lt_01B8
push 314
push offset _Lt_0076
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01B7
.Lt_01B8:
push 310
push offset _Lt_0072
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_01B7:
.Lt_01B3:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01BA
jmp .Lt_01B2
.Lt_01BA:
.Lt_01B9:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_01B2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLGFXPUT@52
_RTLGFXPUT@52:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BB:
mov dword ptr [ebp-4], 0
push 0
push 316
push offset _Lt_0078
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01BE
jmp .Lt_01BC
.Lt_01BE:
.Lt_01BD:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01C0
jmp .Lt_01BC
.Lt_01C0:
.Lt_01BF:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01C2
jmp .Lt_01BC
.Lt_01C2:
.Lt_01C1:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01C4
jmp .Lt_01BC
.Lt_01C4:
.Lt_01C3:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01C6
jmp .Lt_01BC
.Lt_01C6:
.Lt_01C5:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01C8
jmp .Lt_01BC
.Lt_01C8:
.Lt_01C7:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01CA
jmp .Lt_01BC
.Lt_01CA:
.Lt_01C9:
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01CC
jmp .Lt_01BC
.Lt_01CC:
.Lt_01CB:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+56]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01CE
jmp .Lt_01BC
.Lt_01CE:
.Lt_01CD:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01D0
jmp .Lt_01BC
.Lt_01D0:
.Lt_01CF:
push -1
push -2147483648
push dword ptr [ebp+40]
call _HGETPUTTER@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01D2
jmp .Lt_01BC
.Lt_01D2:
.Lt_01D1:
push -1
push -2147483648
push dword ptr [ebp+44]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01D4
jmp .Lt_01BC
.Lt_01D4:
.Lt_01D3:
push -1
push -2147483648
push dword ptr [ebp+48]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01D6
jmp .Lt_01BC
.Lt_01D6:
.Lt_01D5:
push -1
push -2147483648
push dword ptr [ebp+52]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01D8
jmp .Lt_01BC
.Lt_01D8:
.Lt_01D7:
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_01BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 52
.balign 16

.globl _RTLGFXGET@32
_RTLGFXGET@32:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D9:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [_ENV+136], 0
jne .Lt_01DB
push 327
push offset _Lt_0079
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01F1
.Lt_01DB:
push 328
push offset _Lt_007A
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_01F1:
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01DE
jmp .Lt_01DA
.Lt_01DE:
.Lt_01DD:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01E0
jmp .Lt_01DA
.Lt_01E0:
.Lt_01DF:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01E2
jmp .Lt_01DA
.Lt_01E2:
.Lt_01E1:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01E4
jmp .Lt_01DA
.Lt_01E4:
.Lt_01E3:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01E6
jmp .Lt_01DA
.Lt_01E6:
.Lt_01E5:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01E8
jmp .Lt_01DA
.Lt_01E8:
.Lt_01E7:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+32]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01EA
jmp .Lt_01DA
.Lt_01EA:
.Lt_01E9:
cmp dword ptr [ebp+36], 0
je .Lt_01EC
push -1
push -2147483648
push dword ptr [ebp+36]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01EE
jmp .Lt_01DA
.Lt_01EE:
.Lt_01ED:
jmp .Lt_01EB
.Lt_01EC:
push 1
push -2147483648
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01F0
jmp .Lt_01DA
.Lt_01F0:
.Lt_01EF:
.Lt_01EB:
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_01DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 32
.balign 16

.globl _RTLGFXSCREENSET@20
_RTLGFXSCREENSET@20:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01F2:
mov dword ptr [ebp-4], 0
push 0
push 329
push offset _Lt_007B
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01F5
jmp .Lt_01F3
.Lt_01F5:
.Lt_01F4:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01F7
jmp .Lt_01F3
.Lt_01F7:
.Lt_01F6:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01F9
jmp .Lt_01F3
.Lt_01F9:
.Lt_01F8:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01FB
jmp .Lt_01F3
.Lt_01FB:
.Lt_01FA:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01FD
jmp .Lt_01F3
.Lt_01FD:
.Lt_01FC:
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_01F3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _RTLGFXSCREENSETQB@12
_RTLGFXSCREENSETQB@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01FE:
mov dword ptr [ebp-4], 0
push 0
push 330
push offset _Lt_007C
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0201
jmp .Lt_01FF
.Lt_0201:
.Lt_0200:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0203
jmp .Lt_01FF
.Lt_0203:
.Lt_0202:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0205
jmp .Lt_01FF
.Lt_0205:
.Lt_0204:
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_01FF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLGFXIMAGECREATE@20
_RTLGFXIMAGECREATE@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0206:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [_ENV+136], 0
jne .Lt_0208
push 331
push offset _Lt_00AF
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0214
.Lt_0208:
push 332
push offset _Lt_00B0
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_0214:
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_020B
jmp .Lt_0207
.Lt_020B:
.Lt_020A:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_020D
jmp .Lt_0207
.Lt_020D:
.Lt_020C:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_020F
jmp .Lt_0207
.Lt_020F:
.Lt_020E:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0211
jmp .Lt_0207
.Lt_0211:
.Lt_0210:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0213
jmp .Lt_0207
.Lt_0213:
.Lt_0212:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0207:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_fb_ctor__rtlzgfx:
.Lt_0002:
.Lt_0003:
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
_HPORTS_CB@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00CD:
cmp dword ptr [_Lt_0215], 0
jne .Lt_00D0
mov dword ptr [_Lt_0215], -1
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00D4
.Lt_00D5:
cmp dword ptr [ebp-8], 1
jne .Lt_00D3
.Lt_00D4:
push offset _Lt_00D6
call _FBADDLIB@4
.Lt_00D3:
.Lt_00D1:
.Lt_00D0:
.Lt_00CF:
mov dword ptr [ebp-4], -1
.Lt_00CE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0215:
.int 0

.section .text
.balign 16
_HGFXLIB_CB@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00D7:
mov dword ptr [_ENV+220], -1
mov dword ptr [ebp-4], -1
.Lt_00D8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETPUTTER@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00D9:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_00DC
.Lt_00DE:
push 317
push offset _Lt_00BE
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00DF:
push 318
push offset _Lt_00BF
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00E0:
push 319
push offset _Lt_00C0
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00E1:
push 320
push offset _Lt_00C1
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00E2:
push 321
push offset _Lt_00C2
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00E3:
push 322
push offset _Lt_00C3
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00E4:
push 323
push offset _Lt_00C4
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00E5:
push 324
push offset _Lt_00C5
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00E6:
push 325
push offset _Lt_00C6
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00E7:
push 326
push offset _Lt_00C7
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00DC:
cmp dword ptr [ebp-12], 9
ja .Lt_00E7
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00E8+eax*4]
_.LT_00E8:
.int .Lt_00DE
.int .Lt_00DF
.int .Lt_00E0
.int .Lt_00E1
.int .Lt_00E2
.int .Lt_00E3
.int .Lt_00E4
.int .Lt_00E6
.int .Lt_00E7
.int .Lt_00E5
.Lt_00DB:
push dword ptr [ebp-8]
call _ASTBUILDPROCADDROF@4
mov dword ptr [ebp-4], eax
.Lt_00DA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

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
_FUNCDATA:
.int _Lt_0068
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0069
.long 0
.int 12
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_006A
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_006B
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_006C
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_006D
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_006E
.long 0
.int 8
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_006F
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0070
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0071
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0072
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
.int 0
.int 1
.int 1067
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0073
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
.int 0
.int 1
.int 1069
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0074
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0075
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0076
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
.int 0
.int 1
.int 43
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0077
.long 0
.int 0
.int -1
.int _HGFXLIB_CB@4
.int 0
.int 1
.int 45
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0078
.long 0
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0079
.long 0
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_007A
.long 0
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_007B
.long 0
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_007C
.long 0
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_007D
.int _Lt_007E
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_007F
.int _Lt_0080
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_007F
.int _Lt_0081
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0082
.int _Lt_0083
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0082
.int _Lt_0084
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0085
.int _Lt_0086
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0087
.int _Lt_0086
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_0088
.int _Lt_0089
.int 15
.int -1
.int _HGFXLIB_CB@4
.int 128
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_008A
.int _Lt_008B
.int 15
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_008C
.int _Lt_008D
.int 11
.int -1
.int _HPORTS_CB@4
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
.int _Lt_008E
.int _Lt_008F
.int 11
.int -1
.int _HPORTS_CB@4
.int 0
.int 1
.int 518
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0090
.int _Lt_0091
.int 11
.int -1
.int _HPORTS_CB@4
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
.int _Lt_0092
.int _Lt_0093
.int 11
.int -1
.int _HGFXLIB_CB@4
.int 128
.int 0
.skip 320,0
.int _Lt_0094
.int _Lt_0095
.int 11
.int 3
.int _HGFXLIB_CB@4
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
.int _Lt_0096
.int _Lt_0097
.int 0
.int -1
.int _HGFXLIB_CB@4
.int 128
.int 0
.skip 320,0
.int _Lt_0098
.int _Lt_0099
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_009A
.int _Lt_009B
.int 32
.int -1
.int _HGFXLIB_CB@4
.int 128
.int 0
.skip 320,0
.int _Lt_009C
.int _Lt_009D
.int 0
.int -1
.int _HGFXLIB_CB@4
.int 128
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_009E
.int _Lt_009F
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
.int _Lt_00A0
.int _Lt_00A1
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
.int _Lt_00A0
.int _Lt_00A2
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
.int _Lt_00A3
.int _Lt_00A4
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
.int _Lt_00A5
.int _Lt_00A6
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_00A7
.int _Lt_00A8
.int 11
.int -1
.int _HGFXLIB_CB@4
.int 256
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00A9
.int _Lt_00AA
.int 11
.int -1
.int _HGFXLIB_CB@4
.int 256
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00AB
.int _Lt_00AC
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_00AD
.int _Lt_00AE
.int 11
.int -1
.int _HGFXLIB_CB@4
.int 128
.int 1
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 300,0
.int _Lt_00AF
.long 0
.int 32
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_00B0
.long 0
.int 32
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_00B1
.int _Lt_00B2
.int 0
.int -1
.int _HGFXLIB_CB@4
.int 128
.int 1
.int 1056
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00B3
.int _Lt_00B4
.int 11
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_00B5
.int _Lt_00B6
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_00B7
.int _Lt_00B8
.int 11
.int -1
.int _HGFXLIB_CB@4
.int 128
.int 1
.int 32
.int 1
.int -1
.int 0
.int -1
.skip 300,0
.int _Lt_00B9
.int _Lt_00BA
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_00B9
.int _Lt_00BB
.int 0
.int -1
.int _HGFXLIB_CB@4
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
.int _Lt_00BC
.int _Lt_00BD
.int 32
.int -1
.int _HGFXLIB_CB@4
.int 129
.int 1
.int 1060
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00BE
.long 0
.int 0
.int 3
.int _HGFXLIB_CB@4
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
.int _Lt_00BF
.long 0
.int 0
.int 3
.int _HGFXLIB_CB@4
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
.int _Lt_00C0
.long 0
.int 0
.int 3
.int _HGFXLIB_CB@4
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
.int _Lt_00C1
.long 0
.int 0
.int 3
.int _HGFXLIB_CB@4
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
.int _Lt_00C2
.long 0
.int 0
.int 3
.int _HGFXLIB_CB@4
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
.int _Lt_00C3
.long 0
.int 0
.int 3
.int _HGFXLIB_CB@4
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
.int _Lt_00C4
.long 0
.int 0
.int 3
.int _HGFXLIB_CB@4
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
.int _Lt_00C5
.long 0
.int 0
.int 3
.int _HGFXLIB_CB@4
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
.int _Lt_00C6
.long 0
.int 0
.int 3
.int _HGFXLIB_CB@4
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
.int _Lt_00C7
.long 0
.int 0
.int 3
.int _HGFXLIB_CB@4
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
.balign 4
_Lt_0068:	.ascii	"fb_GfxPset\0"
.balign 4
_Lt_0069:	.ascii	"fb_GfxPoint\0"
.balign 4
_Lt_006A:	.ascii	"fb_GfxLine\0"
.balign 4
_Lt_006B:	.ascii	"fb_GfxEllipse\0"
.balign 4
_Lt_006C:	.ascii	"fb_GfxPaint\0"
.balign 4
_Lt_006D:	.ascii	"fb_GfxDraw\0"
.balign 4
_Lt_006E:	.ascii	"fb_GfxDrawString\0"
.balign 4
_Lt_006F:	.ascii	"fb_GfxView\0"
.balign 4
_Lt_0070:	.ascii	"fb_GfxWindow\0"
.balign 4
_Lt_0071:	.ascii	"fb_GfxPalette\0"
.balign 4
_Lt_0072:	.ascii	"fb_GfxPaletteUsing\0"
.balign 4
_Lt_0073:	.ascii	"fb_GfxPaletteUsing64\0"
.balign 4
_Lt_0074:	.ascii	"fb_GfxPaletteGet\0"
.balign 4
_Lt_0075:	.ascii	"fb_GfxPaletteGet64\0"
.balign 4
_Lt_0076:	.ascii	"fb_GfxPaletteGetUsing\0"
.balign 4
_Lt_0077:	.ascii	"fb_GfxPaletteGetUsing64\0"
.balign 4
_Lt_0078:	.ascii	"fb_GfxPut\0"
.balign 4
_Lt_0079:	.ascii	"fb_GfxGet\0"
.balign 4
_Lt_007A:	.ascii	"fb_GfxGetQB\0"
.balign 4
_Lt_007B:	.ascii	"fb_GfxScreen\0"
.balign 4
_Lt_007C:	.ascii	"fb_GfxScreenQB\0"
.balign 4
_Lt_007D:	.ascii	"screenres\0"
.balign 4
_Lt_007E:	.ascii	"fb_GfxScreenRes\0"
.balign 4
_Lt_007F:	.ascii	"bload\0"
.balign 4
_Lt_0080:	.ascii	"fb_GfxBload\0"
.balign 4
_Lt_0081:	.ascii	"fb_GfxBloadQB\0"
.balign 4
_Lt_0082:	.ascii	"bsave\0"
.balign 4
_Lt_0083:	.ascii	"fb_GfxBsave\0"
.balign 4
_Lt_0084:	.ascii	"fb_GfxBsaveEx\0"
.balign 4
_Lt_0085:	.ascii	"flip\0"
.balign 4
_Lt_0086:	.ascii	"fb_GfxFlip\0"
.balign 4
_Lt_0087:	.ascii	"screencopy\0"
.balign 4
_Lt_0088:	.ascii	"pointcoord\0"
.balign 4
_Lt_0089:	.ascii	"fb_GfxCursor\0"
.balign 4
_Lt_008A:	.ascii	"pmap\0"
.balign 4
_Lt_008B:	.ascii	"fb_GfxPMap\0"
.balign 4
_Lt_008C:	.ascii	"out\0"
.balign 4
_Lt_008D:	.ascii	"fb_Out\0"
.balign 4
_Lt_008E:	.ascii	"inp\0"
.balign 4
_Lt_008F:	.ascii	"fb_In\0"
.balign 4
_Lt_0090:	.ascii	"wait\0"
.balign 4
_Lt_0091:	.ascii	"fb_Wait\0"
.balign 4
_Lt_0092:	.ascii	"screensync\0"
.balign 4
_Lt_0093:	.ascii	"fb_GfxWaitVSync\0"
.balign 4
_Lt_0094:	.ascii	"screenset\0"
.balign 4
_Lt_0095:	.ascii	"fb_GfxPageSet\0"
.balign 4
_Lt_0096:	.ascii	"screenlock\0"
.balign 4
_Lt_0097:	.ascii	"fb_GfxLock\0"
.balign 4
_Lt_0098:	.ascii	"screenunlock\0"
.balign 4
_Lt_0099:	.ascii	"fb_GfxUnlock\0"
.balign 4
_Lt_009A:	.ascii	"screenptr\0"
.balign 4
_Lt_009B:	.ascii	"fb_GfxScreenPtr\0"
.balign 4
_Lt_009C:	.ascii	"windowtitle\0"
.balign 4
_Lt_009D:	.ascii	"fb_GfxSetWindowTitle\0"
.balign 4
_Lt_009E:	.ascii	"multikey\0"
.balign 4
_Lt_009F:	.ascii	"fb_Multikey\0"
.balign 4
_Lt_00A0:	.ascii	"getmouse\0"
.balign 4
_Lt_00A1:	.ascii	"fb_GetMouse\0"
.balign 4
_Lt_00A2:	.ascii	"fb_GetMouse64\0"
.balign 4
_Lt_00A3:	.ascii	"setmouse\0"
.balign 4
_Lt_00A4:	.ascii	"fb_SetMouse\0"
.balign 4
_Lt_00A5:	.ascii	"getjoystick\0"
.balign 4
_Lt_00A6:	.ascii	"fb_GfxGetJoystick\0"
.balign 4
_Lt_00A7:	.ascii	"stick\0"
.balign 4
_Lt_00A8:	.ascii	"fb_GfxStickQB\0"
.balign 4
_Lt_00A9:	.ascii	"strig\0"
.balign 4
_Lt_00AA:	.ascii	"fb_GfxStrigQB\0"
.balign 4
_Lt_00AB:	.ascii	"screeninfo\0"
.balign 4
_Lt_00AC:	.ascii	"fb_GfxScreenInfo\0"
.balign 4
_Lt_00AD:	.ascii	"screenlist\0"
.balign 4
_Lt_00AE:	.ascii	"fb_GfxScreenList\0"
.balign 4
_Lt_00AF:	.ascii	"fb_GfxImageCreate\0"
.balign 4
_Lt_00B0:	.ascii	"fb_GfxImageCreateQB\0"
.balign 4
_Lt_00B1:	.ascii	"imagedestroy\0"
.balign 4
_Lt_00B2:	.ascii	"fb_GfxImageDestroy\0"
.balign 4
_Lt_00B3:	.ascii	"imageinfo\0"
.balign 4
_Lt_00B4:	.ascii	"fb_GfxImageInfo\0"
.balign 4
_Lt_00B5:	.ascii	"imageconvertrow\0"
.balign 4
_Lt_00B6:	.ascii	"fb_GfxImageConvertRow\0"
.balign 4
_Lt_00B7:	.ascii	"screenevent\0"
.balign 4
_Lt_00B8:	.ascii	"fb_GfxEvent\0"
.balign 4
_Lt_00B9:	.ascii	"screencontrol\0"
.balign 4
_Lt_00BA:	.ascii	"fb_GfxControl_s\0"
.balign 4
_Lt_00BB:	.ascii	"fb_GfxControl_i\0"
.balign 4
_Lt_00BC:	.ascii	"screenglproc\0"
.balign 4
_Lt_00BD:	.ascii	"fb_GfxGetGLProcAddress\0"
.balign 4
_Lt_00BE:	.ascii	"fb_hPutTrans\0"
.balign 4
_Lt_00BF:	.ascii	"fb_hPutPSet\0"
.balign 4
_Lt_00C0:	.ascii	"fb_hPutPReset\0"
.balign 4
_Lt_00C1:	.ascii	"fb_hPutAnd\0"
.balign 4
_Lt_00C2:	.ascii	"fb_hPutOr\0"
.balign 4
_Lt_00C3:	.ascii	"fb_hPutXor\0"
.balign 4
_Lt_00C4:	.ascii	"fb_hPutAlpha\0"
.balign 4
_Lt_00C5:	.ascii	"fb_hPutBlend\0"
.balign 4
_Lt_00C6:	.ascii	"fb_hPutAdd\0"
.balign 4
_Lt_00C7:	.ascii	"fb_hPutCustom\0"
.balign 4
_Lt_00D6:	.ascii	"advapi32\0"
.balign 8
_Lt_0101:	.quad	0xC15FFFFFC0000000
.balign 8
_Lt_0132:	.quad	0x0000000000000000
.balign 8
_Lt_0133:	.quad	0x401921FB82C2BD7F

.section .ctors
.int _fb_ctor__rtlzgfx
