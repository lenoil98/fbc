	.intel_syntax noprefix

.section .text
.balign 16

.globl FBGETLANGOPTIONS
FBGETLANGOPTIONS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [LANGTB+eax*8+4]
mov dword ptr [ebp-4], ebx
.Lt_00A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETLANGNAME
FBGETLANGNAME:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00A6:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [LANGTB+eax*8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_00A7:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETBACKENDNAME
FBGETBACKENDNAME:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00A8:
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00AC
.Lt_00AD:
push 0
push 4
push offset Lt_00AE
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00AA
.Lt_00AC:
cmp dword ptr [ebp-16], 1
jne .Lt_00AF
.Lt_00B0:
push 0
push 4
push offset Lt_00B1
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00AA
.Lt_00AF:
cmp dword ptr [ebp-16], 2
jne .Lt_00B2
.Lt_00B3:
push 0
push 5
push offset Lt_00B4
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00AA
.Lt_00B2:
cmp dword ptr [ebp-16], 3
jne .Lt_00B5
.Lt_00B6:
push 0
push 6
push offset Lt_00B7
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_00B5:
.Lt_00AA:
.Lt_00A9:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBINIT
FBINIT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00B8:
push 5
lea eax, [ENV+964]
push eax
call STRSETINIT
add esp, 8
push 5
lea eax, [ENV+1008]
push eax
call STRSETINIT
add esp, 8
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+956], eax
mov dword ptr [ENV+960], 0
push 15
push 0
push 1
push 0
push -1
push 280
push offset INFILETB
call fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_00BA
push 0
push 0
push offset Lt_00BB
push 382
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00BA:
mov dword ptr [ENV+876], 0
mov dword ptr [ENV+880], 0
mov eax, dword ptr [ENV+136]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ENV+932], eax
cmp dword ptr [ENV+136], 3
je .Lt_00BD
mov dword ptr [ENV+892], 8
mov dword ptr [ENV+896], 8
mov dword ptr [ENV+900], 9
mov dword ptr [ENV+904], 8
mov dword ptr [ENV+908], 9
call FBIS64BIT
test eax, eax
je .Lt_00BF
mov dword ptr [ENV+912], 8
mov dword ptr [ENV+916], 9
jmp .Lt_00BE
.Lt_00BF:
mov dword ptr [ENV+912], 13
mov dword ptr [ENV+916], 14
.Lt_00BE:
mov dword ptr [ENV+920], 16
jmp .Lt_00BC
.Lt_00BD:
mov dword ptr [ENV+892], 5
mov dword ptr [ENV+896], 5
mov dword ptr [ENV+900], 6
mov dword ptr [ENV+904], 11
mov dword ptr [ENV+908], 12
mov dword ptr [ENV+912], 13
mov dword ptr [ENV+916], 14
mov dword ptr [ENV+920], 15
.Lt_00BC:
mov dword ptr [ENV+928], 2
mov dword ptr [ENV+936], -1
mov dword ptr [ENV+940], 0
mov dword ptr [ENV+944], 0
mov dword ptr [ENV+924], 0
mov eax, dword ptr [ENV+136]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ENV+948], eax
mov dword ptr [ENV+1052], 0
mov dword ptr [ENV+268], 0
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .Lt_00C3
.Lt_00C4:
cmp dword ptr [ebp-8], 4
jne .Lt_00C2
.Lt_00C3:
mov dword ptr [ENV+268], -1
jmp .Lt_00C0
.Lt_00C2:
cmp dword ptr [ebp-8], 1
je .Lt_00C6
.Lt_00C7:
cmp dword ptr [ebp-8], 0
jne .Lt_00C5
.Lt_00C6:
call FBIS64BIT
not eax
mov dword ptr [ENV+268], eax
.Lt_00C5:
.Lt_00C0:
mov dword ptr [ENV+272], 0
call PARSERSETCTX
push dword ptr [ebp+8]
call SYMBINIT
add esp, 4
call ERRINIT
call ASTINIT
call IRINIT
mov eax, dword ptr [ENV+248]
and eax, 480
je .Lt_00C8
mov dword ptr [ebp-4], 24
jmp .Lt_00CA
.Lt_00C8:
mov eax, dword ptr [ENV+248]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_00CA:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ENV+264], ebx
push 0
push 256
lea ebx, [ENV+840]
push ebx
call HASHINIT
add esp, 12
push 0
push 256
lea ebx, [ENV+852]
push ebx
call HASHINIT
add esp, 12
push 0
push 256
lea ebx, [ENV+864]
push ebx
call HASHINIT
add esp, 12
push 0
push 104
push 128
lea ebx, [PARSER]
push ebx
call STACKNEW
add esp, 16
push 0
push 0
call LEXINIT
add esp, 8
call PARSERINIT
call RTLINIT
mov dword ptr [ENV+952], -1
.Lt_00B9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBEND
FBEND:
.Lt_00CE:
mov dword ptr [ENV+952], 0
call RTLEND
call PARSEREND
call LEXEND
lea eax, [PARSER]
push eax
call STACKFREE
add esp, 4
lea eax, [ENV+840]
push eax
call HASHEND
add esp, 4
lea eax, [ENV+864]
push eax
call HASHEND
add esp, 4
lea eax, [ENV+852]
push eax
call HASHEND
add esp, 4
call IREND
call ASTEND
call ERREND
call SYMBEND
push offset INFILETB
call fb_ArrayErase
add esp, 4
lea eax, [ENV+964]
push eax
call STRSETEND
add esp, 4
lea eax, [ENV+1008]
push eax
call STRSETEND
add esp, 4
.Lt_00CF:
ret
.balign 16

.globl FBGLOBALINIT
FBGLOBALINIT:
.Lt_00D4:
push 256
lea eax, [ENV]
push eax
call STRLISTINIT
add esp, 8
push 256
lea eax, [ENV+32]
push eax
call STRLISTINIT
add esp, 8
push 256
lea eax, [ENV+64]
push eax
call STRLISTINIT
add esp, 8
mov dword ptr [ENV+96], 0
mov dword ptr [ENV+100], 0
mov dword ptr [ENV+104], 0
mov dword ptr [ENV+108], 5
mov dword ptr [ENV+112], 1
mov dword ptr [ENV+116], 0
mov dword ptr [ENV+120], 0
mov dword ptr [ENV+124], 0
mov dword ptr [ENV+128], 0
mov dword ptr [ENV+132], 0
mov dword ptr [ENV+136], 0
mov dword ptr [ENV+140], 0
mov dword ptr [ENV+144], 0
mov dword ptr [ENV+148], 0
mov dword ptr [ENV+152], 0
mov dword ptr [ENV+156], 0
mov dword ptr [ENV+164], 0
mov dword ptr [ENV+168], 0
mov dword ptr [ENV+172], 0
mov dword ptr [ENV+176], 0
mov dword ptr [ENV+160], 0
mov dword ptr [ENV+180], 0
mov dword ptr [ENV+184], 1
mov dword ptr [ENV+188], -1
mov dword ptr [ENV+192], 10
mov dword ptr [ENV+196], 0
mov dword ptr [ENV+200], 0
mov dword ptr [ENV+208], 0
mov dword ptr [ENV+216], 0
mov dword ptr [ENV+220], 0
mov dword ptr [ENV+224], 0
mov dword ptr [ENV+212], 0
mov dword ptr [ENV+228], 0
mov dword ptr [ENV+232], -1
mov dword ptr [ENV+236], 0
mov dword ptr [ENV+240], 0
call HUPDATELANGOPTIONS
call HUPDATETARGETOPTIONS
.Lt_00D5:
ret
.balign 16

