	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLFILEMODINIT
RTLFILEMODINIT:
.type RTLFILEMODINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00B7:
sub esp, 12
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 16
.Lt_00B8:
mov esp, ebp
pop ebp
ret
.size RTLFILEMODINIT, .-RTLFILEMODINIT
.balign 16

.globl RTLFILEMODEND
RTLFILEMODEND:
.type RTLFILEMODEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00B9:
.Lt_00BA:
mov esp, ebp
pop ebp
ret
.size RTLFILEMODEND, .-RTLFILEMODEND
.balign 16

.globl RTLFILEOPEN
RTLFILEOPEN:
.type RTLFILEOPEN, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00BB:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], -1
cmp dword ptr [ebp+40], 0
jne .Lt_00BE
.Lt_00BF:
cmp dword ptr [ebp+32], 0
jne .Lt_00C1
sub esp, 8
push 223
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
jmp .Lt_00C0
.Lt_00C1:
sub esp, 8
push 224
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00C0:
jmp .Lt_00BD
.Lt_00BE:
cmp dword ptr [ebp+40], 1
jne .Lt_00C2
.Lt_00C3:
sub esp, 8
push 226
push offset Lt_006B
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_00BD
.Lt_00C2:
cmp dword ptr [ebp+40], 2
jne .Lt_00C4
.Lt_00C5:
sub esp, 8
push 227
push offset Lt_006C
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_00BD
.Lt_00C4:
cmp dword ptr [ebp+40], 3
jne .Lt_00C6
.Lt_00C7:
sub esp, 8
push 228
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_00BD
.Lt_00C6:
cmp dword ptr [ebp+40], 4
jne .Lt_00C8
.Lt_00C9:
sub esp, 8
push 229
push offset Lt_006E
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_00BD
.Lt_00C8:
cmp dword ptr [ebp+40], 5
jne .Lt_00CA
.Lt_00CB:
sub esp, 8
push 230
push offset Lt_006F
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_00BD
.Lt_00CA:
cmp dword ptr [ebp+40], 6
jne .Lt_00CC
.Lt_00CD:
sub esp, 8
push 231
push offset Lt_0070
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_00BD
.Lt_00CC:
sub esp, 8
push 232
push offset Lt_0071
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_00D2
.Lt_00D3:
cmp dword ptr [ebp-20], 1
jne .Lt_00D1
.Lt_00D2:
sub esp, 12
push offset Lt_00D4
call FBADDLIB
add esp, 16
sub esp, 12
push offset Lt_00D5
call FBADDLIB
add esp, 16
.Lt_00D1:
.Lt_00CF:
.Lt_00CE:
.Lt_00BD:
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
jne .Lt_00D7
jmp .Lt_00BC
.Lt_00D7:
.Lt_00D6:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00D9
jmp .Lt_00BC
.Lt_00D9:
.Lt_00D8:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00DB
jmp .Lt_00BC
.Lt_00DB:
.Lt_00DA:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00DD
jmp .Lt_00BC
.Lt_00DD:
.Lt_00DC:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00DF
jmp .Lt_00BC
.Lt_00DF:
.Lt_00DE:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00E1
jmp .Lt_00BC
.Lt_00E1:
.Lt_00E0:
cmp dword ptr [ebp-16], 0
je .Lt_00E3
cmp dword ptr [ebp+32], 0
jne .Lt_00E5
push 0
push 36
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+32], eax
.Lt_00E5:
.Lt_00E4:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00E7
jmp .Lt_00BC
.Lt_00E7:
.Lt_00E6:
.Lt_00E3:
.Lt_00E2:
cmp dword ptr [ebp+36], 0
jne .Lt_00E9
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_00E9:
.Lt_00E8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00BC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLFILEOPEN, .-RTLFILEOPEN
.balign 16

.globl RTLFILEOPENSHORT
RTLFILEOPENSHORT:
.type RTLFILEOPENSHORT, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00EA:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 225
push offset Lt_006A
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00ED
jmp .Lt_00EB
.Lt_00ED:
.Lt_00EC:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00EF
jmp .Lt_00EB
.Lt_00EF:
.Lt_00EE:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00F1
jmp .Lt_00EB
.Lt_00F1:
.Lt_00F0:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00F3
jmp .Lt_00EB
.Lt_00F3:
.Lt_00F2:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00F5
jmp .Lt_00EB
.Lt_00F5:
.Lt_00F4:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00F7
jmp .Lt_00EB
.Lt_00F7:
.Lt_00F6:
cmp dword ptr [ebp+32], 0
jne .Lt_00F9
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_00F9:
.Lt_00F8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00EB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLFILEOPENSHORT, .-RTLFILEOPENSHORT
.balign 16

