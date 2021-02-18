	.intel_syntax noprefix

.section .text
.balign 16

.globl _FBGETLANGOPTIONS@4
_FBGETLANGOPTIONS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_LANGTB+eax*8+4]
mov dword ptr [ebp-4], ebx
.Lt_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBGETLANGNAME@4
_FBGETLANGNAME@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00A7:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [_LANGTB+eax*8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_00A8:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBGETBACKENDNAME@4
_FBGETBACKENDNAME@4:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00A9:
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00AD
.Lt_00AE:
push 0
push 4
push offset _Lt_00AF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00AB
.Lt_00AD:
cmp dword ptr [ebp-16], 1
jne .Lt_00B0
.Lt_00B1:
push 0
push 4
push offset _Lt_00B2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00AB
.Lt_00B0:
cmp dword ptr [ebp-16], 2
jne .Lt_00B3
.Lt_00B4:
push 0
push 5
push offset _Lt_00B5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00AB
.Lt_00B3:
cmp dword ptr [ebp-16], 3
jne .Lt_00B6
.Lt_00B7:
push 0
push 6
push offset _Lt_00B8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_00B6:
.Lt_00AB:
.Lt_00AA:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBINIT@8
_FBINIT@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00B9:
push 5
lea eax, [_ENV+964]
push eax
call _STRSETINIT@8
push 5
lea eax, [_ENV+1008]
push eax
call _STRSETINIT@8
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+956], eax
mov dword ptr [_ENV+960], 0
push 15
push 0
push 1
push 0
push -1
push 280
push offset _INFILETB
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_00BB
push 0
push 0
push offset _Lt_00BC
push 382
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00BB:
mov dword ptr [_ENV+876], 0
mov dword ptr [_ENV+880], 0
mov eax, dword ptr [_ENV+136]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_ENV+932], eax
cmp dword ptr [_ENV+136], 3
je .Lt_00BE
mov dword ptr [_ENV+892], 8
mov dword ptr [_ENV+896], 8
mov dword ptr [_ENV+900], 9
mov dword ptr [_ENV+904], 8
mov dword ptr [_ENV+908], 9
call _FBIS64BIT@0
test eax, eax
je .Lt_00C0
mov dword ptr [_ENV+912], 8
mov dword ptr [_ENV+916], 9
jmp .Lt_00BF
.Lt_00C0:
mov dword ptr [_ENV+912], 13
mov dword ptr [_ENV+916], 14
.Lt_00BF:
mov dword ptr [_ENV+920], 16
jmp .Lt_00BD
.Lt_00BE:
mov dword ptr [_ENV+892], 5
mov dword ptr [_ENV+896], 5
mov dword ptr [_ENV+900], 6
mov dword ptr [_ENV+904], 11
mov dword ptr [_ENV+908], 12
mov dword ptr [_ENV+912], 13
mov dword ptr [_ENV+916], 14
mov dword ptr [_ENV+920], 15
.Lt_00BD:
mov dword ptr [_ENV+928], 2
mov dword ptr [_ENV+936], -1
mov dword ptr [_ENV+940], 0
mov dword ptr [_ENV+944], 0
mov dword ptr [_ENV+924], 0
mov eax, dword ptr [_ENV+136]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_ENV+948], eax
mov dword ptr [_ENV+1052], 0
mov dword ptr [_ENV+268], 0
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .Lt_00C4
.Lt_00C5:
cmp dword ptr [ebp-8], 4
jne .Lt_00C3
.Lt_00C4:
mov dword ptr [_ENV+268], -1
jmp .Lt_00C1
.Lt_00C3:
cmp dword ptr [ebp-8], 1
je .Lt_00C7
.Lt_00C8:
cmp dword ptr [ebp-8], 0
jne .Lt_00C6
.Lt_00C7:
call _FBIS64BIT@0
not eax
mov dword ptr [_ENV+268], eax
.Lt_00C6:
.Lt_00C1:
mov dword ptr [_ENV+272], 0
call _PARSERSETCTX@0
push dword ptr [ebp+8]
call _SYMBINIT@4
call _ERRINIT@0
call _ASTINIT@0
call _IRINIT@0
mov eax, dword ptr [_ENV+248]
and eax, 480
je .Lt_00C9
mov dword ptr [ebp-4], 24
jmp .Lt_00CB
.Lt_00C9:
mov eax, dword ptr [_ENV+248]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_00CB:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [_ENV+264], ebx
push 0
push 256
lea ebx, [_ENV+840]
push ebx
call _HASHINIT@12
push 0
push 256
lea ebx, [_ENV+852]
push ebx
call _HASHINIT@12
push 0
push 256
lea ebx, [_ENV+864]
push ebx
call _HASHINIT@12
push 0
push 144
push 128
lea ebx, [_PARSER]
push ebx
call _STACKNEW@16
push 0
push 0
call _LEXINIT@8
call _PARSERINIT@0
call _RTLINIT@0
mov dword ptr [_ENV+952], -1
.Lt_00BA:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FBEND@0
_FBEND@0:
.Lt_00CF:
mov dword ptr [_ENV+952], 0
call _RTLEND@0
call _PARSEREND@0
call _LEXEND@0
lea eax, [_PARSER]
push eax
call _STACKFREE@4
lea eax, [_ENV+840]
push eax
call _HASHEND@4
lea eax, [_ENV+864]
push eax
call _HASHEND@4
lea eax, [_ENV+852]
push eax
call _HASHEND@4
call _IREND@0
call _ASTEND@0
call _ERREND@0
call _SYMBEND@0
push offset _INFILETB
call _fb_ArrayErase@4
lea eax, [_ENV+964]
push eax
call _STRSETEND@4
lea eax, [_ENV+1008]
push eax
call _STRSETEND@4
.Lt_00D0:
ret
.balign 16

.globl _FBGLOBALINIT@0
_FBGLOBALINIT@0:
.Lt_00D5:
push 256
lea eax, [_ENV]
push eax
call _STRLISTINIT@8
push 256
lea eax, [_ENV+32]
push eax
call _STRLISTINIT@8
push 256
lea eax, [_ENV+64]
push eax
call _STRLISTINIT@8
mov dword ptr [_ENV+96], 0
mov dword ptr [_ENV+100], 0
mov dword ptr [_ENV+104], 0
mov dword ptr [_ENV+108], 0
mov dword ptr [_ENV+112], 1
mov dword ptr [_ENV+116], 0
mov dword ptr [_ENV+120], 0
mov dword ptr [_ENV+124], 0
mov dword ptr [_ENV+128], 0
mov dword ptr [_ENV+132], 0
mov dword ptr [_ENV+136], 0
mov dword ptr [_ENV+140], 0
mov dword ptr [_ENV+144], 0
mov dword ptr [_ENV+148], 0
mov dword ptr [_ENV+152], 0
mov dword ptr [_ENV+156], 0
mov dword ptr [_ENV+164], 0
mov dword ptr [_ENV+168], 0
mov dword ptr [_ENV+172], 0
mov dword ptr [_ENV+176], 0
mov dword ptr [_ENV+160], 0
mov dword ptr [_ENV+180], 0
mov dword ptr [_ENV+184], 1
mov dword ptr [_ENV+188], -1
mov dword ptr [_ENV+192], 10
mov dword ptr [_ENV+196], 0
mov dword ptr [_ENV+200], 0
mov dword ptr [_ENV+208], 0
mov dword ptr [_ENV+216], 0
mov dword ptr [_ENV+220], 0
mov dword ptr [_ENV+224], 0
mov dword ptr [_ENV+212], 0
mov dword ptr [_ENV+228], 0
mov dword ptr [_ENV+232], -1
mov dword ptr [_ENV+236], 0
mov dword ptr [_ENV+240], 0
call _HUPDATELANGOPTIONS@0
call _HUPDATETARGETOPTIONS@0
.Lt_00D6:
ret
.balign 16

