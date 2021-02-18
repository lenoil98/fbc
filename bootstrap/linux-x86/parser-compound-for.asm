	.intel_syntax noprefix

.section .text
.balign 16

.globl CFORSTMTBEGIN
CFORSTMTBEGIN:
.type CFORSTMTBEGIN, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_00F9:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 38
lea eax, [ebp-16]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-12], eax
call ASTSCOPEBEGIN
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00FC
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
.Lt_00FC:
.Lt_00FB:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 376
jne .Lt_00FE
push -1
sub esp, 8
push 0
call LEXGETTOKEN
add esp, 12
push eax
push 0
push 0
call CVARDECL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0100
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 8
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-24], eax
jmp .Lt_00FF
.Lt_0100:
or dword ptr [ebp-4], 4
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-24], eax
.Lt_00FF:
jmp .Lt_00FD
.Lt_00FE:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 40
jne .Lt_0101
sub esp, 4
push 0
push -1
push 52
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 8
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-24], eax
jmp .Lt_00FD
.Lt_0101:
sub esp, 8
push -1
push dword ptr [ebp-12]
call CVARIABLE
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0103
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 8
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-24], eax
.Lt_0103:
.Lt_0102:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax], 17
je .Lt_0105
sub esp, 4
push 0
push -1
push 52
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call ASTDELTREE
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 8
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-24], eax
.Lt_0105:
.Lt_0104:
.Lt_00FD:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_0107
sub esp, 4
push 0
push 0
push 119
call ERRREPORT
add esp, 16
.Lt_0107:
.Lt_0106:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-64], ebx
jmp .Lt_0109
.Lt_010B:
sub esp, 4
push 0
push -1
push 20
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call ASTDELTREE
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 8
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
jmp .Lt_0108
.Lt_010C:
jmp .Lt_0108
.Lt_010D:
jmp .Lt_0108
.Lt_010E:
jmp .Lt_0108
.Lt_010F:
jmp .Lt_0108
.Lt_0110:
jmp .Lt_0108
.Lt_0111:
jmp .Lt_0108
.Lt_0112:
jmp .Lt_0108
.Lt_0113:
jmp .Lt_0108
.Lt_0114:
or dword ptr [ebp-4], 1
sub esp, 12
mov ebx, dword ptr [ebp-24]
push dword ptr [ebx+12]
call SYMBHASCTOR
add esp, 16
test eax, eax
je .Lt_0116
or dword ptr [ebp-4], 2
.Lt_0116:
.Lt_0115:
jmp .Lt_0108
.Lt_0117:
mov eax, dword ptr [ebp-32]
and eax, 480
test eax, eax
jne .Lt_0119
sub esp, 4
push 0
push -1
push 52
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call ASTDELTREE
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 8
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
.Lt_0119:
.Lt_0118:
jmp .Lt_0108
.Lt_0109:
mov ebx, dword ptr [ebp-64]
add ebx, 4294967295
cmp ebx, 19
ja .Lt_0117
mov ebx, dword ptr [ebp-64]
jmp dword ptr [.LT_011A+ebx*4-4]
.LT_011A:
.int .Lt_010B
.int .Lt_010C
.int .Lt_010C
.int .Lt_010E
.int .Lt_010D
.int .Lt_010D
.int .Lt_010E
.int .Lt_010F
.int .Lt_010F
.int .Lt_0110
.int .Lt_0111
.int .Lt_0111
.int .Lt_0112
.int .Lt_0112
.int .Lt_0113
.int .Lt_0113
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_0114
.Lt_0108:
sub esp, 8
push 1
push 281
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-40]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+16], ecx
mov ecx, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-32]
mov dword ptr [ecx+28], ebx
mov dword ptr [ebp-44], 0
sub esp, 8
push dword ptr [ebp-24]
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call HFORASSIGN
add esp, 32
sub esp, 12
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call HFORTO
add esp, 32
sub esp, 12
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call HFORSTEP
add esp, 32
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-60], eax
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-56]
mov dword ptr [eax+92], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 1
test ebx, ebx
je .Lt_011C
sub esp, 12
push dword ptr [ebp-40]
call HUDTFOR
add esp, 16
.Lt_011C:
.Lt_011B:
cmp dword ptr [ebp-44], 3
jne .Lt_011E
sub esp, 12
push 1
push 0
push 0
mov ebx, dword ptr [ebp-40]
push dword ptr [ebx+44]
mov ebx, dword ptr [ebp-40]
lea eax, [ebx+36]
push eax
call ASTNEWCONST
add esp, 12
push eax
sub esp, 12
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [eax+28]
mov eax, dword ptr [ebp-40]
lea ebx, [eax+20]
push ebx
call ASTNEWCONST
add esp, 24
push eax
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+72], 0
jne .Lt_0124
cmp dword ptr [eax+68], 0
je .Lt_011F
.Lt_0124:
mov dword ptr [ebp-64], 50
jmp .Lt_0123
.Lt_011F:
mov dword ptr [ebp-64], 49
.Lt_0123:
push dword ptr [ebp-64]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-28], eax
sub esp, 8
push 8
push dword ptr [ebp-28]
call ASTCONSTFLUSHTOINT
add esp, 16
cmp edx, 0
jne .Lt_0122
cmp eax, 0
jne .Lt_0122
.Lt_0125:
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-56]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0122:
.Lt_0121:
jmp .Lt_011D
.Lt_011E:
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-52]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_011D:
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-48], eax
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-48]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
call ASTSCOPEBEGIN
mov edx, dword ptr [ebp-40]
mov dword ptr [edx+8], eax
mov eax, dword ptr [ebp-40]
mov edx, dword ptr [ebp-20]
mov dword ptr [eax+12], edx
mov edx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-52]
mov dword ptr [edx+80], eax
mov eax, dword ptr [ebp-40]
mov edx, dword ptr [ebp-48]
mov dword ptr [eax+84], edx
mov edx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-60]
mov dword ptr [edx+88], eax
.Lt_00FA:
pop ebx
mov esp, ebp
pop ebp
ret
.size CFORSTMTBEGIN, .-CFORSTMTBEGIN
.balign 16