.globl RTLFILECLOSE
RTLFILECLOSE:
.type RTLFILECLOSE, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00FA:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_00FD
sub esp, 8
push 0
sub esp, 12
push 233
push offset Lt_0072
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
jne .Lt_00FF
jmp .Lt_00FB
.Lt_00FF:
.Lt_00FE:
jmp .Lt_00FC
.Lt_00FD:
sub esp, 8
push 0
sub esp, 12
push 234
push offset Lt_0073
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00FC:
cmp dword ptr [ebp+12], 0
jne .Lt_0101
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_0101:
.Lt_0100:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00FB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLFILECLOSE, .-RTLFILECLOSE
.balign 16

.globl RTLFILESEEK
RTLFILESEEK:
.type RTLFILESEEK, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0102:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0104
mov dword ptr [ebp-20], 24
jmp .Lt_010C
.Lt_0104:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_010C:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 8
jne .Lt_0107
sub esp, 8
push 261
push offset Lt_008C
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0106
.Lt_0107:
sub esp, 8
push 260
push offset Lt_008B
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0106:
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
jne .Lt_0109
jmp .Lt_0103
.Lt_0109:
.Lt_0108:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_010B
jmp .Lt_0103
.Lt_010B:
.Lt_010A:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0103:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLFILESEEK, .-RTLFILESEEK
.balign 16

.globl RTLFILETELL
RTLFILETELL:
.type RTLFILETELL, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_010D:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 259
push offset Lt_008A
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
jne .Lt_0110
jmp .Lt_010E
.Lt_0110:
.Lt_010F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_010E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLFILETELL, .-RTLFILETELL
.balign 16

.globl RTLFILEPUT
RTLFILEPUT:
.type RTLFILEPUT, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_0111:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
sub esp, 12
push dword ptr [ebp-16]
call SYMBISSTRING
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp+12], 0
jne .Lt_0114
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_0114:
.Lt_0113:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0115
mov dword ptr [ebp-44], 24
jmp .Lt_0130
.Lt_0115:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_0130:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-24], 0
je .Lt_0118
cmp dword ptr [ebp-28], 0
je .Lt_011A
sub esp, 8
push 238
push offset Lt_0077
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
jmp .Lt_0119
.Lt_011A:
sub esp, 8
push 237
push offset Lt_0076
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
.Lt_0119:
jmp .Lt_0117
.Lt_0118:
cmp dword ptr [ebp-28], 0
je .Lt_011C
sub esp, 8
push 236
push offset Lt_0075
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
jmp .Lt_011B
.Lt_011C:
sub esp, 8
push 235
push offset Lt_0074
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
.Lt_011B:
.Lt_0117:
sub esp, 8
push 0
push dword ptr [ebp-40]
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
jne .Lt_011E
jmp .Lt_0112
.Lt_011E:
.Lt_011D:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0120
jmp .Lt_0112
.Lt_0120:
.Lt_011F:
cmp dword ptr [ebp-24], 0
je .Lt_0122
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call RTLCALCSTRLEN
add esp, 16
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
jmp .Lt_0121
.Lt_0122:
sub esp, 12
push dword ptr [ebp+16]
call RTLCALCEXPRLEN
add esp, 16
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
.Lt_0121:
cmp dword ptr [ebp+20], 0
jne .Lt_0124
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0123
.Lt_0124:
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp+20]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
.Lt_0123:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
and edx, 511
cmp edx, 20
jne .Lt_0126
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+8]
mov edx, dword ptr [eax+116]
and edx, 4
test edx, edx
je .Lt_0128
push 10
push 0
push 3
mov edx, dword ptr [ebp-8]
push dword ptr [edx+12]
call ERRREPORTPARAMWARN
add esp, 16
.Lt_0128:
.Lt_0127:
jmp .Lt_0125
.Lt_0126:
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+4]
and eax, 511
and eax, 480
test eax, eax
je .Lt_0129
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ERRREPORTPARAMWARN
add esp, 16
.Lt_0129:
.Lt_0125:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_012B
jmp .Lt_0112
.Lt_012B:
.Lt_012A:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_012D
jmp .Lt_0112
.Lt_012D:
.Lt_012C:
cmp dword ptr [ebp+24], 0
jne .Lt_012F
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_012F:
.Lt_012E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0112:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLFILEPUT, .-RTLFILEPUT
.balign 16