.globl _FBADDINCLUDEPATH@4
_FBADDINCLUDEPATH@4:
push ebp
mov ebp, esp
.Lt_00D7:
push dword ptr [ebp+8]
lea eax, [_ENV+64]
push eax
call _STRLISTAPPEND@8
.Lt_00D8:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBADDPREDEFINE@4
_FBADDPREDEFINE@4:
push ebp
mov ebp, esp
.Lt_00D9:
push dword ptr [ebp+8]
lea eax, [_ENV]
push eax
call _STRLISTAPPEND@8
.Lt_00DA:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBADDPREINCLUDE@4
_FBADDPREINCLUDE@4:
push ebp
mov ebp, esp
.Lt_00DB:
push dword ptr [ebp+8]
lea eax, [_ENV+32]
push eax
call _STRLISTAPPEND@8
.Lt_00DC:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBSETOPTION@8
_FBSETOPTION@8:
push ebp
mov ebp, esp
sub esp, 8
.Lt_00DD:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00E0
.Lt_00E2:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+96], eax
jmp .Lt_00DF
.Lt_00E3:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+100], eax
jmp .Lt_00DF
.Lt_00E4:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+104], eax
jmp .Lt_00DF
.Lt_00E5:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+108], eax
call _HUPDATETARGETOPTIONS@0
jmp .Lt_00DF
.Lt_00E6:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+112], eax
jmp .Lt_00DF
.Lt_00E7:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+116], eax
jmp .Lt_00DF
.Lt_00E8:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+120], eax
jmp .Lt_00DF
.Lt_00E9:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+124], eax
jmp .Lt_00DF
.Lt_00EA:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+128], eax
jmp .Lt_00DF
.Lt_00EB:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+132], eax
jmp .Lt_00DF
.Lt_00EC:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+136], eax
call _HUPDATELANGOPTIONS@0
jmp .Lt_00DF
.Lt_00ED:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+140], eax
jmp .Lt_00DF
.Lt_00EE:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+144], eax
jmp .Lt_00DF
.Lt_00EF:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+148], eax
jmp .Lt_00DF
.Lt_00F0:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+152], eax
jmp .Lt_00DF
.Lt_00F1:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+156], eax
jmp .Lt_00DF
.Lt_00F2:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+160], eax
jmp .Lt_00DF
.Lt_00F3:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+164], eax
jmp .Lt_00DF
.Lt_00F4:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+168], eax
jmp .Lt_00DF
.Lt_00F5:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+172], eax
jmp .Lt_00DF
.Lt_00F6:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+176], eax
jmp .Lt_00DF
.Lt_00F7:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+180], eax
jmp .Lt_00DF
.Lt_00F8:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+184], eax
jmp .Lt_00DF
.Lt_00F9:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+188], eax
jmp .Lt_00DF
.Lt_00FA:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+192], eax
jmp .Lt_00DF
.Lt_00FB:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+196], eax
jmp .Lt_00DF
.Lt_00FC:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+200], eax
jmp .Lt_00DF
.Lt_00FD:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+204], eax
jmp .Lt_00DF
.Lt_00FE:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+208], eax
jmp .Lt_00DF
.Lt_00FF:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+212], eax
jmp .Lt_00DF
.Lt_0100:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+216], eax
jmp .Lt_00DF
.Lt_0101:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+220], eax
jmp .Lt_00DF
.Lt_0102:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+224], eax
jmp .Lt_00DF
.Lt_0103:
cmp dword ptr [ebp+12], 0
jge .Lt_0105
cmp dword ptr [_ENV+228], 0
jne .Lt_0107
call _FBIS64BIT@0
test eax, eax
je .Lt_0108
mov dword ptr [ebp-8], 2097152
jmp .Lt_0114
.Lt_0108:
mov dword ptr [ebp-8], 1048576
.Lt_0114:
mov eax, dword ptr [ebp-8]
mov dword ptr [_ENV+228], eax
.Lt_0107:
.Lt_0106:
jmp .Lt_0104
.Lt_0105:
call _FBIS64BIT@0
test eax, eax
je .Lt_010B
cmp dword ptr [ebp+12], 65536
jge .Lt_010C
mov dword ptr [ebp-8], 65536
jmp .Lt_0115
.Lt_010C:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_0115:
mov eax, dword ptr [ebp-8]
mov dword ptr [_ENV+228], eax
jmp .Lt_010A
.Lt_010B:
cmp dword ptr [ebp+12], 32768
jge .Lt_010E
mov dword ptr [ebp-8], 32768
jmp .Lt_0116
.Lt_010E:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_0116:
mov eax, dword ptr [ebp-8]
mov dword ptr [_ENV+228], eax
.Lt_010A:
.Lt_0104:
jmp .Lt_00DF
.Lt_0110:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+232], eax
jmp .Lt_00DF
.Lt_0111:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+236], eax
jmp .Lt_00DF
.Lt_0112:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+240], eax
jmp .Lt_00DF
.Lt_00E0:
cmp dword ptr [ebp-4], 36
ja .Lt_00DF
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_0113+eax*4]
_.LT_0113:
.int .Lt_00E2
.int .Lt_00E3
.int .Lt_00E4
.int .Lt_00E5
.int .Lt_00E6
.int .Lt_00E7
.int .Lt_00E8
.int .Lt_00E9
.int .Lt_00EA
.int .Lt_00EB
.int .Lt_00EC
.int .Lt_00ED
.int .Lt_00EE
.int .Lt_00EF
.int .Lt_00F0
.int .Lt_00F1
.int .Lt_00F2
.int .Lt_00F3
.int .Lt_00F4
.int .Lt_00F6
.int .Lt_00F5
.int .Lt_00F7
.int .Lt_00F8
.int .Lt_00F9
.int .Lt_00FA
.int .Lt_00FB
.int .Lt_00FC
.int .Lt_00FD
.int .Lt_00FE
.int .Lt_00FF
.int .Lt_0100
.int .Lt_0101
.int .Lt_0102
.int .Lt_0103
.int .Lt_0110
.int .Lt_0111
.int .Lt_0112
.Lt_00DF:
.Lt_00DE:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FBGETOPTION@4
_FBGETOPTION@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0117:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_011A
.Lt_011C:
mov eax, dword ptr [_ENV+96]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_011D:
mov eax, dword ptr [_ENV+100]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_011E:
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_011F:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0120:
mov eax, dword ptr [_ENV+112]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0121:
mov eax, dword ptr [_ENV+116]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0122:
mov eax, dword ptr [_ENV+120]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0123:
mov eax, dword ptr [_ENV+124]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0124:
mov eax, dword ptr [_ENV+128]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0125:
mov eax, dword ptr [_ENV+132]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0126:
mov eax, dword ptr [_ENV+136]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0127:
mov eax, dword ptr [_ENV+140]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0128:
mov eax, dword ptr [_ENV+144]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0129:
mov eax, dword ptr [_ENV+148]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_012A:
mov eax, dword ptr [_ENV+152]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_012B:
mov eax, dword ptr [_ENV+156]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_012C:
mov eax, dword ptr [_ENV+160]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_012D:
mov eax, dword ptr [_ENV+164]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_012E:
mov eax, dword ptr [_ENV+168]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_012F:
mov eax, dword ptr [_ENV+172]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0130:
mov eax, dword ptr [_ENV+176]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0131:
mov eax, dword ptr [_ENV+180]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0132:
mov eax, dword ptr [_ENV+184]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0133:
mov eax, dword ptr [_ENV+188]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0134:
mov eax, dword ptr [_ENV+192]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0135:
mov eax, dword ptr [_ENV+196]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0136:
mov eax, dword ptr [_ENV+200]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0137:
mov eax, dword ptr [_ENV+204]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0138:
mov eax, dword ptr [_ENV+208]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0139:
mov eax, dword ptr [_ENV+212]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_013A:
mov eax, dword ptr [_ENV+216]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_013B:
mov eax, dword ptr [_ENV+220]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_013C:
mov eax, dword ptr [_ENV+224]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_013D:
mov eax, dword ptr [_ENV+228]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_013E:
mov eax, dword ptr [_ENV+232]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_013F:
mov eax, dword ptr [_ENV+236]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0140:
mov eax, dword ptr [_ENV+240]
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0141:
mov dword ptr [ebp-4], 0
jmp .Lt_0119
.Lt_011A:
cmp dword ptr [ebp-8], 36
ja .Lt_0141
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0142+eax*4]
_.LT_0142:
.int .Lt_011C
.int .Lt_011D
.int .Lt_011E
.int .Lt_011F
.int .Lt_0120
.int .Lt_0121
.int .Lt_0122
.int .Lt_0123
.int .Lt_0124
.int .Lt_0125
.int .Lt_0126
.int .Lt_0127
.int .Lt_0128
.int .Lt_0129
.int .Lt_012A
.int .Lt_012B
.int .Lt_012C
.int .Lt_012D
.int .Lt_012E
.int .Lt_0130
.int .Lt_012F
.int .Lt_0131
.int .Lt_0132
.int .Lt_0133
.int .Lt_0134
.int .Lt_0135
.int .Lt_0136
.int .Lt_0137
.int .Lt_0138
.int .Lt_0139
.int .Lt_013A
.int .Lt_013B
.int .Lt_013C
.int .Lt_013D
.int .Lt_013E
.int .Lt_013F
.int .Lt_0140
.Lt_0119:
.Lt_0118:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBCHANGEOPTION@8
_FBCHANGEOPTION@8:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0143:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0146
.Lt_0148:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _FBSETOPTION@8
jmp .Lt_0145
.Lt_0149:
push dword ptr [ebp+8]
call _FBGETOPTION@4
cmp dword ptr [ebp+12], eax
je .Lt_014B
cmp dword ptr [_PARSER+96], 0
je .Lt_014D
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
je .Lt_014F
push 0
push 0
push 61
call _ERRREPORT@12
jmp .Lt_014E
.Lt_014F:
push 0
push 0
push 96
call _ERRREPORT@12
.Lt_014E:
jmp .Lt_014C
.Lt_014D:
cmp dword ptr [_ENV+140], 0
je .Lt_0151
push 0
push 1
push 0
push 30
call _ERRREPORTWARN@16
jmp .Lt_0150
.Lt_0151:
cmp dword ptr [_ENV+956], 0
jne .Lt_0153
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _FBSETOPTION@8
mov dword ptr [_ENV+960], -1
call _ERRHIDEFURTHERERRORS@0
jmp .Lt_0152
.Lt_0153:
push 0
push 1
push 0
push 31
call _ERRREPORTWARN@16
.Lt_0152:
.Lt_0150:
.Lt_014C:
.Lt_014B:
.Lt_014A:
jmp .Lt_0145
.Lt_0154:
push 0
push 0
push 21
call _ERRREPORT@12
jmp .Lt_0145
.Lt_0146:
mov eax, dword ptr [ebp-4]
add eax, 4294967286
cmp eax, 19
ja .Lt_0154
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_0155+eax*4-40]
_.LT_0155:
.int .Lt_0149
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0154
.int .Lt_0148
.Lt_0145:
.Lt_0144:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FBISCROSSCOMP@0
_FBISCROSSCOMP@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0156:
mov eax, dword ptr [_ENV+108]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0157:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETTARGETID@0
_FBGETTARGETID@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0168:
push 0
push -1
push dword ptr [_ENV+112]
push dword ptr [_ENV+108]
call _HGETTARGETID@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0169:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETHOSTID@0
_FBGETHOSTID@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_016A:
push 0
push -1
push 1
push 0
call _HGETTARGETID@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_016B:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBIDENTIFYOS@4
_FBIDENTIFYOS@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_016C:
mov dword ptr [ebp-8], 0
.Lt_0171:
push 0
mov eax, dword ptr [ebp-8]
imul eax, 20
push dword ptr [_TARGETINFO+eax]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0173
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_016D
.Lt_0173:
.Lt_0172:
.Lt_016F:
inc dword ptr [ebp-8]
.Lt_016E:
cmp dword ptr [ebp-8], 11
jle .Lt_0171
.Lt_0170:
mov dword ptr [ebp-4], -1
.Lt_016D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBIDENTIFYCPUFAMILY@4
_FBIDENTIFYCPUFAMILY@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0174:
mov dword ptr [ebp-8], 0
.Lt_0179:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_CPUFAMILYINFO+eax*8]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_017B
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0175
.Lt_017B:
.Lt_017A:
.Lt_0177:
inc dword ptr [ebp-8]
.Lt_0176:
cmp dword ptr [ebp-8], 6
jle .Lt_0179
.Lt_0178:
mov dword ptr [ebp-4], -1
.Lt_0175:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBCPUTYPEFROMCPUFAMILYID@4
_FBCPUTYPEFROMCPUFAMILYID@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_017C:
push dword ptr [ebp+8]
call _FBIDENTIFYCPUFAMILY@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jl .Lt_017F
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_CPUFAMILYINFO+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .Lt_017D
.Lt_017F:
.Lt_017E:
mov dword ptr [ebp-4], -1
.Lt_017D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBGETGCCARCH@0
_FBGETGCCARCH@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0180:
mov eax, dword ptr [_ENV+112]
sal eax, 4
mov ebx, dword ptr [_CPUTYPEINFO+eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0183
mov ebx, dword ptr [_ENV+112]
sal ebx, 4
mov eax, dword ptr [_CPUTYPEINFO+ebx+4]
mov dword ptr [ebp-8], eax
.Lt_0183:
.Lt_0182:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0181:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETFBCARCH@0
_FBGETFBCARCH@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0184:
mov eax, dword ptr [_ENV+112]
sal eax, 4
mov ebx, dword ptr [_CPUTYPEINFO+eax+4]
mov dword ptr [ebp-4], ebx
.Lt_0185:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBIS64BIT@0
_FBIS64BIT@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0186:
call _FBGETBITS@0
cmp eax, 64
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0187:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETBITS@0
_FBGETBITS@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0189:
mov eax, dword ptr [_ENV+112]
sal eax, 4
mov ebx, dword ptr [_CPUTYPEINFO+eax+12]
mov dword ptr [ebp-4], ebx
.Lt_018A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETHOSTBITS@0
_FBGETHOSTBITS@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_018B:
mov eax, dword ptr [_CPUTYPEINFO+28]
mov dword ptr [ebp-4], eax
.Lt_018C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETCPUFAMILY@0
_FBGETCPUFAMILY@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_018D:
mov eax, dword ptr [_ENV+112]
sal eax, 4
mov ebx, dword ptr [_CPUTYPEINFO+eax+8]
mov dword ptr [ebp-4], ebx
.Lt_018E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBIDENTIFYFBCARCH@4
_FBIDENTIFYFBCARCH@4:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_018F:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 7
push offset _Lt_0194
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0193
.Lt_0195:
mov dword ptr [ebp-4], 1
call _fb_CpuDetect
shr eax, 28
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .Lt_0198
.Lt_0199:
mov dword ptr [ebp-4], 0
jmp .Lt_0196
.Lt_0198:
cmp dword ptr [ebp-20], 4
jne .Lt_019A
.Lt_019B:
mov dword ptr [ebp-4], 1
jmp .Lt_0196
.Lt_019A:
cmp dword ptr [ebp-20], 5
jne .Lt_019C
.Lt_019D:
mov dword ptr [ebp-4], 2
jmp .Lt_0196
.Lt_019C:
cmp dword ptr [ebp-20], 6
jne .Lt_019E
.Lt_019F:
mov dword ptr [ebp-4], 3
.Lt_019E:
.Lt_0196:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0190
jmp .Lt_0191
.Lt_0193:
push 3
push offset _Lt_01A1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01A0
.Lt_01A2:
mov dword ptr [ebp-4], 1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0190
jmp .Lt_0191
.Lt_01A0:
push 3
push offset _Lt_01A4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01A3
.Lt_01A5:
mov dword ptr [ebp-4], 13
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0190
.Lt_01A3:
.Lt_0191:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-8], 0
.Lt_01A9:
push -1
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
sal eax, 4
push dword ptr [_CPUTYPEINFO+eax+4]
call _fb_StrCompare@16
test eax, eax
jne .Lt_01AB
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0190
.Lt_01AB:
.Lt_01AA:
.Lt_01A7:
inc dword ptr [ebp-8]
.Lt_01A6:
cmp dword ptr [ebp-8], 19
jle .Lt_01A9
.Lt_01A8:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 7
push offset _Lt_007E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_01B0
.Lt_01B1:
push 6
push offset _Lt_01AF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01AE
.Lt_01B0:
mov dword ptr [ebp-4], 13
jmp .Lt_01AC
.Lt_01AE:
mov dword ptr [ebp-4], -1
.Lt_01B2:
.Lt_01AC:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0190:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBTARGETSUPPORTSELF@0
_FBTARGETSUPPORTSELF@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_01B3:
mov eax, dword ptr [_ENV+260]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_01B4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBTARGETSUPPORTSCOFF@0
_FBTARGETSUPPORTSCOFF@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_01B6:
mov eax, dword ptr [_ENV+260]
and eax, 128
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_01B7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETENTRYPOINT@0
_FBGETENTRYPOINT@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01B9:
cmp dword ptr [_ENV+108], 4
jne .Lt_01BC
push 0
push 12
push offset _Lt_01BD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_01BB
.Lt_01BC:
push 0
push 5
push offset _Lt_01BE
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_01BB:
.Lt_01BA:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETMODULEENTRY@0
_FBGETMODULEENTRY@0:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01BF:
push 0
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 261
lea eax, [_ENV+560]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _HSTRIPPATH@4
push eax
push -1
push offset _Lt_01C4
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push dword ptr [_Lt_01C4]
call _HCLEARNAME@4
push 0
push 10
push offset _Lt_01C3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_01C4
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_01C0:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01C4,12