.globl FBADDINCLUDEPATH
FBADDINCLUDEPATH:
push ebp
mov ebp, esp
.Lt_00D6:
push dword ptr [ebp+8]
lea eax, [ENV+64]
push eax
call STRLISTAPPEND
add esp, 8
.Lt_00D7:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBADDPREDEFINE
FBADDPREDEFINE:
push ebp
mov ebp, esp
.Lt_00D8:
push dword ptr [ebp+8]
lea eax, [ENV]
push eax
call STRLISTAPPEND
add esp, 8
.Lt_00D9:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBADDPREINCLUDE
FBADDPREINCLUDE:
push ebp
mov ebp, esp
.Lt_00DA:
push dword ptr [ebp+8]
lea eax, [ENV+32]
push eax
call STRLISTAPPEND
add esp, 8
.Lt_00DB:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBSETOPTION
FBSETOPTION:
push ebp
mov ebp, esp
sub esp, 8
.Lt_00DC:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00DF
.Lt_00E1:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+96], eax
jmp .Lt_00DE
.Lt_00E2:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+100], eax
jmp .Lt_00DE
.Lt_00E3:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+104], eax
jmp .Lt_00DE
.Lt_00E4:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+108], eax
call HUPDATETARGETOPTIONS
jmp .Lt_00DE
.Lt_00E5:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+112], eax
jmp .Lt_00DE
.Lt_00E6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+116], eax
jmp .Lt_00DE
.Lt_00E7:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+120], eax
jmp .Lt_00DE
.Lt_00E8:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+124], eax
jmp .Lt_00DE
.Lt_00E9:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+128], eax
jmp .Lt_00DE
.Lt_00EA:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+132], eax
jmp .Lt_00DE
.Lt_00EB:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+136], eax
call HUPDATELANGOPTIONS
jmp .Lt_00DE
.Lt_00EC:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+140], eax
jmp .Lt_00DE
.Lt_00ED:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+144], eax
jmp .Lt_00DE
.Lt_00EE:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+148], eax
jmp .Lt_00DE
.Lt_00EF:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+152], eax
jmp .Lt_00DE
.Lt_00F0:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+156], eax
jmp .Lt_00DE
.Lt_00F1:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+160], eax
jmp .Lt_00DE
.Lt_00F2:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+164], eax
jmp .Lt_00DE
.Lt_00F3:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+168], eax
jmp .Lt_00DE
.Lt_00F4:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+172], eax
jmp .Lt_00DE
.Lt_00F5:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+176], eax
jmp .Lt_00DE
.Lt_00F6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+180], eax
jmp .Lt_00DE
.Lt_00F7:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+184], eax
jmp .Lt_00DE
.Lt_00F8:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+188], eax
jmp .Lt_00DE
.Lt_00F9:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+192], eax
jmp .Lt_00DE
.Lt_00FA:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+196], eax
jmp .Lt_00DE
.Lt_00FB:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+200], eax
jmp .Lt_00DE
.Lt_00FC:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+204], eax
jmp .Lt_00DE
.Lt_00FD:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+208], eax
jmp .Lt_00DE
.Lt_00FE:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+212], eax
jmp .Lt_00DE
.Lt_00FF:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+216], eax
jmp .Lt_00DE
.Lt_0100:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+220], eax
jmp .Lt_00DE
.Lt_0101:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+224], eax
jmp .Lt_00DE
.Lt_0102:
cmp dword ptr [ebp+12], 0
jge .Lt_0104
cmp dword ptr [ENV+228], 0
jne .Lt_0106
call FBIS64BIT
test eax, eax
je .Lt_0107
mov dword ptr [ebp-8], 2097152
jmp .Lt_0113
.Lt_0107:
mov dword ptr [ebp-8], 1048576
.Lt_0113:
mov eax, dword ptr [ebp-8]
mov dword ptr [ENV+228], eax
.Lt_0106:
.Lt_0105:
jmp .Lt_0103
.Lt_0104:
call FBIS64BIT
test eax, eax
je .Lt_010A
cmp dword ptr [ebp+12], 65536
jge .Lt_010B
mov dword ptr [ebp-8], 65536
jmp .Lt_0114
.Lt_010B:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_0114:
mov eax, dword ptr [ebp-8]
mov dword ptr [ENV+228], eax
jmp .Lt_0109
.Lt_010A:
cmp dword ptr [ebp+12], 32768
jge .Lt_010D
mov dword ptr [ebp-8], 32768
jmp .Lt_0115
.Lt_010D:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_0115:
mov eax, dword ptr [ebp-8]
mov dword ptr [ENV+228], eax
.Lt_0109:
.Lt_0103:
jmp .Lt_00DE
.Lt_010F:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+232], eax
jmp .Lt_00DE
.Lt_0110:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+236], eax
jmp .Lt_00DE
.Lt_0111:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+240], eax
jmp .Lt_00DE
.Lt_00DF:
cmp dword ptr [ebp-4], 36
ja .Lt_00DE
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_0112+eax*4]
.LT_0112:
.int .Lt_00E1
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
.int .Lt_00F5
.int .Lt_00F4
.int .Lt_00F6
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
.int .Lt_010F
.int .Lt_0110
.int .Lt_0111
.Lt_00DE:
.Lt_00DD:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETOPTION
FBGETOPTION:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0116:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0119
.Lt_011B:
mov eax, dword ptr [ENV+96]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_011C:
mov eax, dword ptr [ENV+100]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_011D:
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_011E:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_011F:
mov eax, dword ptr [ENV+112]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0120:
mov eax, dword ptr [ENV+116]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0121:
mov eax, dword ptr [ENV+120]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0122:
mov eax, dword ptr [ENV+124]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0123:
mov eax, dword ptr [ENV+128]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0124:
mov eax, dword ptr [ENV+132]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0125:
mov eax, dword ptr [ENV+136]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0126:
mov eax, dword ptr [ENV+140]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0127:
mov eax, dword ptr [ENV+144]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0128:
mov eax, dword ptr [ENV+148]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0129:
mov eax, dword ptr [ENV+152]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_012A:
mov eax, dword ptr [ENV+156]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_012B:
mov eax, dword ptr [ENV+160]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_012C:
mov eax, dword ptr [ENV+164]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_012D:
mov eax, dword ptr [ENV+168]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_012E:
mov eax, dword ptr [ENV+172]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_012F:
mov eax, dword ptr [ENV+176]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0130:
mov eax, dword ptr [ENV+180]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0131:
mov eax, dword ptr [ENV+184]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0132:
mov eax, dword ptr [ENV+188]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0133:
mov eax, dword ptr [ENV+192]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0134:
mov eax, dword ptr [ENV+196]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0135:
mov eax, dword ptr [ENV+200]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0136:
mov eax, dword ptr [ENV+204]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0137:
mov eax, dword ptr [ENV+208]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0138:
mov eax, dword ptr [ENV+212]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0139:
mov eax, dword ptr [ENV+216]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_013A:
mov eax, dword ptr [ENV+220]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_013B:
mov eax, dword ptr [ENV+224]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_013C:
mov eax, dword ptr [ENV+228]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_013D:
mov eax, dword ptr [ENV+232]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_013E:
mov eax, dword ptr [ENV+236]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_013F:
mov eax, dword ptr [ENV+240]
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0140:
mov dword ptr [ebp-4], 0
jmp .Lt_0118
.Lt_0119:
cmp dword ptr [ebp-8], 36
ja .Lt_0140
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0141+eax*4]
.LT_0141:
.int .Lt_011B
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
.int .Lt_012F
.int .Lt_012E
.int .Lt_0130
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
.Lt_0118:
.Lt_0117:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBCHANGEOPTION
FBCHANGEOPTION:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0142:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0145
.Lt_0147:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call FBSETOPTION
add esp, 8
jmp .Lt_0144
.Lt_0148:
push dword ptr [ebp+8]
call FBGETOPTION
add esp, 4
cmp dword ptr [ebp+12], eax
je .Lt_014A
cmp dword ptr [PARSER+96], 0
je .Lt_014C
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
je .Lt_014E
push 0
push 0
push 61
call ERRREPORT
add esp, 12
jmp .Lt_014D
.Lt_014E:
push 0
push 0
push 96
call ERRREPORT
add esp, 12
.Lt_014D:
jmp .Lt_014B
.Lt_014C:
cmp dword ptr [ENV+140], 0
je .Lt_0150
push 0
push 1
push 0
push 30
call ERRREPORTWARN
add esp, 16
jmp .Lt_014F
.Lt_0150:
cmp dword ptr [ENV+956], 0
jne .Lt_0152
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call FBSETOPTION
add esp, 8
mov dword ptr [ENV+960], -1
call ERRHIDEFURTHERERRORS
jmp .Lt_0151
.Lt_0152:
push 0
push 1
push 0
push 31
call ERRREPORTWARN
add esp, 16
.Lt_0151:
.Lt_014F:
.Lt_014B:
.Lt_014A:
.Lt_0149:
jmp .Lt_0144
.Lt_0153:
push 0
push 0
push 21
call ERRREPORT
add esp, 12
jmp .Lt_0144
.Lt_0145:
mov eax, dword ptr [ebp-4]
add eax, 4294967286
cmp eax, 19
ja .Lt_0153
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_0154+eax*4-40]
.LT_0154:
.int .Lt_0148
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0153
.int .Lt_0147
.Lt_0144:
.Lt_0143:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBISCROSSCOMP
FBISCROSSCOMP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0155:
mov eax, dword ptr [ENV+108]
cmp eax, 5
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0156:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETTARGETID
FBGETTARGETID:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0167:
push 0
push -1
push dword ptr [ENV+112]
push dword ptr [ENV+108]
call HGETTARGETID
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_0168:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETHOSTID
FBGETHOSTID:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0169:
push 0
push -1
push 1
push 5
call HGETTARGETID
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_016A:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBIDENTIFYOS
FBIDENTIFYOS:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_016B:
mov dword ptr [ebp-8], 0
.Lt_0170:
push 0
mov eax, dword ptr [ebp-8]
imul eax, 20
push dword ptr [TARGETINFO+eax]
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0172
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_016C
.Lt_0172:
.Lt_0171:
.Lt_016E:
inc dword ptr [ebp-8]
.Lt_016D:
cmp dword ptr [ebp-8], 11
jle .Lt_0170
.Lt_016F:
mov dword ptr [ebp-4], -1
.Lt_016C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBIDENTIFYCPUFAMILY
FBIDENTIFYCPUFAMILY:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0173:
mov dword ptr [ebp-8], 0
.Lt_0178:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [CPUFAMILYINFO+eax*8]
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_017A
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0174
.Lt_017A:
.Lt_0179:
.Lt_0176:
inc dword ptr [ebp-8]
.Lt_0175:
cmp dword ptr [ebp-8], 6
jle .Lt_0178
.Lt_0177:
mov dword ptr [ebp-4], -1
.Lt_0174:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBCPUTYPEFROMCPUFAMILYID
FBCPUTYPEFROMCPUFAMILYID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_017B:
push dword ptr [ebp+8]
call FBIDENTIFYCPUFAMILY
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jl .Lt_017E
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [CPUFAMILYINFO+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .Lt_017C
.Lt_017E:
.Lt_017D:
mov dword ptr [ebp-4], -1
.Lt_017C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETGCCARCH
FBGETGCCARCH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_017F:
mov eax, dword ptr [ENV+112]
sal eax, 4
mov ebx, dword ptr [CPUTYPEINFO+eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0182
mov ebx, dword ptr [ENV+112]
sal ebx, 4
mov eax, dword ptr [CPUTYPEINFO+ebx+4]
mov dword ptr [ebp-8], eax
.Lt_0182:
.Lt_0181:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0180:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETFBCARCH
FBGETFBCARCH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0183:
mov eax, dword ptr [ENV+112]
sal eax, 4
mov ebx, dword ptr [CPUTYPEINFO+eax+4]
mov dword ptr [ebp-4], ebx
.Lt_0184:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBIS64BIT
FBIS64BIT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0185:
call FBGETBITS
cmp eax, 64
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0186:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETBITS
FBGETBITS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0188:
mov eax, dword ptr [ENV+112]
sal eax, 4
mov ebx, dword ptr [CPUTYPEINFO+eax+12]
mov dword ptr [ebp-4], ebx
.Lt_0189:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETHOSTBITS
FBGETHOSTBITS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_018A:
mov eax, dword ptr [CPUTYPEINFO+28]
mov dword ptr [ebp-4], eax
.Lt_018B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETCPUFAMILY
FBGETCPUFAMILY:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_018C:
mov eax, dword ptr [ENV+112]
sal eax, 4
mov ebx, dword ptr [CPUTYPEINFO+eax+8]
mov dword ptr [ebp-4], ebx
.Lt_018D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBIDENTIFYFBCARCH
FBIDENTIFYFBCARCH:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_018E:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 7
push offset Lt_0193
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0192
.Lt_0194:
mov dword ptr [ebp-4], 1
call fb_CpuDetect
shr eax, 28
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .Lt_0197
.Lt_0198:
mov dword ptr [ebp-4], 0
jmp .Lt_0195
.Lt_0197:
cmp dword ptr [ebp-20], 4
jne .Lt_0199
.Lt_019A:
mov dword ptr [ebp-4], 1
jmp .Lt_0195
.Lt_0199:
cmp dword ptr [ebp-20], 5
jne .Lt_019B
.Lt_019C:
mov dword ptr [ebp-4], 2
jmp .Lt_0195
.Lt_019B:
cmp dword ptr [ebp-20], 6
jne .Lt_019D
.Lt_019E:
mov dword ptr [ebp-4], 3
.Lt_019D:
.Lt_0195:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_018F
jmp .Lt_0190
.Lt_0192:
push 3
push offset Lt_01A0
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_019F
.Lt_01A1:
mov dword ptr [ebp-4], 1
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_018F
jmp .Lt_0190
.Lt_019F:
push 3
push offset Lt_01A3
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_01A2
.Lt_01A4:
mov dword ptr [ebp-4], 13
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_018F
.Lt_01A2:
.Lt_0190:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-8], 0
.Lt_01A8:
push -1
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
sal eax, 4
push dword ptr [CPUTYPEINFO+eax+4]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_01AA
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_018F
.Lt_01AA:
.Lt_01A9:
.Lt_01A6:
inc dword ptr [ebp-8]
.Lt_01A5:
cmp dword ptr [ebp-8], 19
jle .Lt_01A8
.Lt_01A7:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 7
push offset Lt_007D
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_01AF
.Lt_01B0:
push 6
push offset Lt_01AE
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_01AD
.Lt_01AF:
mov dword ptr [ebp-4], 13
jmp .Lt_01AB
.Lt_01AD:
mov dword ptr [ebp-4], -1
.Lt_01B1:
.Lt_01AB:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.Lt_018F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBTARGETSUPPORTSELF
FBTARGETSUPPORTSELF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_01B2:
mov eax, dword ptr [ENV+260]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_01B3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBTARGETSUPPORTSCOFF
FBTARGETSUPPORTSCOFF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_01B5:
mov eax, dword ptr [ENV+260]
and eax, 128
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_01B6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETENTRYPOINT
FBGETENTRYPOINT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01B8:
cmp dword ptr [ENV+108], 4
jne .Lt_01BB
push 0
push 12
push offset Lt_01BC
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_01BA
.Lt_01BB:
push 0
push 5
push offset Lt_01BD
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_01BA:
.Lt_01B9:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETMODULEENTRY
FBGETMODULEENTRY:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01BE:
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
lea eax, [ENV+560]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call HSTRIPPATH
add esp, 4
push eax
push -1
push offset Lt_01C3
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [Lt_01C3]
call HCLEARNAME
add esp, 4
push 0
push 10
push offset Lt_01C2
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push offset Lt_01C3
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.Lt_01BF:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01C3,12

.section .text
.balign 16

.globl FBGETINPUTFILEPARENTDIR
FBGETINPUTFILEPARENTDIR:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_01C4:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ENV+280]
push eax
call PATHISABSOLUTE
add esp, 4
test eax, eax
jne .Lt_01C7
push 0
push -1
call HCURDIR
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0019
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.Lt_01C7:
.Lt_01C6:
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
lea eax, [ENV+280]
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call HSTRIPFILENAME
add esp, 4
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.Lt_01C5:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBADDLIB
FBADDLIB:
push ebp
mov ebp, esp
sub esp, 12
.Lt_01CB:
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
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
lea eax, [ENV+964]
push eax
call STRSETADD
add esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.Lt_01CC:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBADDLIBPATH
FBADDLIBPATH:
push ebp
mov ebp, esp
sub esp, 24
.Lt_01CE:
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
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
lea eax, [ENV+1008]
push eax
call STRSETADD
add esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.Lt_01CF:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBCOMPILE
FBCOMPILE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0208:
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [ENV+280]
push eax
call fb_StrAssign
add esp, 20
push 47
lea eax, [ENV+280]
push eax
call HREPLACESLASH
add esp, 8
lea eax, [ENV+280]
push eax
lea eax, [ENV+840]
push eax
push 0
call HADDINCFILE
add esp, 12
mov dword ptr [ENV+544], eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ENV+548], eax
push 0
push 0
push dword ptr [ebp+12]
push 261
lea eax, [ENV+560]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+20]
mov dword ptr [ENV+828], eax
push dword ptr [ebp+8]
call HFILEEXISTS
add esp, 4
test eax, eax
jne .Lt_020B
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call ERRREPORTEX
add esp, 20
jmp .Lt_0209
.Lt_020B:
.Lt_020A:
call fb_FileFree
mov dword ptr [ENV+276], eax
push 0
push dword ptr [ENV+276]
push 0
push 1
push 0
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 24
test eax, eax
je .Lt_020D
push 0
push 1
push -1
push dword ptr [ebp+8]
push 26
call ERRREPORTEX
add esp, 20
jmp .Lt_0209
.Lt_020D:
.Lt_020C:
cmp dword ptr [ENV+236], 0
je .Lt_020F
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
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call PATHSTRIPCURDIR
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
push 0
call HSHOWINCLUDE
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.Lt_020F:
.Lt_020E:
push dword ptr [ENV+276]
call HCHECKFILEFORMAT
add esp, 4
mov dword ptr [ENV+552], eax
call dword ptr [IR+12]
test eax, eax
jne .Lt_0213
push 0
push 1
push -1
lea eax, [ENV+560]
push eax
push 26
call ERRREPORTEX
add esp, 20
jmp .Lt_0209
.Lt_0213:
.Lt_0212:
push 1
call FBGETOPTION
add esp, 4
test eax, eax
je .Lt_0215
call fb_FileFree
mov dword ptr [ENV+836], eax
push 0
push dword ptr [ENV+836]
push 0
push 0
push 3
push dword ptr [ebp+16]
call fb_FileOpen
add esp, 24
test eax, eax
je .Lt_0217
push 0
push 1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
push 26
call ERRREPORTEX
add esp, 20
jmp .Lt_0209
.Lt_0217:
.Lt_0216:
jmp .Lt_0214
.Lt_0215:
mov dword ptr [ENV+836], 0
.Lt_0214:
call FBMAINBEGIN
call FBPARSEPREDEFINES
call FBPARSEPREINCLUDES
call FBSHOULDCONTINUE
test eax, eax
je .Lt_0219
call CPROGRAM
.Lt_0219:
.Lt_0218:
call FBMAINEND
push 34
call FBGETOPTION
add esp, 4
mov ebx, eax
call FBISCROSSCOMP
not eax
and ebx, eax
mov eax, dword ptr [ENV+96]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_021B
call HEMITOBJINFO
.Lt_021B:
.Lt_021A:
call dword ptr [IR+16]
cmp dword ptr [ENV+836], 0
jle .Lt_021D
push dword ptr [ENV+836]
call fb_FileClose
add esp, 4
test eax, eax
je .Lt_021E
push 0
push 0
push offset Lt_00BB
push 1208
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_021E:
.Lt_021D:
.Lt_021C:
push dword ptr [ENV+276]
call fb_FileClose
add esp, 4
test eax, eax
je .Lt_021F
push 0
push 0
push offset Lt_00BB
push 1211
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_021F:
call FBSHOULDCONTINUE
test eax, eax
je .Lt_0221
push dword ptr [SYMB+98412]
call SYMBCHECKLABELS
add esp, 4
.Lt_0221:
.Lt_0220:
.Lt_0209:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBSHOULDRESTART
FBSHOULDRESTART:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0223:
mov eax, dword ptr [ENV+960]
mov dword ptr [ebp-4], eax
.Lt_0224:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBSHOULDCONTINUE
FBSHOULDCONTINUE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0225:
mov eax, dword ptr [ENV+960]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call ERRGETCOUNT
cmp eax, dword ptr [ENV+192]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_0226:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBSETLIBS
FBSETLIBS:
push ebp
mov ebp, esp
.Lt_0229:
push dword ptr [ebp+8]
lea eax, [ENV+964]
push eax
call STRSETCOPY
add esp, 8
push dword ptr [ebp+12]
lea eax, [ENV+1008]
push eax
call STRSETCOPY
add esp, 8
.Lt_022A:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETLIBS
FBGETLIBS:
push ebp
mov ebp, esp
.Lt_022B:
lea eax, [ENV+964]
push eax
push dword ptr [ebp+8]
call STRSETCOPY
add esp, 8
lea eax, [ENV+1008]
push eax
push dword ptr [ebp+12]
call STRSETCOPY
add esp, 8
.Lt_022C:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBPRAGMAONCE
FBPRAGMAONCE:
.Lt_022D:
push 1
push offset Lt_0000
push 261
lea eax, [ENV+280]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jle .Lt_0230
lea eax, [ENV+280]
push eax
lea eax, [ENV+864]
push eax
call HFINDINCFILE
add esp, 8
test eax, eax
jne .Lt_0232
lea eax, [ENV+280]
push eax
lea eax, [ENV+840]
push eax
lea eax, [ENV+864]
push eax
call HADDINCFILE
add esp, 12
.Lt_0232:
.Lt_0231:
.Lt_0230:
.Lt_022F:
.Lt_022E:
ret
.balign 16