.globl RTLFILEPUTARRAY
RTLFILEPUTARRAY:
.type RTLFILEPUTARRAY, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0132:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0135
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_0135:
.Lt_0134:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0136
mov dword ptr [ebp-20], 24
jmp .Lt_0147
.Lt_0136:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_0147:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 8
jne .Lt_0139
sub esp, 8
push 242
push offset Lt_0079
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0138
.Lt_0139:
sub esp, 8
push 241
push offset Lt_0078
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0138:
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
jne .Lt_013B
jmp .Lt_0133
.Lt_013B:
.Lt_013A:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_013D
jmp .Lt_0133
.Lt_013D:
.Lt_013C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .Lt_013F
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+116]
and ebx, 4
test ebx, ebx
je .Lt_0141
push 10
push 0
push 3
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+12]
call ERRREPORTPARAMWARN
add esp, 16
.Lt_0141:
.Lt_0140:
jmp .Lt_013E
.Lt_013F:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .Lt_0142
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ERRREPORTPARAMWARN
add esp, 16
.Lt_0142:
.Lt_013E:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0144
jmp .Lt_0133
.Lt_0144:
.Lt_0143:
cmp dword ptr [ebp+20], 0
jne .Lt_0146
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_0146:
.Lt_0145:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0133:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLFILEPUTARRAY, .-RTLFILEPUTARRAY
.balign 16

.globl RTLFILEGET
RTLFILEGET:
.type RTLFILEGET, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_0148:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
sub esp, 12
push dword ptr [ebp-16]
call SYMBISSTRING
add esp, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-16]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp+12], 0
jne .Lt_014B
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_014B:
.Lt_014A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_014C
mov dword ptr [ebp-48], 24
jmp .Lt_017B
.Lt_014C:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_017B:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp+24], 0
je .Lt_014F
cmp dword ptr [ebp-24], 0
je .Lt_0151
cmp dword ptr [ebp-28], 0
je .Lt_0153
cmp dword ptr [ebp-44], 0
je .Lt_0155
sub esp, 8
push 256
push offset Lt_0087
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
jmp .Lt_0154
.Lt_0155:
sub esp, 8
push 254
push offset Lt_0086
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
.Lt_0154:
jmp .Lt_0152
.Lt_0153:
cmp dword ptr [ebp-44], 0
je .Lt_0157
sub esp, 8
push 255
push offset Lt_0085
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
jmp .Lt_0156
.Lt_0157:
sub esp, 8
push 253
push offset Lt_0084
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
.Lt_0156:
.Lt_0152:
jmp .Lt_0150
.Lt_0151:
cmp dword ptr [ebp-28], 0
je .Lt_0159
sub esp, 8
push 252
push offset Lt_0083
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
jmp .Lt_0158
.Lt_0159:
sub esp, 8
push 251
push offset Lt_0082
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
.Lt_0158:
.Lt_0150:
jmp .Lt_014E
.Lt_014F:
cmp dword ptr [ebp-24], 0
je .Lt_015B
cmp dword ptr [ebp-28], 0
je .Lt_015D
cmp dword ptr [ebp-44], 0
je .Lt_015F
sub esp, 8
push 248
push offset Lt_007F
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
jmp .Lt_015E
.Lt_015F:
sub esp, 8
push 246
push offset Lt_007E
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
.Lt_015E:
jmp .Lt_015C
.Lt_015D:
cmp dword ptr [ebp-44], 0
je .Lt_0161
sub esp, 8
push 247
push offset Lt_007D
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
jmp .Lt_0160
.Lt_0161:
sub esp, 8
push 245
push offset Lt_007C
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
.Lt_0160:
.Lt_015C:
jmp .Lt_015A
.Lt_015B:
cmp dword ptr [ebp-28], 0
je .Lt_0163
sub esp, 8
push 244
push offset Lt_007B
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
jmp .Lt_0162
.Lt_0163:
sub esp, 8
push 243
push offset Lt_007A
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-40], eax
.Lt_0162:
.Lt_015A:
.Lt_014E:
sub esp, 8
push 0
push dword ptr [ebp-40]
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
jne .Lt_0165
jmp .Lt_0149
.Lt_0165:
.Lt_0164:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0167
jmp .Lt_0149
.Lt_0167:
.Lt_0166:
cmp dword ptr [ebp-24], 0
je .Lt_0169
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call RTLCALCSTRLEN
add esp, 16
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
jmp .Lt_0168
.Lt_0169:
sub esp, 12
push dword ptr [ebp+16]
call RTLCALCEXPRLEN
add esp, 16
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
.Lt_0168:
cmp dword ptr [ebp+20], 0
jne .Lt_016B
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_016A
.Lt_016B:
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp+20]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
.Lt_016A:
cmp dword ptr [ebp-16], 20
jne .Lt_016D
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+116]
and eax, 4
test eax, eax
je .Lt_016F
push 10
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ERRREPORTPARAMWARN
add esp, 16
.Lt_016F:
.Lt_016E:
jmp .Lt_016C
.Lt_016D:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
and edx, 511
and edx, 480
test edx, edx
je .Lt_0170
push 29
push 0
push 3
mov edx, dword ptr [ebp-8]
push dword ptr [edx+12]
call ERRREPORTPARAMWARN
add esp, 16
.Lt_0170:
.Lt_016C:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0172
jmp .Lt_0149
.Lt_0172:
.Lt_0171:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0174
jmp .Lt_0149
.Lt_0174:
.Lt_0173:
cmp dword ptr [ebp+24], 0
je .Lt_0176
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0178
jmp .Lt_0149
.Lt_0178:
.Lt_0177:
.Lt_0176:
.Lt_0175:
cmp dword ptr [ebp+28], 0
jne .Lt_017A
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_017A:
.Lt_0179:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0149:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLFILEGET, .-RTLFILEGET
.balign 16