.section .text
.balign 16

.globl _FBGETINPUTFILEPARENTDIR@0
_FBGETINPUTFILEPARENTDIR@0:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01C5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [_ENV+280]
push eax
call _PATHISABSOLUTE@4
test eax, eax
jne .Lt_01C8
push 0
push -1
call _HCURDIR@0
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_001A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_01C8:
.Lt_01C7:
push 0
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 261
lea eax, [_ENV+280]
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _HSTRIPFILENAME@4
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_01C6:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBADDLIB@4
_FBADDLIB@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_01CC:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
lea eax, [_ENV+964]
push eax
call _STRSETADD@12
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_01CD:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBADDLIBPATH@4
_FBADDLIBPATH@4:
push ebp
mov ebp, esp
sub esp, 24
.Lt_01CF:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
lea eax, [_ENV+1008]
push eax
call _STRSETADD@12
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_01D0:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBCOMPILE@16
_FBCOMPILE@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0209:
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [_ENV+280]
push eax
call _fb_StrAssign@20
push 92
lea eax, [_ENV+280]
push eax
call _HREPLACESLASH@8
lea eax, [_ENV+280]
push eax
lea eax, [_ENV+840]
push eax
push 0
call _HADDINCFILE@12
mov dword ptr [_ENV+544], eax
mov eax, dword ptr [ebp+20]
mov dword ptr [_ENV+548], eax
push 0
push 0
push dword ptr [ebp+12]
push 261
lea eax, [_ENV+560]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+20]
mov dword ptr [_ENV+828], eax
push dword ptr [ebp+8]
call _HFILEEXISTS@4
test eax, eax
jne .Lt_020C
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call _ERRREPORTEX@20
jmp .Lt_020A
.Lt_020C:
.Lt_020B:
call _fb_FileFree@0
mov dword ptr [_ENV+276], eax
push 0
push dword ptr [_ENV+276]
push 0
push 1
push 0
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_020E
push 0
push 1
push -1
push dword ptr [ebp+8]
push 26
call _ERRREPORTEX@20
jmp .Lt_020A
.Lt_020E:
.Lt_020D:
cmp dword ptr [_ENV+236], 0
je .Lt_0210
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _PATHSTRIPCURDIR@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
push 0
call _HSHOWINCLUDE@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0210:
.Lt_020F:
push dword ptr [_ENV+276]
call _HCHECKFILEFORMAT@4
mov dword ptr [_ENV+552], eax
call dword ptr [_IR+12]
test eax, eax
jne .Lt_0214
push 0
push 1
push -1
lea eax, [_ENV+560]
push eax
push 26
call _ERRREPORTEX@20
jmp .Lt_020A
.Lt_0214:
.Lt_0213:
push 1
call _FBGETOPTION@4
test eax, eax
je .Lt_0216
call _fb_FileFree@0
mov dword ptr [_ENV+836], eax
push 0
push dword ptr [_ENV+836]
push 0
push 0
push 3
push dword ptr [ebp+16]
call _fb_FileOpen@24
test eax, eax
je .Lt_0218
push 0
push 1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
push 26
call _ERRREPORTEX@20
jmp .Lt_020A
.Lt_0218:
.Lt_0217:
jmp .Lt_0215
.Lt_0216:
mov dword ptr [_ENV+836], 0
.Lt_0215:
call _FBMAINBEGIN@0
call _FBPARSEPREDEFINES@0
call _FBPARSEPREINCLUDES@0
call _FBSHOULDCONTINUE@0
test eax, eax
je .Lt_021A
call _CPROGRAM@0
.Lt_021A:
.Lt_0219:
call _FBMAINEND@0
push 34
call _FBGETOPTION@4
mov ebx, eax
call _FBISCROSSCOMP@0
not eax
and ebx, eax
mov eax, dword ptr [_ENV+96]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_021C
call _HEMITOBJINFO@0
.Lt_021C:
.Lt_021B:
call dword ptr [_IR+16]
cmp dword ptr [_ENV+836], 0
jle .Lt_021E
push dword ptr [_ENV+836]
call _fb_FileClose@4
test eax, eax
je .Lt_021F
push 0
push 0
push offset _Lt_00BC
push 1208
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_021F:
.Lt_021E:
.Lt_021D:
push dword ptr [_ENV+276]
call _fb_FileClose@4
test eax, eax
je .Lt_0220
push 0
push 0
push offset _Lt_00BC
push 1211
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0220:
call _FBSHOULDCONTINUE@0
test eax, eax
je .Lt_0222
push dword ptr [_SYMB+98412]
call _SYMBCHECKLABELS@4
.Lt_0222:
.Lt_0221:
.Lt_020A:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _FBSHOULDRESTART@0
_FBSHOULDRESTART@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0224:
mov eax, dword ptr [_ENV+960]
mov dword ptr [ebp-4], eax
.Lt_0225:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBSHOULDCONTINUE@0
_FBSHOULDCONTINUE@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0226:
mov eax, dword ptr [_ENV+960]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _ERRGETCOUNT@0
cmp eax, dword ptr [_ENV+192]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_0227:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBSETLIBS@8
_FBSETLIBS@8:
push ebp
mov ebp, esp
.Lt_022A:
push dword ptr [ebp+8]
lea eax, [_ENV+964]
push eax
call _STRSETCOPY@8
push dword ptr [ebp+12]
lea eax, [_ENV+1008]
push eax
call _STRSETCOPY@8
.Lt_022B:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FBGETLIBS@8
_FBGETLIBS@8:
push ebp
mov ebp, esp
.Lt_022C:
lea eax, [_ENV+964]
push eax
push dword ptr [ebp+8]
call _STRSETCOPY@8
lea eax, [_ENV+1008]
push eax
push dword ptr [ebp+12]
call _STRSETCOPY@8
.Lt_022D:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FBPRAGMAONCE@0
_FBPRAGMAONCE@0:
.Lt_022E:
push 1
push offset _Lt_0000
push 261
lea eax, [_ENV+280]
push eax
call _fb_StrCompare@16
test eax, eax
jle .Lt_0231
lea eax, [_ENV+280]
push eax
lea eax, [_ENV+864]
push eax
call _HFINDINCFILE@8
test eax, eax
jne .Lt_0233
lea eax, [_ENV+280]
push eax
lea eax, [_ENV+840]
push eax
lea eax, [_ENV+864]
push eax
call _HADDINCFILE@12
.Lt_0233:
.Lt_0232:
.Lt_0231:
.Lt_0230:
.Lt_022F:
ret
.balign 16