.globl FBINCLUDEFILE
FBINCLUDEFILE:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.Lt_024E:
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+876], 16
jl .Lt_0251
push 0
push 0
push 27
call ERRREPORT
add esp, 12
call ERRHIDEFURTHERERRORS
jmp .Lt_024F
.Lt_0251:
.Lt_0250:
push 0
push -1
lea eax, [ENV+280]
push eax
call HSTRIPFILENAME
add esp, 4
push eax
push 260
push offset Lt_028A
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push 260
push offset Lt_028A
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push 260
push offset Lt_028A
call fb_StrAssign
add esp, 20
push offset Lt_028A
call HFILEEXISTS
add esp, 4
test eax, eax
jne .Lt_0254
push dword ptr [ebp+8]
call HFILEEXISTS
add esp, 4
test eax, eax
jne .Lt_0256
lea eax, [ENV+64]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-28], eax
.Lt_0257:
cmp dword ptr [ebp-28], 0
je .Lt_0258
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push 2
push offset Lt_0019
push -1
push dword ptr [ebp-28]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push 260
push offset Lt_028A
call fb_StrAssign
add esp, 20
push offset Lt_028A
call HFILEEXISTS
add esp, 4
test eax, eax
je .Lt_025C
jmp .Lt_0258
.Lt_025C:
.Lt_025B:
push dword ptr [ebp-28]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-28], eax
jmp .Lt_0257
.Lt_0258:
cmp dword ptr [ebp-28], 0
jne .Lt_025E
cmp dword ptr [ENV+236], 0
je .Lt_0260
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 29
push offset Lt_0261
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
mov eax, dword ptr [ENV+876]
inc eax
push eax
call HSHOWINCLUDE
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
.Lt_0260:
.Lt_025F:
push 0
push 1
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push 2
push offset Lt_0264
push -1
push 0
push dword ptr [ebp+8]
push 2
push offset Lt_0264
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
push 23
call ERRREPORTEX
add esp, 20
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .Lt_024F
.Lt_025E:
.Lt_025D:
jmp .Lt_0255
.Lt_0256:
push 0
push 0
push dword ptr [ebp+8]
push 260
push offset Lt_028A
call fb_StrAssign
add esp, 20
.Lt_0255:
.Lt_0254:
.Lt_0253:
mov eax, offset Lt_028A
mov dword ptr [ebp-20], eax
lea eax, [ebp-20]
push eax
call IS_ROOTPATH
add esp, 4
test eax, eax
jne .Lt_026A
push 0
push -1
push 260
push offset Lt_028A
push -1
push 2
push offset Lt_0019
push -1
call HCURDIR
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push 260
push offset Lt_028A
call fb_StrAssign
add esp, 20
.Lt_026A:
.Lt_0269:
mov eax, offset Lt_028A
mov dword ptr [ebp-24], eax
lea eax, [ebp-24]
push eax
call IS_ROOTPATH
add esp, 4
test eax, eax
jne .Lt_026F
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_0264
push -1
push 260
push offset Lt_028A
push 2
push offset Lt_0264
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 23
call ERRREPORTEX
add esp, 20
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .Lt_024F
.Lt_026F:
.Lt_026E:
push offset Lt_028A
call SOLVE_PATH
add esp, 4
test eax, eax
jne .Lt_0274
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_0264
push -1
push 260
push offset Lt_028A
push 2
push offset Lt_0264
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 23
call ERRREPORTEX
add esp, 20
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .Lt_024F
.Lt_0274:
.Lt_0273:
push 47
push offset Lt_028A
call HREPLACESLASH
add esp, 8
cmp dword ptr [ebp+12], 0
je .Lt_0279
push offset Lt_028A
lea eax, [ENV+852]
push eax
call HFINDINCFILE
add esp, 8
test eax, eax
je .Lt_027B
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset Lt_028A
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HONSKIPPEDFILE
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_024F
.Lt_027B:
.Lt_027A:
.Lt_0279:
.Lt_0278:
push offset Lt_028A
lea eax, [ENV+864]
push eax
call HFINDINCFILE
add esp, 8
test eax, eax
je .Lt_027E
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset Lt_028A
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HONSKIPPEDFILE
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_024F
.Lt_027E:
.Lt_027D:
push offset Lt_028A
lea eax, [ENV+840]
push eax
lea eax, [ENV+852]
push eax
call HADDINCFILE
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ENV+876]
imul eax, 280
add eax, dword ptr [INFILETB]
lea ebx, [eax]
lea eax, [ENV+276]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 70
rep movsd
pop esi
pop edi
inc dword ptr [ENV+876]
push 0
push 260
push offset Lt_028A
push 261
lea eax, [ENV+280]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-4]
mov dword ptr [ENV+544], eax
cmp dword ptr [ENV+236], 0
je .Lt_0281
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
push offset Lt_028A
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call PATHSTRIPCURDIR
add esp, 4
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
push dword ptr [ENV+876]
call HSHOWINCLUDE
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.Lt_0281:
.Lt_0280:
call fb_FileFree
mov dword ptr [ENV+276], eax
push 0
push dword ptr [ENV+276]
push 0
push 1
push 0
push offset Lt_028A
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 24
test eax, eax
je .Lt_0285
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_0264
push -1
push 0
push dword ptr [ebp+8]
push 2
push offset Lt_0264
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 23
call ERRREPORTEX
add esp, 20
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .Lt_024F
.Lt_0285:
.Lt_0284:
push dword ptr [ENV+276]
call HCHECKFILEFORMAT
add esp, 4
mov dword ptr [ENV+552], eax
call LEXPUSHCTX
push 0
push -1
call LEXINIT
add esp, 8
call CPROGRAM
call LEXPOPCTX
push dword ptr [ENV+276]
call fb_FileClose
add esp, 4
test eax, eax
je .Lt_0289
push 0
push 0
push offset Lt_00BB
push 1510
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0289:
dec dword ptr [ENV+876]
lea eax, [ENV+276]
mov ebx, dword ptr [ENV+876]
imul ebx, 280
add ebx, dword ptr [INFILETB]
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
.Lt_024F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_028A,260