.globl RTLFILEGETARRAY
RTLFILEGETARRAY:
.type RTLFILEGETARRAY, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_017E:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0181
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_0181:
.Lt_0180:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0182
mov dword ptr [ebp-24], 24
jmp .Lt_019B
.Lt_0182:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_019B:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+20], 0
je .Lt_0185
cmp dword ptr [ebp-20], 0
je .Lt_0187
sub esp, 8
push 258
push offset Lt_0089
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0186
.Lt_0187:
sub esp, 8
push 257
push offset Lt_0088
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0186:
jmp .Lt_0184
.Lt_0185:
cmp dword ptr [ebp-20], 0
je .Lt_0189
sub esp, 8
push 250
push offset Lt_0081
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0188
.Lt_0189:
sub esp, 8
push 249
push offset Lt_0080
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0188:
.Lt_0184:
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
jne .Lt_018B
jmp .Lt_017F
.Lt_018B:
.Lt_018A:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_018D
jmp .Lt_017F
.Lt_018D:
.Lt_018C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .Lt_018F
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+116]
and ebx, 4
test ebx, ebx
je .Lt_0191
push 10
push 0
push 3
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+12]
call ERRREPORTPARAMWARN
add esp, 16
.Lt_0191:
.Lt_0190:
jmp .Lt_018E
.Lt_018F:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .Lt_0192
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ERRREPORTPARAMWARN
add esp, 16
.Lt_0192:
.Lt_018E:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0194
jmp .Lt_017F
.Lt_0194:
.Lt_0193:
cmp dword ptr [ebp+20], 0
je .Lt_0196
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0198
jmp .Lt_017F
.Lt_0198:
.Lt_0197:
.Lt_0196:
.Lt_0195:
cmp dword ptr [ebp+24], 0
jne .Lt_019A
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_019A:
.Lt_0199:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_017F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLFILEGETARRAY, .-RTLFILEGETARRAY
.balign 16

.globl RTLFILESTRINPUT
RTLFILESTRINPUT:
.type RTLFILESTRINPUT, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_019D:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
cmp dword ptr [ebp+16], 477
jne .Lt_019F
sub esp, 12
push 263
push offset Lt_00A7
call RTLPROCLOOKUP
add esp, 20
mov dword ptr [ebp-12], eax
jmp .Lt_01A5
.Lt_019F:
sub esp, 12
push 262
push offset Lt_008D
call RTLPROCLOOKUP
add esp, 20
mov dword ptr [ebp-12], eax
.Lt_01A5:
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
jmp .Lt_019E
.Lt_01A2:
.Lt_01A1:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01A4
jmp .Lt_019E
.Lt_01A4:
.Lt_01A3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_019E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLFILESTRINPUT, .-RTLFILESTRINPUT
.balign 16

.globl RTLFILELINEINPUT
RTLFILELINEINPUT:
.type RTLFILELINEINPUT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A6:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_01A9
sub esp, 8
push 264
push offset Lt_008E
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 4
jmp .Lt_01A8
.Lt_01A9:
sub esp, 8
push 266
push offset Lt_0090
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 6
.Lt_01A8:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
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
je .Lt_01AB
sub esp, 12
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
add esp, 32
mov dword ptr [ebp+12], eax
.Lt_01AB:
.Lt_01AA:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01AD
jmp .Lt_01A7
.Lt_01AD:
.Lt_01AC:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
sub esp, 8
push dword ptr [ebp-20]
push dword ptr [ebp+16]
call RTLCALCSTRLEN
add esp, 16
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01AF
jmp .Lt_01A7
.Lt_01AF:
.Lt_01AE:
push -1
push -2147483648
sub esp, 8
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01B1
jmp .Lt_01A7
.Lt_01B1:
.Lt_01B0:
push -1
push -2147483648
sub esp, 8
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
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01B3
jmp .Lt_01A7
.Lt_01B3:
.Lt_01B2:
cmp dword ptr [ebp-16], 6
jne .Lt_01B5
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+20]
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
jne .Lt_01B7
jmp .Lt_01A7
.Lt_01B7:
.Lt_01B6:
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
jne .Lt_01B9
jmp .Lt_01A7
.Lt_01B9:
.Lt_01B8:
.Lt_01B5:
.Lt_01B4:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_01A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLFILELINEINPUT, .-RTLFILELINEINPUT
.balign 16