.globl _FBINCLUDEFILE@8
_FBINCLUDEFILE@8:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.Lt_025E:
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+876], 16
jl .Lt_0261
push 0
push 0
push 27
call _ERRREPORT@12
call _ERRHIDEFURTHERERRORS@0
jmp .Lt_025F
.Lt_0261:
.Lt_0260:
push 0
push -1
lea eax, [_ENV+280]
push eax
call _HSTRIPFILENAME@4
push eax
push 260
push offset _Lt_029A
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push 260
push offset _Lt_029A
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 260
push offset _Lt_029A
call _fb_StrAssign@20
push offset _Lt_029A
call _HFILEEXISTS@4
test eax, eax
jne .Lt_0264
push dword ptr [ebp+8]
call _HFILEEXISTS@4
test eax, eax
jne .Lt_0266
lea eax, [_ENV+64]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-28], eax
.Lt_0267:
cmp dword ptr [ebp-28], 0
je .Lt_0268
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push 2
push offset _Lt_001A
push -1
push dword ptr [ebp-28]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push 260
push offset _Lt_029A
call _fb_StrAssign@20
push offset _Lt_029A
call _HFILEEXISTS@4
test eax, eax
je .Lt_026C
jmp .Lt_0268
.Lt_026C:
.Lt_026B:
push dword ptr [ebp-28]
call _LISTGETNEXT@4
mov dword ptr [ebp-28], eax
jmp .Lt_0267
.Lt_0268:
cmp dword ptr [ebp-28], 0
jne .Lt_026E
cmp dword ptr [_ENV+236], 0
je .Lt_0270
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 29
push offset _Lt_0271
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
mov eax, dword ptr [_ENV+876]
inc eax
push eax
call _HSHOWINCLUDE@8
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
.Lt_0270:
.Lt_026F:
push 0
push 1
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push 2
push offset _Lt_0274
push -1
push 0
push dword ptr [ebp+8]
push 2
push offset _Lt_0274
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-64]
push 23
call _ERRREPORTEX@20
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
call _ERRHIDEFURTHERERRORS@0
jmp .Lt_025F
.Lt_026E:
.Lt_026D:
jmp .Lt_0265
.Lt_0266:
push 0
push 0
push dword ptr [ebp+8]
push 260
push offset _Lt_029A
call _fb_StrAssign@20
.Lt_0265:
.Lt_0264:
.Lt_0263:
mov eax, offset _Lt_029A
mov dword ptr [ebp-20], eax
lea eax, [ebp-20]
push eax
call _IS_ROOTPATH@4
test eax, eax
jne .Lt_027A
push 0
push -1
push 260
push offset _Lt_029A
push -1
push 2
push offset _Lt_001A
push -1
call _HCURDIR@0
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push 260
push offset _Lt_029A
call _fb_StrAssign@20
.Lt_027A:
.Lt_0279:
mov eax, offset _Lt_029A
mov dword ptr [ebp-24], eax
lea eax, [ebp-24]
push eax
call _IS_ROOTPATH@4
test eax, eax
jne .Lt_027F
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_0274
push -1
push 260
push offset _Lt_029A
push 2
push offset _Lt_0274
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 23
call _ERRREPORTEX@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
call _ERRHIDEFURTHERERRORS@0
jmp .Lt_025F
.Lt_027F:
.Lt_027E:
push offset _Lt_029A
call _SOLVE_PATH@4
test eax, eax
jne .Lt_0284
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_0274
push -1
push 260
push offset _Lt_029A
push 2
push offset _Lt_0274
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 23
call _ERRREPORTEX@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
call _ERRHIDEFURTHERERRORS@0
jmp .Lt_025F
.Lt_0284:
.Lt_0283:
push 92
push offset _Lt_029A
call _HREPLACESLASH@8
cmp dword ptr [ebp+12], 0
je .Lt_0289
push offset _Lt_029A
lea eax, [_ENV+852]
push eax
call _HFINDINCFILE@8
test eax, eax
je .Lt_028B
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset _Lt_029A
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HONSKIPPEDFILE@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_025F
.Lt_028B:
.Lt_028A:
.Lt_0289:
.Lt_0288:
push offset _Lt_029A
lea eax, [_ENV+864]
push eax
call _HFINDINCFILE@8
test eax, eax
je .Lt_028E
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset _Lt_029A
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HONSKIPPEDFILE@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_025F
.Lt_028E:
.Lt_028D:
push offset _Lt_029A
lea eax, [_ENV+840]
push eax
lea eax, [_ENV+852]
push eax
call _HADDINCFILE@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_ENV+876]
imul eax, 280
add eax, dword ptr [_INFILETB]
lea ebx, [eax]
lea eax, [_ENV+276]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 70
rep movsd
pop esi
pop edi
inc dword ptr [_ENV+876]
push 0
push 260
push offset _Lt_029A
push 261
lea eax, [_ENV+280]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp-4]
mov dword ptr [_ENV+544], eax
cmp dword ptr [_ENV+236], 0
je .Lt_0291
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset _Lt_029A
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _PATHSTRIPCURDIR@4
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
push dword ptr [_ENV+876]
call _HSHOWINCLUDE@8
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0291:
.Lt_0290:
call _fb_FileFree@0
mov dword ptr [_ENV+276], eax
push 0
push dword ptr [_ENV+276]
push 0
push 1
push 0
push offset _Lt_029A
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_0295
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_0274
push -1
push 0
push dword ptr [ebp+8]
push 2
push offset _Lt_0274
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 23
call _ERRREPORTEX@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
call _ERRHIDEFURTHERERRORS@0
jmp .Lt_025F
.Lt_0295:
.Lt_0294:
push dword ptr [_ENV+276]
call _HCHECKFILEFORMAT@4
mov dword ptr [_ENV+552], eax
call _LEXPUSHCTX@0
push 0
push -1
call _LEXINIT@8
call _CPROGRAM@0
call _LEXPOPCTX@0
push dword ptr [_ENV+276]
call _fb_FileClose@4
test eax, eax
je .Lt_0299
push 0
push 0
push offset _Lt_00BC
push 1510
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0299:
dec dword ptr [_ENV+876]
lea eax, [_ENV+276]
mov ebx, dword ptr [_ENV+876]
imul ebx, 280
add ebx, dword ptr [_INFILETB]
lea ecx, [ebx]
push ecx
push edi
push esi
mov edi, eax
mov esi, ecx
mov ecx, 70
rep movsd
pop esi
pop edi
pop ecx
.Lt_025F:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_029A,260

