	.intel_syntax noprefix

.section .text
.balign 16

.globl _CUDTMEMBER
_CUDTMEMBER:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C0:
mov dword ptr [ebp-8], -1
mov eax, dword ptr [ebp+8]
and eax, 261632
mov dword ptr [ebp-12], eax
.Lt_00C2:
push dword ptr [ebp+12]
call _HMEMBERID
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00C6
mov dword ptr [ebp-4], 0
jmp .Lt_00C1
.Lt_00C6:
.Lt_00C5:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .Lt_00C8
.Lt_00CA:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-16]
call _ASTBUILDCONST
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00C1
jmp .Lt_00C7
.Lt_00CB:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp+16], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_00CD
mov dword ptr [ebp-4], 0
jmp .Lt_00C1
.Lt_00CD:
.Lt_00CC:
jmp .Lt_00C7
.Lt_00CE:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
or ebx, dword ptr [eax+28]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00D0
push dword ptr [ebp+16]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_00D0:
.Lt_00CF:
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call _HFIELDACCESS
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
call _LEXGETTOKEN
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
je .Lt_00D2
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ecx
jmp .Lt_00C1
.Lt_00D2:
.Lt_00D1:
mov dword ptr [ebp-8], 0
jmp .Lt_00C7
.Lt_00D3:
push dword ptr [ebp+16]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp-16]
call __Z11CVARIABLEEXP8FBSYMBOLl
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
je .Lt_00D4
mov dword ptr [ebp-24], 24
jmp .Lt_00E3
.Lt_00D4:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_00E3:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 20
jne .Lt_00D8
.Lt_00D9:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_00DB
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_00C1
.Lt_00DB:
.Lt_00DA:
jmp .Lt_00D6
.Lt_00D8:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_00C1
.Lt_00DC:
.Lt_00D6:
mov dword ptr [ebp-8], 0
jmp .Lt_00C7
.Lt_00DD:
cmp dword ptr [ebp-8], 0
je .Lt_00DF
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_00DF:
.Lt_00DE:
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp-16]
call _CMETHODCALL
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00C1
jmp .Lt_00C7
.Lt_00E0:
push 0
push 1
push 0
push offset _Lt_00E1
push 21
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-4], 0
jmp .Lt_00C1
jmp .Lt_00C7
.Lt_00C8:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 11
ja .Lt_00E0
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00E2+eax*4-4]
_.LT_00E2:
.int .Lt_00D3
.int .Lt_00CA
.int .Lt_00DD
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00CB
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00CE
.Lt_00C7:
push 2112
call _LEXSKIPTOKEN
add esp, 4
.Lt_00C4:
jmp .Lt_00C2
.Lt_00C3:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_00C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CUDTTYPEMEMBER
_CUDTTYPEMEMBER:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_00E7:
.Lt_00E9:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_00EA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
cmp ebx, 20
je .Lt_00EC
jmp .Lt_00EA
.Lt_00EC:
.Lt_00EB:
push 64
call _LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call _HMEMBERID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00EE
push 2048
call _LEXSKIPTOKEN
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
jne .Lt_00F0
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx]
and esi, 511
mov dword ptr [ebp-8], esi
cmp dword ptr [ebp-8], 7
je .Lt_00F4
.Lt_00F5:
cmp dword ptr [ebp-8], 4
je .Lt_00F4
.Lt_00F6:
cmp dword ptr [ebp-8], 17
je .Lt_00F4
.Lt_00F7:
cmp dword ptr [ebp-8], 18
jne .Lt_00F3
.Lt_00F4:
mov esi, dword ptr [ebp+20]
mov dword ptr [esi], -1
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+56]
mov esi, dword ptr [ebp+16]
mov eax, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
mov dword ptr [esi], eax
mov dword ptr [esi+4], ebx
jmp .Lt_00EA
.Lt_00F3:
.Lt_00F1:
.Lt_00F0:
.Lt_00EF:
jmp .Lt_00ED
.Lt_00EE:
jmp .Lt_00EA
.Lt_00ED:
jmp .Lt_00E9
.Lt_00EA:
.Lt_00E8:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMEMBERACCESS
_CMEMBERACCESS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00F9:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 9
jne .Lt_00FC
push dword ptr [ebp+16]
call _ASTBUILDCALLRESULTUDT
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_00FC:
.Lt_00FB:
push 0
push -1
push dword ptr [ebp+16]
call _ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_00FA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMEMBERDEREF
_CMEMBERDEREF:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0113:
mov dword ptr [ebp-4], 0
.Lt_0115:
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 398
jne .Lt_011A
.Lt_011B:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .Lt_011D
push 64
call _LEXSKIPTOKEN
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
je .Lt_0121
.Lt_0122:
cmp dword ptr [ebp-28], 23
jne .Lt_0120
.Lt_0121:
push 0
push -1
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
jmp .Lt_011E
.Lt_0120:
cmp dword ptr [ebp-28], 20
jne .Lt_0123
.Lt_0124:
jmp .Lt_011E
.Lt_0123:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
.Lt_0125:
.Lt_011E:
cmp dword ptr [_ENV+176], 0
je .Lt_0127
push dword ptr [ebp+16]
call _ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_0127:
.Lt_0126:
call _HMULTIDEREF
add dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp+16], eax
jmp .Lt_011C
.Lt_011D:
cmp dword ptr [_SYMB+99428], 0
jne .Lt_0129
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
jmp .Lt_0116
.Lt_0129:
.Lt_0128:
lea eax, [ebp-32]
push eax
push dword ptr [ebp+16]
push 77
call _SYMBFINDUOPOVLPROC
add esp, 12
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_012B
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
jmp .Lt_0116
.Lt_012B:
.Lt_012A:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-28]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_012D
jmp .Lt_0114
.Lt_012D:
.Lt_012C:
push 64
call _LEXSKIPTOKEN
add esp, 4
call _HMULTIDEREF
add dword ptr [ebp-8], eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _CMEMBERACCESS
add esp, 12
mov dword ptr [ebp+16], eax
.Lt_011C:
cmp dword ptr [ebp+16], 0
jne .Lt_012F
jmp .Lt_0114
.Lt_012F:
.Lt_012E:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .Lt_0131
cmp dword ptr [ebp-8], 0
jle .Lt_0133
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
.Lt_0133:
.Lt_0132:
jmp .Lt_0116
.Lt_0131:
.Lt_0130:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
jle .Lt_0135
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTBUILDMULTIDEREF
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0137
jmp .Lt_0114
.Lt_0137:
.Lt_0136:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
.Lt_0135:
.Lt_0134:
jmp .Lt_0118
.Lt_011A:
cmp dword ptr [ebp-24], 91
jne .Lt_0138
.Lt_0139:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _HINDEXEXPR
mov dword ptr [ebp-20], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 93
je .Lt_013B
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 93
call _HSKIPUNTIL
add esp, 16
jmp .Lt_013A
.Lt_013B:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_013A:
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 17
je .Lt_013F
.Lt_0140:
cmp dword ptr [ebp-28], 18
je .Lt_013F
.Lt_0141:
cmp dword ptr [ebp-28], 4
je .Lt_013F
.Lt_0142:
cmp dword ptr [ebp-28], 7
jne .Lt_013E
.Lt_013F:
push dword ptr [ebp-20]
call _HCHECKINTEGERINDEX
add esp, 4
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSTRINDEXING
add esp, 12
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
jmp .Lt_013C
.Lt_013E:
cmp dword ptr [ebp-28], 20
jne .Lt_0143
.Lt_0144:
lea eax, [ebp-32]
push eax
push dword ptr [ebp-20]
push dword ptr [ebp+16]
push 23
call _SYMBFINDSELFBOPOVLPROC
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_0146
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+16]
push dword ptr [ebp-36]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+16], eax
jmp .Lt_0145
.Lt_0146:
cmp dword ptr [ebp-32], 0
jne .Lt_0148
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
.Lt_0148:
.Lt_0147:
.Lt_0145:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_014A
push 64
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _CMEMBERACCESS
add esp, 12
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_014C
jmp .Lt_0114
.Lt_014C:
.Lt_014B:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .Lt_014E
jmp .Lt_0116
.Lt_014E:
.Lt_014D:
.Lt_014A:
.Lt_0149:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
jmp .Lt_013C
.Lt_0143:
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_0153
.Lt_0154:
cmp dword ptr [ebp-32], 23
jne .Lt_0152
.Lt_0153:
push 0
push -1
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 40
mov dword ptr [ebp+12], 0
jmp .Lt_0150
.Lt_0152:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
jne .Lt_0157
push 0
push -1
push 28
call _ERRREPORT
add esp, 12
jmp .Lt_0116
.Lt_0157:
.Lt_0156:
.Lt_0155:
.Lt_0150:
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
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jne .Lt_0159
cmp dword ptr [ebp-16], 0
jne .Lt_0159
.Lt_0165:
push 0
push -1
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
mov edx, dword ptr [_SYMB_DTYPETB+228]
mov eax, edx
sar eax, 31
mov dword ptr [ebp-16], edx
mov dword ptr [ebp-12], eax
.Lt_0159:
.Lt_0158:
push dword ptr [ebp-20]
call _HCHECKINTEGERINDEX
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [_ENV+176], 0
je .Lt_015B
push dword ptr [ebp+16]
call _ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_015B:
.Lt_015A:
push 1
push 0
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-20]
push 30
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp+16]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_015D
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
je .Lt_015F
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .Lt_0116
.Lt_015F:
.Lt_015E:
push 64
call _LEXSKIPTOKEN
add esp, 4
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0161
jmp .Lt_0114
.Lt_0161:
.Lt_0160:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 25
jne .Lt_0163
jmp .Lt_0116
.Lt_0163:
.Lt_0162:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
mov dword ptr [ebp+8], edx
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+8]
mov dword ptr [ebp+12], eax
jmp .Lt_015C
.Lt_015D:
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_015C:
.Lt_014F:
.Lt_013C:
jmp .Lt_0118
.Lt_0138:
jmp .Lt_0116
.Lt_0164:
.Lt_0118:
.Lt_0117:
jmp .Lt_0115
.Lt_0116:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_0114:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CFUNCPTRORMEMBERDEREF
_CFUNCPTRORMEMBERDEREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0166:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+20], 0
jne .Lt_0169
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_016B
jmp .Lt_0167
.Lt_016B:
.Lt_016A:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+12], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_016D
cmp dword ptr [ebp+8], 54
jne .Lt_016F
mov dword ptr [ebp+20], -1
.Lt_016F:
.Lt_016E:
.Lt_016D:
.Lt_016C:
.Lt_0169:
.Lt_0168:
cmp dword ptr [ebp+20], 0
jne .Lt_0171
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0167
.Lt_0171:
.Lt_0170:
cmp dword ptr [_ENV+176], 0
je .Lt_0173
push dword ptr [ebp+16]
call _ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_0173:
.Lt_0172:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0175
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call _CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0177
jmp .Lt_0167
.Lt_0177:
.Lt_0176:
jmp .Lt_0174
.Lt_0175:
mov eax, dword ptr [_PARSER+148]
and eax, 4
test eax, eax
jne .Lt_0179
push 0
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call _CPROCCALL
add esp, 24
mov dword ptr [ebp+16], eax
jmp .Lt_0178
.Lt_0179:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
.Lt_0178:
.Lt_0174:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_0167:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z11CVARIABLEEXP8FBSYMBOLl
__Z11CVARIABLEEXP8FBSYMBOLl:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A0:
mov dword ptr [ebp-4], 0
push dword ptr [ebp+8]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_01A3
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.Lt_01A3:
.Lt_01A2:
push 4096
call _LEXSKIPTOKEN
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
call _SYMBISARRAY
add esp, 4
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], -1
mov dword ptr [ebp-36], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_PARSER+148]
and ebx, 4096
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_01A5
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
je .Lt_01A7
cmp dword ptr [ebp-28], 0
je .Lt_01A9
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_01AB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 16384
test eax, eax
je .Lt_01AD
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
push 52
push dword ptr [ebp-16]
call _ASTSETTYPE
add esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-16]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-16], eax
jmp .Lt_01AC
.Lt_01AD:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
.Lt_01AC:
push dword ptr [ebp-16]
call _ASTCLONETREE
add esp, 4
push eax
push dword ptr [ebp+8]
call _CDYNAMICARRAYINDEX
add esp, 8
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB+99604]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp-16]
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-12]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
jmp .Lt_01AA
.Lt_01AB:
push dword ptr [ebp+8]
call _CFIXEDSIZEARRAYINDEX
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_01AA:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_01AF
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
.Lt_01AF:
.Lt_01AE:
jmp .Lt_01A8
.Lt_01A9:
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
je .Lt_01B1
push 0
push -1
push 72
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
.Lt_01B1:
.Lt_01B0:
.Lt_01A8:
jmp .Lt_01A6
.Lt_01A7:
cmp dword ptr [ebp-28], 0
je .Lt_01B3
mov dword ptr [ebp-32], 0
.Lt_01B3:
.Lt_01B2:
.Lt_01A6:
jmp .Lt_01A4
.Lt_01A5:
cmp dword ptr [ebp-28], 0
je .Lt_01B5
cmp dword ptr [ebp+12], 0
je .Lt_01B7
push 0
push -1
push 73
call _ERRREPORT
add esp, 12
push dword ptr [ebp+8]
call _HMAKEARRAYIDX
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_01B6
.Lt_01B7:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], -1
.Lt_01B6:
.Lt_01B5:
.Lt_01B4:
.Lt_01A4:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .Lt_01B9
cmp dword ptr [ebp-20], 0
je .Lt_01BB
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_01BA
.Lt_01BB:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWIDX
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_01BA:
.Lt_01B9:
.Lt_01B8:
cmp dword ptr [ebp-20], 0
je .Lt_01BD
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_01BD:
.Lt_01BC:
cmp dword ptr [ebp-24], 0
jne .Lt_01BF
cmp dword ptr [ebp-32], 0
je .Lt_01C1
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_01C3
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .Lt_01C5
push 0
push -1
push 265
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01A1
.Lt_01C5:
.Lt_01C4:
push 64
call _LEXSKIPTOKEN
add esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWADDROF
add esp, 4
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01C7
jmp .Lt_01A1
.Lt_01C7:
.Lt_01C6:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .Lt_01C9
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01A1
.Lt_01C9:
.Lt_01C8:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_01CB
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 54
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
.Lt_01CB:
.Lt_01CA:
.Lt_01C3:
.Lt_01C2:
.Lt_01C1:
.Lt_01C0:
.Lt_01BF:
.Lt_01BE:
cmp dword ptr [ebp-32], 0
je .Lt_01CD
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call _CFUNCPTRORMEMBERDEREF
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_01CC
.Lt_01CD:
cmp dword ptr [ebp-36], 0
je .Lt_01CF
push dword ptr [ebp-8]
call _ASTNEWNIDXARRAY
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01CF:
.Lt_01CE:
.Lt_01CC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_01A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z11CVARIABLEEXP10FBSYMCHAINl
__Z11CVARIABLEEXP10FBSYMCHAINl:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D9:
call _LEXGETTEXT
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [_ENV+136], 3
jne .Lt_01DC
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 1
jne .Lt_01DE
cmp dword ptr [ebp-12], -2147483648
jne .Lt_01E0
mov dword ptr [ebp-4], 0
jmp .Lt_01DA
.Lt_01E0:
.Lt_01DF:
.Lt_01DE:
.Lt_01DD:
.Lt_01DC:
.Lt_01DB:
mov eax, dword ptr [_ENV+888]
and eax, 8388608
test eax, eax
je .Lt_01E2
cmp dword ptr [ebp-12], -2147483648
jne .Lt_01E4
push dword ptr [ebp-8]
call _SYMBGETDEFTYPE
add esp, 4
push eax
push dword ptr [ebp+8]
call _SYMBFINDVARBYDEFTYPE
add esp, 8
mov dword ptr [ebp-16], eax
jmp .Lt_01E3
.Lt_01E4:
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _SYMBFINDVARBYSUFFIX
add esp, 8
mov dword ptr [ebp-16], eax
.Lt_01E3:
jmp .Lt_01E1
.Lt_01E2:
cmp dword ptr [ebp-12], -2147483648
je .Lt_01E6
push 4096
call _LEXCHECKTOKEN
add esp, 4
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
.Lt_01E6:
.Lt_01E5:
push 1
push dword ptr [ebp+8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-16], eax
.Lt_01E1:
cmp dword ptr [ebp-16], 0
jne .Lt_01E8
cmp dword ptr [_ENV+932], 0
je .Lt_01EA
push dword ptr [ebp-8]
push 42
call _ERRREPORTUNDEF
add esp, 8
mov dword ptr [ebp-4], 0
jmp .Lt_01DA
.Lt_01EA:
.Lt_01E9:
cmp dword ptr [ebp+8], 0
je .Lt_01EC
mov eax, dword ptr [_ENV+888]
and eax, 8388608
test eax, eax
je .Lt_01EE
push 1
push dword ptr [ebp+8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_01F0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [_SYMB+98528]
cmp dword ptr [ebx], eax
je .Lt_01F2
push 0
push 0
push 131
call _ERRREPORT
add esp, 12
.Lt_01F2:
.Lt_01F1:
.Lt_01F0:
.Lt_01EF:
.Lt_01EE:
.Lt_01ED:
.Lt_01EC:
.Lt_01EB:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _HVARADDUNDECL
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01F4
mov dword ptr [ebp-4], 0
jmp .Lt_01DA
.Lt_01F4:
.Lt_01F3:
mov eax, dword ptr [_PARSER+148]
and eax, 4
test eax, eax
je .Lt_01F6
mov eax, dword ptr [_ENV+888]
and eax, 2
test eax, eax
je .Lt_01F8
cmp dword ptr [_ENV+932], 0
jne .Lt_01FA
push 0
push 1
push dword ptr [ebp-8]
push 11
call _ERRREPORTWARN
add esp, 16
.Lt_01FA:
.Lt_01F9:
.Lt_01F8:
.Lt_01F7:
.Lt_01F6:
.Lt_01F5:
.Lt_01E8:
.Lt_01E7:
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call __Z11CVARIABLEEXP8FBSYMBOLl
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_01DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CWITHVARIABLE
_CWITHVARIABLE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0205:
push 64
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [_PARSER+52]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_PARSER+52]
cmp dword ptr [eax+16], 0
je .Lt_0208
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
.Lt_0208:
.Lt_0207:
push 0
mov eax, dword ptr [_PARSER+52]
push dword ptr [eax+16]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _HIMPFIELD
add esp, 24
mov dword ptr [ebp-4], eax
.Lt_0206:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVARIABLE
_CVARIABLE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0209:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_020E
.Lt_020F:
cmp dword ptr [ebp-8], 2
jne .Lt_020D
.Lt_020E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_020A
jmp .Lt_020B
.Lt_020D:
cmp dword ptr [_PARSER+52], 0
jne .Lt_0212
mov dword ptr [ebp-4], 0
jmp .Lt_020A
.Lt_0212:
.Lt_0211:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_0214
mov dword ptr [ebp-4], 0
jmp .Lt_020A
.Lt_0214:
.Lt_0213:
push dword ptr [ebp+12]
call _CWITHVARIABLE
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0210:
.Lt_020B:
.Lt_020A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CIMPLICITDATAMEMBER
_CIMPLICITDATAMEMBER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0215:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [_PARSER+104]
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
je .Lt_0218
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
.Lt_0218:
.Lt_0217:
cmp dword ptr [ebp-8], 0
jne .Lt_021A
push 0
push 0
push 215
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_0216
.Lt_021A:
.Lt_0219:
cmp dword ptr [ebp+8], 0
jne .Lt_021C
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+8], ebx
.Lt_021C:
.Lt_021B:
push dword ptr [ebp+20]
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+28]
push dword ptr [ebp-8]
call _HIMPFIELD
add esp, 24
mov dword ptr [ebp-4], eax
.Lt_0216:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVARORDEREF
_CVARORDEREF:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_021F:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_0222
mov eax, dword ptr [_PARSER+148]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [_PARSER+148], 4
jmp .Lt_0223
.Lt_0224:
and dword ptr [_PARSER+148], -5
.Lt_0223:
.Lt_0222:
.Lt_0221:
mov eax, dword ptr [_PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
jne .Lt_0226
or dword ptr [_PARSER+148], 2
jmp .Lt_0225
.Lt_0226:
and dword ptr [_PARSER+148], -3
.Lt_0225:
push 0
push 0
call _CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
je .Lt_0228
or dword ptr [_PARSER+148], 2
jmp .Lt_0227
.Lt_0228:
and dword ptr [_PARSER+148], -3
.Lt_0227:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_022A
cmp dword ptr [ebp-8], 0
je .Lt_022C
or dword ptr [_PARSER+148], 4
jmp .Lt_022B
.Lt_022C:
and dword ptr [_PARSER+148], -5
.Lt_022B:
.Lt_022A:
.Lt_0229:
cmp dword ptr [ebp-16], 0
je .Lt_022E
mov eax, dword ptr [ebp+8]
and eax, 2
je .Lt_0230
push dword ptr [ebp-16]
call _ASTSKIPCASTS
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_022F
.Lt_0230:
push dword ptr [ebp-16]
call _ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_022F:
mov dword ptr [ebp-24], -1
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .Lt_0232
.Lt_0234:
mov dword ptr [ebp-24], 0
jmp .Lt_0231
.Lt_0235:
mov ebx, dword ptr [ebp+8]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_0231
.Lt_0232:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967287
cmp ebx, 16
ja .Lt_0231
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.LT_0236+ebx*4-36]
_.LT_0236:
.int .Lt_0235
.int .Lt_0231
.int .Lt_0231
.int .Lt_0231
.int .Lt_0231
.int .Lt_0231
.int .Lt_0231
.int .Lt_0231
.int .Lt_0234
.int .Lt_0234
.int .Lt_0234
.int .Lt_0234
.int .Lt_0231
.int .Lt_0231
.int .Lt_0231
.int .Lt_0231
.int .Lt_0235
.Lt_0231:
cmp dword ptr [ebp-24], 0
je .Lt_0238
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-16]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-16], 0
.Lt_0238:
.Lt_0237:
.Lt_022E:
.Lt_022D:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_0220:
mov eax, dword ptr [ebp-4]
pop ebx
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
_HINDEXEXPR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0068:
push 0
call _CEXPRESSIONWITHNIDXARRAY
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006B
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_006B:
.Lt_006A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKINTEGERINDEX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_006C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_006E
mov dword ptr [ebp-8], 24
jmp .Lt_023C
.Lt_006E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_023C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 8
jne .Lt_0072
.Lt_0073:
jmp .Lt_0070
.Lt_0072:
cmp dword ptr [ebp-12], 24
jne .Lt_0074
.Lt_0075:
push 0
push -1
push 151
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_0070
.Lt_0074:
push 0
push 0
push dword ptr [ebp+8]
push 0
push 8
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0078
push 0
push -1
push 151
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0078:
.Lt_0077:
.Lt_0076:
.Lt_0070:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_006D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CFIXEDSIZEARRAYINDEX:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0079:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-8], 0
.Lt_007B:
inc dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp-16], ebx
jl .Lt_007F
push 0
push 0
push 36
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_007A
.Lt_007F:
.Lt_007E:
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
call _HINDEXEXPR
push eax
call _HCHECKINTEGERINDEX
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [_ENV+172], 0
je .Lt_0081
push 0
push 8
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
call _ASTBUILDBOUNDCHK
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0083
push 0
push 0
push 92
call _ERRREPORT
add esp, 12
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0083:
.Lt_0082:
.Lt_0081:
.Lt_0080:
cmp dword ptr [ebp-8], 0
jne .Lt_0085
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_0084
.Lt_0085:
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0084:
.Lt_007D:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_007B
.Lt_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
cmp dword ptr [ebp-16], ebx
jge .Lt_0087
push 0
push 0
push 36
call _ERRREPORT
add esp, 12
.Lt_0087:
.Lt_0086:
push 1
push 0
push 0
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_007A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDFIELD:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0088:
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _ASTNEWFIELD
add esp, 8
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0089:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HFIELDACCESS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_008A:
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
je .Lt_008D
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_PARSER+148]
and ebx, 4096
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_008F
cmp dword ptr [ebp+24], 0
je .Lt_0091
push 0
push 0
push 73
call _ERRREPORT
add esp, 12
.Lt_0091:
.Lt_0090:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HBUILDFIELD
add esp, 20
push eax
call _ASTNEWNIDXARRAY
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_008B
.Lt_008F:
.Lt_008E:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .Lt_0093
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HBUILDFIELD
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_008B
.Lt_0093:
.Lt_0092:
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_0095
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+84]
mov dword ptr [ebp-20], eax
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
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
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
mov dword ptr [ebp-16], 0
push dword ptr [ebp+8]
call _ASTHASSIDEFX
add esp, 4
test eax, eax
je .Lt_0097
push 2
lea eax, [ebp+8]
push eax
call _ASTREMSIDEFX
add esp, 4
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
.Lt_0097:
.Lt_0096:
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call _ASTCLONETREE
add esp, 4
push eax
call _ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp+12]
call _CDYNAMICARRAYINDEX
add esp, 8
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB+99604]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
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
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp+8], eax
push 2
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
jmp .Lt_0094
.Lt_0095:
push dword ptr [ebp+12]
call _CFIXEDSIZEARRAYINDEX
add esp, 4
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+72]
push dword ptr [eax+68]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HBUILDFIELD
add esp, 20
mov dword ptr [ebp+8], eax
.Lt_0094:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0099
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
.Lt_0099:
.Lt_0098:
jmp .Lt_008C
.Lt_008D:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HBUILDFIELD
add esp, 20
mov dword ptr [ebp+8], eax
.Lt_008C:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_008B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMEMBERID:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_009A:
cmp dword ptr [ebp+8], 0
jne .Lt_009D
push 0
push -1
push 265
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_009B
.Lt_009D:
.Lt_009C:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_009F
.Lt_00A1:
jmp .Lt_009E
.Lt_00A2:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_009B
jmp .Lt_009E
.Lt_009F:
cmp dword ptr [ebp-16], 2
ja .Lt_00A2
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_00A3+eax*4]
_.LT_00A3:
.int .Lt_00A1
.int .Lt_00A1
.int .Lt_00A1
.Lt_009E:
mov dword ptr [ebp-8], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 347
jne .Lt_00A6
.Lt_00A7:
push dword ptr [ebp+8]
call _SYMBGETCOMPCTORHEAD
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00A4
.Lt_00A6:
cmp dword ptr [ebp-16], 348
jne .Lt_00A8
.Lt_00A9:
push dword ptr [ebp+8]
call _SYMBGETCOMPDTOR
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00A8:
.Lt_00A4:
cmp dword ptr [ebp-8], 0
je .Lt_00AB
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_009B
.Lt_00AB:
.Lt_00AA:
push -1
push 0
call _LEXGETTEXT
push eax
push dword ptr [ebp+8]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00AD
call _LEXGETTEXT
push eax
push 18
call _ERRREPORTUNDEF
add esp, 8
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
jmp .Lt_009B
.Lt_00AD:
.Lt_00AC:
.Lt_00AE:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
.Lt_00B1:
mov ebx, dword ptr [ebp-16]
movzx eax, word ptr [ebx+36]
mov ebx, dword ptr [ebp+8]
movzx ecx, word ptr [ebx+36]
cmp eax, ecx
jne .Lt_00B5
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-20], eax
jmp .Lt_00B7
.Lt_00B9:
push dword ptr [ebp-16]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00BB
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.Lt_00BB:
.Lt_00BA:
jmp .Lt_00B6
.Lt_00BC:
jmp .Lt_00B6
.Lt_00BD:
push 0
push 1
push 0
push offset _Lt_00BE
push 21
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-4], 0
jmp .Lt_009B
jmp .Lt_00B6
.Lt_00B7:
mov eax, dword ptr [ebp-20]
add eax, 4294967295
cmp eax, 11
ja .Lt_00BD
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00BF+eax*4-4]
_.LT_00BF:
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00BC
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00B9
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00B9
.Lt_00B6:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .Lt_009B
.Lt_00B5:
.Lt_00B4:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp-16], ecx
.Lt_00B3:
cmp dword ptr [ebp-16], 0
jne .Lt_00B1
.Lt_00B2:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-12], eax
.Lt_00B0:
cmp dword ptr [ebp-12], 0
jne .Lt_00AE
.Lt_00AF:
call _LEXGETTEXT
push eax
push 18
call _ERRREPORTUNDEF
add esp, 8
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
.Lt_009B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSTRINDEXING:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FD:
push dword ptr [ebp+12]
call _ASTUPDSTRCONCAT
add esp, 4
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 9
jne .Lt_0100
push 0
push -1
push 17
call _ERRREPORT
add esp, 12
.Lt_0100:
.Lt_00FF:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0101
mov dword ptr [ebp-8], 24
jmp .Lt_023F
.Lt_0101:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_023F:
cmp dword ptr [ebp-8], 17
jne .Lt_0104
push dword ptr [ebp+12]
call _ASTBUILDSTRPTR
add esp, 4
mov dword ptr [ebp+12], eax
jmp .Lt_0103
.Lt_0104:
push dword ptr [ebp+12]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+12], eax
.Lt_0103:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0105
mov dword ptr [ebp-12], 24
jmp .Lt_0240
.Lt_0105:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0240:
cmp dword ptr [ebp-12], 7
jne .Lt_0108
push 1
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_0108:
.Lt_0107:
cmp dword ptr [_ENV+172], 0
je .Lt_010A
push dword ptr [ebp+12]
call _ASTBUILDPTRCHK
add esp, 4
mov dword ptr [ebp+12], eax
.Lt_010A:
.Lt_0109:
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_010B
mov dword ptr [ebp-16], 24
jmp .Lt_0241
.Lt_010B:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0241:
cmp dword ptr [ebp-16], 7
jne .Lt_010E
mov eax, dword ptr [ebp+8]
and eax, -512
mov ebx, dword ptr [_ENV+248]
and ebx, 511
or eax, ebx
mov dword ptr [ebp+8], eax
jmp .Lt_010D
.Lt_010E:
mov eax, dword ptr [ebp+8]
and eax, -512
or eax, 3
mov dword ptr [ebp+8], eax
.Lt_010D:
push 0
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_00FE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMULTIDEREF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_010F:
mov dword ptr [ebp-8], 0
.Lt_0111:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 42
jne .Lt_0112
push 64
call _LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-8]
jmp .Lt_0111
.Lt_0112:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0110:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_CDYNAMICARRAYINDEX:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_017A:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-8], 0
.Lt_017C:
inc dword ptr [ebp-16]
mov ebx, dword ptr [_SYMB+99616]
mov eax, ebx
sar eax, 31
mov esi, dword ptr [ebp-16]
mov ecx, esi
sar ecx, 31
mov edi, dword ptr [_SYMB+99620]
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
call _HINDEXEXPR
push eax
call _HCHECKINTEGERINDEX
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [_ENV+172], 0
je .Lt_0180
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB+99628]
mov eax, ebx
sar eax, 31
add ebx, dword ptr [ebp-24]
adc eax, dword ptr [ebp-20]
push eax
push ebx
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB+99624]
mov eax, ebx
sar eax, 31
add ebx, dword ptr [ebp-24]
adc eax, dword ptr [ebp-20]
push eax
push ebx
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-12]
call _ASTBUILDBOUNDCHK
add esp, 12
mov dword ptr [ebp-12], eax
.Lt_0180:
.Lt_017F:
cmp dword ptr [ebp-8], 0
jne .Lt_0182
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_0181
.Lt_0182:
push 1
push 0
push 0
push 0
push 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0181:
.Lt_017E:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_017C
.Lt_017D:
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_0184
mov ebx, dword ptr [ebp-16]
inc ebx
push ebx
push dword ptr [ebp+8]
call _SYMBCHECKDYNAMICARRAYDIMENSIONS
add esp, 8
.Lt_0184:
.Lt_0183:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_017B:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVARADDUNDECL:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.Lt_0185:
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
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .Lt_0189
mov dword ptr [ebp-64], 2
jmp .Lt_0188
.Lt_0189:
mov dword ptr [ebp-64], 0
lea ebx, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], ebx
je .Lt_018B
mov ebx, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], ebx
jne .Lt_018D
mov ebx, dword ptr [ebp-64]
and ebx, 57
test ebx, ebx
jne .Lt_018F
or dword ptr [ebp-64], 2
.Lt_018F:
.Lt_018E:
.Lt_018D:
.Lt_018C:
.Lt_018B:
.Lt_018A:
.Lt_0188:
cmp dword ptr [ebp+12], -2147483648
jne .Lt_0191
push dword ptr [ebp+8]
call _SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp+12], eax
jmp .Lt_0190
.Lt_0191:
or dword ptr [ebp-64], 1048576
.Lt_0190:
mov dword ptr [ebp-68], 0
mov eax, dword ptr [_ENV+888]
and eax, 2
test eax, eax
je .Lt_0193
mov eax, dword ptr [_PARSER+148]
and eax, 8
test eax, eax
jne .Lt_0195
or dword ptr [ebp-68], 2
.Lt_0195:
.Lt_0194:
jmp .Lt_0192
.Lt_0193:
or dword ptr [ebp-68], 2
.Lt_0192:
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
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0197
push 0
push 1
push 0
push dword ptr [ebp+8]
push 4
call _ERRREPORTEX
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
call _SYMBUNIQUELABEL
push eax
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
jmp .Lt_0196
.Lt_0197:
push -1
push dword ptr [ebp-8]
call _ASTNEWDECL
add esp, 8
mov dword ptr [ebp-72], eax
mov eax, dword ptr [ebp-68]
and eax, 2
test eax, eax
je .Lt_0199
push dword ptr [ebp-72]
call _ASTADDUNSCOPED
add esp, 4
jmp .Lt_0198
.Lt_0199:
push dword ptr [ebp-72]
call _ASTADD
add esp, 4
.Lt_0198:
.Lt_0196:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0186:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAKEARRAYIDX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_019A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .Lt_019D
mov eax, dword ptr [_SYMB+99604]
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
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_019B
.Lt_019D:
.Lt_019C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_019F
push 0
push 8
mov eax, dword ptr [_SYMB+99604]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_019B
.Lt_019F:
.Lt_019E:
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+4]
push dword ptr [ebx]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_019B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HIMPFIELD:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_01FB:
cmp dword ptr [ebp+24], 0
je .Lt_01FE
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
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_01FD
.Lt_01FE:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01FD:
push dword ptr [ebp+28]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0200
mov dword ptr [ebp-4], 0
jmp .Lt_01FC
.Lt_0200:
.Lt_01FF:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .Lt_0202
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01FC
.Lt_0202:
.Lt_0201:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-12], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_0204
mov eax, dword ptr [ebp+12]
and eax, 511
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.Lt_0204:
.Lt_0203:
push dword ptr [ebp+20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _CFUNCPTRORMEMBERDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_01FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_00BE:	.ascii	"HMEMBERID\0"
.balign 4
_Lt_00E1:	.ascii	"CUDTMEMBER\0"