.globl RTLFILELINEINPUTWSTR
RTLFILELINEINPUTWSTR:
.type RTLFILELINEINPUTWSTR, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BD:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_01C0
sub esp, 8
push 265
push offset Lt_008F
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .Lt_01BF
.Lt_01C0:
sub esp, 8
push 267
push offset Lt_0091
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 5
.Lt_01BF:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
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
je .Lt_01C2
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push offset Lt_01C3
call SYMBALLOCWSTRCONST
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp+12], eax
.Lt_01C2:
.Lt_01C1:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01C5
jmp .Lt_01BE
.Lt_01C5:
.Lt_01C4:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
sub esp, 8
push dword ptr [ebp-20]
push dword ptr [ebp+16]
call RTLCALCSTRLEN
add esp, 16
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01C7
jmp .Lt_01BE
.Lt_01C7:
.Lt_01C6:
push -1
push -2147483648
sub esp, 8
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01C9
jmp .Lt_01BE
.Lt_01C9:
.Lt_01C8:
cmp dword ptr [ebp-16], 5
jne .Lt_01CB
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov edx, dword ptr [ebp+20]
mov eax, edx
sar eax, 31
push eax
push edx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01CD
jmp .Lt_01BE
.Lt_01CD:
.Lt_01CC:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov edx, dword ptr [ebp+24]
mov eax, edx
sar eax, 31
push eax
push edx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01CF
jmp .Lt_01BE
.Lt_01CF:
.Lt_01CE:
.Lt_01CB:
.Lt_01CA:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_01BE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLFILELINEINPUTWSTR, .-RTLFILELINEINPUTWSTR
.balign 16

.globl RTLFILEINPUT
RTLFILEINPUT:
.type RTLFILEINPUT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D2:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_01D5
sub esp, 8
push 268
push offset Lt_0092
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 1
jmp .Lt_01D4
.Lt_01D5:
sub esp, 8
push 269
push offset Lt_0093
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
.Lt_01D4:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
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
je .Lt_01D7
sub esp, 12
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
add esp, 32
mov dword ptr [ebp+12], eax
.Lt_01D7:
.Lt_01D6:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_01D9
jmp .Lt_01D3
.Lt_01D9:
.Lt_01D8:
cmp dword ptr [ebp-16], 3
jne .Lt_01DB
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+16]
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
jne .Lt_01DD
jmp .Lt_01D3
.Lt_01DD:
.Lt_01DC:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+20]
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
jne .Lt_01DF
jmp .Lt_01D3
.Lt_01DF:
.Lt_01DE:
.Lt_01DB:
.Lt_01DA:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_01D3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLFILEINPUT, .-RTLFILEINPUT
.balign 16