.section .text
.balign 16

.globl FBOVERRIDEFILENAME
FBOVERRIDEFILENAME:
push ebp
mov ebp, esp
.Lt_028B:
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [ENV+280]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
lea eax, [ENV+840]
push eax
push 0
call HADDINCFILE
add esp, 12
mov dword ptr [ENV+544], eax
.Lt_028C:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETLANGID
FBGETLANGID:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_028D:
push 0
push -1
push 0
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 3
push offset Lt_006A
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0291
.Lt_0292:
mov dword ptr [ebp-4], 0
jmp .Lt_028F
.Lt_0291:
push 11
push offset Lt_006B
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0293
.Lt_0294:
mov dword ptr [ebp-4], 1
jmp .Lt_028F
.Lt_0293:
push 7
push offset Lt_006C
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0295
.Lt_0296:
mov dword ptr [ebp-4], 2
jmp .Lt_028F
.Lt_0295:
push 3
push offset Lt_006D
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0297
.Lt_0298:
mov dword ptr [ebp-4], 3
jmp .Lt_028F
.Lt_0297:
mov dword ptr [ebp-4], -1
.Lt_0299:
.Lt_028F:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.Lt_028E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETBACKENDVALISTTYPE
FBGETBACKENDVALISTTYPE:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_029A:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .Lt_029E
.Lt_029F:
call FBGETCPUFAMILY
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_02A2
.Lt_02A3:
mov dword ptr [ebp-8], 2
jmp .Lt_02A0
.Lt_02A2:
cmp dword ptr [ebp-16], 1
jne .Lt_02A4
.Lt_02A5:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_02A8
.Lt_02A9:
mov dword ptr [ebp-8], 2
jmp .Lt_02A6
.Lt_02A8:
mov dword ptr [ebp-8], 3
.Lt_02AA:
.Lt_02A6:
jmp .Lt_02A0
.Lt_02A4:
cmp dword ptr [ebp-16], 2
jne .Lt_02AB
.Lt_02AC:
mov dword ptr [ebp-8], 5
jmp .Lt_02A0
.Lt_02AB:
cmp dword ptr [ebp-16], 3
jne .Lt_02AD
.Lt_02AE:
mov dword ptr [ebp-8], 4
jmp .Lt_02A0
.Lt_02AD:
cmp dword ptr [ebp-16], 4
jne .Lt_02AF
.Lt_02B0:
mov dword ptr [ebp-8], 3
jmp .Lt_02A0
.Lt_02AF:
cmp dword ptr [ebp-16], 5
jne .Lt_02B1
.Lt_02B2:
mov dword ptr [ebp-8], 3
jmp .Lt_02A0
.Lt_02B1:
mov dword ptr [ebp-8], 2
.Lt_02B3:
.Lt_02A0:
jmp .Lt_029C
.Lt_029E:
cmp dword ptr [ebp-12], 0
jne .Lt_02B4
.Lt_02B5:
mov dword ptr [ebp-8], 1
jmp .Lt_029C
.Lt_02B4:
cmp dword ptr [ebp-12], 2
jne .Lt_02B6
.Lt_02B7:
mov dword ptr [ebp-8], 1
jmp .Lt_029C
.Lt_02B6:
cmp dword ptr [ebp-12], 3
jne .Lt_02B8
.Lt_02B9:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_02BC
.Lt_02BD:
mov dword ptr [ebp-8], 2
jmp .Lt_02BA
.Lt_02BC:
mov dword ptr [ebp-8], 3
.Lt_02BE:
.Lt_02BA:
jmp .Lt_029C
.Lt_02B8:
mov dword ptr [ebp-8], 1
.Lt_02BF:
.Lt_029C:
cmp dword ptr [ebp-8], 2
jne .Lt_02C1
push 27
call FBGETOPTION
add esp, 4
test eax, eax
je .Lt_02C3
mov dword ptr [ebp-8], 1
.Lt_02C3:
.Lt_02C2:
.Lt_02C1:
.Lt_02C0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_029B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__fb:
.Lt_0002:
.Lt_0003:
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
HFINDINCFILE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_009A:
push 0
push 0
push dword ptr [ebp+12]
push -1
push offset Lt_02C4
call fb_StrAssign
add esp, 20
push dword ptr [Lt_02C4]
push dword ptr [ebp+8]
call HASHLOOKUP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_009B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02C4,12

