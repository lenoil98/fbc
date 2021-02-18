	.intel_syntax noprefix

.section .text
.balign 16

.globl _EMITINIT@0
_EMITINIT@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0074:
cmp dword ptr [_EMIT], 0
je .Lt_0077
mov dword ptr [ebp-4], -1
jmp .Lt_0075
.Lt_0077:
.Lt_0076:
call _EMITGASX86_CTOR@0
push 56
push 2048
lea eax, [_EMIT+16]
push eax
call _FLISTINIT@12
push 72
push 6144
lea eax, [_EMIT+72]
push eax
call _FLISTINIT@12
mov dword ptr [_EMIT], -1
mov dword ptr [_EMIT+4], 0
call dword ptr [_EMIT+148]
mov dword ptr [ebp-4], eax
.Lt_0075:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITEND@0
_EMITEND@0:
.Lt_0078:
cmp dword ptr [_EMIT], 0
jne .Lt_007B
jmp .Lt_0079
.Lt_007B:
.Lt_007A:
call dword ptr [_EMIT+152]
mov dword ptr [_EMIT], 0
.Lt_0079:
ret
.balign 16

.globl _EMITWRITESTR@8
_EMITWRITESTR@8:
push ebp
mov ebp, esp
sub esp, 12
.Lt_007C:
cmp dword ptr [ebp+12], 0
je .Lt_007F
push 0
push 2
push offset _Lt_0080
push -1
push offset _Lt_0085
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0085
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0085
call _fb_StrAssign@20
jmp .Lt_007E
.Lt_007F:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0085
call _fb_StrAssign@20
.Lt_007E:
push 0
push 3
push offset _Lt_0082
push -1
push offset _Lt_0085
call _fb_StrConcatAssign@20
push -1
push offset _Lt_0085
push 0
push dword ptr [_ENV+556]
call _fb_FilePutStr@16
test eax, eax
je .Lt_0084
.Lt_0084:
.Lt_0083:
.Lt_007D:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0085,12

.section .text
.balign 16

.globl _EMITRESET@0
_EMITRESET@0:
push ebx
.Lt_0086:
lea eax, [_EMIT+16]
push eax
call _FLISTRESET@4
lea eax, [_EMIT+72]
push eax
call _FLISTRESET@4
mov dword ptr [_EMIT+128], 0
mov dword ptr [_Lt_008C], 0
.Lt_008B:
mov eax, dword ptr [_Lt_008C]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov dword ptr [ebx+132], 0
.Lt_0089:
inc dword ptr [_Lt_008C]
.Lt_0088:
cmp dword ptr [_Lt_008C], 1
jle .Lt_008B
.Lt_008A:
.Lt_0087:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	_Lt_008C,4

.section .text
.balign 16

