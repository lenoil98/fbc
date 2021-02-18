	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLFILEMODINIT@0
_RTLFILEMODINIT@0:
.Lt_00B8:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.Lt_00B9:
ret
.balign 16

.globl _RTLFILEMODEND@0
_RTLFILEMODEND@0:
.Lt_00BA:
.Lt_00BB:
ret
.balign 16

.globl _RTLFILEOPEN@36
_RTLFILEOPEN@36:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_00BC:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], -1
cmp dword ptr [ebp+40], 0
jne .Lt_00BF
.Lt_00C0:
cmp dword ptr [ebp+32], 0
jne .Lt_00C2
push 223
push offset _Lt_0069
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
jmp .Lt_00C1
.Lt_00C2:
push 224
push offset _Lt_006A
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_00C1:
jmp .Lt_00BE
.Lt_00BF:
cmp dword ptr [ebp+40], 1
jne .Lt_00C3
.Lt_00C4:
push 226
push offset _Lt_006C
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_00BE
.Lt_00C3:
cmp dword ptr [ebp+40], 2
jne .Lt_00C5
.Lt_00C6:
push 227
push offset _Lt_006D
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_00BE
.Lt_00C5:
cmp dword ptr [ebp+40], 3
jne .Lt_00C7
.Lt_00C8:
push 228
push offset _Lt_006E
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_00BE
.Lt_00C7:
cmp dword ptr [ebp+40], 4
jne .Lt_00C9
.Lt_00CA:
push 229
push offset _Lt_006F
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_00BE
.Lt_00C9:
cmp dword ptr [ebp+40], 5
jne .Lt_00CB
.Lt_00CC:
push 230
push offset _Lt_0070
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_00BE
.Lt_00CB:
cmp dword ptr [ebp+40], 6
jne .Lt_00CD
.Lt_00CE:
push 231
push offset _Lt_0071
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_00BE
.Lt_00CD:
push 232
push offset _Lt_0072
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_00D3
.Lt_00D4:
cmp dword ptr [ebp-20], 1
jne .Lt_00D2
.Lt_00D3:
push offset _Lt_00D5
call _FBADDLIB@4
push offset _Lt_00D6
call _FBADDLIB@4
.Lt_00D2:
.Lt_00D0:
.Lt_00CF:
.Lt_00BE:
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
jne .Lt_00D8
jmp .Lt_00BD
.Lt_00D8:
.Lt_00D7:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00DA
jmp .Lt_00BD
.Lt_00DA:
.Lt_00D9:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00DC
jmp .Lt_00BD
.Lt_00DC:
.Lt_00DB:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00DE
jmp .Lt_00BD
.Lt_00DE:
.Lt_00DD:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00E0
jmp .Lt_00BD
.Lt_00E0:
.Lt_00DF:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00E2
jmp .Lt_00BD
.Lt_00E2:
.Lt_00E1:
cmp dword ptr [ebp-16], 0
je .Lt_00E4
cmp dword ptr [ebp+32], 0
jne .Lt_00E6
push 0
push 36
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+32], eax
.Lt_00E6:
.Lt_00E5:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00E8
jmp .Lt_00BD
.Lt_00E8:
.Lt_00E7:
.Lt_00E4:
.Lt_00E3:
cmp dword ptr [ebp+36], 0
jne .Lt_00EA
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.Lt_00EA:
.Lt_00E9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00BD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 36
.balign 16

.globl _RTLFILEOPENSHORT@28
_RTLFILEOPENSHORT@28:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00EB:
mov dword ptr [ebp-4], 0
push 0
push 225
push offset _Lt_006B
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00EE
jmp .Lt_00EC
.Lt_00EE:
.Lt_00ED:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F0
jmp .Lt_00EC
.Lt_00F0:
.Lt_00EF:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F2
jmp .Lt_00EC
.Lt_00F2:
.Lt_00F1:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F4
jmp .Lt_00EC
.Lt_00F4:
.Lt_00F3:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F6
jmp .Lt_00EC
.Lt_00F6:
.Lt_00F5:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F8
jmp .Lt_00EC
.Lt_00F8:
.Lt_00F7:
cmp dword ptr [ebp+32], 0
jne .Lt_00FA
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.Lt_00FA:
.Lt_00F9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00EC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 28
.balign 16

