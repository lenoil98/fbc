	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTINCOFFSET
ASTINCOFFSET:
.type ASTINCOFFSET, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_00FB
.Lt_00FD:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ebx+20], ecx
adc dword ptr [ebx+24], eax
mov dword ptr [ebp-4], -1
jmp .Lt_00FA
.Lt_00FE:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ecx+20], ebx
adc dword ptr [ecx+24], eax
mov dword ptr [ebp-4], -1
jmp .Lt_00FA
.Lt_00FF:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ebx+20], ecx
adc dword ptr [ebx+24], eax
mov dword ptr [ebp-4], -1
jmp .Lt_00FA
.Lt_0100:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .Lt_0103
.Lt_0104:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTINCOFFSET
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0101
.Lt_0103:
cmp dword ptr [ebp-12], 2
jne .Lt_0105
.Lt_0106:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTINCOFFSET
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0105:
.Lt_0101:
jmp .Lt_00FA
.Lt_0107:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTINCOFFSET
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00FA
.Lt_0108:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jne .Lt_010A
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTINCOFFSET
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0109
.Lt_010A:
mov dword ptr [ebp-4], 0
.Lt_0109:
jmp .Lt_00FA
.Lt_010B:
mov dword ptr [ebp-4], 0
jmp .Lt_00FA
.Lt_00FB:
mov eax, dword ptr [ebp-8]
add eax, 4294967291
cmp eax, 21
ja .Lt_010B
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_010C+eax*4-20]
.LT_010C:
.int .Lt_0108
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_0100
.int .Lt_010B
.int .Lt_00FD
.int .Lt_00FE
.int .Lt_0107
.int .Lt_00FF
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_010B
.int .Lt_0107
.Lt_00FA:
.Lt_00F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTINCOFFSET, .-ASTINCOFFSET
.balign 16

.globl ASTOPTASSIGNMENT
ASTOPTASSIGNMENT:
.type ASTOPTASSIGNMENT, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_02B9:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .Lt_02BC
jmp .Lt_02BA
.Lt_02BC:
.Lt_02BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
cmp dword ptr [ebp-44], 2
jne .Lt_02BF
.Lt_02C0:
jmp .Lt_02BD
.Lt_02BF:
cmp dword ptr [ebp-44], 15
je .Lt_02C2
.Lt_02C3:
cmp dword ptr [ebp-44], 13
jne .Lt_02C1
.Lt_02C2:
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTOPTASSIGNMENT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTOPTASSIGNMENT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
jmp .Lt_02BA
jmp .Lt_02BD
.Lt_02C1:
jmp .Lt_02BA
.Lt_02C4:
.Lt_02BD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_02C5
mov dword ptr [ebp-44], 24
jmp .Lt_02FB
.Lt_02C5:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_02FB:
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 17
je .Lt_02CA
.Lt_02CB:
cmp dword ptr [ebp-48], 18
je .Lt_02CA
.Lt_02CC:
cmp dword ptr [ebp-48], 7
jne .Lt_02C9
.Lt_02CA:
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HOPTSTRASSIGNMENT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_02BA
.Lt_02C9:
.Lt_02C7:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_02CD
mov dword ptr [ebp-24], 24
jmp .Lt_02FC
.Lt_02CD:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_02FC:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_02D0
mov ebx, dword ptr [IR+276]
and ebx, 512
test ebx, ebx
jne .Lt_02D2
jmp .Lt_02BA
.Lt_02D2:
.Lt_02D1:
jmp .Lt_02CF
.Lt_02D0:
mov ebx, dword ptr [IR+276]
and ebx, 8
test ebx, ebx
jne .Lt_02D4
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .Lt_02D6
cmp dword ptr [ebp-20], 1
jne .Lt_02D8
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_02D9
mov dword ptr [ebp-44], 24
jmp .Lt_02FD
.Lt_02D9:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_02FD:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
je .Lt_02DC
sub esp, 12
push 0
push 0
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-16]
call ASTNEWCONV
add esp, 32
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_02DC:
.Lt_02DB:
.Lt_02D8:
.Lt_02D7:
.Lt_02D6:
.Lt_02D5:
jmp .Lt_02BA
.Lt_02D4:
.Lt_02D3:
.Lt_02CF:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_02DD
mov dword ptr [ebp-28], 24
jmp .Lt_02FE
.Lt_02DD:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_02FE:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 1
jne .Lt_02E0
jmp .Lt_02BA
.Lt_02E0:
.Lt_02DF:
sub esp, 12
push dword ptr [ebp-8]
call ASTSKIPNOCONVCAST
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTSKIPNOCONVCAST
add esp, 16
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
jmp .Lt_02E2
.Lt_02E4:
jmp .Lt_02E1
.Lt_02E5:
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax+112], 0
jle .Lt_02E7
jmp .Lt_02BA
.Lt_02E7:
.Lt_02E6:
jmp .Lt_02E1
.Lt_02E8:
jmp .Lt_02BA
jmp .Lt_02E1
.Lt_02E2:
mov eax, dword ptr [ebp-44]
add eax, 4294967279
cmp eax, 9
ja .Lt_02E8
mov eax, dword ptr [ebp-44]
jmp dword ptr [.LT_02E9+eax*4-68]
.LT_02E9:
.int .Lt_02E4
.int .Lt_02E4
.int .Lt_02E5
.int .Lt_02E4
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E4
.Lt_02E1:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
cmp dword ptr [ebp-44], 4
jne .Lt_02EC
.Lt_02ED:
jmp .Lt_02EA
.Lt_02EC:
cmp dword ptr [ebp-44], 3
jne .Lt_02EE
.Lt_02EF:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+20]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .Lt_02F1
jmp .Lt_02BA
.Lt_02F1:
.Lt_02F0:
jmp .Lt_02EA
.Lt_02EE:
jmp .Lt_02BA
.Lt_02F2:
.Lt_02EA:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_02F3
mov dword ptr [ebp-40], 24
jmp .Lt_02FF
.Lt_02F3:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-40], ebx
.Lt_02FF:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
je .Lt_02F6
jmp .Lt_02BA
.Lt_02F6:
.Lt_02F5:
sub esp, 8
sub esp, 4
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+56]
call ASTSKIPNOCONVCAST
add esp, 8
push eax
push dword ptr [ebp-32]
call ASTISTREEEQUAL
add esp, 16
test eax, eax
jne .Lt_02F8
jmp .Lt_02BA
.Lt_02F8:
.Lt_02F7:
mov eax, dword ptr [ebp-36]
and dword ptr [eax+24], -2
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-12], eax
je .Lt_02FA
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-12], eax
.Lt_02FA:
.Lt_02F9:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_02BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTOPTASSIGNMENT, .-ASTOPTASSIGNMENT
.balign 16

.globl HOPTSELFASSIGN
HOPTSELFASSIGN:
.type HOPTSELFASSIGN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0300:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0303
jmp .Lt_0301
.Lt_0303:
.Lt_0302:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
je .Lt_0305
jmp .Lt_0301
.Lt_0305:
.Lt_0304:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTISTREEEQUAL
add esp, 16
test eax, eax
jne .Lt_0307
jmp .Lt_0301
.Lt_0307:
.Lt_0306:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
.Lt_0301:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTSELFASSIGN, .-HOPTSELFASSIGN
.balign 16