.globl RTLFILEINPUTGET
RTLFILEINPUTGET:
.type RTLFILEINPUTGET, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E2:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_01E4
mov dword ptr [ebp-32], 24
jmp .Lt_020B
.Lt_01E4:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_020B:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
jmp .Lt_01E7
.Lt_01E9:
sub esp, 8
push 281
push offset Lt_009F
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .Lt_01E6
.Lt_01EA:
sub esp, 8
push 282
push offset Lt_00A0
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 2
jmp .Lt_01E6
.Lt_01EB:
sub esp, 8
push 270
push offset Lt_0094
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01E6
.Lt_01EC:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01ED
mov dword ptr [ebp-40], 24
jmp .Lt_020C
.Lt_01ED:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_020C:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-44], ebx
jmp .Lt_01F0
.Lt_01F2:
sub esp, 8
push 271
push offset Lt_0095
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01EF
.Lt_01F3:
sub esp, 8
push 272
push offset Lt_0096
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01EF
.Lt_01F4:
sub esp, 8
push 273
push offset Lt_0097
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01EF
.Lt_01F5:
sub esp, 8
push 274
push offset Lt_0098
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01EF
.Lt_01F6:
sub esp, 8
push 275
push offset Lt_0099
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01EF
.Lt_01F7:
sub esp, 8
push 276
push offset Lt_009A
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01EF
.Lt_01F8:
sub esp, 8
push 277
push offset Lt_009B
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01EF
.Lt_01F9:
sub esp, 8
push 278
push offset Lt_009C
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01EF
.Lt_01F0:
mov eax, dword ptr [ebp-44]
add eax, 4294967295
cmp eax, 7
ja .Lt_01EF
mov eax, dword ptr [ebp-44]
jmp dword ptr [.LT_01FA+eax*4-4]
.LT_01FA:
.int .Lt_01F2
.int .Lt_01F3
.int .Lt_01F4
.int .Lt_01F5
.int .Lt_01F6
.int .Lt_01F7
.int .Lt_01F8
.int .Lt_01F9
.Lt_01EF:
jmp .Lt_01E6
.Lt_01FB:
sub esp, 8
push 279
push offset Lt_009D
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01E6
.Lt_01FC:
sub esp, 8
push 280
push offset Lt_009E
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01E6
.Lt_01FD:
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .Lt_01E3
jmp .Lt_01E6
.Lt_01E7:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 23
ja .Lt_01FD
mov eax, dword ptr [ebp-36]
jmp dword ptr [.LT_01FE+eax*4-4]
.LT_01FE:
.int .Lt_01EB
.int .Lt_01EC
.int .Lt_01EC
.int .Lt_01E9
.int .Lt_01EC
.int .Lt_01EC
.int .Lt_01EA
.int .Lt_01EC
.int .Lt_01EC
.int .Lt_01EC
.int .Lt_01EC
.int .Lt_01EC
.int .Lt_01EC
.int .Lt_01EC
.int .Lt_01FB
.int .Lt_01FC
.int .Lt_01E9
.int .Lt_01E9
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01EC
.Lt_01E6:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 1
jle .Lt_0200
sub esp, 8
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call RTLCALCSTRLEN
add esp, 16
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
.Lt_0200:
.Lt_01FF:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0202
jmp .Lt_01E3
.Lt_0202:
.Lt_0201:
cmp dword ptr [ebp-16], 1
jle .Lt_0204
push -1
push -2147483648
sub esp, 8
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0206
jmp .Lt_01E3
.Lt_0206:
.Lt_0205:
cmp dword ptr [ebp-16], 2
jle .Lt_0208
push -1
push -2147483648
sub esp, 8
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
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_020A
jmp .Lt_01E3
.Lt_020A:
.Lt_0209:
.Lt_0208:
.Lt_0207:
.Lt_0204:
.Lt_0203:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_01E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLFILEINPUTGET, .-RTLFILEINPUTGET
.balign 16

.globl RTLFILELOCK
RTLFILELOCK:
.type RTLFILELOCK, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_020E:
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
je .Lt_0210
mov dword ptr [ebp-28], 24
jmp .Lt_0220
.Lt_0210:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0220:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ebx, 8
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_0212
mov dword ptr [ebp-32], 24
jmp .Lt_0221
.Lt_0212:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_0221:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-36]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .Lt_0215
cmp dword ptr [ebp-16], 0
je .Lt_0217
sub esp, 8
push 284
push offset Lt_00A2
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0216
.Lt_0217:
sub esp, 8
push 283
push offset Lt_00A1
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0216:
jmp .Lt_0214
.Lt_0215:
cmp dword ptr [ebp-16], 0
je .Lt_0219
sub esp, 8
push 286
push offset Lt_00A4
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0218
.Lt_0219:
sub esp, 8
push 285
push offset Lt_00A3
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0218:
.Lt_0214:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_021B
jmp .Lt_020F
.Lt_021B:
.Lt_021A:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_021D
jmp .Lt_020F
.Lt_021D:
.Lt_021C:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_021F
jmp .Lt_020F
.Lt_021F:
.Lt_021E:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_020F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLFILELOCK, .-RTLFILELOCK
.balign 16

.globl RTLFILERENAME
RTLFILERENAME:
.type RTLFILERENAME, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0225:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 287
push offset Lt_00A5
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0228
jmp .Lt_0226
.Lt_0228:
.Lt_0227:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_022A
jmp .Lt_0226
.Lt_022A:
.Lt_0229:
cmp dword ptr [ebp+16], 0
jne .Lt_022C
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_022C:
.Lt_022B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0226:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLFILERENAME, .-RTLFILERENAME
.balign 16