.globl _EMITFLUSH@0
_EMITFLUSH@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00AC:
call _HPEEPHOLEOPT@0
lea eax, [_EMIT+16]
push eax
call _FLISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_00AE:
cmp dword ptr [ebp-4], 0
je .Lt_00AF
mov eax, dword ptr [ebp-4]
mov dword ptr [_EMIT+128], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_00B1
.Lt_00B3:
jmp .Lt_00B0
.Lt_00B4:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+232]
add ebx, eax
call dword ptr [ebx]
jmp .Lt_00B0
.Lt_00B5:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+232]
add ebx, eax
call dword ptr [ebx]
jmp .Lt_00B0
.Lt_00B6:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+232]
add ebx, eax
call dword ptr [ebx]
jmp .Lt_00B0
.Lt_00B7:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+232]
add ebx, eax
call dword ptr [ebx]
jmp .Lt_00B0
.Lt_00B8:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+232]
add ebx, eax
call dword ptr [ebx]
jmp .Lt_00B0
.Lt_00B9:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+232]
add ebx, eax
call dword ptr [ebx]
jmp .Lt_00B0
.Lt_00BA:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [_EMIT+232]
call dword ptr [ebx+532]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+12], 0
je .Lt_00BC
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
call _free
add esp, 4
.Lt_00BC:
.Lt_00BB:
jmp .Lt_00B0
.Lt_00BD:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+36]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [_EMIT+232]
call dword ptr [ebx+536]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
call _free
add esp, 4
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
call _free
add esp, 4
jmp .Lt_00B0
.Lt_00BE:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+232]
add ebx, eax
call dword ptr [ebx]
jmp .Lt_00B0
.Lt_00BF:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+232]
add ebx, eax
call dword ptr [ebx]
jmp .Lt_00B0
.Lt_00B1:
cmp dword ptr [ebp-8], 10
ja .Lt_00B0
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_00C0+ebx*4]
_.LT_00C0:
.int .Lt_00B3
.int .Lt_00B4
.int .Lt_00B5
.int .Lt_00B6
.int .Lt_00B7
.int .Lt_00B8
.int .Lt_00BA
.int .Lt_00BD
.int .Lt_00B9
.int .Lt_00BE
.int .Lt_00BF
.Lt_00B0:
push dword ptr [ebp-4]
call _FLISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_00AE
.Lt_00AF:
.Lt_00AD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITGETREGCLASS@4
_EMITGETREGCLASS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C1:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.Lt_00C2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITLOAD@8
_EMITLOAD@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_00E8
.Lt_00EA:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
jmp .Lt_00EC
.Lt_00EE:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 11
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00EB
.Lt_00EF:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 10
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00EB
.Lt_00F0:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 12
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00EB
.Lt_00F1:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 9
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00EB
.Lt_00EC:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_00F1
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00F2+eax*4-4]
_.LT_00F2:
.int .Lt_00F0
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00EF
.int .Lt_00EF
.Lt_00EB:
jmp .Lt_00E7
.Lt_00F3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_00F5
.Lt_00F7:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 7
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00F4
.Lt_00F8:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 6
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00F4
.Lt_00F9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 8
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00F4
.Lt_00FA:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00F4
.Lt_00F5:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_00FA
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00FB+eax*4-4]
_.LT_00FB:
.int .Lt_00F9
.int .Lt_00FA
.int .Lt_00FA
.int .Lt_00FA
.int .Lt_00FA
.int .Lt_00FA
.int .Lt_00FA
.int .Lt_00FA
.int .Lt_00FA
.int .Lt_00FA
.int .Lt_00FA
.int .Lt_00FA
.int .Lt_00F7
.int .Lt_00F7
.int .Lt_00F8
.int .Lt_00F8
.Lt_00F4:
jmp .Lt_00E7
.Lt_00FC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_00FE
.Lt_0100:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 15
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00FD
.Lt_0101:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 14
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00FD
.Lt_0102:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 16
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00FD
.Lt_0103:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 13
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_00FD
.Lt_00FE:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_0103
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0104+eax*4-4]
_.LT_0104:
.int .Lt_0102
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0100
.int .Lt_0100
.int .Lt_0101
.int .Lt_0101
.Lt_00FD:
jmp .Lt_00E7
.Lt_0105:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_0107
.Lt_0109:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 3
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0106
.Lt_010A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 2
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0106
.Lt_010B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 4
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0106
.Lt_010C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 1
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0106
.Lt_0107:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_010C
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_010D+eax*4-4]
_.LT_010D:
.int .Lt_010B
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_0109
.int .Lt_0109
.int .Lt_010A
.int .Lt_010A
.Lt_0106:
jmp .Lt_00E7
.Lt_00E8:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 15
ja .Lt_0105
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_010E+eax*4-4]
_.LT_010E:
.int .Lt_00FC
.int .Lt_0105
.int .Lt_0105
.int .Lt_0105
.int .Lt_0105
.int .Lt_0105
.int .Lt_0105
.int .Lt_0105
.int .Lt_0105
.int .Lt_0105
.int .Lt_0105
.int .Lt_0105
.int .Lt_00EA
.int .Lt_00EA
.int .Lt_00F3
.int .Lt_00F3
.Lt_00E7:
.Lt_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITSTORE@8
_EMITSTORE@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_010F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_0112
.Lt_0114:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
jmp .Lt_0116
.Lt_0118:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 27
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_0119:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 26
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_011A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_011B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 25
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0115
.Lt_0116:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_011B
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_011C+eax*4-4]
_.LT_011C:
.int .Lt_011A
.int .Lt_011B
.int .Lt_011B
.int .Lt_011B
.int .Lt_011B
.int .Lt_011B
.int .Lt_011B
.int .Lt_011B
.int .Lt_011B
.int .Lt_011B
.int .Lt_011B
.int .Lt_011B
.int .Lt_0118
.int .Lt_0118
.int .Lt_0119
.int .Lt_0119
.Lt_0115:
jmp .Lt_0111
.Lt_011D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_011F
.Lt_0121:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 23
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_011E
.Lt_0122:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 22
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_011E
.Lt_0123:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 24
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_011E
.Lt_0124:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 21
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_011E
.Lt_011F:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_0124
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0125+eax*4-4]
_.LT_0125:
.int .Lt_0123
.int .Lt_0124
.int .Lt_0124
.int .Lt_0124
.int .Lt_0124
.int .Lt_0124
.int .Lt_0124
.int .Lt_0124
.int .Lt_0124
.int .Lt_0124
.int .Lt_0124
.int .Lt_0124
.int .Lt_0121
.int .Lt_0121
.int .Lt_0122
.int .Lt_0122
.Lt_011E:
jmp .Lt_0111
.Lt_0126:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_0128
.Lt_012A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 31
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0127
.Lt_012B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 30
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0127
.Lt_012C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 32
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0127
.Lt_012D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 29
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0127
.Lt_0128:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_012D
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_012E+eax*4-4]
_.LT_012E:
.int .Lt_012C
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012A
.int .Lt_012A
.int .Lt_012B
.int .Lt_012B
.Lt_0127:
jmp .Lt_0111
.Lt_012F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_0131
.Lt_0133:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 19
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0130
.Lt_0134:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 18
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0130
.Lt_0135:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 20
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0130
.Lt_0136:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 17
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0130
.Lt_0131:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_0136
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0137+eax*4-4]
_.LT_0137:
.int .Lt_0135
.int .Lt_0136
.int .Lt_0136
.int .Lt_0136
.int .Lt_0136
.int .Lt_0136
.int .Lt_0136
.int .Lt_0136
.int .Lt_0136
.int .Lt_0136
.int .Lt_0136
.int .Lt_0136
.int .Lt_0133
.int .Lt_0133
.int .Lt_0134
.int .Lt_0134
.Lt_0130:
jmp .Lt_0111
.Lt_0112:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 15
ja .Lt_012F
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0138+eax*4-4]
_.LT_0138:
.int .Lt_0126
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_0114
.int .Lt_0114
.int .Lt_011D
.int .Lt_011D
.Lt_0111:
.Lt_0110:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITMOV@8
_EMITMOV@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0139:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_013C
.Lt_013E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 35
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_013B
.Lt_013F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 34
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_013B
.Lt_0140:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 33
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_013B
.Lt_013C:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_0140
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0141+eax*4-52]
_.LT_0141:
.int .Lt_013E
.int .Lt_013E
.int .Lt_013F
.int .Lt_013F
.Lt_013B:
.Lt_013A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITADD@8
_EMITADD@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0142:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_0145
.Lt_0147:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 38
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0144
.Lt_0148:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 37
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0144
.Lt_0149:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 36
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0144
.Lt_0145:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_0149
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_014A+eax*4-52]
_.LT_014A:
.int .Lt_0147
.int .Lt_0147
.int .Lt_0148
.int .Lt_0148
.Lt_0144:
.Lt_0143:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITSUB@8
_EMITSUB@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_014B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_014E
.Lt_0150:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_014D
.Lt_0151:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 40
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_014D
.Lt_0152:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 39
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_014D
.Lt_014E:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_0152
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0153+eax*4-52]
_.LT_0153:
.int .Lt_0150
.int .Lt_0150
.int .Lt_0151
.int .Lt_0151
.Lt_014D:
.Lt_014C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITMUL@8
_EMITMUL@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0154:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_0157
.Lt_0159:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 44
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0156
.Lt_015A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 43
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0156
.Lt_015B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0156
.Lt_0157:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_015B
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_015C+eax*4-52]
_.LT_015C:
.int .Lt_0159
.int .Lt_0159
.int .Lt_015A
.int .Lt_015A
.Lt_0156:
.Lt_0155:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITDIV@8
_EMITDIV@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_015D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 46
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_015E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITINTDIV@8
_EMITINTDIV@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_015F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 45
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_0160:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITMOD@8
_EMITMOD@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0161:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 48
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_0162:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITSHL@8
_EMITSHL@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0163:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0168
.Lt_0169:
cmp dword ptr [ebp-8], 14
jne .Lt_0167
.Lt_0168:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 52
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0165
.Lt_0167:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 51
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_016A:
.Lt_0165:
.Lt_0164:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITSHR@8
_EMITSHR@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_016B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0170
.Lt_0171:
cmp dword ptr [ebp-8], 14
jne .Lt_016F
.Lt_0170:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 54
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_016D
.Lt_016F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 53
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_0172:
.Lt_016D:
.Lt_016C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITAND@8
_EMITAND@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0173:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0178
.Lt_0179:
cmp dword ptr [ebp-8], 14
jne .Lt_0177
.Lt_0178:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 56
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0175
.Lt_0177:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 55
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_017A:
.Lt_0175:
.Lt_0174:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITOR@8
_EMITOR@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_017B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0180
.Lt_0181:
cmp dword ptr [ebp-8], 14
jne .Lt_017F
.Lt_0180:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 58
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_017D
.Lt_017F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 57
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_0182:
.Lt_017D:
.Lt_017C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITXOR@8
_EMITXOR@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0183:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0188
.Lt_0189:
cmp dword ptr [ebp-8], 14
jne .Lt_0187
.Lt_0188:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 60
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0185
.Lt_0187:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 59
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_018A:
.Lt_0185:
.Lt_0184:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITEQV@8
_EMITEQV@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_018B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0190
.Lt_0191:
cmp dword ptr [ebp-8], 14
jne .Lt_018F
.Lt_0190:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 62
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_018D
.Lt_018F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 61
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_0192:
.Lt_018D:
.Lt_018C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITIMP@8
_EMITIMP@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0193:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0198
.Lt_0199:
cmp dword ptr [ebp-8], 14
jne .Lt_0197
.Lt_0198:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 64
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_0195
.Lt_0197:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 63
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_019A:
.Lt_0195:
.Lt_0194:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITATN2@8
_EMITATN2@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_019B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 65
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_019C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITPOW@8
_EMITPOW@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_019D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 66
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_019E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITADDROF@8
_EMITADDROF@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_019F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 67
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_01A0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITDEREF@8
_EMITDEREF@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_01A1:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 68
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.Lt_01A2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITGT@16
_EMITGT@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A3:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01A6
.Lt_01A8:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 71
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_01A9:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 70
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_01AA:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 69
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_01A6:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01AA
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01AB+eax*4-52]
_.LT_01AB:
.int .Lt_01A8
.int .Lt_01A8
.int .Lt_01A9
.int .Lt_01A9
.Lt_01A5:
.Lt_01A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITLT@16
_EMITLT@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01AC:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01AF
.Lt_01B1:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 74
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01AE
.Lt_01B2:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 73
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01AE
.Lt_01B3:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 72
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01AE
.Lt_01AF:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01B3
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01B4+eax*4-52]
_.LT_01B4:
.int .Lt_01B1
.int .Lt_01B1
.int .Lt_01B2
.int .Lt_01B2
.Lt_01AE:
.Lt_01AD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITEQ@16
_EMITEQ@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B5:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01B8
.Lt_01BA:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 77
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01B7
.Lt_01BB:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 76
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01B7
.Lt_01BC:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 75
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01B7
.Lt_01B8:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01BC
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01BD+eax*4-52]
_.LT_01BD:
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BB
.int .Lt_01BB
.Lt_01B7:
.Lt_01B6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITNE@16
_EMITNE@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BE:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01C1
.Lt_01C3:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 80
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01C0
.Lt_01C4:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 79
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01C0
.Lt_01C5:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 78
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01C0
.Lt_01C1:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01C5
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01C6+eax*4-52]
_.LT_01C6:
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C4
.int .Lt_01C4
.Lt_01C0:
.Lt_01BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITGE@16
_EMITGE@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01C7:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01CA
.Lt_01CC:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 83
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01C9
.Lt_01CD:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 82
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01C9
.Lt_01CE:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 81
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01C9
.Lt_01CA:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01CE
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01CF+eax*4-52]
_.LT_01CF:
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CD
.int .Lt_01CD
.Lt_01C9:
.Lt_01C8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITLE@16
_EMITLE@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D0:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01D3
.Lt_01D5:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 86
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01D2
.Lt_01D6:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 85
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01D2
.Lt_01D7:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 84
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .Lt_01D2
.Lt_01D3:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01D7
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01D8+eax*4-52]
_.LT_01D8:
.int .Lt_01D5
.int .Lt_01D5
.int .Lt_01D6
.int .Lt_01D6
.Lt_01D2:
.Lt_01D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITNEG@4
_EMITNEG@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01DC
.Lt_01DE:
push dword ptr [ebp+8]
push 89
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01DB
.Lt_01DF:
push dword ptr [ebp+8]
push 88
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01DB
.Lt_01E0:
push dword ptr [ebp+8]
push 87
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01DB
.Lt_01DC:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01E0
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01E1+eax*4-52]
_.LT_01E1:
.int .Lt_01DE
.int .Lt_01DE
.int .Lt_01DF
.int .Lt_01DF
.Lt_01DB:
.Lt_01DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITNOT@4
_EMITNOT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_01E7
.Lt_01E8:
cmp dword ptr [ebp-8], 14
jne .Lt_01E6
.Lt_01E7:
push dword ptr [ebp+8]
push 91
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01E4
.Lt_01E6:
push dword ptr [ebp+8]
push 90
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_01E9:
.Lt_01E4:
.Lt_01E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITHADD@4
_EMITHADD@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01EA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01ED
.Lt_01EF:
push dword ptr [ebp+8]
push 92
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01EC
.Lt_01F0:
jmp .Lt_01EC
.Lt_01ED:
mov eax, dword ptr [ebp-8]
add eax, 4294967281
cmp eax, 1
ja .Lt_01F0
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01F1+eax*4-60]
_.LT_01F1:
.int .Lt_01EF
.int .Lt_01EF
.Lt_01EC:
.Lt_01EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITABS@4
_EMITABS@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01F2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01F5
.Lt_01F7:
push dword ptr [ebp+8]
push 95
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01F4
.Lt_01F8:
push dword ptr [ebp+8]
push 94
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01F4
.Lt_01F9:
push dword ptr [ebp+8]
push 93
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01F4
.Lt_01F5:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01F9
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01FA+eax*4-52]
_.LT_01FA:
.int .Lt_01F7
.int .Lt_01F7
.int .Lt_01F8
.int .Lt_01F8
.Lt_01F4:
.Lt_01F3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITSGN@4
_EMITSGN@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01FB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01FE
.Lt_0200:
push dword ptr [ebp+8]
push 98
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01FD
.Lt_0201:
push dword ptr [ebp+8]
push 97
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01FD
.Lt_0202:
push dword ptr [ebp+8]
push 96
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_01FD
.Lt_01FE:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_0202
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0203+eax*4-52]
_.LT_0203:
.int .Lt_0200
.int .Lt_0200
.int .Lt_0201
.int .Lt_0201
.Lt_01FD:
.Lt_01FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITFIX@4
_EMITFIX@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0204:
push dword ptr [ebp+8]
push 99
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0205:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITFRAC@4
_EMITFRAC@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0206:
push dword ptr [ebp+8]
push 100
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0207:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITCONVFD2FS@4
_EMITCONVFD2FS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0208:
push dword ptr [ebp+8]
push 101
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0209:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITSIN@4
_EMITSIN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_020A:
push dword ptr [ebp+8]
push 103
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_020B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITASIN@4
_EMITASIN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_020C:
push dword ptr [ebp+8]
push 104
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_020D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITCOS@4
_EMITCOS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_020E:
push dword ptr [ebp+8]
push 105
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_020F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITACOS@4
_EMITACOS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0210:
push dword ptr [ebp+8]
push 106
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0211:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITTAN@4
_EMITTAN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0212:
push dword ptr [ebp+8]
push 107
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0213:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITATAN@4
_EMITATAN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0214:
push dword ptr [ebp+8]
push 108
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0215:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITSQRT@4
_EMITSQRT@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0216:
push dword ptr [ebp+8]
push 109
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0217:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITRSQRT@4
_EMITRSQRT@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0218:
push dword ptr [ebp+8]
push 110
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0219:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITRCP@4
_EMITRCP@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_021A:
push dword ptr [ebp+8]
push 111
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_021B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITLOG@4
_EMITLOG@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_021C:
push dword ptr [ebp+8]
push 112
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_021D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITEXP@4
_EMITEXP@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_021E:
push dword ptr [ebp+8]
push 113
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_021F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITFLOOR@4
_EMITFLOOR@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0220:
push dword ptr [ebp+8]
push 114
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0221:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITXCHGTOS@4
_EMITXCHGTOS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0222:
push dword ptr [ebp+8]
push 115
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0223:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITSWZREP@4
_EMITSWZREP@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0224:
push dword ptr [ebp+8]
push 102
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_0225:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITSTACKALIGN@4
_EMITSTACKALIGN@4:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov dword ptr [ebp-4], 0
.Lt_0226:
lea eax, [ebp-76]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 18
rep stosd
pop edi
pop eax
mov dword ptr [ebp-76], 0
mov ebx, dword ptr [ebp+8]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-52], ebx
mov dword ptr [ebp-48], eax
push 0
lea ebx, [ebp-76]
push ebx
push 116
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
.Lt_0227:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITPUSH@4
_EMITPUSH@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0228:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_022B
.Lt_022D:
push 0
push dword ptr [ebp+8]
push 119
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .Lt_022A
.Lt_022E:
push 0
push dword ptr [ebp+8]
push 118
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .Lt_022A
.Lt_022F:
push 0
push dword ptr [ebp+8]
push 117
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .Lt_022A
.Lt_022B:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_022F
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0230+eax*4-52]
_.LT_0230:
.int .Lt_022D
.int .Lt_022D
.int .Lt_022E
.int .Lt_022E
.Lt_022A:
.Lt_0229:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITPOP@4
_EMITPOP@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0231:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_0234
.Lt_0236:
push 0
push dword ptr [ebp+8]
push 122
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .Lt_0233
.Lt_0237:
push 0
push dword ptr [ebp+8]
push 121
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .Lt_0233
.Lt_0238:
push 0
push dword ptr [ebp+8]
push 120
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .Lt_0233
.Lt_0234:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_0238
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0239+eax*4-52]
_.LT_0239:
.int .Lt_0236
.int .Lt_0236
.int .Lt_0237
.int .Lt_0237
.Lt_0233:
.Lt_0232:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITPUSHUDT@8
_EMITPUSHUDT@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_023A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 123
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
.Lt_023B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITPOPST0@0
_EMITPOPST0@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_023C:
push 0
push 0
push 124
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
.Lt_023D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITCOMMENT@4
_EMITCOMMENT@4:
push ebp
mov ebp, esp
sub esp, 24
.Lt_023E:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset _Lt_0240
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _HNEWLIT@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_023F:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITASM@4
_EMITASM@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0243:
push -1
push dword ptr [ebp+8]
call _HNEWLIT@8
mov dword ptr [ebp-4], 0
.Lt_0248:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov dword ptr [ebx+132], -1
.Lt_0246:
inc dword ptr [ebp-4]
.Lt_0245:
cmp dword ptr [ebp-4], 1
jle .Lt_0248
.Lt_0247:
.Lt_0244:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITJMPTB@36
_EMITJMPTB@36:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0249:
push 1
mov eax, dword ptr [ebp+20]
sal eax, 3
mov ebx, eax
push ebx
call _calloc
add esp, 8
mov dword ptr [ebp-12], eax
push 1
mov eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, eax
push ebx
call _calloc
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-24], eax
jmp .Lt_024C
.Lt_024F:
mov eax, dword ptr [ebp-20]
sal eax, 3
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebp-20]
sal eax, 3
mov ecx, dword ptr [ebp-12]
add ecx, eax
mov esi, dword ptr [ebx]
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx], esi
mov dword ptr [ecx+4], eax
mov esi, dword ptr [ebp-20]
sal esi, 2
mov eax, dword ptr [ebp+16]
add eax, esi
mov esi, dword ptr [ebp-20]
sal esi, 2
mov ecx, dword ptr [ebp-16]
add ecx, esi
mov esi, dword ptr [eax]
mov dword ptr [ecx], esi
.Lt_024D:
inc dword ptr [ebp-20]
.Lt_024C:
mov esi, dword ptr [ebp-24]
cmp dword ptr [ebp-20], esi
jle .Lt_024F
.Lt_024E:
push 0
push 7
call _HNEWNODE@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov dword ptr [eax+8], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [esi+12], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp-16]
mov dword ptr [eax+16], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [esi+20], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+24]
mov dword ptr [eax+24], esi
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+28]
mov eax, dword ptr [ebp+32]
mov dword ptr [esi+32], ecx
mov dword ptr [esi+36], eax
mov ecx, dword ptr [ebp-8]
mov esi, dword ptr [ebp+36]
mov eax, dword ptr [ebp+40]
mov dword ptr [ecx+40], esi
mov dword ptr [ecx+44], eax
mov esi, dword ptr [ebp-8]
mov dword ptr [ebp-4], esi
.Lt_024A:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 36
.balign 16