.section .text
.balign 16
HADDINCFILE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_009C:
push 0
push dword ptr [ebp+16]
call fb_StrLen
add esp, 8
inc eax
push eax
call XALLOCATE
add esp, 4
mov dword ptr [Lt_02C5], eax
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [Lt_02C5]
call fb_StrAssign
add esp, 20
push dword ptr [Lt_02C5]
call HASHHASH
add esp, 4
mov dword ptr [Lt_02C6], eax
push dword ptr [Lt_02C6]
push dword ptr [Lt_02C5]
push dword ptr [ebp+12]
call HASHLOOKUPEX
add esp, 12
mov dword ptr [Lt_02C7], eax
cmp dword ptr [Lt_02C7], 0
jne .Lt_009F
push dword ptr [Lt_02C6]
push dword ptr [Lt_02C5]
push dword ptr [Lt_02C5]
push dword ptr [ebp+12]
call HASHADD
add esp, 16
jmp .Lt_009E
.Lt_009F:
push dword ptr [Lt_02C5]
call free
add esp, 4
mov eax, dword ptr [Lt_02C7]
mov dword ptr [Lt_02C5], eax
.Lt_009E:
cmp dword ptr [ebp+8], 0
je .Lt_00A1
push dword ptr [Lt_02C6]
push dword ptr [Lt_02C5]
push dword ptr [ebp+8]
call HASHLOOKUPEX
add esp, 12
mov dword ptr [Lt_02C7], eax
cmp dword ptr [Lt_02C7], 0
jne .Lt_00A3
push dword ptr [Lt_02C6]
push dword ptr [Lt_02C5]
push dword ptr [Lt_02C5]
push dword ptr [ebp+8]
call HASHADD
add esp, 16
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
mov eax, dword ptr [Lt_02C5]
mov dword ptr [ebp-4], eax
.Lt_009D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02C5,4
.balign 4
	.lcomm	Lt_02C7,4