.globl RTLWIDTHFILE
RTLWIDTHFILE:
.type RTLWIDTHFILE, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_022D:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
sub esp, 12
push 290
push offset Lt_022F
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
jne .Lt_0231
jmp .Lt_022E
.Lt_0231:
.Lt_0230:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0233
jmp .Lt_022E
.Lt_0233:
.Lt_0232:
cmp dword ptr [ebp+16], 0
jne .Lt_0235
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_0235:
.Lt_0234:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_022E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLWIDTHFILE, .-RTLWIDTHFILE
.balign 16
fb_ctor__rtlzfile:
.type fb_ctor__rtlzfile, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__rtlzfile, .-fb_ctor__rtlzfile
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
.int Lt_0068
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
.int Lt_0069
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
.int Lt_006A
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
.int Lt_006B
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
.int Lt_006C
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
.int Lt_006D
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
.int Lt_006E
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
.int Lt_006F
.long 0
.int 11
.int -1
.int RTLPRINTER_CB
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
.int Lt_0070
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
.int Lt_0071
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
.int Lt_0072
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
.int Lt_0073
.long 0
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_0074
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
.int Lt_0075
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
.int Lt_0076
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
.int Lt_0077
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
.int Lt_0078
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
.int Lt_0079
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
.int Lt_007A
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
.int Lt_007B
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
.int Lt_007C
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
.int Lt_007D
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
.int Lt_007E
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
.int Lt_007F
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
.int Lt_0080
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
.int Lt_0081
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
.int Lt_0082
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
.int Lt_0083
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
.int Lt_0084
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
.int Lt_0085
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
.int Lt_0086
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
.int Lt_0087
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
.int Lt_0088
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
.int Lt_0089
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
.int Lt_008A
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
.int Lt_008B
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
.int Lt_008C
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
.int Lt_008D
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
.int Lt_008E
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
.int Lt_008F
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
.int Lt_0090
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
.int Lt_0091
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
.int Lt_0092
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
.int Lt_0093
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
.int Lt_0094
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
.int Lt_0095
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
.int Lt_0096
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
.int Lt_0097
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
.int Lt_0098
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
.int Lt_0099
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
.int Lt_009A
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
.int Lt_009B
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
.int Lt_009C
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
.int Lt_009D
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
.int Lt_009E
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
.int Lt_009F
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
.int Lt_00A0
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
.int Lt_00A1
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
.int Lt_00A2
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
.int Lt_00A3
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
.int Lt_00A4
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
.int Lt_00A5
.int Lt_00A6
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
.int Lt_00A7
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
.int Lt_00A8
.int Lt_00A9
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_00AA
.int Lt_00AB
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
.int Lt_00AC
.int Lt_00AD
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
.int Lt_00AE
.int Lt_00AF
.int 0
.int -1
.long 0
.int 1
.int 0
.skip 320,0
.int Lt_00AE
.int Lt_00B0
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
.int Lt_00B1
.int Lt_00B2
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
.int Lt_00B3
.int Lt_00B4
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
.int Lt_00B5
.int Lt_00B6
.int 11
.int -1
.int RTLPRINTER_CB
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.long 0
.skip 344,0