.globl _EMITCALL@8
_EMITCALL@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0250:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 125
call _HNEWBRANCH@16
mov dword ptr [ebp-4], eax
.Lt_0251:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITCALLPTR@8
_EMITCALLPTR@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0252:
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 126
call _HNEWBRANCH@16
mov dword ptr [ebp-4], eax
.Lt_0253:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITBRANCH@8
_EMITBRANCH@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0254:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push 0
push 127
call _HNEWBRANCH@16
mov dword ptr [ebp-4], eax
.Lt_0255:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITJUMP@4
_EMITJUMP@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0256:
push 0
push dword ptr [ebp+8]
push 0
push 128
call _HNEWBRANCH@16
mov dword ptr [ebp-4], eax
.Lt_0257:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITJUMPPTR@4
_EMITJUMPPTR@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0258:
push 0
push 0
push dword ptr [ebp+8]
push 129
call _HNEWBRANCH@16
mov dword ptr [ebp-4], eax
.Lt_0259:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITRET@4
_EMITRET@4:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov dword ptr [ebp-4], 0
.Lt_025A:
lea eax, [ebp-76]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 18
rep stosd
pop edi
pop eax
mov dword ptr [ebp-76], 0
mov ebx, dword ptr [ebp+8]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-52], ebx
mov dword ptr [ebp-48], eax
lea ebx, [ebp-76]
push ebx
push 130
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.Lt_025B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITLABEL@4
_EMITLABEL@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_025C:
push dword ptr [ebp+8]
push 131
call _HNEWSYMOP@8
mov dword ptr [ebp-4], eax
.Lt_025D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITPUBLIC@4
_EMITPUBLIC@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_025E:
push dword ptr [ebp+8]
push 132
call _HNEWSYMOP@8
mov dword ptr [ebp-4], eax
.Lt_025F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITMEMMOVE@12
_EMITMEMMOVE@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0260:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 135
call _HNEWMEM@20
mov dword ptr [ebp-4], eax
.Lt_0261:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EMITMEMSWAP@12
_EMITMEMSWAP@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0262:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 136
call _HNEWMEM@20
mov dword ptr [ebp-4], eax
.Lt_0263:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EMITMEMCLEAR@8
_EMITMEMCLEAR@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0264:
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 137
call _HNEWMEM@20
mov dword ptr [ebp-4], eax
.Lt_0265:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITSTKCLEAR@8
_EMITSTKCLEAR@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0266:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
push 138
call _HNEWMEM@20
mov dword ptr [ebp-4], eax
.Lt_0267:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITDBGLINEBEGIN@12
_EMITDBGLINEBEGIN@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0268:
push dword ptr [ebp+16]
push dword ptr [_EMIT+4]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 139
call _HNEWDBG@20
mov dword ptr [ebp-4], eax
.Lt_0269:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EMITDBGLINEEND@8
_EMITDBGLINEEND@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_026A:
push 0
push dword ptr [_EMIT+4]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 140
call _HNEWDBG@20
mov dword ptr [ebp-4], eax
.Lt_026B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITDBGSCOPEBEGIN@4
_EMITDBGSCOPEBEGIN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_026C:
push 0
push 0
push 0
push dword ptr [ebp+8]
push 141
call _HNEWDBG@20
mov dword ptr [ebp-4], eax
.Lt_026D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITDBGSCOPEEND@4
_EMITDBGSCOPEEND@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_026E:
push 0
push 0
push 0
push dword ptr [ebp+8]
push 142
call _HNEWDBG@20
mov dword ptr [ebp-4], eax
.Lt_026F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__emit:
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
_HOPTSYMOP@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_008D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 131
jne .Lt_0091
.Lt_0092:
cmp dword ptr [ebp+8], 0
je .Lt_0094
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 5
jne .Lt_0096
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 127
je .Lt_009A
.Lt_009B:
cmp dword ptr [ebp-12], 128
jne .Lt_0099
.Lt_009A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [eax+16], ecx
jne .Lt_009D
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 0
.Lt_009D:
.Lt_009C:
.Lt_0099:
.Lt_0097:
.Lt_0096:
.Lt_0095:
.Lt_0094:
.Lt_0093:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .Lt_008E
.Lt_0091:
.Lt_008F:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
.Lt_008E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HPEEPHOLEOPT@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_009E:
mov dword ptr [ebp-8], 0
lea eax, [_EMIT+16]
push eax
call _FLISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_00A0:
cmp dword ptr [ebp-4], 0
je .Lt_00A1
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .Lt_00A3
.Lt_00A5:
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call _HOPTSYMOP@8
mov dword ptr [ebp-8], eax
jmp .Lt_00A2
.Lt_00A6:
jmp .Lt_00A2
.Lt_00A7:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_00A9
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.Lt_00A9:
.Lt_00A8:
jmp .Lt_00A2
.Lt_00AA:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
jmp .Lt_00A2
.Lt_00A3:
mov eax, dword ptr [ebp-12]
add eax, 4294967290
cmp eax, 4
ja .Lt_00AA
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00AB+eax*4-24]
_.LT_00AB:
.int .Lt_00A7
.int .Lt_00AA
.int .Lt_00A5
.int .Lt_00AA
.int .Lt_00A6
.Lt_00A2:
push dword ptr [ebp-4]
call _FLISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_00A0
.Lt_00A1:
.Lt_009F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HNEWVR@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00C3:
cmp dword ptr [ebp+8], 0
jne .Lt_00C6
mov dword ptr [ebp-4], 0
jmp .Lt_00C4
.Lt_00C6:
.Lt_00C5:
lea eax, [_EMIT+72]
push eax
call _FLISTNEWITEM@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov dword ptr [ebx+32], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [ecx+40]
mov eax, dword ptr [ecx+44]
mov dword ptr [ebx+40], esi
mov dword ptr [ebx+44], eax
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [esi+48]
mov dword ptr [eax+48], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov dword ptr [ebx+24], ecx
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx+28], ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [eax+16]
mov dword ptr [ebx+16], esi
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [esi+20]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_00C8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00C9
mov dword ptr [ebp-16], 24
jmp .Lt_0270
.Lt_00C9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0270:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov eax, dword ptr [ebx+8]
call dword ptr [eax+40]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov eax, dword ptr [ebp-8]
mov esi, 1
mov cl, byte ptr [eax+12]
sal esi, cl
or dword ptr [ebx+132], esi
.Lt_00C8:
.Lt_00C7:
mov esi, dword ptr [ebp+8]
push dword ptr [esi+56]
call _HNEWVR@4
mov esi, dword ptr [ebp-8]
mov dword ptr [esi+56], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
call _HNEWVR@4
mov esi, dword ptr [ebp-8]
mov dword ptr [esi+52], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00C4:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HNEWNODE@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00CB:
lea eax, [_EMIT+16]
push eax
call _FLISTNEWITEM@4
mov dword ptr [_Lt_0271], eax
mov eax, dword ptr [_Lt_0271]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov dword ptr [_Lt_0272], 0
.Lt_00D0:
mov ebx, dword ptr [_Lt_0272]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
mov eax, dword ptr [_Lt_0272]
sal eax, 2
mov ecx, dword ptr [_Lt_0271]
add ecx, eax
mov eax, dword ptr [ebx+136]
mov dword ptr [ecx+48], eax
.Lt_00CE:
inc dword ptr [_Lt_0272]
.Lt_00CD:
cmp dword ptr [_Lt_0272], 1
jle .Lt_00D0
.Lt_00CF:
cmp dword ptr [ebp+12], 0
je .Lt_00D2
inc dword ptr [_EMIT+4]
.Lt_00D2:
.Lt_00D1:
mov eax, dword ptr [_Lt_0271]
mov dword ptr [ebp-4], eax
.Lt_00CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0271,4
.balign 4
	.lcomm	_Lt_0272,4