.balign 4
	.lcomm	Lt_02C6,4

.section .text
.balign 16
HUPDATELANGOPTIONS:
push ebx
.Lt_00D0:
mov eax, dword ptr [ENV+136]
mov ebx, dword ptr [LANGTB+eax*8+4]
mov dword ptr [ENV+888], ebx
.Lt_00D1:
pop ebx
ret
.balign 16
HUPDATETARGETOPTIONS:
push ebx
.Lt_00D2:
lea eax, [ENV+244]
mov ebx, dword ptr [ENV+108]
imul ebx, 20
lea ecx, [TARGETINFO+ebx]
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
.Lt_00D3:
pop ebx
ret
.balign 16
HGETTARGETID:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0158:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [CPUTYPEINFO+eax+8]
mov dword ptr [ebp-16], ebx
push 0
push 0
mov ebx, dword ptr [ebp+8]
imul ebx, 20
push dword ptr [TARGETINFO+ebx]
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrInit
add esp, 20
cmp dword ptr [ebp+8], 0
je .Lt_015C
.Lt_015D:
cmp dword ptr [ebp+8], 3
je .Lt_015C
.Lt_015E:
cmp dword ptr [ebp+8], 4
jne .Lt_015B
.Lt_015C:
cmp dword ptr [ebp-16], 0
jne .Lt_0160
push 0
push -1
lea ebx, [ebp-28]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrInit
add esp, 20
lea ebx, [ebp-28]
push ebx
call fb_StrDelete
add esp, 4
jmp .Lt_0159
.Lt_0160:
.Lt_015F:
.Lt_015B:
.Lt_015A:
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
je .Lt_0162
push 0
push 6
push offset Lt_0163
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_0159
.Lt_0162:
.Lt_0161:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [CPUFAMILYINFO+eax*8]
push -1
push 2
push offset Lt_0164
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.Lt_0159:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
FBPARSEPREDEFINES:
push ebp
mov ebp, esp
sub esp, 32
.Lt_01D2:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ENV]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-28], eax
.Lt_01D4:
cmp dword ptr [ebp-28], 0
je .Lt_01D5
push 1
push offset Lt_01D6
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-28]
push 1
call fb_StrInstr
add esp, 12
dec eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jge .Lt_01D8
push -1
push dword ptr [ebp-28]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-32], eax
.Lt_01D8:
.Lt_01D7:
push 0
push -1
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp-28]
call fb_StrLen
add esp, 8
sub eax, dword ptr [ebp-32]
dec eax
push eax
push dword ptr [ebp-28]
call fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jne .Lt_01DA
push 0
push 2
push offset Lt_0004
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.Lt_01DA:
.Lt_01D9:
push 0
push 0
push 0
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call SYMBADDDEFINE
add esp, 24
push dword ptr [ebp-28]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-28], eax
jmp .Lt_01D4
.Lt_01D5:
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.Lt_01D3:
mov esp, ebp
pop ebp
ret
.balign 16
FBPARSEPREINCLUDES:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01DB:
lea eax, [ENV+32]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_01DD:
cmp dword ptr [ebp-4], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, eax
call FBSHOULDCONTINUE
and ebx, eax
je .Lt_01DE
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call FBINCLUDEFILE
add esp, 8
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01DD
.Lt_01DE:
.Lt_01DC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HAPPENDFBCTINF:
push ebp
mov ebp, esp
.Lt_01DF:
cmp dword ptr [ENV+1052], 0
jne .Lt_01E2
mov dword ptr [ENV+1052], -1
call dword ptr [IR+216]
.Lt_01E2:
.Lt_01E1:
push dword ptr [ebp+8]
call dword ptr [IR+220]
add esp, 4
.Lt_01E0:
mov esp, ebp
pop ebp
ret
.balign 16
HEMITOBJINFO:
push ebp
mov ebp, esp
sub esp, 16
.Lt_01E3:
lea eax, [ENV+964]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_01E5:
cmp dword ptr [ebp-4], 0
je .Lt_01E6
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
jne .Lt_01E8
push 0
call OBJINFOENCODE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call HAPPENDFBCTINF
add esp, 4
.Lt_01E8:
.Lt_01E7:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01E5
.Lt_01E6:
lea eax, [ENV+1008]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_01E9:
cmp dword ptr [ebp-4], 0
je .Lt_01EA
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
jne .Lt_01EC
push 1
call OBJINFOENCODE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call HESCAPE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
.Lt_01EC:
.Lt_01EB:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01E9
.Lt_01EA:
cmp dword ptr [ENV+216], 0
je .Lt_01EE
push 2
call OBJINFOENCODE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
.Lt_01EE:
.Lt_01ED:
cmp dword ptr [ENV+220], 0
je .Lt_01F0
push 3
call OBJINFOENCODE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
.Lt_01F0:
.Lt_01EF:
cmp dword ptr [ENV+136], 0
je .Lt_01F2
push 4
call OBJINFOENCODE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ENV+136]
call FBGETLANGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-16]
call HAPPENDFBCTINF
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.Lt_01F2:
.Lt_01F1:
cmp dword ptr [ENV+1052], 0
je .Lt_01F5
call dword ptr [IR+224]
.Lt_01F5:
.Lt_01F4:
.Lt_01E4:
mov esp, ebp
pop ebp
ret
.balign 16
HSHOWINCLUDE:
push ebp
mov ebp, esp
sub esp, 32
.Lt_01F6:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .Lt_01F9
.Lt_01FC:
push 0
push 5
push offset Lt_01FD
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.Lt_01FA:
inc dword ptr [ebp-28]
.Lt_01F9:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-28], eax
jle .Lt_01FC
.Lt_01FB:
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
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 1
lea eax, [ebp-12]
push eax
push 0
call fb_PrintString
add esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.Lt_01F7:
mov esp, ebp
pop ebp
ret
.balign 16
HONSKIPPEDFILE:
push ebp
mov ebp, esp
sub esp, 36
.Lt_01FF:
cmp dword ptr [ENV+236], 0
je .Lt_0202
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset Lt_0204
push -1
push -1
push dword ptr [ebp+8]
call PATHSTRIPCURDIR
add esp, 4
push eax
push 2
push offset Lt_0203
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
mov eax, dword ptr [ENV+876]
inc eax
push eax
call HSHOWINCLUDE
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.Lt_0202:
.Lt_0201:
.Lt_0200:
mov esp, ebp
pop ebp
ret
.balign 16
IS_ROOTPATH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0233:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0236
jmp .Lt_0234
.Lt_0236:
.Lt_0235:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_0234:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
GET_ROOTPATH_LEN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0237:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
test ebx, ebx
jne .Lt_023A
jmp .Lt_0238
.Lt_023A:
.Lt_0239:
mov dword ptr [ebp-4], 1
.Lt_0238:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SOLVE_PATH:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_023B:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+8]
call GET_ROOTPATH_LEN
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [Lt_02CC+eax*4], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-36], eax
jmp .Lt_023F
.Lt_0242:
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
je .Lt_0245
cmp dword ptr [ebp-16], 0
jne .Lt_0247
jmp .Lt_0246
.Lt_0247:
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
je .Lt_0248
dec dword ptr [ebp-28]
jmp .Lt_0246
.Lt_0248:
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
je .Lt_0249
cmp dword ptr [ebp-8], 0
je .Lt_024B
dec dword ptr [ebp-8]
.Lt_024B:
.Lt_024A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [Lt_02CC+eax*4]
mov dword ptr [ebp-28], ebx
jmp .Lt_0246
.Lt_0249:
mov bl, byte ptr [ebp-32]
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
mov byte ptr [eax], bl
inc dword ptr [ebp-28]
inc dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-28]
mov dword ptr [Lt_02CC+ebx*4], eax
.Lt_0246:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
jmp .Lt_0244
.Lt_0245:
cmp dword ptr [ebp-32], 46
jne .Lt_024D
inc dword ptr [ebp-20]
.Lt_024D:
.Lt_024C:
inc dword ptr [ebp-16]
mov al, byte ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
mov byte ptr [ebx], al
inc dword ptr [ebp-28]
.Lt_0244:
.Lt_0240:
inc dword ptr [ebp-24]
.Lt_023F:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-24], eax
jle .Lt_0242
.Lt_0241:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
mov byte ptr [eax], 0
mov dword ptr [ebp-4], -1
.Lt_023C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02CC,524

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0004:	.ascii	"1\0"
.balign 4
Lt_0019:	.ascii	"/\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.globl ENV
.balign 4
	.lcomm	ENV,1056