.section .text
.balign 16

.globl _FBOVERRIDEFILENAME@4
_FBOVERRIDEFILENAME@4:
push ebp
mov ebp, esp
.Lt_029B:
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [_ENV+280]
push eax
call _fb_StrAssign@20
push dword ptr [ebp+8]
lea eax, [_ENV+840]
push eax
push 0
call _HADDINCFILE@12
mov dword ptr [_ENV+544], eax
.Lt_029C:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBGETLANGID@4
_FBGETLANGID@4:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_029D:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 3
push offset _Lt_006B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_02A1
.Lt_02A2:
mov dword ptr [ebp-4], 0
jmp .Lt_029F
.Lt_02A1:
push 11
push offset _Lt_006C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_02A3
.Lt_02A4:
mov dword ptr [ebp-4], 1
jmp .Lt_029F
.Lt_02A3:
push 7
push offset _Lt_006D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_02A5
.Lt_02A6:
mov dword ptr [ebp-4], 2
jmp .Lt_029F
.Lt_02A5:
push 3
push offset _Lt_006E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_02A7
.Lt_02A8:
mov dword ptr [ebp-4], 3
jmp .Lt_029F
.Lt_02A7:
mov dword ptr [ebp-4], -1
.Lt_02A9:
.Lt_029F:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_029E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBGETBACKENDVALISTTYPE@0
_FBGETBACKENDVALISTTYPE@0:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_02AA:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .Lt_02AE
.Lt_02AF:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_02B2
.Lt_02B3:
mov dword ptr [ebp-8], 2
jmp .Lt_02B0
.Lt_02B2:
cmp dword ptr [ebp-16], 1
jne .Lt_02B4
.Lt_02B5:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_02B8
.Lt_02B9:
mov dword ptr [ebp-8], 2
jmp .Lt_02B6
.Lt_02B8:
mov dword ptr [ebp-8], 3
.Lt_02BA:
.Lt_02B6:
jmp .Lt_02B0
.Lt_02B4:
cmp dword ptr [ebp-16], 2
jne .Lt_02BB
.Lt_02BC:
mov dword ptr [ebp-8], 5
jmp .Lt_02B0
.Lt_02BB:
cmp dword ptr [ebp-16], 3
jne .Lt_02BD
.Lt_02BE:
mov dword ptr [ebp-8], 4
jmp .Lt_02B0
.Lt_02BD:
cmp dword ptr [ebp-16], 4
jne .Lt_02BF
.Lt_02C0:
mov dword ptr [ebp-8], 3
jmp .Lt_02B0
.Lt_02BF:
cmp dword ptr [ebp-16], 5
jne .Lt_02C1
.Lt_02C2:
mov dword ptr [ebp-8], 3
jmp .Lt_02B0
.Lt_02C1:
mov dword ptr [ebp-8], 2
.Lt_02C3:
.Lt_02B0:
jmp .Lt_02AC
.Lt_02AE:
cmp dword ptr [ebp-12], 0
jne .Lt_02C4
.Lt_02C5:
mov dword ptr [ebp-8], 1
jmp .Lt_02AC
.Lt_02C4:
cmp dword ptr [ebp-12], 2
jne .Lt_02C6
.Lt_02C7:
mov dword ptr [ebp-8], 1
jmp .Lt_02AC
.Lt_02C6:
cmp dword ptr [ebp-12], 3
jne .Lt_02C8
.Lt_02C9:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_02CC
.Lt_02CD:
mov dword ptr [ebp-8], 2
jmp .Lt_02CA
.Lt_02CC:
mov dword ptr [ebp-8], 3
.Lt_02CE:
.Lt_02CA:
jmp .Lt_02AC
.Lt_02C8:
mov dword ptr [ebp-8], 1
.Lt_02CF:
.Lt_02AC:
cmp dword ptr [ebp-8], 2
jne .Lt_02D1
push 27
call _FBGETOPTION@4
test eax, eax
je .Lt_02D3
mov dword ptr [ebp-8], 1
.Lt_02D3:
.Lt_02D2:
.Lt_02D1:
.Lt_02D0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_02AB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__fb:
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
_HFINDINCFILE@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_009B:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
push offset _Lt_02D4
call _fb_StrAssign@20
push dword ptr [_Lt_02D4]
push dword ptr [ebp+8]
call _HASHLOOKUP@8
mov dword ptr [ebp-4], eax
.Lt_009C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_02D4,12

.section .text
.balign 16
_HADDINCFILE@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_009D:
push 0
push dword ptr [ebp+16]
call _fb_StrLen@8
inc eax
push eax
call _XALLOCATE@4
mov dword ptr [_Lt_02D5], eax
push dword ptr [_Lt_02D5]
push dword ptr [ebp+16]
call _HUCASE@8
push dword ptr [_Lt_02D5]
call _HASHHASH@4
mov dword ptr [_Lt_02D6], eax
push dword ptr [_Lt_02D6]
push dword ptr [_Lt_02D5]
push dword ptr [ebp+12]
call _HASHLOOKUPEX@12
mov dword ptr [_Lt_02D7], eax
cmp dword ptr [_Lt_02D7], 0
jne .Lt_00A0
push dword ptr [_Lt_02D6]
push dword ptr [_Lt_02D5]
push dword ptr [_Lt_02D5]
push dword ptr [ebp+12]
call _HASHADD@16
jmp .Lt_009F
.Lt_00A0:
push dword ptr [_Lt_02D5]
call _free
add esp, 4
mov eax, dword ptr [_Lt_02D7]
mov dword ptr [_Lt_02D5], eax
.Lt_009F:
cmp dword ptr [ebp+8], 0
je .Lt_00A2
push dword ptr [_Lt_02D6]
push dword ptr [_Lt_02D5]
push dword ptr [ebp+8]
call _HASHLOOKUPEX@12
mov dword ptr [_Lt_02D7], eax
cmp dword ptr [_Lt_02D7], 0
jne .Lt_00A4
push dword ptr [_Lt_02D6]
push dword ptr [_Lt_02D5]
push dword ptr [_Lt_02D5]
push dword ptr [ebp+8]
call _HASHADD@16
.Lt_00A4:
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
mov eax, dword ptr [_Lt_02D5]
mov dword ptr [ebp-4], eax
.Lt_009E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_02D5,4
.balign 4
	.lcomm	_Lt_02D7,4
.balign 4
	.lcomm	_Lt_02D6,4