.section .text
.balign 16
_HNEWBOP@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D3:
push -1
push 1
call _HNEWNODE@8
mov dword ptr [_Lt_0273], eax
mov eax, dword ptr [_Lt_0273]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_0273]
mov dword ptr [ebx+12], eax
push dword ptr [ebp+16]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_0273]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [_Lt_0273]
mov dword ptr [ebp-4], eax
.Lt_00D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0273,4

.section .text
.balign 16
_HNEWUOP@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D5:
push -1
push 2
call _HNEWNODE@8
mov dword ptr [_Lt_0274], eax
mov eax, dword ptr [_Lt_0274]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_0274]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_0274]
mov dword ptr [ebp-4], eax
.Lt_00D6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0274,4

.section .text
.balign 16
_HNEWREL@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D7:
push -1
push 3
call _HNEWNODE@8
mov dword ptr [_Lt_0275], eax
mov eax, dword ptr [_Lt_0275]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_0275]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_0275]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+16], ebx
push dword ptr [ebp+20]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_0275]
mov dword ptr [ebx+20], eax
push dword ptr [ebp+24]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_0275]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [_Lt_0275]
mov dword ptr [ebp-4], eax
.Lt_00D8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_0275,4

.section .text
.balign 16
_HNEWSTK@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D9:
push -1
push 4
call _HNEWNODE@8
mov dword ptr [_Lt_0276], eax
mov eax, dword ptr [_Lt_0276]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_0276]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_0276]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [_Lt_0276]
mov dword ptr [ebp-4], ebx
.Lt_00DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0276,4