.section .rodata
.balign 4
Lt_0068:	.ascii	"fb_FileOpen\0"
.balign 4
Lt_0069:	.ascii	"fb_FileOpenEncod\0"
.balign 4
Lt_006A:	.ascii	"fb_FileOpenShort\0"
.balign 4
Lt_006B:	.ascii	"fb_FileOpenCons\0"
.balign 4
Lt_006C:	.ascii	"fb_FileOpenErr\0"
.balign 4
Lt_006D:	.ascii	"fb_FileOpenPipe\0"
.balign 4
Lt_006E:	.ascii	"fb_FileOpenScrn\0"
.balign 4
Lt_006F:	.ascii	"fb_FileOpenLpt\0"
.balign 4
Lt_0070:	.ascii	"fb_FileOpenCom\0"
.balign 4
Lt_0071:	.ascii	"fb_FileOpenQB\0"
.balign 4
Lt_0072:	.ascii	"fb_FileClose\0"
.balign 4
Lt_0073:	.ascii	"fb_FileCloseAll\0"
.balign 4
Lt_0074:	.ascii	"fb_FilePut\0"
.balign 4
Lt_0075:	.ascii	"fb_FilePutLarge\0"
.balign 4
Lt_0076:	.ascii	"fb_FilePutStr\0"
.balign 4
Lt_0077:	.ascii	"fb_FilePutStrLarge\0"
.balign 4
Lt_0078:	.ascii	"fb_FilePutArray\0"
.balign 4
Lt_0079:	.ascii	"fb_FilePutArrayLarge\0"
.balign 4
Lt_007A:	.ascii	"fb_FileGet\0"
.balign 4
Lt_007B:	.ascii	"fb_FileGetLarge\0"
.balign 4
Lt_007C:	.ascii	"fb_FileGetStr\0"
.balign 4
Lt_007D:	.ascii	"fb_FileGetWstr\0"
.balign 4
Lt_007E:	.ascii	"fb_FileGetStrLarge\0"
.balign 4
Lt_007F:	.ascii	"fb_FileGetWstrLarge\0"
.balign 4
Lt_0080:	.ascii	"fb_FileGetArray\0"
.balign 4
Lt_0081:	.ascii	"fb_FileGetArrayLarge\0"
.balign 4
Lt_0082:	.ascii	"fb_FileGetIOB\0"
.balign 4
Lt_0083:	.ascii	"fb_FileGetLargeIOB\0"
.balign 4
Lt_0084:	.ascii	"fb_FileGetStrIOB\0"
.balign 4
Lt_0085:	.ascii	"fb_FileGetWstrIOB\0"
.balign 4
Lt_0086:	.ascii	"fb_FileGetStrLargeIOB\0"
.balign 4
Lt_0087:	.ascii	"fb_FileGetWstrLargeIOB\0"
.balign 4
Lt_0088:	.ascii	"fb_FileGetArrayIOB\0"
.balign 4
Lt_0089:	.ascii	"fb_FileGetArrayLargeIOB\0"
.balign 4
Lt_008A:	.ascii	"fb_FileTell\0"
.balign 4
Lt_008B:	.ascii	"fb_FileSeek\0"
.balign 4
Lt_008C:	.ascii	"fb_FileSeekLarge\0"
.balign 4
Lt_008D:	.ascii	"fb_FileStrInput\0"
.balign 4
Lt_008E:	.ascii	"fb_FileLineInput\0"
.balign 4
Lt_008F:	.ascii	"fb_FileLineInputWstr\0"
.balign 4
Lt_0090:	.ascii	"fb_LineInput\0"
.balign 4
Lt_0091:	.ascii	"fb_LineInputWstr\0"
.balign 4
Lt_0092:	.ascii	"fb_FileInput\0"
.balign 4
Lt_0093:	.ascii	"fb_ConsoleInput\0"
.balign 4
Lt_0094:	.ascii	"fb_InputBool\0"
.balign 4
Lt_0095:	.ascii	"fb_InputByte\0"
.balign 4
Lt_0096:	.ascii	"fb_InputUbyte\0"
.balign 4
Lt_0097:	.ascii	"fb_InputShort\0"
.balign 4
Lt_0098:	.ascii	"fb_InputUshort\0"
.balign 4
Lt_0099:	.ascii	"fb_InputInt\0"
.balign 4
Lt_009A:	.ascii	"fb_InputUint\0"
.balign 4
Lt_009B:	.ascii	"fb_InputLongint\0"
.balign 4
Lt_009C:	.ascii	"fb_InputUlongint\0"
.balign 4
Lt_009D:	.ascii	"fb_InputSingle\0"
.balign 4
Lt_009E:	.ascii	"fb_InputDouble\0"
.balign 4
Lt_009F:	.ascii	"fb_InputString\0"
.balign 4
Lt_00A0:	.ascii	"fb_InputWstr\0"
.balign 4
Lt_00A1:	.ascii	"fb_FileLock\0"
.balign 4
Lt_00A2:	.ascii	"fb_FileLockLarge\0"
.balign 4
Lt_00A3:	.ascii	"fb_FileUnlock\0"
.balign 4
Lt_00A4:	.ascii	"fb_FileUnlockLarge\0"
.balign 4
Lt_00A5:	.ascii	"fb_rename\0"
.balign 4
Lt_00A6:	.ascii	"rename\0"
.balign 4
Lt_00A7:	.ascii	"fb_FileWstrInput\0"
.balign 4
Lt_00A8:	.ascii	"freefile\0"
.balign 4
Lt_00A9:	.ascii	"fb_FileFree\0"
.balign 4
Lt_00AA:	.ascii	"eof\0"
.balign 4
Lt_00AB:	.ascii	"fb_FileEof\0"
.balign 4
Lt_00AC:	.ascii	"kill\0"
.balign 4
Lt_00AD:	.ascii	"fb_FileKill\0"
.balign 4
Lt_00AE:	.ascii	"reset\0"
.balign 4
Lt_00AF:	.ascii	"fb_FileReset\0"
.balign 4
Lt_00B0:	.ascii	"fb_FileResetEx\0"
.balign 4
Lt_00B1:	.ascii	"lof\0"
.balign 4
Lt_00B2:	.ascii	"fb_FileSize\0"
.balign 4
Lt_00B3:	.ascii	"loc\0"
.balign 4
Lt_00B4:	.ascii	"fb_FileLocation\0"
.balign 4
Lt_00B5:	.ascii	"lpos\0"
.balign 4
Lt_00B6:	.ascii	"fb_LPos\0"
.balign 4
Lt_00D4:	.ascii	"gdi32\0"
.balign 4
Lt_00D5:	.ascii	"winspool\0"
.balign 4
Lt_01C3:	.ascii	"\0\0\0\0"
.balign 4
Lt_022F:	.ascii	"fb_WidthFile\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzfile
