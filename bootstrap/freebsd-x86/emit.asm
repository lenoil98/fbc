	.intel_syntax noprefix

.section .text
.balign 16

.globl EMITINIT
EMITINIT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0073:
cmp dword ptr [EMIT], 0
je .Lt_0076
mov dword ptr [ebp-4], -1
jmp .Lt_0074
.Lt_0076:
.Lt_0075:
call EMITGASX86_CTOR
push 48
push 2048
lea eax, [EMIT+16]
push eax
call FLISTINIT
add esp, 12
push 68
push 6144
lea eax, [EMIT+72]
push eax
call FLISTINIT
add esp, 12
mov dword ptr [EMIT], -1
mov dword ptr [EMIT+4], 0
call dword ptr [EMIT+148]
mov dword ptr [ebp-4], eax
.Lt_0074:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITEND
EMITEND:
.Lt_0077:
cmp dword ptr [EMIT], 0
jne .Lt_007A
jmp .Lt_0078
.Lt_007A:
.Lt_0079:
call dword ptr [EMIT+152]
mov dword ptr [EMIT], 0
.Lt_0078:
ret
.balign 16

.globl EMITWRITESTR
EMITWRITESTR:
push ebp
mov ebp, esp
sub esp, 12
.Lt_007B:
cmp dword ptr [ebp+12], 0
je .Lt_007E
push 0
push 2
push offset Lt_007F
push -1
push offset Lt_0084
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0084
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_0084
call fb_StrAssign
add esp, 20
jmp .Lt_007D
.Lt_007E:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0084
call fb_StrAssign
add esp, 20
.Lt_007D:
push 0
push 2
push offset Lt_0081
push -1
push offset Lt_0084
call fb_StrConcatAssign
add esp, 20
push -1
push offset Lt_0084
push 0
push dword ptr [ENV+556]
call fb_FilePutStr
add esp, 16
test eax, eax
je .Lt_0083
.Lt_0083:
.Lt_0082:
.Lt_007C:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0084,12

.section .text
.balign 16

.globl EMITRESET
EMITRESET:
push ebx
.Lt_0085:
lea eax, [EMIT+16]
push eax
call FLISTRESET
add esp, 4
lea eax, [EMIT+72]
push eax
call FLISTRESET
add esp, 4
mov dword ptr [EMIT+128], 0
mov dword ptr [Lt_008B], 0
.Lt_008A:
mov eax, dword ptr [Lt_008B]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov dword ptr [ebx+132], 0
.Lt_0088:
inc dword ptr [Lt_008B]
.Lt_0087:
cmp dword ptr [Lt_008B], 1
jle .Lt_008A
.Lt_0089:
.Lt_0086:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	Lt_008B,4

.section .text
.balign 16

.globl EMITFLUSH
EMITFLUSH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00AB:
call HPEEPHOLEOPT
lea eax, [EMIT+16]
push eax
call FLISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_00AD:
cmp dword ptr [ebp-4], 0
je .Lt_00AE
mov eax, dword ptr [ebp-4]
mov dword ptr [EMIT+128], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_00B0
.Lt_00B2:
jmp .Lt_00AF
.Lt_00B3:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+232]
add ebx, eax
call dword ptr [ebx]
add esp, 8
jmp .Lt_00AF
.Lt_00B4:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+232]
add ebx, eax
call dword ptr [ebx]
add esp, 4
jmp .Lt_00AF
.Lt_00B5:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+232]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .Lt_00AF
.Lt_00B6:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+232]
add ebx, eax
call dword ptr [ebx]
add esp, 8
jmp .Lt_00AF
.Lt_00B7:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+232]
add ebx, eax
call dword ptr [ebx]
add esp, 12
jmp .Lt_00AF
.Lt_00B8:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+232]
add ebx, eax
call dword ptr [ebx]
add esp, 4
jmp .Lt_00AF
.Lt_00B9:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [EMIT+232]
call dword ptr [ebx+532]
add esp, 4
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+8], 0
je .Lt_00BB
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
call free
add esp, 4
.Lt_00BB:
.Lt_00BA:
jmp .Lt_00AF
.Lt_00BC:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+36]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+4]
mov ebx, dword ptr [EMIT+232]
call dword ptr [ebx+536]
add esp, 36
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
call free
add esp, 4
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
call free
add esp, 4
jmp .Lt_00AF
.Lt_00BD:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+232]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .Lt_00AF
.Lt_00BE:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+232]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .Lt_00AF
.Lt_00B0:
cmp dword ptr [ebp-8], 10
ja .Lt_00AF
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_00BF+ebx*4]
.LT_00BF:
.int .Lt_00B2
.int .Lt_00B3
.int .Lt_00B4
.int .Lt_00B5
.int .Lt_00B6
.int .Lt_00B7
.int .Lt_00B9
.int .Lt_00BC
.int .Lt_00B8
.int .Lt_00BD
.int .Lt_00BE
.Lt_00AF:
push dword ptr [ebp-4]
call FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00AD
.Lt_00AE:
.Lt_00AC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITGETREGCLASS
EMITGETREGCLASS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C0:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.Lt_00C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITLOAD
EMITLOAD:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_00E7
.Lt_00E9:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
jmp .Lt_00EB
.Lt_00ED:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 11
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_00EE:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 10
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_00EF:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 12
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_00F0:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 9
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_00EB:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_00F0
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00F1+eax*4-4]
.LT_00F1:
.int .Lt_00EF
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00EE
.int .Lt_00EE
.Lt_00EA:
jmp .Lt_00E6
.Lt_00F2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_00F4
.Lt_00F6:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 7
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00F3
.Lt_00F7:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 6
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00F3
.Lt_00F8:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 8
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00F3
.Lt_00F9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00F3
.Lt_00F4:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_00F9
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00FA+eax*4-4]
.LT_00FA:
.int .Lt_00F8
.int .Lt_00F9
.int .Lt_00F9
.int .Lt_00F9
.int .Lt_00F9
.int .Lt_00F9
.int .Lt_00F9
.int .Lt_00F9
.int .Lt_00F9
.int .Lt_00F9
.int .Lt_00F9
.int .Lt_00F9
.int .Lt_00F6
.int .Lt_00F6
.int .Lt_00F7
.int .Lt_00F7
.Lt_00F3:
jmp .Lt_00E6
.Lt_00FB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_00FD
.Lt_00FF:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 15
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00FC
.Lt_0100:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 14
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00FC
.Lt_0101:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 16
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00FC
.Lt_0102:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 13
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00FC
.Lt_00FD:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_0102
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0103+eax*4-4]
.LT_0103:
.int .Lt_0101
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_00FF
.int .Lt_00FF
.int .Lt_0100
.int .Lt_0100
.Lt_00FC:
jmp .Lt_00E6
.Lt_0104:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_0106
.Lt_0108:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 3
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0105
.Lt_0109:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 2
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0105
.Lt_010A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 4
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0105
.Lt_010B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 1
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0105
.Lt_0106:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_010B
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_010C+eax*4-4]
.LT_010C:
.int .Lt_010A
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_0108
.int .Lt_0108
.int .Lt_0109
.int .Lt_0109
.Lt_0105:
jmp .Lt_00E6
.Lt_00E7:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 15
ja .Lt_0104
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_010D+eax*4-4]
.LT_010D:
.int .Lt_00FB
.int .Lt_0104
.int .Lt_0104
.int .Lt_0104
.int .Lt_0104
.int .Lt_0104
.int .Lt_0104
.int .Lt_0104
.int .Lt_0104
.int .Lt_0104
.int .Lt_0104
.int .Lt_0104
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00F2
.int .Lt_00F2
.Lt_00E6:
.Lt_00E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITSTORE
EMITSTORE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_010E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_0111
.Lt_0113:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
jmp .Lt_0115
.Lt_0117:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 27
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0118:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 26
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0119:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_011A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 25
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0115:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_011A
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_011B+eax*4-4]
.LT_011B:
.int .Lt_0119
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_0117
.int .Lt_0117
.int .Lt_0118
.int .Lt_0118
.Lt_0114:
jmp .Lt_0110
.Lt_011C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_011E
.Lt_0120:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 23
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_011D
.Lt_0121:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 22
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_011D
.Lt_0122:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 24
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_011D
.Lt_0123:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 21
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_011D
.Lt_011E:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_0123
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0124+eax*4-4]
.LT_0124:
.int .Lt_0122
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0120
.int .Lt_0120
.int .Lt_0121
.int .Lt_0121
.Lt_011D:
jmp .Lt_0110
.Lt_0125:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_0127
.Lt_0129:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 31
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0126
.Lt_012A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 30
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0126
.Lt_012B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 32
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0126
.Lt_012C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 29
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0126
.Lt_0127:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_012C
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_012D+eax*4-4]
.LT_012D:
.int .Lt_012B
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_0129
.int .Lt_0129
.int .Lt_012A
.int .Lt_012A
.Lt_0126:
jmp .Lt_0110
.Lt_012E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_0130
.Lt_0132:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 19
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_012F
.Lt_0133:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 18
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_012F
.Lt_0134:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 20
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_012F
.Lt_0135:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 17
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_012F
.Lt_0130:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .Lt_0135
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0136+eax*4-4]
.LT_0136:
.int .Lt_0134
.int .Lt_0135
.int .Lt_0135
.int .Lt_0135
.int .Lt_0135
.int .Lt_0135
.int .Lt_0135
.int .Lt_0135
.int .Lt_0135
.int .Lt_0135
.int .Lt_0135
.int .Lt_0135
.int .Lt_0132
.int .Lt_0132
.int .Lt_0133
.int .Lt_0133
.Lt_012F:
jmp .Lt_0110
.Lt_0111:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 15
ja .Lt_012E
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0137+eax*4-4]
.LT_0137:
.int .Lt_0125
.int .Lt_012E
.int .Lt_012E
.int .Lt_012E
.int .Lt_012E
.int .Lt_012E
.int .Lt_012E
.int .Lt_012E
.int .Lt_012E
.int .Lt_012E
.int .Lt_012E
.int .Lt_012E
.int .Lt_0113
.int .Lt_0113
.int .Lt_011C
.int .Lt_011C
.Lt_0110:
.Lt_010F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITMOV
EMITMOV:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0138:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_013B
.Lt_013D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 35
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_013A
.Lt_013E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 34
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_013A
.Lt_013F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 33
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_013A
.Lt_013B:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_013F
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0140+eax*4-52]
.LT_0140:
.int .Lt_013D
.int .Lt_013D
.int .Lt_013E
.int .Lt_013E
.Lt_013A:
.Lt_0139:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITADD
EMITADD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0141:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_0144
.Lt_0146:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 38
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0143
.Lt_0147:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 37
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0143
.Lt_0148:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 36
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0143
.Lt_0144:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_0148
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0149+eax*4-52]
.LT_0149:
.int .Lt_0146
.int .Lt_0146
.int .Lt_0147
.int .Lt_0147
.Lt_0143:
.Lt_0142:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITSUB
EMITSUB:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_014A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_014D
.Lt_014F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_014C
.Lt_0150:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 40
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_014C
.Lt_0151:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 39
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_014C
.Lt_014D:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_0151
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0152+eax*4-52]
.LT_0152:
.int .Lt_014F
.int .Lt_014F
.int .Lt_0150
.int .Lt_0150
.Lt_014C:
.Lt_014B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITMUL
EMITMUL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0153:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_0156
.Lt_0158:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 44
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0155
.Lt_0159:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 43
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0155
.Lt_015A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0155
.Lt_0156:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_015A
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_015B+eax*4-52]
.LT_015B:
.int .Lt_0158
.int .Lt_0158
.int .Lt_0159
.int .Lt_0159
.Lt_0155:
.Lt_0154:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITDIV
EMITDIV:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_015C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 46
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_015D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITINTDIV
EMITINTDIV:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_015E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 45
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_015F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITMOD
EMITMOD:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0160:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 48
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0161:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITSHL
EMITSHL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0162:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0167
.Lt_0168:
cmp dword ptr [ebp-8], 14
jne .Lt_0166
.Lt_0167:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 52
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0164
.Lt_0166:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 51
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0169:
.Lt_0164:
.Lt_0163:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITSHR
EMITSHR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_016A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_016F
.Lt_0170:
cmp dword ptr [ebp-8], 14
jne .Lt_016E
.Lt_016F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 54
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_016C
.Lt_016E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 53
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0171:
.Lt_016C:
.Lt_016B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITAND
EMITAND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0172:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0177
.Lt_0178:
cmp dword ptr [ebp-8], 14
jne .Lt_0176
.Lt_0177:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 56
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0174
.Lt_0176:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 55
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0179:
.Lt_0174:
.Lt_0173:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITOR
EMITOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_017A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_017F
.Lt_0180:
cmp dword ptr [ebp-8], 14
jne .Lt_017E
.Lt_017F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 58
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_017C
.Lt_017E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 57
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0181:
.Lt_017C:
.Lt_017B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITXOR
EMITXOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0182:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0187
.Lt_0188:
cmp dword ptr [ebp-8], 14
jne .Lt_0186
.Lt_0187:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 60
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0184
.Lt_0186:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 59
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0189:
.Lt_0184:
.Lt_0183:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITEQV
EMITEQV:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_018A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_018F
.Lt_0190:
cmp dword ptr [ebp-8], 14
jne .Lt_018E
.Lt_018F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 62
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_018C
.Lt_018E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 61
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0191:
.Lt_018C:
.Lt_018B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITIMP
EMITIMP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0192:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_0197
.Lt_0198:
cmp dword ptr [ebp-8], 14
jne .Lt_0196
.Lt_0197:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 64
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0194
.Lt_0196:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 63
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0199:
.Lt_0194:
.Lt_0193:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITATN2
EMITATN2:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_019A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 65
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_019B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITPOW
EMITPOW:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_019C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 66
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_019D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITADDROF
EMITADDROF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_019E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 67
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_019F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITDEREF
EMITDEREF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_01A0:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 68
call HNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_01A1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITGT
EMITGT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A2:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01A5
.Lt_01A7:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 71
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_01A8:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 70
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_01A9:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 69
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_01A5:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01A9
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01AA+eax*4-52]
.LT_01AA:
.int .Lt_01A7
.int .Lt_01A7
.int .Lt_01A8
.int .Lt_01A8
.Lt_01A4:
.Lt_01A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITLT
EMITLT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01AB:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01AE
.Lt_01B0:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 74
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01AD
.Lt_01B1:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 73
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01AD
.Lt_01B2:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 72
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01AD
.Lt_01AE:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01B2
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01B3+eax*4-52]
.LT_01B3:
.int .Lt_01B0
.int .Lt_01B0
.int .Lt_01B1
.int .Lt_01B1
.Lt_01AD:
.Lt_01AC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITEQ
EMITEQ:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B4:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01B7
.Lt_01B9:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 77
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01B6
.Lt_01BA:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 76
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01B6
.Lt_01BB:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 75
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01B6
.Lt_01B7:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01BB
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01BC+eax*4-52]
.LT_01BC:
.int .Lt_01B9
.int .Lt_01B9
.int .Lt_01BA
.int .Lt_01BA
.Lt_01B6:
.Lt_01B5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITNE
EMITNE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BD:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01C0
.Lt_01C2:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 80
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01BF
.Lt_01C3:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 79
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01BF
.Lt_01C4:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 78
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01BF
.Lt_01C0:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01C4
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01C5+eax*4-52]
.LT_01C5:
.int .Lt_01C2
.int .Lt_01C2
.int .Lt_01C3
.int .Lt_01C3
.Lt_01BF:
.Lt_01BE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITGE
EMITGE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01C6:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01C9
.Lt_01CB:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 83
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01C8
.Lt_01CC:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 82
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01C8
.Lt_01CD:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 81
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01C8
.Lt_01C9:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01CD
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01CE+eax*4-52]
.LT_01CE:
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CC
.int .Lt_01CC
.Lt_01C8:
.Lt_01C7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITLE
EMITLE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01CF:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01D2
.Lt_01D4:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 86
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01D1
.Lt_01D5:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 85
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01D1
.Lt_01D6:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 84
call HNEWREL
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01D1
.Lt_01D2:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01D6
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01D7+eax*4-52]
.LT_01D7:
.int .Lt_01D4
.int .Lt_01D4
.int .Lt_01D5
.int .Lt_01D5
.Lt_01D1:
.Lt_01D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITNEG
EMITNEG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01DB
.Lt_01DD:
push dword ptr [ebp+8]
push 89
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01DA
.Lt_01DE:
push dword ptr [ebp+8]
push 88
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01DA
.Lt_01DF:
push dword ptr [ebp+8]
push 87
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01DA
.Lt_01DB:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01DF
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01E0+eax*4-52]
.LT_01E0:
.int .Lt_01DD
.int .Lt_01DD
.int .Lt_01DE
.int .Lt_01DE
.Lt_01DA:
.Lt_01D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITNOT
EMITNOT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 13
je .Lt_01E6
.Lt_01E7:
cmp dword ptr [ebp-8], 14
jne .Lt_01E5
.Lt_01E6:
push dword ptr [ebp+8]
push 91
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01E5:
push dword ptr [ebp+8]
push 90
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_01E8:
.Lt_01E3:
.Lt_01E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITHADD
EMITHADD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01EC
.Lt_01EE:
push dword ptr [ebp+8]
push 92
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01EB
.Lt_01EF:
jmp .Lt_01EB
.Lt_01EC:
mov eax, dword ptr [ebp-8]
add eax, 4294967281
cmp eax, 1
ja .Lt_01EF
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01F0+eax*4-60]
.LT_01F0:
.int .Lt_01EE
.int .Lt_01EE
.Lt_01EB:
.Lt_01EA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITABS
EMITABS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01F1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01F4
.Lt_01F6:
push dword ptr [ebp+8]
push 95
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01F3
.Lt_01F7:
push dword ptr [ebp+8]
push 94
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01F3
.Lt_01F8:
push dword ptr [ebp+8]
push 93
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01F3
.Lt_01F4:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_01F8
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01F9+eax*4-52]
.LT_01F9:
.int .Lt_01F6
.int .Lt_01F6
.int .Lt_01F7
.int .Lt_01F7
.Lt_01F3:
.Lt_01F2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITSGN
EMITSGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01FA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01FD
.Lt_01FF:
push dword ptr [ebp+8]
push 98
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01FC
.Lt_0200:
push dword ptr [ebp+8]
push 97
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01FC
.Lt_0201:
push dword ptr [ebp+8]
push 96
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01FC
.Lt_01FD:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_0201
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0202+eax*4-52]
.LT_0202:
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_0200
.int .Lt_0200
.Lt_01FC:
.Lt_01FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITFIX
EMITFIX:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0203:
push dword ptr [ebp+8]
push 99
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0204:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITFRAC
EMITFRAC:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0205:
push dword ptr [ebp+8]
push 100
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0206:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITCONVFD2FS
EMITCONVFD2FS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0207:
push dword ptr [ebp+8]
push 101
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0208:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITSIN
EMITSIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0209:
push dword ptr [ebp+8]
push 103
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_020A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITASIN
EMITASIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_020B:
push dword ptr [ebp+8]
push 104
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_020C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITCOS
EMITCOS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_020D:
push dword ptr [ebp+8]
push 105
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_020E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITACOS
EMITACOS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_020F:
push dword ptr [ebp+8]
push 106
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0210:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITTAN
EMITTAN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0211:
push dword ptr [ebp+8]
push 107
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0212:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITATAN
EMITATAN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0213:
push dword ptr [ebp+8]
push 108
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0214:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITSQRT
EMITSQRT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0215:
push dword ptr [ebp+8]
push 109
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0216:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITRSQRT
EMITRSQRT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0217:
push dword ptr [ebp+8]
push 110
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0218:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITRCP
EMITRCP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0219:
push dword ptr [ebp+8]
push 111
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_021A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITLOG
EMITLOG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_021B:
push dword ptr [ebp+8]
push 112
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_021C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITEXP
EMITEXP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_021D:
push dword ptr [ebp+8]
push 113
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_021E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITFLOOR
EMITFLOOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_021F:
push dword ptr [ebp+8]
push 114
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0220:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITXCHGTOS
EMITXCHGTOS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0221:
push dword ptr [ebp+8]
push 115
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0222:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITSWZREP
EMITSWZREP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0223:
push dword ptr [ebp+8]
push 102
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0224:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITSTACKALIGN
EMITSTACKALIGN:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.Lt_0225:
lea eax, [ebp-72]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 17
rep stosd
pop edi
pop eax
mov dword ptr [ebp-72], 0
mov ebx, dword ptr [ebp+8]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-48], ebx
mov dword ptr [ebp-44], eax
push 0
lea ebx, [ebp-72]
push ebx
push 116
call HNEWSTK
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0226:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITPUSH
EMITPUSH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0227:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_022A
.Lt_022C:
push 0
push dword ptr [ebp+8]
push 119
call HNEWSTK
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0229
.Lt_022D:
push 0
push dword ptr [ebp+8]
push 118
call HNEWSTK
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0229
.Lt_022E:
push 0
push dword ptr [ebp+8]
push 117
call HNEWSTK
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0229
.Lt_022A:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_022E
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_022F+eax*4-52]
.LT_022F:
.int .Lt_022C
.int .Lt_022C
.int .Lt_022D
.int .Lt_022D
.Lt_0229:
.Lt_0228:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITPOP
EMITPOP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0230:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_0233
.Lt_0235:
push 0
push dword ptr [ebp+8]
push 122
call HNEWSTK
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0232
.Lt_0236:
push 0
push dword ptr [ebp+8]
push 121
call HNEWSTK
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0232
.Lt_0237:
push 0
push dword ptr [ebp+8]
push 120
call HNEWSTK
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0232
.Lt_0233:
mov eax, dword ptr [ebp-8]
add eax, 4294967283
cmp eax, 3
ja .Lt_0237
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0238+eax*4-52]
.LT_0238:
.int .Lt_0235
.int .Lt_0235
.int .Lt_0236
.int .Lt_0236
.Lt_0232:
.Lt_0231:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITPUSHUDT
EMITPUSHUDT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0239:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 123
call HNEWSTK
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_023A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITPOPST0
EMITPOPST0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_023B:
push 0
push 0
push 124
call HNEWSTK
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_023C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITCOMMENT
EMITCOMMENT:
push ebp
mov ebp, esp
sub esp, 24
.Lt_023D:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset Lt_023F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call HNEWLIT
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.Lt_023E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITASM
EMITASM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0242:
push -1
push dword ptr [ebp+8]
call HNEWLIT
add esp, 8
mov dword ptr [ebp-4], 0
.Lt_0247:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov dword ptr [ebx+132], -1
.Lt_0245:
inc dword ptr [ebp-4]
.Lt_0244:
cmp dword ptr [ebp-4], 1
jle .Lt_0247
.Lt_0246:
.Lt_0243:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITJMPTB
EMITJMPTB:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0248:
push 1
mov eax, dword ptr [ebp+20]
sal eax, 3
mov ebx, eax
push ebx
call calloc
add esp, 8
mov dword ptr [ebp-12], eax
push 1
mov eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, eax
push ebx
call calloc
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-24], eax
jmp .Lt_024B
.Lt_024E:
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
.Lt_024C:
inc dword ptr [ebp-20]
.Lt_024B:
mov esi, dword ptr [ebp-24]
cmp dword ptr [ebp-20], esi
jle .Lt_024E
.Lt_024D:
push 0
push 7
call HNEWNODE
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov dword ptr [eax+4], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [esi+8], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp-16]
mov dword ptr [eax+12], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [esi+16], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+24]
mov dword ptr [eax+20], esi
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+28]
mov eax, dword ptr [ebp+32]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
mov ecx, dword ptr [ebp-8]
mov esi, dword ptr [ebp+36]
mov eax, dword ptr [ebp+40]
mov dword ptr [ecx+32], esi
mov dword ptr [ecx+36], eax
mov esi, dword ptr [ebp-8]
mov dword ptr [ebp-4], esi
.Lt_0249:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITCALL
EMITCALL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_024F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 125
call HNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0250:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITCALLPTR
EMITCALLPTR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0251:
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 126
call HNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0252:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITBRANCH
EMITBRANCH:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0253:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push 0
push 127
call HNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0254:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITJUMP
EMITJUMP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0255:
push 0
push dword ptr [ebp+8]
push 0
push 128
call HNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0256:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITJUMPPTR
EMITJUMPPTR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0257:
push 0
push 0
push dword ptr [ebp+8]
push 129
call HNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0258:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITRET
EMITRET:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.Lt_0259:
lea eax, [ebp-72]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 17
rep stosd
pop edi
pop eax
mov dword ptr [ebp-72], 0
mov ebx, dword ptr [ebp+8]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-48], ebx
mov dword ptr [ebp-44], eax
lea ebx, [ebp-72]
push ebx
push 130
call HNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_025A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITLABEL
EMITLABEL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_025B:
push dword ptr [ebp+8]
push 131
call HNEWSYMOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_025C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITPUBLIC
EMITPUBLIC:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_025D:
push dword ptr [ebp+8]
push 132
call HNEWSYMOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_025E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITMEMMOVE
EMITMEMMOVE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_025F:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 135
call HNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0260:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITMEMSWAP
EMITMEMSWAP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0261:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 136
call HNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0262:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITMEMCLEAR
EMITMEMCLEAR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0263:
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 137
call HNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0264:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITSTKCLEAR
EMITSTKCLEAR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0265:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
push 138
call HNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0266:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITDBGLINEBEGIN
EMITDBGLINEBEGIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0267:
push dword ptr [ebp+16]
push dword ptr [EMIT+4]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 139
call HNEWDBG
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0268:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITDBGLINEEND
EMITDBGLINEEND:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0269:
push 0
push dword ptr [EMIT+4]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 140
call HNEWDBG
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_026A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITDBGSCOPEBEGIN
EMITDBGSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_026B:
push 0
push 0
push 0
push dword ptr [ebp+8]
push 141
call HNEWDBG
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_026C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl EMITDBGSCOPEEND
EMITDBGSCOPEEND:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_026D:
push 0
push 0
push 0
push dword ptr [ebp+8]
push 142
call HNEWDBG
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_026E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__emit:
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
HOPTSYMOP:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_008C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 131
jne .Lt_0090
.Lt_0091:
cmp dword ptr [ebp+8], 0
je .Lt_0093
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 5
jne .Lt_0095
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 127
je .Lt_0099
.Lt_009A:
cmp dword ptr [ebp-12], 128
jne .Lt_0098
.Lt_0099:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+8]
cmp dword ptr [eax+12], ecx
jne .Lt_009C
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 0
.Lt_009C:
.Lt_009B:
.Lt_0098:
.Lt_0096:
.Lt_0095:
.Lt_0094:
.Lt_0093:
.Lt_0092:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .Lt_008D
.Lt_0090:
.Lt_008E:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
.Lt_008D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPEEPHOLEOPT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_009D:
mov dword ptr [ebp-8], 0
lea eax, [EMIT+16]
push eax
call FLISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_009F:
cmp dword ptr [ebp-4], 0
je .Lt_00A0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .Lt_00A2
.Lt_00A4:
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call HOPTSYMOP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00A1
.Lt_00A5:
jmp .Lt_00A1
.Lt_00A6:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 0
je .Lt_00A8
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.Lt_00A8:
.Lt_00A7:
jmp .Lt_00A1
.Lt_00A9:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
jmp .Lt_00A1
.Lt_00A2:
mov eax, dword ptr [ebp-12]
add eax, 4294967290
cmp eax, 4
ja .Lt_00A9
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00AA+eax*4-24]
.LT_00AA:
.int .Lt_00A6
.int .Lt_00A9
.int .Lt_00A4
.int .Lt_00A9
.int .Lt_00A5
.Lt_00A1:
push dword ptr [ebp-4]
call FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_009F
.Lt_00A0:
.Lt_009E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HNEWVR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00C2:
cmp dword ptr [ebp+8], 0
jne .Lt_00C5
mov dword ptr [ebp-4], 0
jmp .Lt_00C3
.Lt_00C5:
.Lt_00C4:
lea eax, [EMIT+72]
push eax
call FLISTNEWITEM
add esp, 4
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
mov esi, dword ptr [ecx+36]
mov eax, dword ptr [ecx+40]
mov dword ptr [ebx+36], esi
mov dword ptr [ebx+40], eax
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [esi+44]
mov dword ptr [eax+44], ebx
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
jne .Lt_00C7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00C8
mov dword ptr [ebp-16], 24
jmp .Lt_026F
.Lt_00C8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_026F:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
mov eax, offset EMIT
add eax, ebx
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov eax, dword ptr [ebx+8]
call dword ptr [eax+40]
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov eax, dword ptr [ebp-8]
mov esi, 1
mov cl, byte ptr [eax+12]
sal esi, cl
or dword ptr [ebx+132], esi
.Lt_00C7:
.Lt_00C6:
mov esi, dword ptr [ebp+8]
push dword ptr [esi+52]
call HNEWVR
add esp, 4
mov esi, dword ptr [ebp-8]
mov dword ptr [esi+52], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call HNEWVR
add esp, 4
mov esi, dword ptr [ebp-8]
mov dword ptr [esi+48], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00C3:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HNEWNODE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00CA:
lea eax, [EMIT+16]
push eax
call FLISTNEWITEM
add esp, 4
mov dword ptr [Lt_0270], eax
mov eax, dword ptr [Lt_0270]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov dword ptr [Lt_0271], 0
.Lt_00CF:
mov ebx, dword ptr [Lt_0271]
sal ebx, 2
mov eax, offset EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
mov eax, dword ptr [Lt_0271]
sal eax, 2
mov ecx, dword ptr [Lt_0270]
add ecx, eax
mov eax, dword ptr [ebx+136]
mov dword ptr [ecx+40], eax
.Lt_00CD:
inc dword ptr [Lt_0271]
.Lt_00CC:
cmp dword ptr [Lt_0271], 1
jle .Lt_00CF
.Lt_00CE:
cmp dword ptr [ebp+12], 0
je .Lt_00D1
inc dword ptr [EMIT+4]
.Lt_00D1:
.Lt_00D0:
mov eax, dword ptr [Lt_0270]
mov dword ptr [ebp-4], eax
.Lt_00CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0270,4
.balign 4
	.lcomm	Lt_0271,4

.section .text
.balign 16
HNEWBOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D2:
push -1
push 1
call HNEWNODE
add esp, 8
mov dword ptr [Lt_0272], eax
mov eax, dword ptr [Lt_0272]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
push dword ptr [ebp+12]
call HNEWVR
add esp, 4
mov ebx, dword ptr [Lt_0272]
mov dword ptr [ebx+8], eax
push dword ptr [ebp+16]
call HNEWVR
add esp, 4
mov ebx, dword ptr [Lt_0272]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [Lt_0272]
mov dword ptr [ebp-4], eax
.Lt_00D3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0272,4

.section .text
.balign 16
HNEWUOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D4:
push -1
push 2
call HNEWNODE
add esp, 8
mov dword ptr [Lt_0273], eax
mov eax, dword ptr [Lt_0273]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
push dword ptr [ebp+12]
call HNEWVR
add esp, 4
mov ebx, dword ptr [Lt_0273]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_0273]
mov dword ptr [ebp-4], eax
.Lt_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0273,4

.section .text
.balign 16
HNEWREL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D6:
push -1
push 3
call HNEWNODE
add esp, 8
mov dword ptr [Lt_0274], eax
mov eax, dword ptr [Lt_0274]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
push dword ptr [ebp+12]
call HNEWVR
add esp, 4
mov ebx, dword ptr [Lt_0274]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_0274]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+12], ebx
push dword ptr [ebp+20]
call HNEWVR
add esp, 4
mov ebx, dword ptr [Lt_0274]
mov dword ptr [ebx+16], eax
push dword ptr [ebp+24]
call HNEWVR
add esp, 4
mov ebx, dword ptr [Lt_0274]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [Lt_0274]
mov dword ptr [ebp-4], eax
.Lt_00D7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0274,4

.section .text
.balign 16
HNEWSTK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D8:
push -1
push 4
call HNEWNODE
add esp, 8
mov dword ptr [Lt_0275], eax
mov eax, dword ptr [Lt_0275]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
push dword ptr [ebp+12]
call HNEWVR
add esp, 4
mov ebx, dword ptr [Lt_0275]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_0275]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [Lt_0275]
mov dword ptr [ebp-4], ebx
.Lt_00D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0275,4

.section .text
.balign 16
HNEWBRANCH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DA:
push -1
push 5
call HNEWNODE
add esp, 8
mov dword ptr [Lt_0276], eax
mov eax, dword ptr [Lt_0276]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [Lt_0276]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
push dword ptr [ebp+12]
call HNEWVR
add esp, 4
mov ebx, dword ptr [Lt_0276]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_0276]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [Lt_0276]
mov dword ptr [ebp-4], ebx
.Lt_00DB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0276,4

.section .text
.balign 16
HNEWSYMOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DC:
push 0
push 8
call HNEWNODE
add esp, 8
mov dword ptr [Lt_0277], eax
mov eax, dword ptr [Lt_0277]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [Lt_0277]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_0277]
mov dword ptr [ebp-4], eax
.Lt_00DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0277,4

.section .text
.balign 16
HNEWLIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00DE:
push dword ptr [ebp+12]
push 6
call HNEWNODE
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
inc eax
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+8], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call fb_StrAssign
add esp, 20
.Lt_00DF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HNEWMEM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E0:
push -1
push 9
call HNEWNODE
add esp, 8
mov dword ptr [Lt_0278], eax
mov eax, dword ptr [Lt_0278]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
push dword ptr [ebp+12]
call HNEWVR
add esp, 4
mov ebx, dword ptr [Lt_0278]
mov dword ptr [ebx+8], eax
push dword ptr [ebp+16]
call HNEWVR
add esp, 4
mov ebx, dword ptr [Lt_0278]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [Lt_0278]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [Lt_0278]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [Lt_0278]
mov dword ptr [ebp-4], eax
.Lt_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0278,4

.section .text
.balign 16
HNEWDBG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E2:
push 0
push 10
call HNEWNODE
add esp, 8
mov dword ptr [Lt_0279], eax
mov eax, dword ptr [Lt_0279]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [Lt_0279]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_0279]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [Lt_0279]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [Lt_0279]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [Lt_0279]
mov dword ptr [ebp-4], ebx
.Lt_00E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0279,4
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.globl EMIT
.balign 4
	.lcomm	EMIT,236
.balign 4
	.lcomm	Lt_0072,36

.section .data
.balign 4
Lt_007F:	.ascii	"\t\0"
.balign 4
Lt_0081:	.ascii	"\n\0"
.balign 4
Lt_023F:	.ascii	"##\0"

.section .ctors
.int fb_ctor__emit