.section .data
.balign 4
INFILETB:
.long 0
.long 0
.int 0
.int 280
.int 0
.int 8
.skip 96,0
.balign 4
LANGTB:
.int Lt_006A
.int 536873471
.int Lt_006B
.int 738066591
.int Lt_006C
.int 738132125
.int Lt_006D
.int 738131968
.balign 4
Lt_006A:	.ascii	"fb\0"
.balign 4
Lt_006B:	.ascii	"deprecated\0"
.balign 4
Lt_006C:	.ascii	"fblite\0"
.balign 4
Lt_006D:	.ascii	"qb\0"
.balign 4
TARGETINFO:
.int Lt_006F
.int 6
.int 1
.int 1
.int 148
.int Lt_0070
.int 6
.int 1
.int 1
.int 149
.int Lt_0071
.int 12
.int 3
.int 2
.int 105
.int Lt_0072
.int 3
.int 3
.int 2
.int 136
.int Lt_0073
.int 12
.int 1
.int 1
.int 144
.int Lt_0074
.int 12
.int 3
.int 2
.int 89
.int Lt_0075
.int 12
.int 3
.int 2
.int 89
.int Lt_0076
.int 12
.int 3
.int 2
.int 89
.int Lt_0077
.int 12
.int 3
.int 2
.int 89
.int Lt_0078
.int 12
.int 3
.int 2
.int 313
.int Lt_0079
.int 12
.int 3
.int 2
.int 89
.int Lt_007A
.int 6
.int 3
.int 2
.int 25
.balign 4
Lt_006F:	.ascii	"win32\0"
.balign 4
Lt_0070:	.ascii	"cygwin\0"
.balign 4
Lt_0071:	.ascii	"linux\0"
.balign 4
Lt_0072:	.ascii	"dos\0"
.balign 4
Lt_0073:	.ascii	"xbox\0"
.balign 4
Lt_0074:	.ascii	"freebsd\0"
.balign 4
Lt_0075:	.ascii	"dragonfly\0"
.balign 4
Lt_0076:	.ascii	"solaris\0"
.balign 4
Lt_0077:	.ascii	"openbsd\0"
.balign 4
Lt_0078:	.ascii	"darwin\0"
.balign 4
Lt_0079:	.ascii	"netbsd\0"
.balign 4
Lt_007A:	.ascii	"js\0"
.balign 4
CPUFAMILYINFO:
.int Lt_007C
.int 1
.int Lt_007D
.int 13
.int Lt_007E
.int 15
.int Lt_007F
.int 16
.int Lt_0080
.int 17
.int Lt_0081
.int 18
.int Lt_0082
.int 19
.balign 4
Lt_007C:	.ascii	"x86\0"
.balign 4
Lt_007D:	.ascii	"x86_64\0"
.balign 4
Lt_007E:	.ascii	"arm\0"
.balign 4
Lt_007F:	.ascii	"aarch64\0"
.balign 4
Lt_0080:	.ascii	"powerpc\0"
.balign 4
Lt_0081:	.ascii	"powerpc64\0"
.balign 4
Lt_0082:	.ascii	"asmjs\0"
.balign 4
CPUTYPEINFO:
.int Lt_0084
.int Lt_0085
.int 0
.int 32
.int Lt_0086
.int Lt_0087
.int 0
.int 32
.int Lt_0088
.int Lt_0089
.int 0
.int 32
.int Lt_008A
.int Lt_008B
.int 0
.int 32
.long 0
.int Lt_008C
.int 0
.int 32
.long 0
.int Lt_008D
.int 0
.int 32
.long 0
.int Lt_008E
.int 0
.int 32
.long 0
.int Lt_008F
.int 0
.int 32
.long 0
.int Lt_0090
.int 0
.int 32
.long 0
.int Lt_0091
.int 0
.int 32
.long 0
.int Lt_0092
.int 0
.int 32
.long 0
.int Lt_0093
.int 0
.int 32
.int Lt_0094
.int Lt_0095
.int 0
.int 32
.long 0
.int Lt_0096
.int 1
.int 64
.long 0
.int Lt_0097
.int 2
.int 32
.long 0
.int Lt_0098
.int 2
.int 32
.int Lt_0099
.int Lt_007F
.int 3
.int 64
.long 0
.int Lt_0080
.int 4
.int 32
.long 0
.int Lt_0081
.int 5
.int 64
.long 0
.int Lt_0082
.int 6
.int 32
.balign 4
Lt_0084:	.ascii	"i386\0"
.balign 4
Lt_0085:	.ascii	"386\0"
.balign 4
Lt_0086:	.ascii	"i486\0"
.balign 4
Lt_0087:	.ascii	"486\0"
.balign 4
Lt_0088:	.ascii	"i586\0"
.balign 4
Lt_0089:	.ascii	"586\0"
.balign 4
Lt_008A:	.ascii	"i686\0"
.balign 4
Lt_008B:	.ascii	"686\0"
.balign 4
Lt_008C:	.ascii	"athlon\0"
.balign 4
Lt_008D:	.ascii	"athlon-xp\0"
.balign 4
Lt_008E:	.ascii	"athlon-fx\0"
.balign 4
Lt_008F:	.ascii	"k8-sse3\0"
.balign 4
Lt_0090:	.ascii	"pentium-mmx\0"
.balign 4
Lt_0091:	.ascii	"pentium2\0"
.balign 4
Lt_0092:	.ascii	"pentium3\0"
.balign 4
Lt_0093:	.ascii	"pentium4\0"
.balign 4
Lt_0094:	.ascii	"prescott\0"
.balign 4
Lt_0095:	.ascii	"pentium4-sse3\0"
.balign 4
Lt_0096:	.ascii	"x86-64\0"
.balign 4
Lt_0097:	.ascii	"armv6\0"
.balign 4
Lt_0098:	.ascii	"armv7-a\0"
.balign 4
Lt_0099:	.ascii	"armv8-a\0"
.balign 4
Lt_00AE:	.ascii	"gas\0"
.balign 4
Lt_00B1:	.ascii	"gcc\0"
.balign 4
Lt_00B4:	.ascii	"llvm\0"
.balign 4
Lt_00B7:	.ascii	"gas64\0"
.balign 4
Lt_00BB:	.ascii	"src/compiler/fb.bas\0"
.balign 4
Lt_0163:	.ascii	"win64\0"
.balign 4
Lt_0164:	.ascii	"-\0"
.balign 4
Lt_0193:	.ascii	"native\0"
.balign 4
Lt_01A0:	.ascii	"32\0"
.balign 4
Lt_01A3:	.ascii	"64\0"
.balign 4
Lt_01AE:	.ascii	"amd64\0"
.balign 4
Lt_01BC:	.ascii	"XBoxStartup\0"
.balign 4
Lt_01BD:	.ascii	"main\0"
.balign 4
Lt_01C2:	.ascii	"fb_ctor__\0"
.balign 4
Lt_01D6:	.ascii	"=\0"
.balign 4
Lt_01FD:	.ascii	" |  \0"
.balign 4
Lt_0203:	.ascii	"(\0"
.balign 4
Lt_0204:	.ascii	")\0"
.balign 4
Lt_0261:	.ascii	" (not found in include dirs)\0"
.balign 4
Lt_0264:	.ascii	"\"\0"

.section .ctors
.int fb_ctor__fb