.globl _RTLFILECLOSE@8
_RTLFILECLOSE@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00FB:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_00FE
push 0
push 233
push offset _Lt_0073
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
jne .Lt_0100
jmp .Lt_00FC
.Lt_0100:
.Lt_00FF:
jmp .Lt_00FD
.Lt_00FE:
push 0
push 234
push offset _Lt_0074
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
.Lt_00FD:
cmp dword ptr [ebp+12], 0
jne .Lt_0102
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.Lt_0102:
.Lt_0101:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00FC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _RTLFILESEEK@8
_RTLFILESEEK@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0103:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0105
mov dword ptr [ebp-20], 24
jmp .Lt_010D
.Lt_0105:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_010D:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 8
jne .Lt_0108
push 261
push offset _Lt_008D
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0107
.Lt_0108:
push 260
push offset _Lt_008C
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_0107:
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
jne .Lt_010A
jmp .Lt_0104
.Lt_010A:
.Lt_0109:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_010C
jmp .Lt_0104
.Lt_010C:
.Lt_010B:
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_0104:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _RTLFILETELL@4
_RTLFILETELL@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_010E:
mov dword ptr [ebp-4], 0
push 0
push 259
push offset _Lt_008B
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
jne .Lt_0111
jmp .Lt_010F
.Lt_0111:
.Lt_0110:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_010F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLFILEPUT@20
_RTLFILEPUT@20:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0112:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-16]
call _SYMBISSTRING@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp+12], 0
jne .Lt_0115
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.Lt_0115:
.Lt_0114:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0116
mov dword ptr [ebp-44], 24
jmp .Lt_0131
.Lt_0116:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_0131:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-24], 0
je .Lt_0119
cmp dword ptr [ebp-28], 0
je .Lt_011B
push 238
push offset _Lt_0078
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .Lt_011A
.Lt_011B:
push 237
push offset _Lt_0077
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.Lt_011A:
jmp .Lt_0118
.Lt_0119:
cmp dword ptr [ebp-28], 0
je .Lt_011D
push 236
push offset _Lt_0076
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .Lt_011C
.Lt_011D:
push 235
push offset _Lt_0075
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.Lt_011C:
.Lt_0118:
push 0
push dword ptr [ebp-40]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_011F
jmp .Lt_0113
.Lt_011F:
.Lt_011E:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0121
jmp .Lt_0113
.Lt_0121:
.Lt_0120:
cmp dword ptr [ebp-24], 0
je .Lt_0123
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
jmp .Lt_0122
.Lt_0123:
push dword ptr [ebp+16]
call _RTLCALCEXPRLEN@4
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
.Lt_0122:
cmp dword ptr [ebp+20], 0
jne .Lt_0125
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
jmp .Lt_0124
.Lt_0125:
push 1
push 0
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+20]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
.Lt_0124:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
and edx, 511
cmp edx, 20
jne .Lt_0127
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+8]
mov edx, dword ptr [eax+120]
and edx, 4
test edx, edx
je .Lt_0129
push 10
push 0
push 3
mov edx, dword ptr [ebp-8]
push dword ptr [edx+12]
call _ERRREPORTPARAMWARN@16
.Lt_0129:
.Lt_0128:
jmp .Lt_0126
.Lt_0127:
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+4]
and eax, 511
and eax, 480
test eax, eax
je .Lt_012A
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ERRREPORTPARAMWARN@16
.Lt_012A:
.Lt_0126:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_012C
jmp .Lt_0113
.Lt_012C:
.Lt_012B:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_012E
jmp .Lt_0113
.Lt_012E:
.Lt_012D:
cmp dword ptr [ebp+24], 0
jne .Lt_0130
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.Lt_0130:
.Lt_012F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0113:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _RTLFILEPUTARRAY@16
_RTLFILEPUTARRAY@16:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0133:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0136
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.Lt_0136:
.Lt_0135:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0137
mov dword ptr [ebp-20], 24
jmp .Lt_0148
.Lt_0137:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_0148:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 8
jne .Lt_013A
push 242
push offset _Lt_007A
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0139
.Lt_013A:
push 241
push offset _Lt_0079
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_0139:
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
jne .Lt_013C
jmp .Lt_0134
.Lt_013C:
.Lt_013B:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_013E
jmp .Lt_0134
.Lt_013E:
.Lt_013D:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .Lt_0140
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+120]
and ebx, 4
test ebx, ebx
je .Lt_0142
push 10
push 0
push 3
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+12]
call _ERRREPORTPARAMWARN@16
.Lt_0142:
.Lt_0141:
jmp .Lt_013F
.Lt_0140:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .Lt_0143
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ERRREPORTPARAMWARN@16
.Lt_0143:
.Lt_013F:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0145
jmp .Lt_0134
.Lt_0145:
.Lt_0144:
cmp dword ptr [ebp+20], 0
jne .Lt_0147
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.Lt_0147:
.Lt_0146:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0134:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _RTLFILEGET@24
_RTLFILEGET@24:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_0149:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-16]
call _SYMBISSTRING@4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-16]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp+12], 0
jne .Lt_014C
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.Lt_014C:
.Lt_014B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_014D
mov dword ptr [ebp-48], 24
jmp .Lt_017C
.Lt_014D:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_017C:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp+24], 0
je .Lt_0150
cmp dword ptr [ebp-24], 0
je .Lt_0152
cmp dword ptr [ebp-28], 0
je .Lt_0154
cmp dword ptr [ebp-44], 0
je .Lt_0156
push 256
push offset _Lt_0088
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .Lt_0155
.Lt_0156:
push 254
push offset _Lt_0087
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.Lt_0155:
jmp .Lt_0153
.Lt_0154:
cmp dword ptr [ebp-44], 0
je .Lt_0158
push 255
push offset _Lt_0086
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .Lt_0157
.Lt_0158:
push 253
push offset _Lt_0085
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.Lt_0157:
.Lt_0153:
jmp .Lt_0151
.Lt_0152:
cmp dword ptr [ebp-28], 0
je .Lt_015A
push 252
push offset _Lt_0084
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .Lt_0159
.Lt_015A:
push 251
push offset _Lt_0083
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.Lt_0159:
.Lt_0151:
jmp .Lt_014F
.Lt_0150:
cmp dword ptr [ebp-24], 0
je .Lt_015C
cmp dword ptr [ebp-28], 0
je .Lt_015E
cmp dword ptr [ebp-44], 0
je .Lt_0160
push 248
push offset _Lt_0080
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .Lt_015F
.Lt_0160:
push 246
push offset _Lt_007F
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.Lt_015F:
jmp .Lt_015D
.Lt_015E:
cmp dword ptr [ebp-44], 0
je .Lt_0162
push 247
push offset _Lt_007E
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .Lt_0161
.Lt_0162:
push 245
push offset _Lt_007D
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.Lt_0161:
.Lt_015D:
jmp .Lt_015B
.Lt_015C:
cmp dword ptr [ebp-28], 0
je .Lt_0164
push 244
push offset _Lt_007C
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .Lt_0163
.Lt_0164:
push 243
push offset _Lt_007B
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.Lt_0163:
.Lt_015B:
.Lt_014F:
push 0
push dword ptr [ebp-40]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0166
jmp .Lt_014A
.Lt_0166:
.Lt_0165:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0168
jmp .Lt_014A
.Lt_0168:
.Lt_0167:
cmp dword ptr [ebp-24], 0
je .Lt_016A
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
jmp .Lt_0169
.Lt_016A:
push dword ptr [ebp+16]
call _RTLCALCEXPRLEN@4
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
.Lt_0169:
cmp dword ptr [ebp+20], 0
jne .Lt_016C
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
jmp .Lt_016B
.Lt_016C:
push 1
push 0
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+20]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
.Lt_016B:
cmp dword ptr [ebp-16], 20
jne .Lt_016E
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+120]
and eax, 4
test eax, eax
je .Lt_0170
push 10
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ERRREPORTPARAMWARN@16
.Lt_0170:
.Lt_016F:
jmp .Lt_016D
.Lt_016E:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
and edx, 511
and edx, 480
test edx, edx
je .Lt_0171
push 29
push 0
push 3
mov edx, dword ptr [ebp-8]
push dword ptr [edx+12]
call _ERRREPORTPARAMWARN@16
.Lt_0171:
.Lt_016D:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0173
jmp .Lt_014A
.Lt_0173:
.Lt_0172:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0175
jmp .Lt_014A
.Lt_0175:
.Lt_0174:
cmp dword ptr [ebp+24], 0
je .Lt_0177
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0179
jmp .Lt_014A
.Lt_0179:
.Lt_0178:
.Lt_0177:
.Lt_0176:
cmp dword ptr [ebp+28], 0
jne .Lt_017B
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.Lt_017B:
.Lt_017A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_014A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _RTLFILEGETARRAY@20
_RTLFILEGETARRAY@20:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_017F:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0182
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.Lt_0182:
.Lt_0181:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0183
mov dword ptr [ebp-24], 24
jmp .Lt_019C
.Lt_0183:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_019C:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+20], 0
je .Lt_0186
cmp dword ptr [ebp-20], 0
je .Lt_0188
push 258
push offset _Lt_008A
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0187
.Lt_0188:
push 257
push offset _Lt_0089
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_0187:
jmp .Lt_0185
.Lt_0186:
cmp dword ptr [ebp-20], 0
je .Lt_018A
push 250
push offset _Lt_0082
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0189
.Lt_018A:
push 249
push offset _Lt_0081
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_0189:
.Lt_0185:
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
jne .Lt_018C
jmp .Lt_0180
.Lt_018C:
.Lt_018B:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_018E
jmp .Lt_0180
.Lt_018E:
.Lt_018D:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .Lt_0190
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+120]
and ebx, 4
test ebx, ebx
je .Lt_0192
push 10
push 0
push 3
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+12]
call _ERRREPORTPARAMWARN@16
.Lt_0192:
.Lt_0191:
jmp .Lt_018F
.Lt_0190:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .Lt_0193
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ERRREPORTPARAMWARN@16
.Lt_0193:
.Lt_018F:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0195
jmp .Lt_0180
.Lt_0195:
.Lt_0194:
cmp dword ptr [ebp+20], 0
je .Lt_0197
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0199
jmp .Lt_0180
.Lt_0199:
.Lt_0198:
.Lt_0197:
.Lt_0196:
cmp dword ptr [ebp+24], 0
jne .Lt_019B
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.Lt_019B:
.Lt_019A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0180:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _RTLFILESTRINPUT@12
_RTLFILESTRINPUT@12:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_019E:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [ebp+16], 477
jne .Lt_01A0
push 263
push offset _Lt_00A8
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01A6
.Lt_01A0:
push 262
push offset _Lt_008E
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_01A6:
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
jmp .Lt_019F
.Lt_01A3:
.Lt_01A2:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01A5
jmp .Lt_019F
.Lt_01A5:
.Lt_01A4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_019F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLFILELINEINPUT@20
_RTLFILELINEINPUT@20:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A7:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_01AA
push 264
push offset _Lt_008F
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 4
jmp .Lt_01A9
.Lt_01AA:
push 266
push offset _Lt_0091
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 6
.Lt_01A9:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_01AC
push 0
push -2147483648
push 0
push 0
push 0
push offset _Lt_0000
call _SYMBALLOCSTRCONST@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp+12], eax
.Lt_01AC:
.Lt_01AB:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01AE
jmp .Lt_01A8
.Lt_01AE:
.Lt_01AD:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
push dword ptr [ebp+16]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01B0
jmp .Lt_01A8
.Lt_01B0:
.Lt_01AF:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01B2
jmp .Lt_01A8
.Lt_01B2:
.Lt_01B1:
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp-20]
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
mov edx, ebx
sar edx, 31
push edx
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01B4
jmp .Lt_01A8
.Lt_01B4:
.Lt_01B3:
cmp dword ptr [ebp-16], 6
jne .Lt_01B6
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01B8
jmp .Lt_01A8
.Lt_01B8:
.Lt_01B7:
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
jne .Lt_01BA
jmp .Lt_01A8
.Lt_01BA:
.Lt_01B9:
.Lt_01B6:
.Lt_01B5:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_01A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _RTLFILELINEINPUTWSTR@20
_RTLFILELINEINPUTWSTR@20:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BE:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_01C1
push 265
push offset _Lt_0090
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .Lt_01C0
.Lt_01C1:
push 267
push offset _Lt_0092
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 5
.Lt_01C0:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_01C3
push 0
push -2147483648
push 0
push 0
push 0
push offset _Lt_0000
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call _SYMBALLOCWSTRCONST@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp+12], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
.Lt_01C3:
.Lt_01C2:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01C6
jmp .Lt_01BF
.Lt_01C6:
.Lt_01C5:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
push dword ptr [ebp+16]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01C8
jmp .Lt_01BF
.Lt_01C8:
.Lt_01C7:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01CA
jmp .Lt_01BF
.Lt_01CA:
.Lt_01C9:
cmp dword ptr [ebp-16], 5
jne .Lt_01CC
push -1
push -2147483648
push 0
push 8
mov edx, dword ptr [ebp+20]
mov eax, edx
sar eax, 31
push eax
push edx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01CE
jmp .Lt_01BF
.Lt_01CE:
.Lt_01CD:
push -1
push -2147483648
push 0
push 8
mov edx, dword ptr [ebp+24]
mov eax, edx
sar eax, 31
push eax
push edx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01D0
jmp .Lt_01BF
.Lt_01D0:
.Lt_01CF:
.Lt_01CC:
.Lt_01CB:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_01BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _RTLFILEINPUT@16
_RTLFILEINPUT@16:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D3:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_01D6
push 268
push offset _Lt_0093
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 1
jmp .Lt_01D5
.Lt_01D6:
push 269
push offset _Lt_0094
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
.Lt_01D5:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_01D8
push 0
push -2147483648
push 0
push 0
push 0
push offset _Lt_0000
call _SYMBALLOCSTRCONST@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp+12], eax
.Lt_01D8:
.Lt_01D7:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01DA
jmp .Lt_01D4
.Lt_01DA:
.Lt_01D9:
cmp dword ptr [ebp-16], 3
jne .Lt_01DC
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01DE
jmp .Lt_01D4
.Lt_01DE:
.Lt_01DD:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_01E0
jmp .Lt_01D4
.Lt_01E0:
.Lt_01DF:
.Lt_01DC:
.Lt_01DB:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_01D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _RTLFILEINPUTGET@4
_RTLFILEINPUTGET@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E3:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_01E5
mov dword ptr [ebp-32], 24
jmp .Lt_020C
.Lt_01E5:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_020C:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
jmp .Lt_01E8
.Lt_01EA:
push 281
push offset _Lt_00A0
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .Lt_01E7
.Lt_01EB:
push 282
push offset _Lt_00A1
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 2
jmp .Lt_01E7
.Lt_01EC:
push 270
push offset _Lt_0095
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01E7
.Lt_01ED:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01EE
mov dword ptr [ebp-40], 24
jmp .Lt_020D
.Lt_01EE:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_020D:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-44], ebx
jmp .Lt_01F1
.Lt_01F3:
push 271
push offset _Lt_0096
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01F0
.Lt_01F4:
push 272
push offset _Lt_0097
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01F0
.Lt_01F5:
push 273
push offset _Lt_0098
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01F0
.Lt_01F6:
push 274
push offset _Lt_0099
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01F0
.Lt_01F7:
push 275
push offset _Lt_009A
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01F0
.Lt_01F8:
push 276
push offset _Lt_009B
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01F0
.Lt_01F9:
push 277
push offset _Lt_009C
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01F0
.Lt_01FA:
push 278
push offset _Lt_009D
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01F0
.Lt_01F1:
mov eax, dword ptr [ebp-44]
add eax, 4294967295
cmp eax, 7
ja .Lt_01F0
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.LT_01FB+eax*4-4]
_.LT_01FB:
.int .Lt_01F3
.int .Lt_01F4
.int .Lt_01F5
.int .Lt_01F6
.int .Lt_01F7
.int .Lt_01F8
.int .Lt_01F9
.int .Lt_01FA
.Lt_01F0:
jmp .Lt_01E7
.Lt_01FC:
push 279
push offset _Lt_009E
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01E7
.Lt_01FD:
push 280
push offset _Lt_009F
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_01E7
.Lt_01FE:
push 0
push 0
push 24
call _ERRREPORT@12
jmp .Lt_01E4
jmp .Lt_01E7
.Lt_01E8:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 23
ja .Lt_01FE
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.LT_01FF+eax*4-4]
_.LT_01FF:
.int .Lt_01EC
.int .Lt_01ED
.int .Lt_01ED
.int .Lt_01EA
.int .Lt_01ED
.int .Lt_01ED
.int .Lt_01EB
.int .Lt_01ED
.int .Lt_01ED
.int .Lt_01ED
.int .Lt_01ED
.int .Lt_01ED
.int .Lt_01ED
.int .Lt_01ED
.int .Lt_01FC
.int .Lt_01FD
.int .Lt_01EA
.int .Lt_01EA
.int .Lt_01FE
.int .Lt_01FE
.int .Lt_01FE
.int .Lt_01FE
.int .Lt_01FE
.int .Lt_01ED
.Lt_01E7:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 1
jle .Lt_0201
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
.Lt_0201:
.Lt_0200:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0203
jmp .Lt_01E4
.Lt_0203:
.Lt_0202:
cmp dword ptr [ebp-16], 1
jle .Lt_0205
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0207
jmp .Lt_01E4
.Lt_0207:
.Lt_0206:
cmp dword ptr [ebp-16], 2
jle .Lt_0209
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp-20]
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
mov edx, ebx
sar edx, 31
push edx
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_020B
jmp .Lt_01E4
.Lt_020B:
.Lt_020A:
.Lt_0209:
.Lt_0208:
.Lt_0205:
.Lt_0204:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_01E4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLFILELOCK@16
_RTLFILELOCK@16:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_020F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0211
mov dword ptr [ebp-28], 24
jmp .Lt_0221
.Lt_0211:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0221:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ebx, 8
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_0213
mov dword ptr [ebp-32], 24
jmp .Lt_0222
.Lt_0213:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_0222:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-36]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .Lt_0216
cmp dword ptr [ebp-16], 0
je .Lt_0218
push 284
push offset _Lt_00A3
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0217
.Lt_0218:
push 283
push offset _Lt_00A2
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_0217:
jmp .Lt_0215
.Lt_0216:
cmp dword ptr [ebp-16], 0
je .Lt_021A
push 286
push offset _Lt_00A5
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0219
.Lt_021A:
push 285
push offset _Lt_00A4
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_0219:
.Lt_0215:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_021C
jmp .Lt_0210
.Lt_021C:
.Lt_021B:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_021E
jmp .Lt_0210
.Lt_021E:
.Lt_021D:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0220
jmp .Lt_0210
.Lt_0220:
.Lt_021F:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_0210:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _RTLFILERENAME@12
_RTLFILERENAME@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0226:
mov dword ptr [ebp-4], 0
push 0
push 287
push offset _Lt_00A6
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0229
jmp .Lt_0227
.Lt_0229:
.Lt_0228:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_022B
jmp .Lt_0227
.Lt_022B:
.Lt_022A:
cmp dword ptr [ebp+16], 0
jne .Lt_022D
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.Lt_022D:
.Lt_022C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0227:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLWIDTHFILE@12
_RTLWIDTHFILE@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_022E:
mov dword ptr [ebp-4], 0
push 0
push 290
push offset _Lt_0230
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
jne .Lt_0232
jmp .Lt_022F
.Lt_0232:
.Lt_0231:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0234
jmp .Lt_022F
.Lt_0234:
.Lt_0233:
cmp dword ptr [ebp+16], 0
jne .Lt_0236
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.Lt_0236:
.Lt_0235:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_022F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_fb_ctor__rtlzfile:
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
.int _Lt_0069
.long 0
.int 11
.int -1
.long 0
.int 0
.int 6
.int 529
.int 2
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
.int _Lt_006A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
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
.int 1060
.int 1
.int 0
.skip 8,0
.skip 180,0
.int _Lt_006B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 6
.int 529
.int 2
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
.int 523
.int 1
.int 0
.skip 8,0
.int 529
.int 2
.int 0
.skip 8,0
.int 529
.int 2
.int 0
.skip 8,0
.skip 200,0
.int _Lt_006C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
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
.int 1060
.int 1
.int 0
.skip 8,0
.skip 180,0
.int _Lt_006D
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
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
.int 1060
.int 1
.int 0
.skip 8,0
.skip 180,0
.int _Lt_006E
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
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
.int 1060
.int 1
.int 0
.skip 8,0
.skip 180,0
.int _Lt_006F
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
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
.int 1060
.int 1
.int 0
.skip 8,0
.skip 180,0
.int _Lt_0070
.long 0
.int 11
.int -1
.int _RTLPRINTER_CB@4
.int 0
.int 7
.int 529
.int 2
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
.int 1060
.int 1
.int 0
.skip 8,0
.skip 180,0
.int _Lt_0071
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
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
.int 1060
.int 1
.int 0
.skip 8,0
.skip 180,0
.int _Lt_0072
.long 0
.int 11
.int -1
.long 0
.int 0
.int 6
.int 529
.int 2
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
.int _Lt_0073
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0074
.long 0
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_0075
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 512
.int 2
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_0076
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 512
.int 2
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_0077
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 512
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_0078
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 512
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_0079
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
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
.skip 260,0
.int _Lt_007A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 512
.int 3
.int 0
.skip 8,0
.skip 260,0
.int _Lt_007B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_007C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_007D
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_007E
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 7
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_007F
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_0080
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 7
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_0081
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
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
.skip 260,0
.int _Lt_0082
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 0
.int 3
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0083
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int 9
.int 2
.int 0
.skip 8,0
.skip 220,0
.int _Lt_0084
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int 9
.int 2
.int 0
.skip 8,0
.skip 220,0
.int _Lt_0085
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 9
.int 2
.int 0
.skip 8,0
.skip 220,0
.int _Lt_0086
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 7
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 9
.int 2
.int 0
.skip 8,0
.skip 220,0
.int _Lt_0087
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 9
.int 2
.int 0
.skip 8,0
.skip 220,0
.int _Lt_0088
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 7
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 9
.int 2
.int 0
.skip 8,0
.skip 220,0
.int _Lt_0089
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
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
.int 9
.int 2
.int 0
.skip 8,0
.skip 240,0
.int _Lt_008A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 0
.int 3
.int 0
.skip 8,0
.int 9
.int 2
.int 0
.skip 8,0
.skip 240,0
.int _Lt_008B
.long 0
.int 13
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_008C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_008D
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_008E
.long 0
.int 17
.int -1
.long 0
.int 0
.int 2
.int 520
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 280,0
.int _Lt_008F
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 1
.skip 4,0
.skip 240,0
.int _Lt_0090
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 8,0
.int 39
.int 1
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0091
.long 0
.int 11
.int -1
.long 0
.int 0
.int 6
.int 529
.int 2
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.int 520
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
.int _Lt_0092
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 1063
.int 1
.int 0
.skip 8,0
.int 39
.int 1
.int 0
.skip 8,0
.int 520
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
.skip 220,0
.int _Lt_0093
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0094
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
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
.skip 260,0
.int _Lt_0095
.long 0
.int 11
.int -1
.long 0
.int 128
.int 1
.int 1
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0096
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 2
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0097
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 3
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0098
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 5
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0099
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 6
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_009A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 11
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_009B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 12
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_009C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 13
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_009D
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 14
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_009E
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 15
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_009F
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 16
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00A0
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 1
.skip 4,0
.skip 260,0
.int _Lt_00A1
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 39
.int 1
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_00A2
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int -1
.int 0
.skip 4,0
.skip 260,0
.int _Lt_00A3
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int -1
.int 0
.skip 4,0
.skip 260,0
.int _Lt_00A4
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int 0
.skip 8,0
.int 524
.int 1
.int -1
.int 0
.skip 4,0
.skip 260,0
.int _Lt_00A5
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int 0
.skip 8,0
.int 525
.int 1
.int -1
.int 0
.skip 4,0
.skip 260,0
.int _Lt_00A6
.int _Lt_00A7
.int 11
.int 3
.long 0
.int 0
.int 2
.int 1060
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_00A8
.long 0
.int 7
.int -1
.long 0
.int 0
.int 2
.int 520
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 280,0
.int _Lt_00A9
.int _Lt_00AA
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_00AB
.int _Lt_00AC
.int 11
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00AD
.int _Lt_00AE
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00AF
.int _Lt_00B0
.int 0
.int -1
.long 0
.int 1
.int 0
.skip 320,0
.int _Lt_00AF
.int _Lt_00B1
.int 0
.int -1
.long 0
.int 1
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00B2
.int _Lt_00B3
.int 13
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00B4
.int _Lt_00B5
.int 13
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00B6
.int _Lt_00B7
.int 11
.int -1
.int _RTLPRINTER_CB@4
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.long 0
.skip 344,0
.balign 4
_Lt_0069:	.ascii	"fb_FileOpen\0"
.balign 4
_Lt_006A:	.ascii	"fb_FileOpenEncod\0"
.balign 4
_Lt_006B:	.ascii	"fb_FileOpenShort\0"
.balign 4
_Lt_006C:	.ascii	"fb_FileOpenCons\0"
.balign 4
_Lt_006D:	.ascii	"fb_FileOpenErr\0"
.balign 4
_Lt_006E:	.ascii	"fb_FileOpenPipe\0"
.balign 4
_Lt_006F:	.ascii	"fb_FileOpenScrn\0"
.balign 4
_Lt_0070:	.ascii	"fb_FileOpenLpt\0"
.balign 4
_Lt_0071:	.ascii	"fb_FileOpenCom\0"
.balign 4
_Lt_0072:	.ascii	"fb_FileOpenQB\0"
.balign 4
_Lt_0073:	.ascii	"fb_FileClose\0"
.balign 4
_Lt_0074:	.ascii	"fb_FileCloseAll\0"
.balign 4
_Lt_0075:	.ascii	"fb_FilePut\0"
.balign 4
_Lt_0076:	.ascii	"fb_FilePutLarge\0"
.balign 4
_Lt_0077:	.ascii	"fb_FilePutStr\0"
.balign 4
_Lt_0078:	.ascii	"fb_FilePutStrLarge\0"
.balign 4
_Lt_0079:	.ascii	"fb_FilePutArray\0"
.balign 4
_Lt_007A:	.ascii	"fb_FilePutArrayLarge\0"
.balign 4
_Lt_007B:	.ascii	"fb_FileGet\0"
.balign 4
_Lt_007C:	.ascii	"fb_FileGetLarge\0"
.balign 4
_Lt_007D:	.ascii	"fb_FileGetStr\0"
.balign 4
_Lt_007E:	.ascii	"fb_FileGetWstr\0"
.balign 4
_Lt_007F:	.ascii	"fb_FileGetStrLarge\0"
.balign 4
_Lt_0080:	.ascii	"fb_FileGetWstrLarge\0"
.balign 4
_Lt_0081:	.ascii	"fb_FileGetArray\0"
.balign 4
_Lt_0082:	.ascii	"fb_FileGetArrayLarge\0"
.balign 4
_Lt_0083:	.ascii	"fb_FileGetIOB\0"
.balign 4
_Lt_0084:	.ascii	"fb_FileGetLargeIOB\0"
.balign 4
_Lt_0085:	.ascii	"fb_FileGetStrIOB\0"
.balign 4
_Lt_0086:	.ascii	"fb_FileGetWstrIOB\0"
.balign 4
_Lt_0087:	.ascii	"fb_FileGetStrLargeIOB\0"
.balign 4
_Lt_0088:	.ascii	"fb_FileGetWstrLargeIOB\0"
.balign 4
_Lt_0089:	.ascii	"fb_FileGetArrayIOB\0"
.balign 4
_Lt_008A:	.ascii	"fb_FileGetArrayLargeIOB\0"
.balign 4
_Lt_008B:	.ascii	"fb_FileTell\0"
.balign 4
_Lt_008C:	.ascii	"fb_FileSeek\0"
.balign 4
_Lt_008D:	.ascii	"fb_FileSeekLarge\0"
.balign 4
_Lt_008E:	.ascii	"fb_FileStrInput\0"
.balign 4
_Lt_008F:	.ascii	"fb_FileLineInput\0"
.balign 4
_Lt_0090:	.ascii	"fb_FileLineInputWstr\0"
.balign 4
_Lt_0091:	.ascii	"fb_LineInput\0"
.balign 4
_Lt_0092:	.ascii	"fb_LineInputWstr\0"
.balign 4
_Lt_0093:	.ascii	"fb_FileInput\0"
.balign 4
_Lt_0094:	.ascii	"fb_ConsoleInput\0"
.balign 4
_Lt_0095:	.ascii	"fb_InputBool\0"
.balign 4
_Lt_0096:	.ascii	"fb_InputByte\0"
.balign 4
_Lt_0097:	.ascii	"fb_InputUbyte\0"
.balign 4
_Lt_0098:	.ascii	"fb_InputShort\0"
.balign 4
_Lt_0099:	.ascii	"fb_InputUshort\0"
.balign 4
_Lt_009A:	.ascii	"fb_InputInt\0"
.balign 4
_Lt_009B:	.ascii	"fb_InputUint\0"
.balign 4
_Lt_009C:	.ascii	"fb_InputLongint\0"
.balign 4
_Lt_009D:	.ascii	"fb_InputUlongint\0"
.balign 4
_Lt_009E:	.ascii	"fb_InputSingle\0"
.balign 4
_Lt_009F:	.ascii	"fb_InputDouble\0"
.balign 4
_Lt_00A0:	.ascii	"fb_InputString\0"
.balign 4
_Lt_00A1:	.ascii	"fb_InputWstr\0"
.balign 4
_Lt_00A2:	.ascii	"fb_FileLock\0"
.balign 4
_Lt_00A3:	.ascii	"fb_FileLockLarge\0"
.balign 4
_Lt_00A4:	.ascii	"fb_FileUnlock\0"
.balign 4
_Lt_00A5:	.ascii	"fb_FileUnlockLarge\0"
.balign 4
_Lt_00A6:	.ascii	"fb_rename\0"
.balign 4
_Lt_00A7:	.ascii	"rename\0"
.balign 4
_Lt_00A8:	.ascii	"fb_FileWstrInput\0"
.balign 4
_Lt_00A9:	.ascii	"freefile\0"
.balign 4
_Lt_00AA:	.ascii	"fb_FileFree\0"
.balign 4
_Lt_00AB:	.ascii	"eof\0"
.balign 4
_Lt_00AC:	.ascii	"fb_FileEof\0"
.balign 4
_Lt_00AD:	.ascii	"kill\0"
.balign 4
_Lt_00AE:	.ascii	"fb_FileKill\0"
.balign 4
_Lt_00AF:	.ascii	"reset\0"
.balign 4
_Lt_00B0:	.ascii	"fb_FileReset\0"
.balign 4
_Lt_00B1:	.ascii	"fb_FileResetEx\0"
.balign 4
_Lt_00B2:	.ascii	"lof\0"
.balign 4
_Lt_00B3:	.ascii	"fb_FileSize\0"
.balign 4
_Lt_00B4:	.ascii	"loc\0"
.balign 4
_Lt_00B5:	.ascii	"fb_FileLocation\0"
.balign 4
_Lt_00B6:	.ascii	"lpos\0"
.balign 4
_Lt_00B7:	.ascii	"fb_LPos\0"
.balign 4
_Lt_00D5:	.ascii	"gdi32\0"
.balign 4
_Lt_00D6:	.ascii	"winspool\0"
.balign 4
_Lt_0230:	.ascii	"fb_WidthFile\0"

.section .ctors
.int _fb_ctor__rtlzfile