.globl HOPTSELFCOMPARE
HOPTSELFCOMPARE:
.type HOPTSELFCOMPARE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0308:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .Lt_030B
jmp .Lt_0309
.Lt_030B:
.Lt_030A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
je .Lt_030D
jmp .Lt_0309
.Lt_030D:
.Lt_030C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTISTREEEQUAL
add esp, 16
test eax, eax
jne .Lt_030F
jmp .Lt_0309
.Lt_030F:
.Lt_030E:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-28], ebx
jmp .Lt_0311
.Lt_0313:
mov dword ptr [ebp-24], -1
jmp .Lt_0310
.Lt_0314:
mov dword ptr [ebp-24], 0
jmp .Lt_0310
.Lt_0315:
jmp .Lt_0309
jmp .Lt_0310
.Lt_0311:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967251
cmp ebx, 5
ja .Lt_0315
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.LT_0316+ebx*4-180]
.LT_0316:
.int .Lt_0313
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0313
.int .Lt_0313
.Lt_0310:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
push 0
push 8
mov eax, dword ptr [ebp-24]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0309:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTSELFCOMPARE, .-HOPTSELFCOMPARE
.balign 16

.globl ASTOPTIMIZETREE
ASTOPTIMIZETREE:
.type ASTOPTIMIZETREE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0335:
inc dword ptr [AST+232]
sub esp, 12
push dword ptr [ebp+8]
call HOPTASSOCADD
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call HOPTASSOCMUL
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call HOPTCONSTDISTMUL
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call HOPTCONSTACCUM1
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call HOPTCONSTACCUM2
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call HOPTCONSTREMNEG
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HOPTCONSTIDX
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call HOPTTOSHIFT
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HOPTLOGIC
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call HOPTNULLOP
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call HOPTSELFASSIGN
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call HOPTSELFCOMPARE
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [IR+276]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+104]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0338
sub esp, 12
push dword ptr [ebp+8]
call HDOOPTREMCONV
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0338:
.Lt_0337:
mov eax, dword ptr [IR+276]
and eax, 131072
test eax, eax
jne .Lt_033A
cmp dword ptr [ENV+120], 1
jne .Lt_033C
sub esp, 12
push dword ptr [ebp+8]
call HOPTRECIPROCAL
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_033C:
.Lt_033B:
.Lt_033A:
.Lt_0339:
dec dword ptr [AST+232]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0336:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTOPTIMIZETREE, .-ASTOPTIMIZETREE
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
HOPTCONSTREMNEG:
.type HOPTCONSTREMNEG, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_005E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_0061
sub esp, 12
push dword ptr [ebp-4]
call HOPTCONSTREMNEG
add esp, 16
.Lt_0061:
.Lt_0060:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0063
sub esp, 12
push dword ptr [ebp-8]
call HOPTCONSTREMNEG
add esp, 16
.Lt_0063:
.Lt_0062:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0064
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .Lt_033F
.Lt_0064:
mov dword ptr [ebp-16], 0
.Lt_033F:
cmp dword ptr [ebp-16], 0
je .Lt_0067
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 4
jne .Lt_0068
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+20]
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .Lt_0340
.Lt_0068:
mov dword ptr [ebp-20], 0
.Lt_0340:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-20]
je .Lt_006B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 17
jne .Lt_006D
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+20], 29
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+60], ebx
sub esp, 12
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 16
.Lt_006D:
.Lt_006C:
.Lt_006B:
.Lt_006A:
.Lt_0067:
.Lt_0066:
.Lt_005F:
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTCONSTREMNEG, .-HOPTCONSTREMNEG
.balign 16
HCONSTACCUMADDSUB:
.type HCONSTACCUMADDSUB, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_006E:
cmp dword ptr [ebp+8], 0
jne .Lt_0071
mov dword ptr [ebp-4], 0
jmp .Lt_006F
.Lt_0071:
.Lt_0070:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
je .Lt_0073
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_006F
.Lt_0073:
.Lt_0072:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
je .Lt_0076
.Lt_0077:
cmp dword ptr [ebp-20], 29
jne .Lt_0075
.Lt_0076:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-20], 29
jne .Lt_0079
mov ebx, dword ptr [ebp+16]
neg ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_0078
.Lt_0079:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-24], ebx
.Lt_0078:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .Lt_007B
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .Lt_007D
cmp dword ptr [ebp-24], 0
jge .Lt_007F
cmp dword ptr [ebp-20], 28
jne .Lt_0081
mov dword ptr [ebp-20], 29
jmp .Lt_0080
.Lt_0081:
mov dword ptr [ebp-20], 28
.Lt_0080:
.Lt_007F:
.Lt_007E:
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push dword ptr [ebp-20]
call ASTNEWBOP
add esp, 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .Lt_007C
.Lt_007D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
cmp dword ptr [ebp-24], 0
jge .Lt_0083
sub esp, 8
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 54
call ASTNEWUOP
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_0083:
.Lt_0082:
.Lt_007C:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTACCUMADDSUB
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_007A
.Lt_007B:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTACCUMADDSUB
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
sub esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call HCONSTACCUMADDSUB
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_007A:
.Lt_0075:
.Lt_0074:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_006F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCONSTACCUMADDSUB, .-HCONSTACCUMADDSUB
.balign 16
HCONSTACCUMMUL:
.type HCONSTACCUMMUL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0084:
cmp dword ptr [ebp+8], 0
jne .Lt_0087
mov dword ptr [ebp-4], 0
jmp .Lt_0085
.Lt_0087:
.Lt_0086:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0088
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0344
.Lt_0088:
mov dword ptr [ebp-20], 0
.Lt_0344:
cmp dword ptr [ebp-20], 0
je .Lt_008B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .Lt_008D
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .Lt_008F
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 30
call ASTNEWBOP
add esp, 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .Lt_008E
.Lt_008F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
.Lt_008E:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTACCUMMUL
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_008C
.Lt_008D:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTACCUMMUL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call HCONSTACCUMMUL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_008C:
.Lt_008B:
.Lt_008A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCONSTACCUMMUL, .-HCONSTACCUMMUL
.balign 16
HOPTCONSTACCUM1:
.type HOPTCONSTACCUM1, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0090:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_0093
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HOPTCONSTACCUM1
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.Lt_0093:
.Lt_0092:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0095
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HOPTCONSTACCUM1
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_0095:
.Lt_0094:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0097
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .Lt_0099
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 28
je .Lt_009C
.Lt_009D:
cmp dword ptr [ebp-20], 29
jne .Lt_009B
.Lt_009C:
sub esp, 4
push 1
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HCONSTACCUMADDSUB
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .Lt_009F
sub esp, 12
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-20]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
.Lt_009F:
.Lt_009E:
jmp .Lt_009A
.Lt_009B:
cmp dword ptr [ebp-20], 30
jne .Lt_00A0
.Lt_00A1:
sub esp, 8
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HCONSTACCUMMUL
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .Lt_00A3
sub esp, 12
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
.Lt_00A3:
.Lt_00A2:
.Lt_00A0:
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0097:
.Lt_0096:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0091:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTCONSTACCUM1, .-HOPTCONSTACCUM1
.balign 16
HOPTCONSTACCUM2:
.type HOPTCONSTACCUM2, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_00A7
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HOPTCONSTACCUM2
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.Lt_00A7:
.Lt_00A6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_00A9
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HOPTCONSTACCUM2
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_00A9:
.Lt_00A8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_00AB
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
jne .Lt_00AE
.Lt_00AF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-24], ebx
jmp .Lt_00B1
.Lt_00B3:
jmp .Lt_00B0
.Lt_00B4:
sub esp, 4
push 1
lea ebx, [ebp-16]
push ebx
push dword ptr [ebp+8]
call HCONSTACCUMADDSUB
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .Lt_00B6
sub esp, 12
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
.Lt_00B6:
.Lt_00B5:
jmp .Lt_00B0
.Lt_00B1:
mov eax, dword ptr [ebp-24]
add eax, 4294967289
cmp eax, 11
ja .Lt_00B4
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_00B7+eax*4-28]
.LT_00B7:
.int .Lt_00B3
.int .Lt_00B4
.int .Lt_00B4
.int .Lt_00B4
.int .Lt_00B4
.int .Lt_00B4
.int .Lt_00B4
.int .Lt_00B4
.int .Lt_00B4
.int .Lt_00B4
.int .Lt_00B3
.int .Lt_00B3
.Lt_00B0:
jmp .Lt_00AC
.Lt_00AE:
cmp dword ptr [ebp-20], 30
jne .Lt_00B8
.Lt_00B9:
sub esp, 8
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HCONSTACCUMMUL
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .Lt_00BB
sub esp, 12
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
.Lt_00BB:
.Lt_00BA:
.Lt_00B8:
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTCONSTACCUM2, .-HOPTCONSTACCUM2
.balign 16
HCONSTDISTMUL:
.type HCONSTDISTMUL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BC:
cmp dword ptr [ebp+8], 0
jne .Lt_00BF
mov dword ptr [ebp-4], 0
jmp .Lt_00BD
.Lt_00BF:
.Lt_00BE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_00C0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0346
.Lt_00C0:
mov dword ptr [ebp-20], 0
.Lt_0346:
cmp dword ptr [ebp-20], 0
je .Lt_00C3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .Lt_00C5
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .Lt_00C7
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 28
call ASTNEWBOP
add esp, 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .Lt_00C6
.Lt_00C7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
.Lt_00C6:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTDISTMUL
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_00C4
.Lt_00C5:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCONSTDISTMUL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call HCONSTDISTMUL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_00C4:
.Lt_00C3:
.Lt_00C2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00BD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCONSTDISTMUL, .-HCONSTDISTMUL
.balign 16
HOPTCONSTDISTMUL:
.type HOPTCONSTDISTMUL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C8:
cmp dword ptr [ebp+8], 0
jne .Lt_00CB
mov dword ptr [ebp-4], 0
jmp .Lt_00C9
.Lt_00CB:
.Lt_00CA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_00CD
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HOPTCONSTDISTMUL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.Lt_00CD:
.Lt_00CC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_00CF
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HOPTCONSTDISTMUL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_00CF:
.Lt_00CE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_00D1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebx], 16
jne .Lt_00D3
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 30
jne .Lt_00D5
mov dword ptr [ebp-8], 0
sub esp, 8
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HCONSTDISTMUL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
cmp dword ptr [ebp-8], 0
je .Lt_00D7
sub esp, 12
push 1
push 0
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTCLONETREE
add esp, 12
push eax
push dword ptr [ebp-8]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
.Lt_00D7:
.Lt_00D6:
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
.Lt_00D0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTCONSTDISTMUL, .-HOPTCONSTDISTMUL
.balign 16
HOPTCONSTIDXMULT:
.type HOPTCONSTIDXMULT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .Lt_00DA
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
cmp eax, 30
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_0348
.Lt_00DA:
mov dword ptr [ebp-16], 0
.Lt_0348:
cmp dword ptr [ebp-16], 0
je .Lt_00DD
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], 16
jne .Lt_00DF
mov ebx, dword ptr [IR+276]
and ebx, 65536
test ebx, ebx
je .Lt_00E1
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 9
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00E3
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-32], ebx
jmp .Lt_00E5
.Lt_00E7:
mov dword ptr [ebp-4], -1
jmp .Lt_00E4
.Lt_00E8:
mov dword ptr [ebp-4], -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 114688
test eax, eax
je .Lt_00EA
mov dword ptr [ebp-4], 0
jmp .Lt_00E9
.Lt_00EA:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .Lt_00EB
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
jne .Lt_00ED
mov dword ptr [ebp-4], 0
.Lt_00ED:
.Lt_00EC:
.Lt_00EB:
.Lt_00E9:
jmp .Lt_00E4
.Lt_00EE:
mov dword ptr [ebp-4], 0
jmp .Lt_00E4
.Lt_00E5:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 8
ja .Lt_00EE
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_00EF+eax*4-4]
.LT_00EF:
.int .Lt_00E7
.int .Lt_00E7
.int .Lt_00E8
.int .Lt_00E7
.int .Lt_00E8
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00E7
.int .Lt_00E8
.Lt_00E4:
cmp dword ptr [ebp-4], 0
je .Lt_00F1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+56]
mov dword ptr [eax+56], ecx
sub esp, 12
push dword ptr [ebp-28]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
.Lt_00F1:
.Lt_00F0:
.Lt_00E3:
.Lt_00E2:
.Lt_00E1:
.Lt_00E0:
.Lt_00DF:
.Lt_00DE:
.Lt_00DD:
.Lt_00DC:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 480
je .Lt_00F2
mov dword ptr [ebp-20], 24
jmp .Lt_0349
.Lt_00F2:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0349:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .Lt_00F4
mov dword ptr [ebp-24], 24
jmp .Lt_034A
.Lt_00F4:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_034A:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [ENV+272]
cmp eax, dword ptr [SYMB_DTYPETB+ecx+4]
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-28]
je .Lt_00F7
sub esp, 12
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+56], eax
.Lt_00F7:
.Lt_00F6:
.Lt_00D9:
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTCONSTIDXMULT, .-HOPTCONSTIDXMULT
.balign 16
HOPTDEREFADDR:
.type HOPTDEREFADDR, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_010D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 23
jne .Lt_0111
.Lt_0112:
mov eax, dword ptr [ebp-8]
sub esp, 12
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
mov ebx, eax
call ASTGETOFFSETCHILDOFS
add esp, 16
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
sub esi, eax
sbb ecx, edx
mov dword ptr [ebp-16], esi
mov dword ptr [ebp-12], ecx
jmp .Lt_010F
.Lt_0111:
cmp dword ptr [ebp-28], 6
jne .Lt_0113
.Lt_0114:
jmp .Lt_010F
.Lt_0113:
mov esi, dword ptr [ebp+8]
mov dword ptr [ebp-4], esi
jmp .Lt_010E
.Lt_0115:
.Lt_010F:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+20]
mov ecx, dword ptr [esi+24]
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], ecx
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call ASTINCOFFSET
add esp, 16
test eax, eax
jne .Lt_0117
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_010E
.Lt_0117:
.Lt_0116:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp+8], ecx
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
sub esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.Lt_010E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTDEREFADDR, .-HOPTDEREFADDR
.balign 16
HOPTCONSTIDX:
.type HOPTCONSTIDX, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0118:
cmp dword ptr [ebp+8], 0
jne .Lt_011B
mov dword ptr [ebp-4], 0
jmp .Lt_0119
.Lt_011B:
.Lt_011A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_011D
sub esp, 12
push dword ptr [ebp-8]
call HOPTCONSTIDX
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.Lt_011D:
.Lt_011C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_011F
sub esp, 12
push dword ptr [ebp-12]
call HOPTCONSTIDX
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_011F:
.Lt_011E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 18
je .Lt_0123
.Lt_0124:
cmp dword ptr [ebp-28], 20
jne .Lt_0122
.Lt_0123:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .Lt_0126
mov dword ptr [ebp-16], 0
sub esp, 4
push 1
lea ebx, [ebp-16]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HCONSTACCUMADDSUB
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
cmp dword ptr [ebp-16], 0
je .Lt_0128
sub esp, 8
push 8
push dword ptr [ebp-16]
call ASTCONSTFLUSHTOINT
add esp, 16
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .Lt_012A
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [edx+28]
mov ebx, ecx
sar ebx, 31
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push ebx
push ecx
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
pop ecx
pop ebx
add esp, 8
add dword ptr [eax+20], ecx
adc dword ptr [eax+24], ebx
jmp .Lt_0129
.Lt_012A:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [ecx+20], eax
adc dword ptr [ecx+24], ebx
.Lt_0129:
.Lt_0128:
.Lt_0127:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 16
jne .Lt_012C
sub esp, 8
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTCONSTFLUSHTOINT
add esp, 16
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .Lt_012E
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [edx+28]
mov ebx, ecx
sar ebx, 31
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push ebx
push ecx
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
pop ecx
pop ebx
add esp, 8
add dword ptr [eax+20], ecx
adc dword ptr [eax+24], ebx
jmp .Lt_012D
.Lt_012E:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [ecx+20], eax
adc dword ptr [ecx+24], ebx
.Lt_012D:
jmp .Lt_012B
.Lt_012C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .Lt_0130
sub esp, 12
push dword ptr [ebp+8]
call HOPTCONSTIDXMULT
add esp, 16
jmp .Lt_012F
.Lt_0130:
sub esp, 12
push dword ptr [ebp+8]
call HOPTDEREFADDR
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_012F:
.Lt_012B:
.Lt_0126:
.Lt_0125:
.Lt_0122:
.Lt_0120:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0119:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTCONSTIDX, .-HOPTCONSTIDX
.balign 16
HOPTASSOCADD:
.type HOPTASSOCADD, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0131:
cmp dword ptr [ebp+8], 0
jne .Lt_0134
mov dword ptr [ebp-4], 0
jmp .Lt_0132
.Lt_0134:
.Lt_0133:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0136
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
je .Lt_0139
.Lt_013A:
cmp dword ptr [ebp-20], 29
jne .Lt_0138
.Lt_0139:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 17
je .Lt_013E
.Lt_013F:
cmp dword ptr [ebp-28], 18
je .Lt_013E
.Lt_0140:
cmp dword ptr [ebp-28], 7
jne .Lt_013D
.Lt_013E:
jmp .Lt_013B
.Lt_013D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .Lt_0143
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 28
je .Lt_0146
.Lt_0147:
cmp dword ptr [ebp-24], 29
jne .Lt_0145
.Lt_0146:
cmp dword ptr [ebp-20], 29
jne .Lt_0149
cmp dword ptr [ebp-24], 29
jne .Lt_014B
mov dword ptr [ebp-20], 28
jmp .Lt_014A
.Lt_014B:
mov dword ptr [ebp-24], 29
.Lt_014A:
jmp .Lt_0148
.Lt_0149:
cmp dword ptr [ebp-24], 29
jne .Lt_014D
mov dword ptr [ebp-20], 29
mov dword ptr [ebp-24], 28
.Lt_014D:
.Lt_014C:
.Lt_0148:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
sub esp, 12
push 1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+60]
sub esp, 4
push 1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
push dword ptr [ebp-24]
call ASTNEWBOP
add esp, 24
push eax
push dword ptr [ebp-20]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
.Lt_0145:
.Lt_0144:
.Lt_0143:
.Lt_0142:
.Lt_0141:
.Lt_013B:
.Lt_0138:
.Lt_0137:
.Lt_0136:
.Lt_0135:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_014F
sub esp, 12
push dword ptr [ebp-8]
call HOPTASSOCADD
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.Lt_014F:
.Lt_014E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0151
sub esp, 12
push dword ptr [ebp-12]
call HOPTASSOCADD
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_0151:
.Lt_0150:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0132:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTASSOCADD, .-HOPTASSOCADD
.balign 16
HOPTASSOCMUL:
.type HOPTASSOCMUL, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0152:
cmp dword ptr [ebp+8], 0
jne .Lt_0155
mov dword ptr [ebp-4], 0
jmp .Lt_0153
.Lt_0155:
.Lt_0154:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0156
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0351
.Lt_0156:
mov dword ptr [ebp-20], 0
.Lt_0351:
cmp dword ptr [ebp-20], 0
je .Lt_0159
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .Lt_015A
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_0352
.Lt_015A:
mov dword ptr [ebp-24], 0
.Lt_0352:
cmp dword ptr [ebp-24], 0
je .Lt_015D
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ebx
sub esp, 12
push 1
push 0
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
sub esp, 4
push 1
push 0
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
push 30
call ASTNEWBOP
add esp, 24
push eax
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
.Lt_015D:
.Lt_015C:
.Lt_0159:
.Lt_0158:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_015F
sub esp, 12
push dword ptr [ebp-8]
call HOPTASSOCMUL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.Lt_015F:
.Lt_015E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0161
sub esp, 12
push dword ptr [ebp-12]
call HOPTASSOCMUL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_0161:
.Lt_0160:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0153:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTASSOCMUL, .-HOPTASSOCMUL
.balign 16
HDIVTOSHIFT_SIGNED:
.type HDIVTOSHIFT_SIGNED, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_0162:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 17
je .Lt_0165
jmp .Lt_0163
.Lt_0165:
.Lt_0164:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_0166
mov dword ptr [ebp-20], 24
jmp .Lt_0355
.Lt_0166:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0355:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 7
jne .Lt_0169
mov ebx, dword ptr [SYMB_DTYPETB+228]
sal ebx, 3
dec ebx
mov dword ptr [ebp-16], ebx
.Lt_0169:
.Lt_0168:
sub esp, 12
push dword ptr [ebp-4]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+12], 1
jne .Lt_016B
sub esp, 12
push 0
push 1
sub esp, 8
push 1
push 0
sub esp, 8
push 1
push 0
sub esp, 12
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push 1
push dword ptr [ebp-4]
push 0
push dword ptr [ebp-12]
call TYPETOUNSIGNED
add esp, 4
push eax
call ASTNEWCONV
add esp, 24
push eax
push 42
call ASTNEWBOP
add esp, 28
push eax
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 28
push eax
push 0
push dword ptr [ebp-12]
call ASTNEWCONV
add esp, 32
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
jmp .Lt_016A
.Lt_016B:
sub esp, 12
push 0
push 1
sub esp, 8
push 1
push 0
sub esp, 8
push 1
push 0
sub esp, 12
push 0
push 8
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 1
push 0
sub esp, 12
push 0
push 8
mov ecx, dword ptr [ebp-16]
mov eax, ecx
sar eax, 31
push eax
push ecx
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-4]
push 42
call ASTNEWBOP
add esp, 24
push eax
push 34
call ASTNEWBOP
add esp, 28
push eax
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 28
push eax
push 0
push dword ptr [ebp-12]
call ASTNEWCONV
add esp, 32
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+56], eax
.Lt_016A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 42
mov ecx, dword ptr [ebp+12]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+60]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
.Lt_0163:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HDIVTOSHIFT_SIGNED, .-HDIVTOSHIFT_SIGNED
.balign 16
HTOPOW2:
.type HTOPOW2, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_016C:
mov dword ptr [ebp-8], 1
.Lt_0171:
mov ebx, 1
mov eax, 0
push eax
push ebx
mov ecx, dword ptr [ebp-8]
mov eax, [esp+0]
mov edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .Lt_0356
mov edx, eax
xor eax, eax
.Lt_0356:
mov [esp+4], edx
mov [esp+0], eax
pop ebx
pop eax
cmp dword ptr [ebp+12], eax
jne .Lt_0173
cmp dword ptr [ebp+8], ebx
jne .Lt_0173
.Lt_0357:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_016D
.Lt_0173:
.Lt_0172:
.Lt_016F:
inc dword ptr [ebp-8]
.Lt_016E:
cmp dword ptr [ebp-8], 63
jle .Lt_0171
.Lt_0170:
mov dword ptr [ebp-4], 0
.Lt_016D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HTOPOW2, .-HTOPOW2
.balign 16
HOPTTOSHIFT:
.type HOPTTOSHIFT, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_0174:
cmp dword ptr [ebp+8], 0
jne .Lt_0177
jmp .Lt_0175
.Lt_0177:
.Lt_0176:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0179
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 30
je .Lt_017C
.Lt_017D:
cmp dword ptr [ebp-12], 32
je .Lt_017C
.Lt_017E:
cmp dword ptr [ebp-12], 33
jne .Lt_017B
.Lt_017C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_017F
mov dword ptr [ebp-28], 24
jmp .Lt_0358
.Lt_017F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0358:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
je .Lt_0182
jmp .Lt_017A
.Lt_0182:
.Lt_0181:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .Lt_0184
jmp .Lt_017A
.Lt_0184:
.Lt_0183:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
mov ecx, -1
jne .Lt_0361
cmp dword ptr [ebp-24], 0
je .Lt_0360
.Lt_0361:
xor ecx, ecx
.Lt_0360:
cmp dword ptr [ebp-20], 0
mov ebx, -1
jl .Lt_0362
jg .Lt_0363
cmp dword ptr [ebp-24], 0
jb .Lt_0362
.Lt_0363:
xor ebx, ebx
.Lt_0362:
mov dword ptr [ebp-36], ecx
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .Lt_0185
mov dword ptr [ebp-32], 24
jmp .Lt_0359
.Lt_0185:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_0359:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov ecx, dword ptr [SYMB_DTYPETB+ebx+8]
and ecx, dword ptr [ebp-40]
or ecx, dword ptr [ebp-36]
je .Lt_0188
jmp .Lt_017A
.Lt_0188:
.Lt_0187:
sub esp, 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call HTOPOW2
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jg .Lt_018A
jmp .Lt_017A
.Lt_018A:
.Lt_0189:
cmp dword ptr [ebp-12], 30
jne .Lt_018C
.Lt_018D:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 480
je .Lt_018E
mov dword ptr [ebp-36], 24
jmp .Lt_035C
.Lt_018E:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_035C:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
sal ecx, 3
cmp dword ptr [ebp-16], ecx
jle .Lt_0191
jmp .Lt_017A
.Lt_0191:
.Lt_0190:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 41
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .Lt_018B
.Lt_018C:
cmp dword ptr [ebp-12], 32
jne .Lt_0192
.Lt_0193:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 480
je .Lt_0194
mov dword ptr [ebp-36], 24
jmp .Lt_035D
.Lt_0194:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_035D:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
sal ecx, 3
cmp dword ptr [ebp-16], ecx
jle .Lt_0197
jmp .Lt_017A
.Lt_0197:
.Lt_0196:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_0198
mov dword ptr [ebp-40], 24
jmp .Lt_035E
.Lt_0198:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-40], ecx
.Lt_035E:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
jne .Lt_019B
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 42
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
jmp .Lt_019A
.Lt_019B:
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HDIVTOSHIFT_SIGNED
add esp, 16
.Lt_019A:
jmp .Lt_018B
.Lt_0192:
cmp dword ptr [ebp-12], 33
jne .Lt_019C
.Lt_019D:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .Lt_019E
mov dword ptr [ebp-36], 24
jmp .Lt_035F
.Lt_019E:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_035F:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_01A1
jmp .Lt_017A
.Lt_01A1:
.Lt_01A0:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 34
mov eax, dword ptr [ebp-8]
add dword ptr [eax+20], 4294967295
adc dword ptr [eax+24], 4294967295
.Lt_019C:
.Lt_018B:
.Lt_017B:
.Lt_017A:
.Lt_0179:
.Lt_0178:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-4], ecx
cmp dword ptr [ebp-4], 0
je .Lt_01A3
sub esp, 12
push dword ptr [ebp-4]
call HOPTTOSHIFT
add esp, 16
.Lt_01A3:
.Lt_01A2:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_01A5
sub esp, 12
push dword ptr [ebp-8]
call HOPTTOSHIFT
add esp, 16
.Lt_01A5:
.Lt_01A4:
.Lt_0175:
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTTOSHIFT, .-HOPTTOSHIFT
.balign 16
HOPTCONSTCONV:
.type HOPTCONSTCONV, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A6:
cmp dword ptr [ebp+8], 0
jne .Lt_01A9
mov dword ptr [ebp-4], 0
jmp .Lt_01A7
.Lt_01A9:
.Lt_01A8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_01AB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 16
jne .Lt_01AD
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_01AE
mov dword ptr [ebp-24], 24
jmp .Lt_0364
.Lt_01AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_0364:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .Lt_01B1
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_01B2
mov dword ptr [ebp-28], 24
jmp .Lt_0365
.Lt_01B2:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_0365:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .Lt_01B5
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 16
jne .Lt_01B7
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01B9
cmp dword ptr [ebp-20], 0
jne .Lt_01B9
.Lt_0366:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
.Lt_01B9:
.Lt_01B8:
.Lt_01B7:
.Lt_01B6:
.Lt_01B5:
.Lt_01B4:
.Lt_01B1:
.Lt_01B0:
.Lt_01AD:
.Lt_01AC:
.Lt_01AB:
.Lt_01AA:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_01A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTCONSTCONV, .-HOPTCONSTCONV
.balign 16
HOPTNULLOP:
.type HOPTNULLOP, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BA:
cmp dword ptr [ebp+8], 0
jne .Lt_01BD
mov dword ptr [ebp-4], 0
jmp .Lt_01BB
.Lt_01BD:
.Lt_01BC:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HOPTNULLOP
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HOPTNULLOP
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_01BF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
sub esp, 12
push dword ptr [ebp-8]
call ASTHASSIDEFX
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTHASSIDEFX
add esp, 16
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_01C0
mov dword ptr [ebp-36], 24
jmp .Lt_0367
.Lt_01C0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_0367:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .Lt_01C3
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .Lt_01C5
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-40], ecx
jmp .Lt_01C7
.Lt_01C9:
cmp dword ptr [ebp-20], 0
jne .Lt_01CB
cmp dword ptr [ebp-24], 0
jne .Lt_01CB
.Lt_036B:
cmp dword ptr [ebp-28], 0
jne .Lt_01CD
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BB
jmp .Lt_01CC
.Lt_01CD:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 34
.Lt_01CC:
jmp .Lt_01CA
.Lt_01CB:
cmp dword ptr [ebp-20], 0
jne .Lt_01CE
cmp dword ptr [ebp-24], 1
jne .Lt_01CE
.Lt_036C:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BB
.Lt_01CE:
.Lt_01CA:
jmp .Lt_01C6
.Lt_01CF:
cmp dword ptr [ebp-20], 0
mov ecx, -1
jne .Lt_036E
cmp dword ptr [ebp-24], 1
je .Lt_036D
.Lt_036E:
xor ecx, ecx
.Lt_036D:
cmp dword ptr [ebp-20], 4294967295
mov ebx, -1
jne .Lt_0370
cmp dword ptr [ebp-24], 4294967295
je .Lt_036F
.Lt_0370:
xor ebx, ebx
.Lt_036F:
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+4]
and ecx, 511
and ecx, 480
je .Lt_01D0
mov dword ptr [ebp-44], 24
jmp .Lt_0368
.Lt_01D0:
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_0368:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov ecx, dword ptr [SYMB_DTYPETB+ebx+8]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-52]
or ecx, dword ptr [ebp-48]
je .Lt_01D3
cmp dword ptr [ebp-28], 0
jne .Lt_01D5
mov ecx, dword ptr [ebp-12]
mov dword ptr [ecx+20], 0
mov dword ptr [ecx+24], 0
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BB
.Lt_01D5:
.Lt_01D4:
.Lt_01D3:
.Lt_01D2:
jmp .Lt_01C6
.Lt_01D6:
cmp dword ptr [ebp-20], 0
jne .Lt_01D8
cmp dword ptr [ebp-24], 1
jne .Lt_01D8
.Lt_0372:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BB
.Lt_01D8:
.Lt_01D7:
jmp .Lt_01C6
.Lt_01D9:
cmp dword ptr [ebp-20], 0
jne .Lt_01DB
cmp dword ptr [ebp-24], 0
jne .Lt_01DB
.Lt_0373:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BB
.Lt_01DB:
.Lt_01DA:
jmp .Lt_01C6
.Lt_01DC:
cmp dword ptr [ebp-20], 4294967295
jne .Lt_01DE
cmp dword ptr [ebp-24], 4294967295
jne .Lt_01DE
.Lt_0374:
cmp dword ptr [ebp-28], 0
jne .Lt_01E0
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BB
.Lt_01E0:
.Lt_01DF:
.Lt_01DE:
.Lt_01DD:
jmp .Lt_01C6
.Lt_01E1:
cmp dword ptr [ebp-20], 0
jne .Lt_01E3
cmp dword ptr [ebp-24], 0
jne .Lt_01E3
.Lt_0375:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BB
jmp .Lt_01E2
.Lt_01E3:
cmp dword ptr [ebp-20], 4294967295
jne .Lt_01E4
cmp dword ptr [ebp-24], 4294967295
jne .Lt_01E4
.Lt_0376:
cmp dword ptr [ebp-28], 0
jne .Lt_01E6
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BB
.Lt_01E6:
.Lt_01E5:
.Lt_01E4:
.Lt_01E2:
jmp .Lt_01C6
.Lt_01E7:
cmp dword ptr [ebp-20], 4294967295
jne .Lt_01E9
cmp dword ptr [ebp-24], 4294967295
jne .Lt_01E9
.Lt_0377:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BB
jmp .Lt_01E8
.Lt_01E9:
cmp dword ptr [ebp-20], 0
jne .Lt_01EA
cmp dword ptr [ebp-24], 0
jne .Lt_01EA
.Lt_0378:
cmp dword ptr [ebp-28], 0
jne .Lt_01EC
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BB
.Lt_01EC:
.Lt_01EB:
.Lt_01EA:
.Lt_01E8:
jmp .Lt_01C6
.Lt_01C7:
mov ecx, dword ptr [ebp-40]
add ecx, 4294967268
cmp ecx, 14
ja .Lt_01C6
mov ecx, dword ptr [ebp-40]
jmp dword ptr [.LT_01ED+ecx*4-112]
.LT_01ED:
.int .Lt_01D9
.int .Lt_01D9
.int .Lt_01C9
.int .Lt_01C6
.int .Lt_01D6
.int .Lt_01CF
.int .Lt_01E7
.int .Lt_01E1
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01D9
.int .Lt_01C6
.int .Lt_01DC
.int .Lt_01D9
.int .Lt_01D9
.Lt_01C6:
jmp .Lt_01C4
.Lt_01C5:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ecx], 16
jne .Lt_01EE
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+20]
mov ebx, dword ptr [ecx+24]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], ebx
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
jmp .Lt_01F0
.Lt_01F2:
cmp dword ptr [ebp-20], 0
jne .Lt_01F4
cmp dword ptr [ebp-24], 0
jne .Lt_01F4
.Lt_0379:
cmp dword ptr [ebp-32], 0
jne .Lt_01F6
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01BB
.Lt_01F6:
.Lt_01F5:
.Lt_01F4:
.Lt_01F3:
jmp .Lt_01EF
.Lt_01F0:
mov eax, dword ptr [ebp-40]
add eax, 4294967266
cmp eax, 12
ja .Lt_01EF
mov eax, dword ptr [ebp-40]
jmp dword ptr [.LT_01F7+eax*4-120]
.LT_01F7:
.int .Lt_01F2
.int .Lt_01EF
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01EF
.int .Lt_01EF
.int .Lt_01EF
.int .Lt_01EF
.int .Lt_01EF
.int .Lt_01EF
.int .Lt_01EF
.int .Lt_01F2
.int .Lt_01F2
.Lt_01EF:
.Lt_01EE:
.Lt_01C4:
.Lt_01C3:
.Lt_01C2:
.Lt_01BF:
.Lt_01BE:
sub esp, 12
push dword ptr [ebp+8]
call HOPTCONSTCONV
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_01BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTNULLOP, .-HOPTNULLOP
.balign 16
HOPTLOGIC:
.type HOPTLOGIC, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_01F8:
cmp dword ptr [ebp+8], 0
jne .Lt_01FB
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01F9
.Lt_01FB:
.Lt_01FA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_01FD
sub esp, 12
push dword ptr [ebp-12]
call HOPTLOGIC
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
.Lt_01FD:
.Lt_01FC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_01FF
sub esp, 12
push dword ptr [ebp-16]
call HOPTLOGIC
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-16], ebx
.Lt_01FF:
.Lt_01FE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_0200
mov dword ptr [ebp-32], 24
jmp .Lt_037A
.Lt_0200:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_037A:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .Lt_0203
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .Lt_0204
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .Lt_037B
.Lt_0204:
mov dword ptr [ebp-36], 0
.Lt_037B:
cmp dword ptr [ebp-36], 0
je .Lt_0207
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 4
jne .Lt_0208
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-40], ebx
jmp .Lt_037C
.Lt_0208:
mov dword ptr [ebp-40], 0
.Lt_037C:
cmp dword ptr [ebp-40], 0
je .Lt_020B
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call HOPTLOGIC
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_020A
.Lt_020B:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .Lt_020D
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 38
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-44], ebx
jmp .Lt_037D
.Lt_020D:
mov dword ptr [ebp-44], 0
.Lt_037D:
cmp dword ptr [ebp-44], 0
je .Lt_020C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_020F
mov dword ptr [ebp-48], 24
jmp .Lt_037E
.Lt_020F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_037E:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .Lt_0212
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 16
jne .Lt_0214
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
not dword ptr [ebx+20]
not dword ptr [ebx+24]
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call HOPTLOGIC
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_0213
.Lt_0214:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebx], 16
jne .Lt_0215
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+60]
not dword ptr [eax+20]
not dword ptr [eax+24]
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call HOPTLOGIC
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0215:
.Lt_0213:
.Lt_0212:
.Lt_0211:
.Lt_020C:
.Lt_020A:
jmp .Lt_0206
.Lt_0207:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0216
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0217
mov dword ptr [ebp-40], 24
jmp .Lt_037F
.Lt_0217:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_037F:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .Lt_021A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 35
je .Lt_021D
.Lt_021E:
cmp dword ptr [ebp-20], 34
je .Lt_021D
.Lt_021F:
cmp dword ptr [ebp-20], 38
jne .Lt_021C
.Lt_021D:
cmp dword ptr [ebp-20], 34
jne .Lt_0221
mov dword ptr [ebp-20], 35
jmp .Lt_0220
.Lt_0221:
cmp dword ptr [ebp-20], 35
jne .Lt_0222
mov dword ptr [ebp-20], 34
.Lt_0222:
.Lt_0220:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 4
jne .Lt_0223
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .Lt_0380
.Lt_0223:
mov dword ptr [ebp-44], 0
.Lt_0380:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 4
jne .Lt_0225
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
jmp .Lt_0381
.Lt_0225:
mov dword ptr [ebp-48], 0
.Lt_0381:
mov ebx, dword ptr [ebp-48]
and ebx, dword ptr [ebp-44]
je .Lt_0228
sub esp, 12
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
call HOPTLOGIC
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
mov eax, dword ptr [ebp-16]
push dword ptr [eax+56]
call HOPTLOGIC
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-20], 38
je .Lt_022A
sub esp, 8
push dword ptr [ebp-8]
push 52
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_022A:
.Lt_0229:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .Lt_0227
.Lt_0228:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 4
jne .Lt_022C
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
jmp .Lt_0382
.Lt_022C:
mov dword ptr [ebp-52], 0
.Lt_0382:
mov eax, dword ptr [ebp-52]
and eax, dword ptr [ebp-68]
je .Lt_022B
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-28], ecx
mov dword ptr [ebp-24], ebx
sub esp, 12
push 1
push 0
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+56]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
not ecx
not eax
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
cmp dword ptr [ebp-20], 38
je .Lt_022F
sub esp, 8
push dword ptr [ebp-8]
push 52
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_022F:
.Lt_022E:
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .Lt_0227
.Lt_022B:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx], 4
jne .Lt_0231
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+20]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .Lt_0384
.Lt_0231:
mov dword ptr [ebp-56], 0
.Lt_0384:
mov eax, dword ptr [ebp-56]
and eax, dword ptr [ebp-68]
je .Lt_0230
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], ecx
sub esp, 12
push 1
push 0
push dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
push dword ptr [ebp-20]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
not ebx
not eax
mov ecx, dword ptr [ebp-16]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
cmp dword ptr [ebp-20], 38
je .Lt_0234
sub esp, 8
push dword ptr [ebp-8]
push 52
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0234:
.Lt_0233:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .Lt_0227
.Lt_0230:
mov eax, dword ptr [ebp-20]
cmp eax, 38
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-68], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 4
jne .Lt_0236
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-60], ebx
jmp .Lt_0386
.Lt_0236:
mov dword ptr [ebp-60], 0
.Lt_0386:
mov ebx, dword ptr [ebp-60]
and ebx, dword ptr [ebp-68]
je .Lt_0235
sub esp, 8
push dword ptr [ebp+8]
push 52
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+56], ecx
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ecx
jmp .Lt_0227
.Lt_0235:
mov ecx, dword ptr [ebp-20]
cmp ecx, 38
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx], 4
jne .Lt_0239
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+20]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-64], ebx
jmp .Lt_0388
.Lt_0239:
mov dword ptr [ebp-64], 0
.Lt_0388:
mov ebx, dword ptr [ebp-64]
and ebx, dword ptr [ebp-68]
je .Lt_0238
sub esp, 8
push dword ptr [ebp+8]
push 52
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+60], ecx
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ecx
.Lt_0238:
.Lt_0227:
.Lt_021C:
.Lt_021B:
.Lt_021A:
.Lt_0219:
.Lt_0216:
.Lt_0206:
.Lt_0203:
.Lt_0202:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.Lt_01F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTLOGIC, .-HOPTLOGIC
.balign 16
HDOOPTREMCONV:
.type HDOOPTREMCONV, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_023B:
cmp dword ptr [ebp+8], 0
jne .Lt_023E
mov dword ptr [ebp-4], 0
jmp .Lt_023C
.Lt_023E:
.Lt_023D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0240
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 15
je .Lt_0244
.Lt_0245:
cmp dword ptr [ebp-20], 16
jne .Lt_0243
.Lt_0244:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 5
jne .Lt_0247
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 5
je .Lt_0249
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 15
je .Lt_024D
.Lt_024E:
cmp dword ptr [ebp-24], 16
jne .Lt_024C
.Lt_024D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_024F
mov dword ptr [ebp-28], 24
jmp .Lt_0397
.Lt_024F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_0397:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 2
je .Lt_0254
.Lt_0255:
cmp dword ptr [ebp-32], 4
jne .Lt_0253
.Lt_0254:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 17
je .Lt_0259
.Lt_025A:
cmp dword ptr [ebp-36], 18
je .Lt_0259
.Lt_025B:
cmp dword ptr [ebp-36], 19
je .Lt_0259
.Lt_025C:
cmp dword ptr [ebp-36], 20
jne .Lt_0258
.Lt_0259:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_025D
mov dword ptr [ebp-40], 24
jmp .Lt_0398
.Lt_025D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-40], ebx
.Lt_0398:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .Lt_0260
mov dword ptr [ebp-16], -1
.Lt_0260:
.Lt_025F:
.Lt_0258:
.Lt_0256:
cmp dword ptr [ebp-16], 0
je .Lt_0262
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.Lt_0262:
.Lt_0261:
.Lt_0253:
.Lt_0251:
.Lt_024C:
.Lt_024A:
.Lt_0249:
.Lt_0248:
.Lt_0247:
.Lt_0246:
.Lt_0243:
.Lt_0241:
.Lt_0240:
.Lt_023F:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HDOOPTREMCONV
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HDOOPTREMCONV
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_023C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HDOOPTREMCONV, .-HDOOPTREMCONV
.balign 16
HOPTSTRMULTCONCAT:
.type HOPTSTRMULTCONCAT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0263:
cmp dword ptr [ebp+16], 0
jne .Lt_0266
mov dword ptr [ebp-4], 0
jmp .Lt_0264
.Lt_0266:
.Lt_0265:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 0
je .Lt_0268
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 3
jne .Lt_026A
push dword ptr [ebp+20]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+56]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HOPTSTRMULTCONCAT
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [eax+56], 0
.Lt_026A:
.Lt_0269:
.Lt_0268:
.Lt_0267:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 3
jne .Lt_026C
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 0
je .Lt_026E
cmp dword ptr [ebp+8], 0
jne .Lt_0270
cmp dword ptr [ebp+20], 0
jne .Lt_0272
sub esp, 4
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLSTRASSIGN
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_0271
.Lt_0272:
sub esp, 4
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRASSIGN
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0271:
jmp .Lt_026F
.Lt_0270:
cmp dword ptr [ebp+20], 0
jne .Lt_0274
sub esp, 4
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_0273
.Lt_0274:
sub esp, 4
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0273:
.Lt_026F:
.Lt_026E:
.Lt_026D:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+60], 0
je .Lt_0276
cmp dword ptr [ebp+20], 0
jne .Lt_0278
sub esp, 4
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_0277
.Lt_0278:
sub esp, 4
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0277:
.Lt_0276:
.Lt_0275:
sub esp, 12
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 16
jmp .Lt_026B
.Lt_026C:
cmp dword ptr [ebp+8], 0
jne .Lt_027A
cmp dword ptr [ebp+20], 0
jne .Lt_027C
sub esp, 4
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLSTRASSIGN
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_027B
.Lt_027C:
sub esp, 4
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRASSIGN
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_027B:
jmp .Lt_0279
.Lt_027A:
cmp dword ptr [ebp+20], 0
jne .Lt_027E
sub esp, 4
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_027D
.Lt_027E:
sub esp, 4
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRCONCATASSIGN
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_027D:
.Lt_0279:
.Lt_026B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0264:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTSTRMULTCONCAT, .-HOPTSTRMULTCONCAT
.balign 16
HISMULTSTRCONCAT:
.type HISMULTSTRCONCAT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_027F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .Lt_0282
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .Lt_0286
.Lt_0287:
cmp dword ptr [ebp-12], 18
jne .Lt_0285
.Lt_0286:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0289
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 81920
test ebx, ebx
jne .Lt_028B
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTISSYMBOLONTREE
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_028B:
.Lt_028A:
.Lt_0289:
.Lt_0288:
jmp .Lt_0283
.Lt_0285:
cmp dword ptr [ebp-12], 19
je .Lt_028D
.Lt_028E:
cmp dword ptr [ebp-12], 26
jne .Lt_028C
.Lt_028D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 17
je .Lt_0292
.Lt_0293:
cmp dword ptr [ebp-16], 18
jne .Lt_0291
.Lt_0292:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0295
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTISSYMBOLONTREE
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0295:
.Lt_0294:
.Lt_0291:
.Lt_028F:
.Lt_028C:
.Lt_0283:
.Lt_0282:
.Lt_0281:
.Lt_0280:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HISMULTSTRCONCAT, .-HISMULTSTRCONCAT
.balign 16
HOPTSTRASSIGNMENT:
.type HOPTSTRASSIGNMENT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0296:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 3
jne .Lt_0299
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .Lt_029B
.Lt_029D:
sub esp, 8
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+56]
push dword ptr [ebp+12]
call ASTISTREEEQUAL
add esp, 16
test eax, eax
je .Lt_029F
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_02A1
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 81920
test eax, eax
jne .Lt_02A3
sub esp, 8
mov eax, dword ptr [ebp+16]
push dword ptr [eax+60]
push dword ptr [ebp-16]
call ASTISSYMBOLONTREE
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.Lt_02A3:
.Lt_02A2:
.Lt_02A1:
.Lt_02A0:
.Lt_029F:
.Lt_029E:
jmp .Lt_029A
.Lt_02A4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-24], eax
jmp .Lt_02A6
.Lt_02A8:
sub esp, 8
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
call ASTISTREEEQUAL
add esp, 16
test eax, eax
je .Lt_02AA
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_02AC
sub esp, 8
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+60]
push dword ptr [ebp-16]
call ASTISSYMBOLONTREE
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.Lt_02AC:
.Lt_02AB:
.Lt_02AA:
.Lt_02A9:
jmp .Lt_02A5
.Lt_02A6:
mov eax, dword ptr [ebp-24]
add eax, 4294967279
cmp eax, 1
ja .Lt_02A5
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_02AD+eax*4-68]
.LT_02AD:
.int .Lt_02A8
.int .Lt_02A8
.Lt_02A5:
jmp .Lt_029A
.Lt_029B:
mov eax, dword ptr [ebp-20]
add eax, 4294967279
cmp eax, 9
ja .Lt_029A
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_02AE+eax*4-68]
.LT_02AE:
.int .Lt_029D
.int .Lt_029D
.int .Lt_02A4
.int .Lt_029A
.int .Lt_029A
.int .Lt_029A
.int .Lt_029A
.int .Lt_029A
.int .Lt_029A
.int .Lt_02A4
.Lt_029A:
.Lt_0299:
.Lt_0298:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-8], 0
je .Lt_02B0
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp+8], ebx
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp+16], ebx
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HISMULTSTRCONCAT
add esp, 16
test eax, eax
je .Lt_02B2
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call HOPTSTRMULTCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_02B1
.Lt_02B2:
cmp dword ptr [ebp-12], 0
jne .Lt_02B4
sub esp, 8
sub esp, 4
push dword ptr [ebp+16]
call ASTUPDSTRCONCAT
add esp, 8
push eax
push dword ptr [ebp+12]
call RTLSTRCONCATASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_02B3
.Lt_02B4:
sub esp, 8
sub esp, 4
push dword ptr [ebp+16]
call ASTUPDSTRCONCAT
add esp, 8
push eax
push dword ptr [ebp+12]
call RTLWSTRCONCATASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_02B3:
.Lt_02B1:
jmp .Lt_02AF
.Lt_02B0:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HISMULTSTRCONCAT
add esp, 16
test eax, eax
je .Lt_02B6
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call HOPTSTRMULTCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_02B5
.Lt_02B6:
cmp dword ptr [ebp-12], 0
jne .Lt_02B8
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+16]
call ASTUPDSTRCONCAT
add esp, 8
push eax
push dword ptr [ebp+12]
call RTLSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_02B7
.Lt_02B8:
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+16]
call ASTUPDSTRCONCAT
add esp, 8
push eax
push dword ptr [ebp+12]
call RTLWSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_02B7:
.Lt_02B5:
.Lt_02AF:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
.Lt_0297:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTSTRASSIGNMENT, .-HOPTSTRASSIGNMENT
.balign 16
HOPTRECIPROCAL:
.type HOPTRECIPROCAL, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0317:
cmp dword ptr [ebp+8], 0
jne .Lt_031A
mov dword ptr [ebp-4], 0
jmp .Lt_0318
.Lt_031A:
.Lt_0319:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_031B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 31
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_039E
.Lt_031B:
mov dword ptr [ebp-20], 0
.Lt_039E:
cmp dword ptr [ebp-20], 0
je .Lt_031E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
jne .Lt_0320
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 15
jne .Lt_0321
mov ebx, dword ptr [ebp-8]
fld qword ptr [ebx+20]
fcomp qword ptr [Lt_03A0]
push eax
fnstsw ax
test ah, 0b01000000
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_039F
.Lt_0321:
mov dword ptr [ebp-24], 0
.Lt_039F:
cmp dword ptr [ebp-24], 0
je .Lt_0324
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0325
mov dword ptr [ebp-28], 24
jmp .Lt_03A1
.Lt_0325:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_03A1:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
jmp .Lt_0328
.Lt_032A:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 4
jne .Lt_032B
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
cmp eax, 65
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .Lt_03A2
.Lt_032B:
mov dword ptr [ebp-36], 0
.Lt_03A2:
cmp dword ptr [ebp-36], 0
je .Lt_032E
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-12]
mov ecx, 18
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 66
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
jmp .Lt_032D
.Lt_032E:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 15
jne .Lt_032F
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push 67
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
.Lt_032F:
.Lt_032D:
jmp .Lt_0327
.Lt_0328:
cmp dword ptr [ebp-32], 1
ja .Lt_0327
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_0330+eax*4]
.LT_0330:
.int .Lt_032A
.int .Lt_032A
.Lt_0327:
.Lt_0324:
.Lt_0323:
.Lt_0320:
.Lt_031F:
.Lt_031E:
.Lt_031D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0332
sub esp, 12
push dword ptr [ebp-8]
call HOPTRECIPROCAL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
.Lt_0332:
.Lt_0331:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0334
sub esp, 12
push dword ptr [ebp-12]
call HOPTRECIPROCAL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
.Lt_0334:
.Lt_0333:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0318:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTRECIPROCAL, .-HOPTRECIPROCAL

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 8
Lt_03A0:	.quad	0x3FF0000000000000