.globl CFORSTMTEND
CFORSTMTEND:
.type CFORSTMTEND, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0152:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.Lt_0154:
sub esp, 8
push -1
push 281
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0158
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0153
.Lt_0158:
.Lt_0157:
sub esp, 12
push dword ptr [ebp-4]
call HFORSTMTCLOSE
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
test eax, eax
je .Lt_015A
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
jmp .Lt_0155
.Lt_015A:
.Lt_0159:
sub esp, 8
push 38
lea eax, [ebp-12]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push -1
push dword ptr [ebp-8]
call CVARIABLE
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_015C
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_015B
.Lt_015C:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+16]
cmp dword ptr [eax+12], ecx
je .Lt_015E
sub esp, 4
push 0
push 0
push 283
call ERRREPORT
add esp, 16
.Lt_015E:
.Lt_015D:
mov ecx, dword ptr [ENV+196]
and ecx, 8
test ecx, ecx
je .Lt_0160
push 0
push 1
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+12]
push dword ptr [eax+16]
push 26
call ERRREPORTWARN
add esp, 16
.Lt_0160:
.Lt_015F:
sub esp, 12
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 16
.Lt_015B:
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0162
jmp .Lt_0155
.Lt_0162:
.Lt_0161:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0156:
jmp .Lt_0154
.Lt_0155:
.Lt_0153:
pop ebx
mov esp, ebp
pop ebp
ret
.size CFORSTMTEND, .-CFORSTMTEND
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
HELMTOEXPR:
.type HELMTOEXPR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_006A
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_0069
.Lt_006A:
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
call ASTNEWCONST
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0069:
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HELMTOEXPR, .-HELMTOEXPR
.balign 16
HUDTFOR:
.type HUDTFOR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_006B:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .Lt_006E
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
call HELMTOEXPR
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_006E:
.Lt_006D:
sub esp, 12
push 0
push dword ptr [ebp-8]
sub esp, 8
mov eax, dword ptr [ebp+8]
lea ebx, [eax+16]
push ebx
call HELMTOEXPR
add esp, 12
push eax
push 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
push dword ptr [ebx+32]
call HUDTCALLOPOVL
add esp, 32
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_0070
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.Lt_0070:
.Lt_006F:
.Lt_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.size HUDTFOR, .-HUDTFOR
.balign 16
HUDTSTEP:
.type HUDTSTEP, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0071:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .Lt_0074
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
call HELMTOEXPR
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0074:
.Lt_0073:
sub esp, 12
push 0
push dword ptr [ebp-8]
sub esp, 8
mov eax, dword ptr [ebp+8]
lea ebx, [eax+16]
push ebx
call HELMTOEXPR
add esp, 12
push eax
push 25
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
push dword ptr [ebx+32]
call HUDTCALLOPOVL
add esp, 32
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_0076
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.Lt_0076:
.Lt_0075:
.Lt_0072:
pop ebx
mov esp, ebp
pop ebp
ret
.size HUDTSTEP, .-HUDTSTEP
.balign 16
HUDTNEXT:
.type HUDTNEXT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0077:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .Lt_007A
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
call HELMTOEXPR
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_007A:
.Lt_0079:
sub esp, 12
push dword ptr [ebp-8]
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
call HELMTOEXPR
add esp, 16
push eax
sub esp, 8
mov eax, dword ptr [ebp+8]
lea ebx, [eax+16]
push ebx
call HELMTOEXPR
add esp, 12
push eax
push 26
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
push dword ptr [ebx+32]
call HUDTCALLOPOVL
add esp, 32
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_007C
sub esp, 12
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-4]
push 48
call ASTNEWBOP
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_007C:
.Lt_007B:
.Lt_0078:
pop ebx
mov esp, ebp
pop ebp
ret
.size HUDTNEXT, .-HUDTNEXT
.balign 16
HSCALARSTEP:
.type HSCALARSTEP, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_007D:
sub esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+16]
push eax
push 1
call HFLUSHSELFBOP
add esp, 16
.Lt_007E:
pop ebx
mov esp, ebp
pop ebp
ret
.size HSCALARSTEP, .-HSCALARSTEP
.balign 16
HSCALARNEXT:
.type HSCALARNEXT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_007F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jne .Lt_0082
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+16]
push eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+72], 0
jne .Lt_0164
cmp dword ptr [eax+68], 0
je .Lt_0083
.Lt_0164:
mov dword ptr [ebp-4], 50
jmp .Lt_0163
.Lt_0083:
mov dword ptr [ebp-4], 49
.Lt_0163:
push dword ptr [ebp-4]
call HFLUSHBOP
add esp, 16
jmp .Lt_0081
.Lt_0082:
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
push dword ptr [ebp-4]
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax+64]
push ebx
call HELMTOEXPR
add esp, 8
push eax
push 48
call ASTNEWBOP
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+16]
push eax
push 49
call HFLUSHBOP
add esp, 16
sub esp, 12
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp-4]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+16]
push eax
push 50
call HFLUSHBOP
add esp, 16
.Lt_0081:
.Lt_0080:
pop ebx
mov esp, ebp
pop ebp
ret
.size HSCALARNEXT, .-HSCALARNEXT
.balign 16
HADDIMPLICITVAR:
.type HADDIMPLICITVAR, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0085:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
jne .Lt_0088
or dword ptr [ebp-12], 2
.Lt_0088:
.Lt_0087:
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDIMPLICITVAR
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
and eax, 2
je .Lt_008A
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 20
push eax
call ASTADDUNSCOPED
add esp, 16
jmp .Lt_0089
.Lt_008A:
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0089:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0086:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HADDIMPLICITVAR, .-HADDIMPLICITVAR
.balign 16
HSTORETEMP:
.type HSTORETEMP, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_008B:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
jne .Lt_008E
or dword ptr [ebp-8], 2
.Lt_008E:
.Lt_008D:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDIMPLICITVAR
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
and eax, 2
je .Lt_0090
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-12]
call ASTNEWDECL
add esp, 20
push eax
call ASTADDUNSCOPED
add esp, 16
jmp .Lt_008F
.Lt_0090:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWDECL
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_008F:
sub esp, 4
push 0
push dword ptr [ebp+16]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0092
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0093
mov dword ptr [ebp-20], 24
jmp .Lt_0165
.Lt_0093:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0165:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
jmp .Lt_0096
.Lt_0098:
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .Lt_0095
.Lt_0099:
sub esp, 4
push dword ptr [AST_OPTB+8]
push -1
push 198
call ERRREPORT
add esp, 16
jmp .Lt_0095
.Lt_0096:
mov eax, dword ptr [ebp-24]
add eax, 4294967276
test eax, eax
ja .Lt_0099
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_009A+eax*4-80]
.LT_009A:
.int .Lt_0098
.Lt_0095:
.Lt_0092:
.Lt_0091:
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_008C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HSTORETEMP, .-HSTORETEMP
.balign 16
HFLUSHBOP:
.type HFLUSHBOP, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_009B:
sub esp, 12
push dword ptr [ebp+12]
call HELMTOEXPR
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp+16]
call HELMTOEXPR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_009E
sub esp, 4
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
push -1
push 198
call ERRREPORT
add esp, 16
jmp .Lt_009C
.Lt_009E:
.Lt_009D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+12], 20
jne .Lt_00A0
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp-12]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00A2
sub esp, 4
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
push -1
push 198
call ERRREPORT
add esp, 16
jmp .Lt_009C
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
.Lt_009F:
sub esp, 12
push dword ptr [ebp-12]
call ASTADD
add esp, 16
.Lt_009C:
mov esp, ebp
pop ebp
ret
.size HFLUSHBOP, .-HFLUSHBOP
.balign 16
HSTEPEXPRESSION:
.type HSTEPEXPRESSION, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A3:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .Lt_00A6
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCALCDEREFLEN
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], edx
cmp dword ptr [ebp-8], 0
jg .Lt_00A8
jl .Lt_0166
cmp dword ptr [ebp-12], 0
ja .Lt_00A8
.Lt_0166:
sub esp, 4
push 0
push 0
push 71
call ERRREPORT
add esp, 16
mov dword ptr [ebp-12], 1
mov dword ptr [ebp-8], 0
.Lt_00A8:
.Lt_00A7:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .Lt_00AA
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push 8
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call ASTNEWVAR
add esp, 24
push eax
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_00A9
.Lt_00AA:
push 0
push 8
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-12]
mov edx, dword ptr [ebp-8]
push dword ptr [eax+8]
push dword ptr [eax+4]
push edx
push ebx
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop ebx
pop edx
add esp, 8
push edx
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00A9:
jmp .Lt_00A5
.Lt_00A6:
sub esp, 12
push dword ptr [ebp+16]
call HELMTOEXPR
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00A5:
.Lt_00A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HSTEPEXPRESSION, .-HSTEPEXPRESSION
.balign 16
HFLUSHSELFBOP:
.type HFLUSHSELFBOP, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00AB:
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
call HSTEPEXPRESSION
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call ASTNEWSELFBOP
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00AE
sub esp, 4
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
push -1
push 198
call ERRREPORT
add esp, 16
jmp .Lt_00AC
.Lt_00AE:
.Lt_00AD:
sub esp, 12
push dword ptr [ebp-12]
call ASTADD
add esp, 16
.Lt_00AC:
pop ebx
mov esp, ebp
pop ebp
ret
.size HFLUSHSELFBOP, .-HFLUSHSELFBOP
.balign 16
HCALLCTOR:
.type HCALLCTOR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00AF:
push 0
push -2147483648
push 1
push dword ptr [ebp+8]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00B2
jmp .Lt_00B0
.Lt_00B2:
.Lt_00B1:
push 64
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00B4
jmp .Lt_00B0
.Lt_00B4:
.Lt_00B3:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HCALLCTOR, .-HCALLCTOR
.balign 16
HFORASSIGN:
.type HFORASSIGN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00B5:
call CASSIGNTOKEN
test eax, eax
jne .Lt_00B8
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
.Lt_00B8:
.Lt_00B7:
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
and ebx, 4
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00BA
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00BC
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00BC:
.Lt_00BB:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00BE
sub esp, 12
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00C0
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00C0:
.Lt_00BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+20]
mov dword ptr [eax+20], ecx
mov ecx, dword ptr [ebx+24]
mov dword ptr [eax+24], ecx
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
.Lt_00BE:
.Lt_00BD:
sub esp, 4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+28]
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00C2
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
je .Lt_00C4
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .Lt_00C3
.Lt_00C4:
sub esp, 4
push offset Lt_00C5
push -1
push 198
call ERRREPORT
add esp, 16
.Lt_00C3:
jmp .Lt_00C1
.Lt_00C2:
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.Lt_00C1:
jmp .Lt_00B9
.Lt_00BA:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HCALLCTOR
add esp, 16
test eax, eax
jne .Lt_00C7
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
.Lt_00C7:
.Lt_00C6:
.Lt_00B9:
.Lt_00B6:
pop ebx
mov esp, ebp
pop ebp
ret
.size HFORASSIGN, .-HFORASSIGN
.balign 16
HFORTO:
.type HFORTO, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00C8:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 284
je .Lt_00CB
sub esp, 4
push 0
push 0
push 12
call ERRREPORT
add esp, 16
jmp .Lt_00CA
.Lt_00CB:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.Lt_00CA:
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
jne .Lt_00CD
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00CF
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00CF:
.Lt_00CE:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00D1
sub esp, 12
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00D3
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00D3:
.Lt_00D2:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+44], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+20]
mov dword ptr [ebx+36], ecx
mov ecx, dword ptr [eax+24]
mov dword ptr [ebx+40], ecx
sub esp, 12
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .Lt_00D0
.Lt_00D1:
sub esp, 4
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call HSTORETEMP
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+44], eax
.Lt_00D0:
jmp .Lt_00CC
.Lt_00CD:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call HADDIMPLICITVAR
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+44], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call HCALLCTOR
add esp, 16
test eax, eax
jne .Lt_00D5
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.Lt_00D5:
.Lt_00D4:
.Lt_00CC:
.Lt_00C9:
pop ebx
mov esp, ebp
pop ebp
ret
.size HFORTO, .-HFORTO
.balign 16
HFORSTEP:
.type HFORSTEP, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_00D6:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+100], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 282
jne .Lt_00D9
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+100], -1
.Lt_00D9:
.Lt_00D8:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
jne .Lt_00DB
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .Lt_00DD
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00DF
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00DF:
.Lt_00DE:
jmp .Lt_00DC
.Lt_00DD:
push 0
push 8
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00DC:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
jne .Lt_00E1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00E2
mov dword ptr [ebp-16], 24
jmp .Lt_016D
.Lt_00E2:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_016D:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_00E5
sub esp, 12
push dword ptr [ebp+16]
call TYPETOSIGNED
add esp, 16
mov dword ptr [ebp+16], eax
jmp .Lt_00E4
.Lt_00E5:
sub esp, 12
push dword ptr [ebp+16]
call TYPETOUNSIGNED
add esp, 16
mov dword ptr [ebp+16], eax
.Lt_00E4:
.Lt_00E1:
.Lt_00E0:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00E7
sub esp, 12
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00E9
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00E9:
.Lt_00E8:
sub esp, 12
push dword ptr [ebp-12]
call ASTCONSTGEZERO
add esp, 16
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], ecx
mov dword ptr [eax+72], ebx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+48], 0
mov ecx, dword ptr [ebp+16]
and ecx, 480
test ecx, ecx
je .Lt_00EB
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], 11
jmp .Lt_00EA
.Lt_00EB:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+60], ebx
.Lt_00EA:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+20]
mov dword ptr [ebx+52], eax
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+56], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
jmp .Lt_00E6
.Lt_00E7:
mov dword ptr [ebp-4], -1
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+20]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
test ecx, ecx
je .Lt_00ED
mov dword ptr [ebp-16], 11
mov dword ptr [ebp-20], 0
.Lt_00ED:
.Lt_00EC:
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call HSTORETEMP
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+48], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
.Lt_00E6:
jmp .Lt_00DA
.Lt_00DB:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .Lt_00EF
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call HADDIMPLICITVAR
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+48], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call HCALLCTOR
add esp, 16
test eax, eax
jne .Lt_00F1
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.Lt_00F1:
.Lt_00F0:
.Lt_00EF:
.Lt_00EE:
.Lt_00DA:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_00F2
mov dword ptr [ebp-8], 24
jmp .Lt_016E
.Lt_00F2:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_016E:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+8]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_00F5
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 4294967295
mov dword ptr [eax+72], 4294967295
jmp .Lt_00F4
.Lt_00F5:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-4]
je .Lt_00F6
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-12], ecx
sub esp, 8
push 0
push 8
call HADDIMPLICITVAR
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+64], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 8
sub esp, 12
push 1
push 0
sub esp, 8
lea eax, [ebp-24]
push eax
call HELMTOEXPR
add esp, 12
push eax
sub esp, 4
mov eax, dword ptr [ebp+8]
lea ecx, [eax+48]
push ecx
call HELMTOEXPR
add esp, 8
push eax
push 49
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_00F8
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
.Lt_00F8:
.Lt_00F7:
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-28]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .Lt_00F4
.Lt_00F6:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
.Lt_00F4:
.Lt_00D7:
pop ebx
mov esp, ebp
pop ebp
ret
.size HFORSTEP, .-HFORSTEP
.balign 16
HUDTCALLOPOVL:
.type HUDTCALLOPOVL, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.Lt_0126:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBGETCOMPOPOVLHEAD
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0129
sub esp, 4
mov eax, dword ptr [ebp+12]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
push -1
push 198
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_0127
.Lt_0129:
.Lt_0128:
cmp dword ptr [ebp+20], 0
jne .Lt_012B
sub esp, 12
push 0
lea eax, [ebp-12]
push eax
push 0
push 0
push dword ptr [ebp-8]
call SYMBFINDCLOSESTOVLPROC
add esp, 32
mov dword ptr [ebp-8], eax
jmp .Lt_012A
.Lt_012B:
lea eax, [ebp-36]
mov dword ptr [ebp-72], eax
lea eax, [ebp-36]
mov dword ptr [ebp-68], eax
mov dword ptr [ebp-64], 24
mov dword ptr [ebp-60], 12
mov dword ptr [ebp-56], 1
mov dword ptr [ebp-52], 49
mov dword ptr [ebp-48], 2
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 1
mov dword ptr [ebp-76], 1
lea eax, [ebp-36]
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-80]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-80]
mov dword ptr [ebx+4], -1
mov ebx, dword ptr [ebp-80]
mov dword ptr [ebx+8], 0
cmp dword ptr [ebp+12], 26
jne .Lt_012F
cmp dword ptr [ebp+24], 0
je .Lt_0131
lea ebx, [ebp-24]
mov dword ptr [ebp-28], ebx
inc dword ptr [ebp-76]
lea ebx, [ebp-24]
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp-80]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-80]
mov dword ptr [eax+4], -1
mov eax, dword ptr [ebp-80]
mov dword ptr [eax+8], 0
.Lt_0131:
.Lt_0130:
.Lt_012F:
.Lt_012E:
sub esp, 12
push 0
lea eax, [ebp-12]
push eax
lea eax, [ebp-36]
push eax
push dword ptr [ebp-76]
push dword ptr [ebp-8]
call SYMBFINDCLOSESTOVLPROC
add esp, 32
mov dword ptr [ebp-8], eax
.Lt_012A:
cmp dword ptr [ebp-8], 0
jne .Lt_0134
cmp dword ptr [ebp-12], 0
je .Lt_0136
sub esp, 4
push 0
push -1
push dword ptr [ebp-12]
call ERRREPORT
add esp, 16
jmp .Lt_0135
.Lt_0136:
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_0137
push 0
mov eax, dword ptr [ebp+12]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-40], eax
jmp .Lt_013A
.Lt_013C:
cmp dword ptr [ebp+20], 0
jne .Lt_013E
sub esp, 12
push 0
push 4
push offset Lt_013F
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_013E:
.Lt_013D:
jmp .Lt_0139
.Lt_0140:
cmp dword ptr [ebp+24], 0
jne .Lt_0142
sub esp, 12
push 0
push 4
push offset Lt_013F
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0142:
.Lt_0141:
jmp .Lt_0139
.Lt_013A:
mov eax, dword ptr [ebp-40]
add eax, 4294967272
cmp eax, 2
ja .Lt_0139
mov eax, dword ptr [ebp-40]
jmp dword ptr [.LT_0143+eax*4-96]
.LT_0143:
.int .Lt_013C
.int .Lt_013C
.int .Lt_0140
.Lt_0139:
sub esp, 12
push 0
push 7
push offset Lt_0144
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 4
push dword ptr [ebp-24]
push -1
push 198
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0135:
mov dword ptr [ebp-4], 0
jmp .Lt_0127
jmp .Lt_0133
.Lt_0134:
sub esp, 12
push dword ptr [ebp-8]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_0146
sub esp, 12
push 0
push 1
push 0
sub esp, 4
push dword ptr [ebp-8]
call SYMBGETFULLPROCNAME
add esp, 8
push eax
push 202
call ERRREPORTEX
add esp, 32
mov dword ptr [ebp-4], 0
jmp .Lt_0127
.Lt_0146:
.Lt_0145:
.Lt_0133:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0127:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUDTCALLOPOVL, .-HUDTCALLOPOVL
.balign 16
HFORSTMTCLOSE:
.type HFORSTMTCLOSE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0147:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_014A
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.Lt_014A:
.Lt_0149:
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 20
jne .Lt_014D
.Lt_014E:
sub esp, 12
push dword ptr [ebp+8]
call HUDTSTEP
add esp, 16
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HUDTNEXT
add esp, 16
jmp .Lt_014B
.Lt_014D:
sub esp, 12
push dword ptr [ebp+8]
call HSCALARSTEP
add esp, 16
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HSCALARNEXT
add esp, 16
.Lt_014F:
.Lt_014B:
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0151
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call ASTSCOPEEND
add esp, 16
.Lt_0151:
.Lt_0150:
.Lt_0148:
pop ebx
mov esp, ebp
pop ebp
ret
.size HFORSTMTCLOSE, .-HFORSTMTCLOSE

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_00C5:	.ascii	"let\0"
.balign 4
Lt_0137:	.ascii	" (with\0"
.balign 4
Lt_013F:	.ascii	"out\0"
.balign 4
Lt_0144:	.ascii	" step)\0"