.section .text
.balign 16
_HUPDATELANGOPTIONS@0:
push ebx
.Lt_00D1:
mov eax, dword ptr [_ENV+136]
mov ebx, dword ptr [_LANGTB+eax*8+4]
mov dword ptr [_ENV+888], ebx
.Lt_00D2:
pop ebx
ret
.balign 16
_HUPDATETARGETOPTIONS@0:
push ebx
.Lt_00D3:
lea eax, [_ENV+244]
mov ebx, dword ptr [_ENV+108]
imul ebx, 20
lea ecx, [_TARGETINFO+ebx]
push ecx
push edi
push esi
mov edi, eax
mov esi, ecx
mov ecx, 5
rep movsd
pop esi
pop edi
pop ecx
.Lt_00D4:
pop ebx
ret
.balign 16
_HGETTARGETID@8:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0159:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [_CPUTYPEINFO+eax+8]
mov dword ptr [ebp-16], ebx
push 0
push 0
mov ebx, dword ptr [ebp+8]
imul ebx, 20
push dword ptr [_TARGETINFO+ebx]
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrInit@20
cmp dword ptr [ebp+8], 0
je .Lt_015D
.Lt_015E:
cmp dword ptr [ebp+8], 3
je .Lt_015D
.Lt_015F:
cmp dword ptr [ebp+8], 4
jne .Lt_015C
.Lt_015D:
cmp dword ptr [ebp-16], 0
jne .Lt_0161
push 0
push -1
lea ebx, [ebp-28]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrInit@20
lea ebx, [ebp-28]
push ebx
call _fb_StrDelete@4
jmp .Lt_015A
.Lt_0161:
.Lt_0160:
.Lt_015C:
.Lt_015B:
mov ebx, dword ptr [ebp+8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-16]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0163
push 0
push 6
push offset _Lt_0164
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
jmp .Lt_015A
.Lt_0163:
.Lt_0162:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [_CPUFAMILYINFO+eax*8]
push -1
push 2
push offset _Lt_0165
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.Lt_015A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_FBPARSEPREDEFINES@0:
push ebp
mov ebp, esp
sub esp, 32
.Lt_01D3:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [_ENV]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-28], eax
.Lt_01D5:
cmp dword ptr [ebp-28], 0
je .Lt_01D6
push 1
push offset _Lt_01D7
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-28]
push 1
call _fb_StrInstr@12
dec eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jge .Lt_01D9
push -1
push dword ptr [ebp-28]
call _fb_StrLen@8
mov dword ptr [ebp-32], eax
.Lt_01D9:
.Lt_01D8:
push 0
push -1
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push dword ptr [ebp-28]
call _fb_StrLen@8
sub eax, dword ptr [ebp-32]
dec eax
push eax
push dword ptr [ebp-28]
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_01DB
push 0
push 2
push offset _Lt_0004
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_01DB:
.Lt_01DA:
push 0
push 0
push 0
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _SYMBADDDEFINE@24
push dword ptr [ebp-28]
call _LISTGETNEXT@4
mov dword ptr [ebp-28], eax
jmp .Lt_01D5
.Lt_01D6:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_01D4:
mov esp, ebp
pop ebp
ret
.balign 16
_FBPARSEPREINCLUDES@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01DC:
lea eax, [_ENV+32]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_01DE:
cmp dword ptr [ebp-4], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBSHOULDCONTINUE@0
and ebx, eax
je .Lt_01DF
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _FBINCLUDEFILE@8
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_01DE
.Lt_01DF:
.Lt_01DD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HAPPENDFBCTINF@4:
push ebp
mov ebp, esp
.Lt_01E0:
cmp dword ptr [_ENV+1052], 0
jne .Lt_01E3
mov dword ptr [_ENV+1052], -1
call dword ptr [_IR+216]
.Lt_01E3:
.Lt_01E2:
push dword ptr [ebp+8]
call dword ptr [_IR+220]
.Lt_01E1:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITOBJINFO@0:
push ebp
mov ebp, esp
sub esp, 16
.Lt_01E4:
lea eax, [_ENV+964]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_01E6:
cmp dword ptr [ebp-4], 0
je .Lt_01E7
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
jne .Lt_01E9
push 0
call _OBJINFOENCODE@4
push eax
call _HAPPENDFBCTINF@4
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _HAPPENDFBCTINF@4
.Lt_01E9:
.Lt_01E8:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_01E6
.Lt_01E7:
lea eax, [_ENV+1008]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_01EA:
cmp dword ptr [ebp-4], 0
je .Lt_01EB
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
jne .Lt_01ED
push 1
call _OBJINFOENCODE@4
push eax
call _HAPPENDFBCTINF@4
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _HESCAPE@4
push eax
call _HAPPENDFBCTINF@4
.Lt_01ED:
.Lt_01EC:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_01EA
.Lt_01EB:
cmp dword ptr [_ENV+216], 0
je .Lt_01EF
push 2
call _OBJINFOENCODE@4
push eax
call _HAPPENDFBCTINF@4
.Lt_01EF:
.Lt_01EE:
cmp dword ptr [_ENV+220], 0
je .Lt_01F1
push 3
call _OBJINFOENCODE@4
push eax
call _HAPPENDFBCTINF@4
.Lt_01F1:
.Lt_01F0:
cmp dword ptr [_ENV+136], 0
je .Lt_01F3
push 4
call _OBJINFOENCODE@4
push eax
call _HAPPENDFBCTINF@4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [_ENV+136]
call _FBGETLANGNAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-16]
call _HAPPENDFBCTINF@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_01F3:
.Lt_01F2:
cmp dword ptr [_ENV+1052], 0
je .Lt_01F6
call dword ptr [_IR+224]
.Lt_01F6:
.Lt_01F5:
.Lt_01E5:
mov esp, ebp
pop ebp
ret
.balign 16
_HSHOWINCLUDE@8:
push ebp
mov ebp, esp
sub esp, 32
.Lt_01F7:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .Lt_01FA
.Lt_01FD:
push 0
push 5
push offset _Lt_01FE
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_01FB:
inc dword ptr [ebp-28]
.Lt_01FA:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-28], eax
jle .Lt_01FD
.Lt_01FC:
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString@12
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_01F8:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HONSKIPPEDFILE@4:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0200:
cmp dword ptr [_ENV+236], 0
je .Lt_0203
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0205
push -1
push -1
push dword ptr [ebp+8]
call _PATHSTRIPCURDIR@4
push eax
push 2
push offset _Lt_0204
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
mov eax, dword ptr [_ENV+876]
inc eax
push eax
call _HSHOWINCLUDE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0203:
.Lt_0202:
.Lt_0201:
mov esp, ebp
pop ebp
ret 4
.balign 16
_IS_ROOTPATH@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0234:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0237
jmp .Lt_0235
.Lt_0237:
.Lt_0236:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx+1]
cmp eax, 58
jne .Lt_023A
mov dword ptr [ebp-4], -1
.Lt_023A:
.Lt_0239:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
movzx eax, byte ptr [ecx]
cmp eax, 92
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_023D
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
movzx ecx, byte ptr [ebx+1]
cmp ecx, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
movzx ecx, byte ptr [eax+1]
cmp ecx, 92
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_023F
mov dword ptr [ebp-4], -1
jmp .Lt_023E
.Lt_023F:
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push -1
push 2
push offset _Lt_0238
push -1
push 1
call _FBGETINPUTFILEPARENTDIR@0
push eax
call _fb_LEFT@8
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrAssign@20
mov dword ptr [ebp-4], -1
.Lt_023E:
.Lt_023D:
.Lt_023C:
.Lt_0235:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_GET_ROOTPATH_LEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0242:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
test ebx, ebx
jne .Lt_0245
jmp .Lt_0243
.Lt_0245:
.Lt_0244:
mov dword ptr [ebp-4], 1
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
cmp eax, 58
jne .Lt_0247
mov dword ptr [ebp-4], 3
.Lt_0247:
.Lt_0246:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 47
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
movzx ecx, byte ptr [ebx]
cmp ecx, 92
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0249
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
cmp eax, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
movzx ecx, byte ptr [eax+1]
cmp ecx, 92
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_024B
mov dword ptr [ebp-4], 2
.Lt_024B:
.Lt_024A:
.Lt_0249:
.Lt_0248:
.Lt_0243:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_SOLVE_PATH@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_024C:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+8]
call _GET_ROOTPATH_LEN@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [_Lt_02E3+eax*4], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-36], eax
jmp .Lt_0250
.Lt_0253:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-24]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 47
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-32], 92
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0255
cmp dword ptr [ebp-16], 0
jne .Lt_0257
jmp .Lt_0256
.Lt_0257:
mov eax, dword ptr [ebp-20]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0258
dec dword ptr [ebp-28]
jmp .Lt_0256
.Lt_0258:
mov ebx, dword ptr [ebp-20]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-16]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0259
cmp dword ptr [ebp-8], 0
je .Lt_025B
dec dword ptr [ebp-8]
.Lt_025B:
.Lt_025A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_Lt_02E3+eax*4]
mov dword ptr [ebp-28], ebx
jmp .Lt_0256
.Lt_0259:
mov bl, byte ptr [ebp-32]
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
mov byte ptr [eax], bl
inc dword ptr [ebp-28]
inc dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-28]
mov dword ptr [_Lt_02E3+ebx*4], eax
.Lt_0256:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
jmp .Lt_0254
.Lt_0255:
cmp dword ptr [ebp-32], 46
jne .Lt_025D
inc dword ptr [ebp-20]
.Lt_025D:
.Lt_025C:
inc dword ptr [ebp-16]
mov al, byte ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
mov byte ptr [ebx], al
inc dword ptr [ebp-28]
.Lt_0254:
.Lt_0251:
inc dword ptr [ebp-24]
.Lt_0250:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-24], eax
jle .Lt_0253
.Lt_0252:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
mov byte ptr [eax], 0
mov dword ptr [ebp-4], -1
.Lt_024D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_02E3,524

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0004:	.ascii	"1\0"
.balign 4
_Lt_001A:	.ascii	"\\\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.globl _ENV
.balign 4
	.lcomm	_ENV,1056