.section .text
.balign 16
_HNEWBRANCH@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DB:
push -1
push 5
call _HNEWNODE@8
mov dword ptr [_Lt_0277], eax
mov eax, dword ptr [_Lt_0277]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [_Lt_0277]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+16], eax
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_0277]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_0277]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [_Lt_0277]
mov dword ptr [ebp-4], ebx
.Lt_00DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_0277,4

.section .text
.balign 16
_HNEWSYMOP@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DD:
push 0
push 8
call _HNEWNODE@8
mov dword ptr [_Lt_0278], eax
mov eax, dword ptr [_Lt_0278]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [_Lt_0278]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_0278]
mov dword ptr [ebp-4], eax
.Lt_00DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0278,4

.section .text
.balign 16
_HNEWLIT@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00DF:
push dword ptr [ebp+12]
push 6
call _HNEWNODE@8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+12], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
call _fb_StrAssign@20
.Lt_00E0:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HNEWMEM@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E1:
push -1
push 9
call _HNEWNODE@8
mov dword ptr [_Lt_0279], eax
mov eax, dword ptr [_Lt_0279]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_0279]
mov dword ptr [ebx+12], eax
push dword ptr [ebp+16]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_0279]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [_Lt_0279]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [_Lt_0279]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [_Lt_0279]
mov dword ptr [ebp-4], eax
.Lt_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_0279,4

.section .text
.balign 16
_HNEWDBG@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E3:
push 0
push 10
call _HNEWNODE@8
mov dword ptr [_Lt_027A], eax
mov eax, dword ptr [_Lt_027A]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [_Lt_027A]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_027A]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [_Lt_027A]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [_Lt_027A]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [_Lt_027A]
mov dword ptr [ebp-4], ebx
.Lt_00E4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_027A,4
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.globl _EMIT
.balign 4
	.lcomm	_EMIT,236
.balign 4
	.lcomm	_Lt_0073,36

.section .data
.balign 4
_Lt_0080:	.ascii	"\t\0"
.balign 4
_Lt_0082:	.ascii	"\r\n\0"
.balign 4
_Lt_0240:	.ascii	"##\0"

.section .ctors
.int _fb_ctor__emit
