	.intel_syntax noprefix

.section .text
.balign 16

.globl CUDTMEMBER
CUDTMEMBER:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BF:
mov dword ptr [ebp-8], -1
mov eax, dword ptr [ebp+8]
and eax, 261632
mov dword ptr [ebp-12], eax
.Lt_00C1:
push dword ptr [ebp+12]
call HMEMBERID
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00C5
mov dword ptr [ebp-4], 0
jmp .Lt_00C0
.Lt_00C5:
.Lt_00C4:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .Lt_00C7
.Lt_00C9:
push 2048
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
call ASTDELTREE
add esp, 4
push dword ptr [ebp-16]
call ASTBUILDCONST
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
jmp .Lt_00C6
.Lt_00CA:
push 2048
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp+16], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_00CC
mov dword ptr [ebp-4], 0
jmp .Lt_00C0
.Lt_00CC:
.Lt_00CB:
jmp .Lt_00C6
.Lt_00CD:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
or ebx, dword ptr [eax+28]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00CF
push dword ptr [ebp+16]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_00CF:
.Lt_00CE:
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call HFIELDACCESS
add esp, 20
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
setne al
shr eax, 1
sbb eax, eax
push 0
mov ebx, eax
call LEXGETTOKEN
add esp, 4
cmp eax, 46
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
cmp ecx, 25
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00D1
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ecx
jmp .Lt_00C0
.Lt_00D1:
.Lt_00D0:
mov dword ptr [ebp-8], 0
jmp .Lt_00C6
.Lt_00D2:
push dword ptr [ebp+16]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp-16]
call _Z11CVARIABLEEXP8FBSYMBOLl
add esp, 8
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
or ecx, dword ptr [eax+28]
mov dword ptr [ebp+8], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00D3
mov dword ptr [ebp-24], 24
jmp .Lt_00E2
.Lt_00D3:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_00E2:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 20
jne .Lt_00D7
.Lt_00D8:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_00DA
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
.Lt_00DA:
.Lt_00D9:
jmp .Lt_00D5
.Lt_00D7:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
.Lt_00DB:
.Lt_00D5:
mov dword ptr [ebp-8], 0
jmp .Lt_00C6
.Lt_00DC:
cmp dword ptr [ebp-8], 0
je .Lt_00DE
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_00DE:
.Lt_00DD:
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp-16]
call CMETHODCALL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
jmp .Lt_00C6
.Lt_00DF:
push 0
push 1
push 0
push offset Lt_00E0
push 21
call ERRREPORTEX
add esp, 20
mov dword ptr [ebp-4], 0
jmp .Lt_00C0
jmp .Lt_00C6
.Lt_00C7:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 11
ja .Lt_00DF
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00E1+eax*4-4]
.LT_00E1:
.int .Lt_00D2
.int .Lt_00C9
.int .Lt_00DC
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00CA
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00CD
.Lt_00C6:
push 2112
call LEXSKIPTOKEN
add esp, 4
.Lt_00C3:
jmp .Lt_00C1
.Lt_00C2:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_00C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CUDTTYPEMEMBER
CUDTTYPEMEMBER:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_00E6:
.Lt_00E8:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_00E9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
cmp ebx, 20
je .Lt_00EB
jmp .Lt_00E9
.Lt_00EB:
.Lt_00EA:
push 64
call LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call HMEMBERID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00ED
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx], esi
mov dword ptr [ebx+4], ecx
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+12]
and ecx, 2097152
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov esi, dword ptr [ebp+20]
mov dword ptr [esi], ecx
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 2
jne .Lt_00EF
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx]
and esi, 511
mov dword ptr [ebp-8], esi
cmp dword ptr [ebp-8], 7
je .Lt_00F3
.Lt_00F4:
cmp dword ptr [ebp-8], 4
je .Lt_00F3
.Lt_00F5:
cmp dword ptr [ebp-8], 17
je .Lt_00F3
.Lt_00F6:
cmp dword ptr [ebp-8], 18
jne .Lt_00F2
.Lt_00F3:
mov esi, dword ptr [ebp+20]
mov dword ptr [esi], -1
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+56]
mov esi, dword ptr [ebp+16]
mov eax, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
mov dword ptr [esi], eax
mov dword ptr [esi+4], ebx
jmp .Lt_00E9
.Lt_00F2:
.Lt_00F0:
.Lt_00EF:
.Lt_00EE:
jmp .Lt_00EC
.Lt_00ED:
jmp .Lt_00E9
.Lt_00EC:
jmp .Lt_00E8
.Lt_00E9:
.Lt_00E7:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CMEMBERACCESS
CMEMBERACCESS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00F8:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 9
jne .Lt_00FB
push dword ptr [ebp+16]
call ASTBUILDCALLRESULTUDT
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_00FB:
.Lt_00FA:
push 0
push -1
push dword ptr [ebp+16]
call ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CUDTMEMBER
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_00F9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CMEMBERDEREF
CMEMBERDEREF:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0112:
mov dword ptr [ebp-4], 0
.Lt_0114:
mov dword ptr [ebp-20], 0
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 398
jne .Lt_0119
.Lt_011A:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .Lt_011C
push 64
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_0120
.Lt_0121:
cmp dword ptr [ebp-28], 23
jne .Lt_011F
.Lt_0120:
push 0
push -1
push 71
call ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
jmp .Lt_011D
.Lt_011F:
cmp dword ptr [ebp-28], 20
jne .Lt_0122
.Lt_0123:
jmp .Lt_011D
.Lt_0122:
push 0
push -1
push 24
call ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
.Lt_0124:
.Lt_011D:
cmp dword ptr [ENV+176], 0
je .Lt_0126
push dword ptr [ebp+16]
call ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_0126:
.Lt_0125:
call HMULTIDEREF
add dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CUDTMEMBER
add esp, 20
mov dword ptr [ebp+16], eax
jmp .Lt_011B
.Lt_011C:
cmp dword ptr [SYMB+99428], 0
jne .Lt_0128
push 0
push -1
push 28
call ERRREPORT
add esp, 12
jmp .Lt_0115
.Lt_0128:
.Lt_0127:
lea eax, [ebp-32]
push eax
push dword ptr [ebp+16]
push 77
call SYMBFINDUOPOVLPROC
add esp, 12
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_012A
push 0
push -1
push 28
call ERRREPORT
add esp, 12
jmp .Lt_0115
.Lt_012A:
.Lt_0129:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-28]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_012C
jmp .Lt_0113
.Lt_012C:
.Lt_012B:
push 64
call LEXSKIPTOKEN
add esp, 4
call HMULTIDEREF
add dword ptr [ebp-8], eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call CMEMBERACCESS
add esp, 12
mov dword ptr [ebp+16], eax
.Lt_011B:
cmp dword ptr [ebp+16], 0
jne .Lt_012E
jmp .Lt_0113
.Lt_012E:
.Lt_012D:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .Lt_0130
cmp dword ptr [ebp-8], 0
jle .Lt_0132
push 0
push -1
push 28
call ERRREPORT
add esp, 12
.Lt_0132:
.Lt_0131:
jmp .Lt_0115
.Lt_0130:
.Lt_012F:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
jle .Lt_0134
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTBUILDMULTIDEREF
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0136
jmp .Lt_0113
.Lt_0136:
.Lt_0135:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
.Lt_0134:
.Lt_0133:
jmp .Lt_0117
.Lt_0119:
cmp dword ptr [ebp-24], 91
jne .Lt_0137
.Lt_0138:
push 0
call LEXSKIPTOKEN
add esp, 4
call HINDEXEXPR
mov dword ptr [ebp-20], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 93
je .Lt_013A
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 93
call HSKIPUNTIL
add esp, 16
jmp .Lt_0139
.Lt_013A:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0139:
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 17
je .Lt_013E
.Lt_013F:
cmp dword ptr [ebp-28], 18
je .Lt_013E
.Lt_0140:
cmp dword ptr [ebp-28], 4
je .Lt_013E
.Lt_0141:
cmp dword ptr [ebp-28], 7
jne .Lt_013D
.Lt_013E:
push dword ptr [ebp-20]
call HCHECKINTEGERINDEX
add esp, 4
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HSTRINDEXING
add esp, 12
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
jmp .Lt_013B
.Lt_013D:
cmp dword ptr [ebp-28], 20
jne .Lt_0142
.Lt_0143:
lea eax, [ebp-32]
push eax
push dword ptr [ebp-20]
push dword ptr [ebp+16]
push 23
call SYMBFINDSELFBOPOVLPROC
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_0145
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+16]
push dword ptr [ebp-36]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+16], eax
jmp .Lt_0144
.Lt_0145:
cmp dword ptr [ebp-32], 0
jne .Lt_0147
push 0
push -1
push 28
call ERRREPORT
add esp, 12
.Lt_0147:
.Lt_0146:
.Lt_0144:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_0149
push 64
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call CMEMBERACCESS
add esp, 12
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_014B
jmp .Lt_0113
.Lt_014B:
.Lt_014A:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .Lt_014D
jmp .Lt_0115
.Lt_014D:
.Lt_014C:
.Lt_0149:
.Lt_0148:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
jmp .Lt_013B
.Lt_0142:
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_0152
.Lt_0153:
cmp dword ptr [ebp-32], 23
jne .Lt_0151
.Lt_0152:
push 0
push -1
push 71
call ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 40
mov dword ptr [ebp+12], 0
jmp .Lt_014F
.Lt_0151:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
jne .Lt_0156
push 0
push -1
push 28
call ERRREPORT
add esp, 12
jmp .Lt_0115
.Lt_0156:
.Lt_0155:
.Lt_0154:
.Lt_014F:
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp+8], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jne .Lt_0158
cmp dword ptr [ebp-16], 0
jne .Lt_0158
.Lt_0164:
push 0
push -1
push 71
call ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
mov edx, dword ptr [SYMB_DTYPETB+228]
mov eax, edx
sar eax, 31
mov dword ptr [ebp-16], edx
mov dword ptr [ebp-12], eax
.Lt_0158:
.Lt_0157:
push dword ptr [ebp-20]
call HCHECKINTEGERINDEX
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ENV+176], 0
je .Lt_015A
push dword ptr [ebp+16]
call ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_015A:
.Lt_0159:
push 1
push 0
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-20]
push 30
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp+16]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_015C
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
je .Lt_015E
push 0
push 0
push 24
call ERRREPORT
add esp, 12
jmp .Lt_0115
.Lt_015E:
.Lt_015D:
push 64
call LEXSKIPTOKEN
add esp, 4
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CUDTMEMBER
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0160
jmp .Lt_0113
.Lt_0160:
.Lt_015F:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .Lt_0162
jmp .Lt_0115
.Lt_0162:
.Lt_0161:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
mov dword ptr [ebp+8], edx
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+8]
mov dword ptr [ebp+12], eax
jmp .Lt_015B
.Lt_015C:
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_015B:
.Lt_014E:
.Lt_013B:
jmp .Lt_0117
.Lt_0137:
jmp .Lt_0115
.Lt_0163:
.Lt_0117:
.Lt_0116:
jmp .Lt_0114
.Lt_0115:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_0113:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CFUNCPTRORMEMBERDEREF
CFUNCPTRORMEMBERDEREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0165:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+20], 0
jne .Lt_0168
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_016A
jmp .Lt_0166
.Lt_016A:
.Lt_0169:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_016C
cmp dword ptr [ebp+8], 54
jne .Lt_016E
mov dword ptr [ebp+20], -1
.Lt_016E:
.Lt_016D:
.Lt_016C:
.Lt_016B:
.Lt_0168:
.Lt_0167:
cmp dword ptr [ebp+20], 0
jne .Lt_0170
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0166
.Lt_0170:
.Lt_016F:
cmp dword ptr [ENV+176], 0
je .Lt_0172
push dword ptr [ebp+16]
call ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_0172:
.Lt_0171:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0174
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0176
jmp .Lt_0166
.Lt_0176:
.Lt_0175:
jmp .Lt_0173
.Lt_0174:
mov eax, dword ptr [PARSER+148]
and eax, 4
test eax, eax
jne .Lt_0178
push 0
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call CPROCCALL
add esp, 24
mov dword ptr [ebp+16], eax
jmp .Lt_0177
.Lt_0178:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
.Lt_0177:
.Lt_0173:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_0166:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z11CVARIABLEEXP8FBSYMBOLl
_Z11CVARIABLEEXP8FBSYMBOLl:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_019F:
mov dword ptr [ebp-4], 0
push dword ptr [ebp+8]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_01A2
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.Lt_01A2:
.Lt_01A1:
push 4096
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 65536
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
mov dword ptr [ebp-20], ebx
push dword ptr [ebp+8]
call SYMBISARRAY
add esp, 4
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], -1
mov dword ptr [ebp-36], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [PARSER+148]
and ebx, 4096
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_01A4
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
je .Lt_01A6
cmp dword ptr [ebp-28], 0
je .Lt_01A8
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_01AA
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 16384
test eax, eax
je .Lt_01AC
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
push 52
push dword ptr [ebp-16]
call ASTSETTYPE
add esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-16]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-16], eax
jmp .Lt_01AB
.Lt_01AC:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
.Lt_01AB:
push dword ptr [ebp-16]
call ASTCLONETREE
add esp, 4
push eax
push dword ptr [ebp+8]
call CDYNAMICARRAYINDEX
add esp, 8
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push 0
push 8
mov ebx, dword ptr [SYMB+99604]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp-16]
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-12]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
jmp .Lt_01A9
.Lt_01AA:
push dword ptr [ebp+8]
call CFIXEDSIZEARRAYINDEX
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_01A9:
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .Lt_01AE
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
.Lt_01AE:
.Lt_01AD:
jmp .Lt_01A7
.Lt_01A8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 54
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-28]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-24]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_01B0
push 0
push -1
push 72
call ERRREPORT
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
.Lt_01B0:
.Lt_01AF:
.Lt_01A7:
jmp .Lt_01A5
.Lt_01A6:
cmp dword ptr [ebp-28], 0
je .Lt_01B2
mov dword ptr [ebp-32], 0
.Lt_01B2:
.Lt_01B1:
.Lt_01A5:
jmp .Lt_01A3
.Lt_01A4:
cmp dword ptr [ebp-28], 0
je .Lt_01B4
cmp dword ptr [ebp+12], 0
je .Lt_01B6
push 0
push -1
push 73
call ERRREPORT
add esp, 12
push dword ptr [ebp+8]
call HMAKEARRAYIDX
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_01B5
.Lt_01B6:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], -1
.Lt_01B5:
.Lt_01B4:
.Lt_01B3:
.Lt_01A3:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .Lt_01B8
cmp dword ptr [ebp-20], 0
je .Lt_01BA
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_01B9
.Lt_01BA:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWIDX
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_01B9:
.Lt_01B8:
.Lt_01B7:
cmp dword ptr [ebp-20], 0
je .Lt_01BC
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_01BC:
.Lt_01BB:
cmp dword ptr [ebp-24], 0
jne .Lt_01BE
cmp dword ptr [ebp-32], 0
je .Lt_01C0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_01C2
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .Lt_01C4
push 0
push -1
push 265
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01A0
.Lt_01C4:
.Lt_01C3:
push 64
call LEXSKIPTOKEN
add esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 4
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call CUDTMEMBER
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01C6
jmp .Lt_01A0
.Lt_01C6:
.Lt_01C5:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .Lt_01C8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01A0
.Lt_01C8:
.Lt_01C7:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_01CA
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 54
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
.Lt_01CA:
.Lt_01C9:
.Lt_01C2:
.Lt_01C1:
.Lt_01C0:
.Lt_01BF:
.Lt_01BE:
.Lt_01BD:
cmp dword ptr [ebp-32], 0
je .Lt_01CC
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call CFUNCPTRORMEMBERDEREF
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_01CB
.Lt_01CC:
cmp dword ptr [ebp-36], 0
je .Lt_01CE
push dword ptr [ebp-8]
call ASTNEWNIDXARRAY
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01CE:
.Lt_01CD:
.Lt_01CB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_01A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z11CVARIABLEEXP10FBSYMCHAINl
_Z11CVARIABLEEXP10FBSYMCHAINl:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D8:
call LEXGETTEXT
mov dword ptr [ebp-8], eax
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ENV+136], 3
jne .Lt_01DB
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 1
jne .Lt_01DD
cmp dword ptr [ebp-12], -2147483648
jne .Lt_01DF
mov dword ptr [ebp-4], 0
jmp .Lt_01D9
.Lt_01DF:
.Lt_01DE:
.Lt_01DD:
.Lt_01DC:
.Lt_01DB:
.Lt_01DA:
mov eax, dword ptr [ENV+888]
and eax, 8388608
test eax, eax
je .Lt_01E1
cmp dword ptr [ebp-12], -2147483648
jne .Lt_01E3
push dword ptr [ebp-8]
call SYMBGETDEFTYPE
add esp, 4
push eax
push dword ptr [ebp+8]
call SYMBFINDVARBYDEFTYPE
add esp, 8
mov dword ptr [ebp-16], eax
jmp .Lt_01E2
.Lt_01E3:
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call SYMBFINDVARBYSUFFIX
add esp, 8
mov dword ptr [ebp-16], eax
.Lt_01E2:
jmp .Lt_01E0
.Lt_01E1:
cmp dword ptr [ebp-12], -2147483648
je .Lt_01E5
push 4096
call LEXCHECKTOKEN
add esp, 4
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
.Lt_01E5:
.Lt_01E4:
push 1
push dword ptr [ebp+8]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-16], eax
.Lt_01E0:
cmp dword ptr [ebp-16], 0
jne .Lt_01E7
cmp dword ptr [ENV+932], 0
je .Lt_01E9
push dword ptr [ebp-8]
push 42
call ERRREPORTUNDEF
add esp, 8
mov dword ptr [ebp-4], 0
jmp .Lt_01D9
.Lt_01E9:
.Lt_01E8:
cmp dword ptr [ebp+8], 0
je .Lt_01EB
mov eax, dword ptr [ENV+888]
and eax, 8388608
test eax, eax
je .Lt_01ED
push 1
push dword ptr [ebp+8]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_01EF
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [SYMB+98528]
cmp dword ptr [ebx], eax
je .Lt_01F1
push 0
push 0
push 131
call ERRREPORT
add esp, 12
.Lt_01F1:
.Lt_01F0:
.Lt_01EF:
.Lt_01EE:
.Lt_01ED:
.Lt_01EC:
.Lt_01EB:
.Lt_01EA:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call HVARADDUNDECL
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01F3
mov dword ptr [ebp-4], 0
jmp .Lt_01D9
.Lt_01F3:
.Lt_01F2:
mov eax, dword ptr [PARSER+148]
and eax, 4
test eax, eax
je .Lt_01F5
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
je .Lt_01F7
cmp dword ptr [ENV+932], 0
jne .Lt_01F9
push 0
push 1
push dword ptr [ebp-8]
push 11
call ERRREPORTWARN
add esp, 16
.Lt_01F9:
.Lt_01F8:
.Lt_01F7:
.Lt_01F6:
.Lt_01F5:
.Lt_01F4:
.Lt_01E7:
.Lt_01E6:
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _Z11CVARIABLEEXP8FBSYMBOLl
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_01D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CWITHVARIABLE
CWITHVARIABLE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0204:
push 64
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [PARSER+52]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [PARSER+52]
cmp dword ptr [eax+16], 0
je .Lt_0207
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
.Lt_0207:
.Lt_0206:
push 0
mov eax, dword ptr [PARSER+52]
push dword ptr [eax+16]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call HIMPFIELD
add esp, 24
mov dword ptr [ebp-4], eax
.Lt_0205:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CVARIABLE
CVARIABLE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0208:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_020D
.Lt_020E:
cmp dword ptr [ebp-8], 2
jne .Lt_020C
.Lt_020D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_0209
jmp .Lt_020A
.Lt_020C:
cmp dword ptr [PARSER+52], 0
jne .Lt_0211
mov dword ptr [ebp-4], 0
jmp .Lt_0209
.Lt_0211:
.Lt_0210:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_0213
mov dword ptr [ebp-4], 0
jmp .Lt_0209
.Lt_0213:
.Lt_0212:
push dword ptr [ebp+12]
call CWITHVARIABLE
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_020F:
.Lt_020A:
.Lt_0209:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CIMPLICITDATAMEMBER
CIMPLICITDATAMEMBER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0214:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0217
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
.Lt_0217:
.Lt_0216:
cmp dword ptr [ebp-8], 0
jne .Lt_0219
push 0
push 0
push 215
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_0215
.Lt_0219:
.Lt_0218:
cmp dword ptr [ebp+8], 0
jne .Lt_021B
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+8], ebx
.Lt_021B:
.Lt_021A:
push dword ptr [ebp+20]
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+28]
push dword ptr [ebp-8]
call HIMPFIELD
add esp, 24
mov dword ptr [ebp-4], eax
.Lt_0215:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CVARORDEREF
CVARORDEREF:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_021E:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_0221
mov eax, dword ptr [PARSER+148]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [PARSER+148], 4
jmp .Lt_0222
.Lt_0223:
and dword ptr [PARSER+148], -5
.Lt_0222:
.Lt_0221:
.Lt_0220:
mov eax, dword ptr [PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
jne .Lt_0225
or dword ptr [PARSER+148], 2
jmp .Lt_0224
.Lt_0225:
and dword ptr [PARSER+148], -3
.Lt_0224:
push 0
push 0
call CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
je .Lt_0227
or dword ptr [PARSER+148], 2
jmp .Lt_0226
.Lt_0227:
and dword ptr [PARSER+148], -3
.Lt_0226:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_0229
cmp dword ptr [ebp-8], 0
je .Lt_022B
or dword ptr [PARSER+148], 4
jmp .Lt_022A
.Lt_022B:
and dword ptr [PARSER+148], -5
.Lt_022A:
.Lt_0229:
.Lt_0228:
cmp dword ptr [ebp-16], 0
je .Lt_022D
mov eax, dword ptr [ebp+8]
and eax, 2
je .Lt_022F
push dword ptr [ebp-16]
call ASTSKIPCASTS
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_022E
.Lt_022F:
push dword ptr [ebp-16]
call ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_022E:
mov dword ptr [ebp-24], -1
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .Lt_0231
.Lt_0233:
mov dword ptr [ebp-24], 0
jmp .Lt_0230
.Lt_0234:
mov ebx, dword ptr [ebp+8]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_0230
.Lt_0231:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967287
cmp ebx, 16
ja .Lt_0230
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.LT_0235+ebx*4-36]
.LT_0235:
.int .Lt_0234
.int .Lt_0230
.int .Lt_0230
.int .Lt_0230
.int .Lt_0230
.int .Lt_0230
.int .Lt_0230
.int .Lt_0230
.int .Lt_0233
.int .Lt_0233
.int .Lt_0233
.int .Lt_0233
.int .Lt_0230
.int .Lt_0230
.int .Lt_0230
.int .Lt_0230
.int .Lt_0234
.Lt_0230:
cmp dword ptr [ebp-24], 0
je .Lt_0237
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-16], 0
.Lt_0237:
.Lt_0236:
.Lt_022D:
.Lt_022C:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_021F:
mov eax, dword ptr [ebp-4]
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
HINDEXEXPR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0067:
push 0
call CEXPRESSIONWITHNIDXARRAY
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006A
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_006A:
.Lt_0069:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKINTEGERINDEX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_006B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_006D
mov dword ptr [ebp-8], 24
jmp .Lt_023B
.Lt_006D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_023B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 8
jne .Lt_0071
.Lt_0072:
jmp .Lt_006F
.Lt_0071:
cmp dword ptr [ebp-12], 24
jne .Lt_0073
.Lt_0074:
push 0
push -1
push 151
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_006F
.Lt_0073:
push 0
push 0
push dword ptr [ebp+8]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0077
push 0
push -1
push 151
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0077:
.Lt_0076:
.Lt_0075:
.Lt_006F:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
CFIXEDSIZEARRAYINDEX:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0078:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-8], 0
.Lt_007A:
inc dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp-16], ebx
jl .Lt_007E
push 0
push 0
push 36
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0079
.Lt_007E:
.Lt_007D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov eax, dword ptr [ecx]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], ebx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], ebx
call HINDEXEXPR
push eax
call HCHECKINTEGERINDEX
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ENV+172], 0
je .Lt_0080
push 0
push 8
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
call ASTBUILDBOUNDCHK
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0082
push 0
push 0
push 92
call ERRREPORT
add esp, 12
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0082:
.Lt_0081:
.Lt_0080:
.Lt_007F:
cmp dword ptr [ebp-8], 0
jne .Lt_0084
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_0083
.Lt_0084:
push 1
push 0
push 0
push 8
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebp-28]
sub ebx, dword ptr [ebp-24]
sbb eax, dword ptr [ebp-20]
add ebx, 1
adc eax, 0
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0083:
.Lt_007C:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_007A
.Lt_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
cmp dword ptr [ebp-16], ebx
jge .Lt_0086
push 0
push 0
push 36
call ERRREPORT
add esp, 12
.Lt_0086:
.Lt_0085:
push 1
push 0
push 0
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0079:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBUILDFIELD:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0087:
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call ASTNEWFIELD
add esp, 8
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0088:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HFIELDACCESS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0089:
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
je .Lt_008C
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [PARSER+148]
and ebx, 4096
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_008E
cmp dword ptr [ebp+24], 0
je .Lt_0090
push 0
push 0
push 73
call ERRREPORT
add esp, 12
.Lt_0090:
.Lt_008F:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HBUILDFIELD
add esp, 20
push eax
call ASTNEWNIDXARRAY
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_008A
.Lt_008E:
.Lt_008D:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .Lt_0092
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HBUILDFIELD
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_008A
.Lt_0092:
.Lt_0091:
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_0094
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+84]
mov dword ptr [ebp-20], eax
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 24
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+28]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
push ebx
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
mov dword ptr [ebp-16], 0
push dword ptr [ebp+8]
call ASTHASSIDEFX
add esp, 4
test eax, eax
je .Lt_0096
push 2
lea eax, [ebp+8]
push eax
call ASTREMSIDEFX
add esp, 4
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
.Lt_0096:
.Lt_0095:
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
call ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp+12]
call CDYNAMICARRAYINDEX
add esp, 8
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push 8
mov ebx, dword ptr [SYMB+99604]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 24
push dword ptr [ebp+8]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+16]
and eax, 31
mov ebx, dword ptr [ebp+16]
and ebx, 480
add ebx, 64
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 261632
sal ebx, 2
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 32505856
or eax, ebx
push eax
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
push 2
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
jmp .Lt_0093
.Lt_0094:
push dword ptr [ebp+12]
call CFIXEDSIZEARRAYINDEX
add esp, 4
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+72]
push dword ptr [eax+68]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HBUILDFIELD
add esp, 20
mov dword ptr [ebp+8], eax
.Lt_0093:
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0098
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
.Lt_0098:
.Lt_0097:
jmp .Lt_008B
.Lt_008C:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HBUILDFIELD
add esp, 20
mov dword ptr [ebp+8], eax
.Lt_008B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_008A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMEMBERID:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0099:
cmp dword ptr [ebp+8], 0
jne .Lt_009C
push 0
push -1
push 265
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_009A
.Lt_009C:
.Lt_009B:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_009E
.Lt_00A0:
jmp .Lt_009D
.Lt_00A1:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_009A
jmp .Lt_009D
.Lt_009E:
cmp dword ptr [ebp-16], 2
ja .Lt_00A1
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_00A2+eax*4]
.LT_00A2:
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_00A0
.Lt_009D:
mov dword ptr [ebp-8], 0
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 347
jne .Lt_00A5
.Lt_00A6:
push dword ptr [ebp+8]
call SYMBGETCOMPCTORHEAD
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00A3
.Lt_00A5:
cmp dword ptr [ebp-16], 348
jne .Lt_00A7
.Lt_00A8:
push dword ptr [ebp+8]
call SYMBGETCOMPDTOR
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00A7:
.Lt_00A3:
cmp dword ptr [ebp-8], 0
je .Lt_00AA
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_009A
.Lt_00AA:
.Lt_00A9:
push -1
push 0
call LEXGETTEXT
push eax
push dword ptr [ebp+8]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00AC
call LEXGETTEXT
push eax
push 18
call ERRREPORTUNDEF
add esp, 8
push 0
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
jmp .Lt_009A
.Lt_00AC:
.Lt_00AB:
.Lt_00AD:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
.Lt_00B0:
mov ebx, dword ptr [ebp-16]
movzx eax, word ptr [ebx+36]
mov ebx, dword ptr [ebp+8]
movzx ecx, word ptr [ebx+36]
cmp eax, ecx
jne .Lt_00B4
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-20], eax
jmp .Lt_00B6
.Lt_00B8:
push dword ptr [ebp-16]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00BA
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.Lt_00BA:
.Lt_00B9:
jmp .Lt_00B5
.Lt_00BB:
jmp .Lt_00B5
.Lt_00BC:
push 0
push 1
push 0
push offset Lt_00BD
push 21
call ERRREPORTEX
add esp, 20
mov dword ptr [ebp-4], 0
jmp .Lt_009A
jmp .Lt_00B5
.Lt_00B6:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 11
ja .Lt_00BC
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00BE+eax*4-4]
.LT_00BE:
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00BB
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00B8
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00B8
.Lt_00B5:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .Lt_009A
.Lt_00B4:
.Lt_00B3:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp-16], ecx
.Lt_00B2:
cmp dword ptr [ebp-16], 0
jne .Lt_00B0
.Lt_00B1:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-12], eax
.Lt_00AF:
cmp dword ptr [ebp-12], 0
jne .Lt_00AD
.Lt_00AE:
call LEXGETTEXT
push eax
push 18
call ERRREPORTUNDEF
add esp, 8
push 0
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
.Lt_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSTRINDEXING:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FC:
push dword ptr [ebp+12]
call ASTUPDSTRCONCAT
add esp, 4
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 9
jne .Lt_00FF
push 0
push -1
push 17
call ERRREPORT
add esp, 12
.Lt_00FF:
.Lt_00FE:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0100
mov dword ptr [ebp-8], 24
jmp .Lt_023E
.Lt_0100:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_023E:
cmp dword ptr [ebp-8], 17
jne .Lt_0103
push dword ptr [ebp+12]
call ASTBUILDSTRPTR
add esp, 4
mov dword ptr [ebp+12], eax
jmp .Lt_0102
.Lt_0103:
push dword ptr [ebp+12]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+12], eax
.Lt_0102:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0104
mov dword ptr [ebp-12], 24
jmp .Lt_023F
.Lt_0104:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_023F:
cmp dword ptr [ebp-12], 7
jne .Lt_0107
push 1
push 0
push 0
push 8
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_0107:
.Lt_0106:
cmp dword ptr [ENV+172], 0
je .Lt_0109
push dword ptr [ebp+12]
call ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+12], eax
.Lt_0109:
.Lt_0108:
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_010A
mov dword ptr [ebp-16], 24
jmp .Lt_0240
.Lt_010A:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0240:
cmp dword ptr [ebp-16], 7
jne .Lt_010D
mov eax, dword ptr [ebp+8]
and eax, -512
mov ebx, dword ptr [ENV+248]
and ebx, 511
or eax, ebx
mov dword ptr [ebp+8], eax
jmp .Lt_010C
.Lt_010D:
mov eax, dword ptr [ebp+8]
and eax, -512
or eax, 3
mov dword ptr [ebp+8], eax
.Lt_010C:
push 0
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_00FD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMULTIDEREF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_010E:
mov dword ptr [ebp-8], 0
.Lt_0110:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 42
jne .Lt_0111
push 64
call LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-8]
jmp .Lt_0110
.Lt_0111:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_010F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
CDYNAMICARRAYINDEX:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_0179:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-8], 0
.Lt_017B:
inc dword ptr [ebp-16]
mov ebx, dword ptr [SYMB+99616]
mov eax, ebx
sar eax, 31
mov esi, dword ptr [ebp-16]
mov ecx, esi
sar ecx, 31
mov edi, dword ptr [SYMB+99620]
push dword ptr [edi+44]
push dword ptr [edi+40]
push ecx
push esi
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
pop esi
pop ecx
add esp, 8
add ebx, esi
adc eax, ecx
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], eax
call HINDEXEXPR
push eax
call HCHECKINTEGERINDEX
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ENV+172], 0
je .Lt_017F
push 0
push 0
push 8
mov ebx, dword ptr [SYMB+99628]
mov eax, ebx
sar eax, 31
add ebx, dword ptr [ebp-24]
adc eax, dword ptr [ebp-20]
push eax
push ebx
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push 0
push 0
push 8
mov ebx, dword ptr [SYMB+99624]
mov eax, ebx
sar eax, 31
add ebx, dword ptr [ebp-24]
adc eax, dword ptr [ebp-20]
push eax
push ebx
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-12]
call ASTBUILDBOUNDCHK
add esp, 12
mov dword ptr [ebp-12], eax
.Lt_017F:
.Lt_017E:
cmp dword ptr [ebp-8], 0
jne .Lt_0181
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_0180
.Lt_0181:
push 1
push 0
push 0
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-8]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0180:
.Lt_017D:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_017B
.Lt_017C:
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_0183
mov ebx, dword ptr [ebp-16]
inc ebx
push ebx
push dword ptr [ebp+8]
call SYMBCHECKDYNAMICARRAYDIMENSIONS
add esp, 8
.Lt_0183:
.Lt_0182:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_017A:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HVARADDUNDECL:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.Lt_0184:
lea eax, [ebp-24]
mov dword ptr [ebp-60], eax
lea eax, [ebp-24]
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], 16
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 1
mov dword ptr [ebp-40], 49
mov dword ptr [ebp-36], 1
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .Lt_0188
mov dword ptr [ebp-64], 2
jmp .Lt_0187
.Lt_0188:
mov dword ptr [ebp-64], 0
lea ebx, [SYMB+98352]
cmp dword ptr [SYMB+98528], ebx
je .Lt_018A
mov ebx, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], ebx
jne .Lt_018C
mov ebx, dword ptr [ebp-64]
and ebx, 57
test ebx, ebx
jne .Lt_018E
or dword ptr [ebp-64], 2
.Lt_018E:
.Lt_018D:
.Lt_018C:
.Lt_018B:
.Lt_018A:
.Lt_0189:
.Lt_0187:
cmp dword ptr [ebp+12], -2147483648
jne .Lt_0190
push dword ptr [ebp+8]
call SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp+12], eax
jmp .Lt_018F
.Lt_0190:
or dword ptr [ebp-64], 1048576
.Lt_018F:
mov dword ptr [ebp-68], 0
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
je .Lt_0192
mov eax, dword ptr [PARSER+148]
and eax, 8
test eax, eax
jne .Lt_0194
or dword ptr [ebp-68], 2
.Lt_0194:
.Lt_0193:
jmp .Lt_0191
.Lt_0192:
or dword ptr [ebp-68], 2
.Lt_0191:
push dword ptr [ebp-68]
push dword ptr [ebp-64]
lea eax, [ebp-60]
push eax
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0196
push 0
push 1
push 0
push dword ptr [ebp+8]
push 4
call ERRREPORTEX
add esp, 20
push dword ptr [ebp-68]
push dword ptr [ebp-64]
lea eax, [ebp-60]
push eax
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push 0
call SYMBUNIQUELABEL
push eax
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
jmp .Lt_0195
.Lt_0196:
push -1
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 8
mov dword ptr [ebp-72], eax
mov eax, dword ptr [ebp-68]
and eax, 2
test eax, eax
je .Lt_0198
push dword ptr [ebp-72]
call ASTADDUNSCOPED
add esp, 4
jmp .Lt_0197
.Lt_0198:
push dword ptr [ebp-72]
call ASTADD
add esp, 4
.Lt_0197:
.Lt_0195:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0185:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAKEARRAYIDX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0199:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .Lt_019C
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
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_019A
.Lt_019C:
.Lt_019B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_019E
push 0
push 8
mov eax, dword ptr [SYMB+99604]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_019A
.Lt_019E:
.Lt_019D:
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+4]
push dword ptr [ebx]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_019A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HIMPFIELD:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_01FA:
cmp dword ptr [ebp+24], 0
je .Lt_01FD
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_01FC
.Lt_01FD:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01FC:
push dword ptr [ebp+28]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call CUDTMEMBER
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01FF
mov dword ptr [ebp-4], 0
jmp .Lt_01FB
.Lt_01FF:
.Lt_01FE:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .Lt_0201
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01FB
.Lt_0201:
.Lt_0200:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-12], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_0203
mov eax, dword ptr [ebp+12]
and eax, 511
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.Lt_0203:
.Lt_0202:
push dword ptr [ebp+20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call CFUNCPTRORMEMBERDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_01FB:
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

.section .data
.balign 4
Lt_00BD:	.ascii	"HMEMBERID\0"
.balign 4
Lt_00E0:	.ascii	"CUDTMEMBER\0"