.section .data
.balign 4
_INFILETB:
.long 0
.long 0
.int 0
.int 280
.int 0
.int 8
.skip 96,0
.balign 4
_LANGTB:
.int _Lt_006B
.int 536873471
.int _Lt_006C
.int 738066591
.int _Lt_006D
.int 738132125
.int _Lt_006E
.int 738131968
.balign 4
_Lt_006B:	.ascii	"fb\0"
.balign 4
_Lt_006C:	.ascii	"deprecated\0"
.balign 4
_Lt_006D:	.ascii	"fblite\0"
.balign 4
_Lt_006E:	.ascii	"qb\0"
.balign 4
_TARGETINFO:
.int _Lt_0070
.int 6
.int 1
.int 1
.int 148
.int _Lt_0071
.int 6
.int 1
.int 1
.int 149
.int _Lt_0072
.int 12
.int 3
.int 2
.int 105
.int _Lt_0073
.int 3
.int 3
.int 2
.int 136
.int _Lt_0074
.int 12
.int 1
.int 1
.int 144
.int _Lt_0075
.int 12
.int 3
.int 2
.int 89
.int _Lt_0076
.int 12
.int 3
.int 2
.int 89
.int _Lt_0077
.int 12
.int 3
.int 2
.int 89
.int _Lt_0078
.int 12
.int 3
.int 2
.int 89
.int _Lt_0079
.int 12
.int 3
.int 2
.int 313
.int _Lt_007A
.int 12
.int 3
.int 2
.int 89
.int _Lt_007B
.int 6
.int 3
.int 2
.int 25
.balign 4
_Lt_0070:	.ascii	"win32\0"
.balign 4
_Lt_0071:	.ascii	"cygwin\0"
.balign 4
_Lt_0072:	.ascii	"linux\0"
.balign 4
_Lt_0073:	.ascii	"dos\0"
.balign 4
_Lt_0074:	.ascii	"xbox\0"
.balign 4
_Lt_0075:	.ascii	"freebsd\0"
.balign 4
_Lt_0076:	.ascii	"dragonfly\0"
.balign 4
_Lt_0077:	.ascii	"solaris\0"
.balign 4
_Lt_0078:	.ascii	"openbsd\0"
.balign 4
_Lt_0079:	.ascii	"darwin\0"
.balign 4
_Lt_007A:	.ascii	"netbsd\0"
.balign 4
_Lt_007B:	.ascii	"js\0"
.balign 4
_CPUFAMILYINFO:
.int _Lt_007D
.int 1
.int _Lt_007E
.int 13
.int _Lt_007F
.int 15
.int _Lt_0080
.int 16
.int _Lt_0081
.int 17
.int _Lt_0082
.int 18
.int _Lt_0083
.int 19
.balign 4
_Lt_007D:	.ascii	"x86\0"
.balign 4
_Lt_007E:	.ascii	"x86_64\0"
.balign 4
_Lt_007F:	.ascii	"arm\0"
.balign 4
_Lt_0080:	.ascii	"aarch64\0"
.balign 4
_Lt_0081:	.ascii	"powerpc\0"
.balign 4
_Lt_0082:	.ascii	"powerpc64\0"
.balign 4
_Lt_0083:	.ascii	"asmjs\0"
.balign 4
_CPUTYPEINFO:
.int _Lt_0085
.int _Lt_0086
.int 0
.int 32
.int _Lt_0087
.int _Lt_0088
.int 0
.int 32
.int _Lt_0089
.int _Lt_008A
.int 0
.int 32
.int _Lt_008B
.int _Lt_008C
.int 0
.int 32
.long 0
.int _Lt_008D
.int 0
.int 32
.long 0
.int _Lt_008E
.int 0
.int 32
.long 0
.int _Lt_008F
.int 0
.int 32
.long 0
.int _Lt_0090
.int 0
.int 32
.long 0
.int _Lt_0091
.int 0
.int 32
.long 0
.int _Lt_0092
.int 0
.int 32
.long 0
.int _Lt_0093
.int 0
.int 32
.long 0
.int _Lt_0094
.int 0
.int 32
.int _Lt_0095
.int _Lt_0096
.int 0
.int 32
.long 0
.int _Lt_0097
.int 1
.int 64
.long 0
.int _Lt_0098
.int 2
.int 32
.long 0
.int _Lt_0099
.int 2
.int 32
.int _Lt_009A
.int _Lt_0080
.int 3
.int 64
.long 0
.int _Lt_0081
.int 4
.int 32
.long 0
.int _Lt_0082
.int 5
.int 64
.long 0
.int _Lt_0083
.int 6
.int 32
.balign 4
_Lt_0085:	.ascii	"i386\0"
.balign 4
_Lt_0086:	.ascii	"386\0"
.balign 4
_Lt_0087:	.ascii	"i486\0"
.balign 4
_Lt_0088:	.ascii	"486\0"
.balign 4
_Lt_0089:	.ascii	"i586\0"
.balign 4
_Lt_008A:	.ascii	"586\0"
.balign 4
_Lt_008B:	.ascii	"i686\0"
.balign 4
_Lt_008C:	.ascii	"686\0"
.balign 4
_Lt_008D:	.ascii	"athlon\0"
.balign 4
_Lt_008E:	.ascii	"athlon-xp\0"
.balign 4
_Lt_008F:	.ascii	"athlon-fx\0"
.balign 4
_Lt_0090:	.ascii	"k8-sse3\0"
.balign 4
_Lt_0091:	.ascii	"pentium-mmx\0"
.balign 4
_Lt_0092:	.ascii	"pentium2\0"
.balign 4
_Lt_0093:	.ascii	"pentium3\0"
.balign 4
_Lt_0094:	.ascii	"pentium4\0"
.balign 4
_Lt_0095:	.ascii	"prescott\0"
.balign 4
_Lt_0096:	.ascii	"pentium4-sse3\0"
.balign 4
_Lt_0097:	.ascii	"x86-64\0"
.balign 4
_Lt_0098:	.ascii	"armv6\0"
.balign 4
_Lt_0099:	.ascii	"armv7-a\0"
.balign 4
_Lt_009A:	.ascii	"armv8-a\0"
.balign 4
_Lt_00AF:	.ascii	"gas\0"
.balign 4
_Lt_00B2:	.ascii	"gcc\0"
.balign 4
_Lt_00B5:	.ascii	"llvm\0"
.balign 4
_Lt_00B8:	.ascii	"gas64\0"
.balign 4
_Lt_00BC:	.ascii	"src/compiler/fb.bas\0"
.balign 4
_Lt_0164:	.ascii	"win64\0"
.balign 4
_Lt_0165:	.ascii	"-\0"
.balign 4
_Lt_0194:	.ascii	"native\0"
.balign 4
_Lt_01A1:	.ascii	"32\0"
.balign 4
_Lt_01A4:	.ascii	"64\0"
.balign 4
_Lt_01AF:	.ascii	"amd64\0"
.balign 4
_Lt_01BD:	.ascii	"XBoxStartup\0"
.balign 4
_Lt_01BE:	.ascii	"main\0"
.balign 4
_Lt_01C3:	.ascii	"fb_ctor__\0"
.balign 4
_Lt_01D7:	.ascii	"=\0"
.balign 4
_Lt_01FE:	.ascii	" |  \0"
.balign 4
_Lt_0204:	.ascii	"(\0"
.balign 4
_Lt_0205:	.ascii	")\0"
.balign 4
_Lt_0238:	.ascii	":\0"
.balign 4
_Lt_0271:	.ascii	" (not found in include dirs)\0"
.balign 4
_Lt_0274:	.ascii	"\"\0"

.section .ctors
.int _fb_ctor__fb
