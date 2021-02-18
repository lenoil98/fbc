	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTINCOFFSET@12
_ASTINCOFFSET@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_00FC
.Lt_00FE:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ebx+24], ecx
adc dword ptr [ebx+28], eax
mov dword ptr [ebp-4], -1
jmp .Lt_00FB
.Lt_00FF:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ecx+24], ebx
adc dword ptr [ecx+28], eax
mov dword ptr [ebp-4], -1
jmp .Lt_00FB
.Lt_0100:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
add dword ptr [ebx+24], ecx
adc dword ptr [ebx+28], eax
mov dword ptr [ebp-4], -1
jmp .Lt_00FB
.Lt_0101:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .Lt_0104
.Lt_0105:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTINCOFFSET@12
mov dword ptr [ebp-4], eax
jmp .Lt_0102
.Lt_0104:
cmp dword ptr [ebp-12], 2
jne .Lt_0106
.Lt_0107:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTINCOFFSET@12
mov dword ptr [ebp-4], eax
.Lt_0106:
.Lt_0102:
jmp .Lt_00FB
.Lt_0108:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTINCOFFSET@12
mov dword ptr [ebp-4], eax
jmp .Lt_00FB
.Lt_0109:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
jne .Lt_010B
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTINCOFFSET@12
mov dword ptr [ebp-4], eax
jmp .Lt_010A
.Lt_010B:
mov dword ptr [ebp-4], 0
.Lt_010A:
jmp .Lt_00FB
.Lt_010C:
mov dword ptr [ebp-4], 0
jmp .Lt_00FB
.Lt_00FC:
mov eax, dword ptr [ebp-8]
add eax, 4294967291
cmp eax, 21
ja .Lt_010C
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_010D+eax*4-20]
_.LT_010D:
.int .Lt_0109
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_0101
.int .Lt_010C
.int .Lt_00FE
.int .Lt_00FF
.int .Lt_0108
.int .Lt_0100
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_010C
.int .Lt_0108
.Lt_00FB:
.Lt_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTOPTASSIGNMENT@4
_ASTOPTASSIGNMENT@4:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_02BA:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .Lt_02BD
jmp .Lt_02BB
.Lt_02BD:
.Lt_02BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
cmp dword ptr [ebp-44], 2
jne .Lt_02C0
.Lt_02C1:
jmp .Lt_02BE
.Lt_02C0:
cmp dword ptr [ebp-44], 15
je .Lt_02C3
.Lt_02C4:
cmp dword ptr [ebp-44], 13
jne .Lt_02C2
.Lt_02C3:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTOPTASSIGNMENT@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTOPTASSIGNMENT@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
jmp .Lt_02BB
jmp .Lt_02BE
.Lt_02C2:
jmp .Lt_02BB
.Lt_02C5:
.Lt_02BE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_02C6
mov dword ptr [ebp-44], 24
jmp .Lt_02FC
.Lt_02C6:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_02FC:
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 17
je .Lt_02CB
.Lt_02CC:
cmp dword ptr [ebp-48], 18
je .Lt_02CB
.Lt_02CD:
cmp dword ptr [ebp-48], 7
jne .Lt_02CA
.Lt_02CB:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HOPTSTRASSIGNMENT@12
mov dword ptr [ebp-4], eax
jmp .Lt_02BB
.Lt_02CA:
.Lt_02C8:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_02CE
mov dword ptr [ebp-24], 24
jmp .Lt_02FD
.Lt_02CE:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_02FD:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_02D1
mov ebx, dword ptr [_IR+276]
and ebx, 512
test ebx, ebx
jne .Lt_02D3
jmp .Lt_02BB
.Lt_02D3:
.Lt_02D2:
jmp .Lt_02D0
.Lt_02D1:
mov ebx, dword ptr [_IR+276]
and ebx, 8
test ebx, ebx
jne .Lt_02D5
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .Lt_02D7
cmp dword ptr [ebp-20], 1
jne .Lt_02D9
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_02DA
mov dword ptr [ebp-44], 24
jmp .Lt_02FE
.Lt_02DA:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_02FE:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
je .Lt_02DD
push 0
push 0
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-16]
call _ASTNEWCONV@20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_02DD:
.Lt_02DC:
.Lt_02D9:
.Lt_02D8:
.Lt_02D7:
.Lt_02D6:
jmp .Lt_02BB
.Lt_02D5:
.Lt_02D4:
.Lt_02D0:
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_02DE
mov dword ptr [ebp-28], 24
jmp .Lt_02FF
.Lt_02DE:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_02FF:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
jne .Lt_02E1
jmp .Lt_02BB
.Lt_02E1:
.Lt_02E0:
push dword ptr [ebp-8]
call _ASTSKIPNOCONVCAST@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-12]
call _ASTSKIPNOCONVCAST@4
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
jmp .Lt_02E3
.Lt_02E5:
jmp .Lt_02E2
.Lt_02E6:
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax+116], 0
jle .Lt_02E8
jmp .Lt_02BB
.Lt_02E8:
.Lt_02E7:
jmp .Lt_02E2
.Lt_02E9:
jmp .Lt_02BB
jmp .Lt_02E2
.Lt_02E3:
mov eax, dword ptr [ebp-44]
add eax, 4294967279
cmp eax, 9
ja .Lt_02E9
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.LT_02EA+eax*4-68]
_.LT_02EA:
.int .Lt_02E5
.int .Lt_02E5
.int .Lt_02E6
.int .Lt_02E5
.int .Lt_02E9
.int .Lt_02E9
.int .Lt_02E9
.int .Lt_02E9
.int .Lt_02E9
.int .Lt_02E5
.Lt_02E2:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
cmp dword ptr [ebp-44], 4
jne .Lt_02ED
.Lt_02EE:
jmp .Lt_02EB
.Lt_02ED:
cmp dword ptr [ebp-44], 3
jne .Lt_02EF
.Lt_02F0:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+24]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .Lt_02F2
jmp .Lt_02BB
.Lt_02F2:
.Lt_02F1:
jmp .Lt_02EB
.Lt_02EF:
jmp .Lt_02BB
.Lt_02F3:
.Lt_02EB:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_02F4
mov dword ptr [ebp-40], 24
jmp .Lt_0300
.Lt_02F4:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-40], ebx
.Lt_0300:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
je .Lt_02F7
jmp .Lt_02BB
.Lt_02F7:
.Lt_02F6:
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+64]
call _ASTSKIPNOCONVCAST@4
push eax
push dword ptr [ebp-32]
call _ASTISTREEEQUAL@8
test eax, eax
jne .Lt_02F9
jmp .Lt_02BB
.Lt_02F9:
.Lt_02F8:
mov eax, dword ptr [ebp-36]
and dword ptr [eax+28], -2
push dword ptr [ebp+8]
call _ASTDELNODE@4
push dword ptr [ebp-8]
call _ASTDELTREE@4
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-12], eax
je .Lt_02FB
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-12], eax
.Lt_02FB:
.Lt_02FA:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_02BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HOPTSELFASSIGN@4
_HOPTSELFASSIGN@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0301:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0304
jmp .Lt_0302
.Lt_0304:
.Lt_0303:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
je .Lt_0306
jmp .Lt_0302
.Lt_0306:
.Lt_0305:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTISTREEEQUAL@8
test eax, eax
jne .Lt_0308
jmp .Lt_0302
.Lt_0308:
.Lt_0307:
push dword ptr [ebp+8]
call _ASTDELNODE@4
push dword ptr [ebp-8]
call _ASTDELTREE@4
push dword ptr [ebp-12]
call _ASTDELTREE@4
call _ASTNEWNOP@0
mov dword ptr [ebp-4], eax
.Lt_0302:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HOPTSELFCOMPARE@4
_HOPTSELFCOMPARE@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0309:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
jne .Lt_030C
jmp .Lt_030A
.Lt_030C:
.Lt_030B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
je .Lt_030E
jmp .Lt_030A
.Lt_030E:
.Lt_030D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTISTREEEQUAL@8
test eax, eax
jne .Lt_0310
jmp .Lt_030A
.Lt_0310:
.Lt_030F:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-28], ebx
jmp .Lt_0312
.Lt_0314:
mov dword ptr [ebp-24], -1
jmp .Lt_0311
.Lt_0315:
mov dword ptr [ebp-24], 0
jmp .Lt_0311
.Lt_0316:
jmp .Lt_030A
jmp .Lt_0311
.Lt_0312:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967251
cmp ebx, 5
ja .Lt_0316
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.LT_0317+ebx*4-180]
_.LT_0317:
.int .Lt_0314
.int .Lt_0315
.int .Lt_0315
.int .Lt_0315
.int .Lt_0314
.int .Lt_0314
.Lt_0311:
push dword ptr [ebp+8]
call _ASTDELNODE@4
push dword ptr [ebp-8]
call _ASTDELTREE@4
push dword ptr [ebp-12]
call _ASTDELTREE@4
push 0
push 8
mov eax, dword ptr [ebp-24]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_030A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTOPTIMIZETREE@4
_ASTOPTIMIZETREE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0336:
inc dword ptr [_AST+232]
push dword ptr [ebp+8]
call _HOPTASSOCADD@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTASSOCMUL@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTCONSTDISTMUL@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTCONSTACCUM1@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTCONSTACCUM2@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTCONSTREMNEG@4
push dword ptr [ebp+8]
call _HOPTCONSTIDX@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTTOSHIFT@4
push dword ptr [ebp+8]
call _HOPTLOGIC@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTNULLOP@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTSELFASSIGN@4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HOPTSELFCOMPARE@4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [_IR+276]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0339
push dword ptr [ebp+8]
call _HDOOPTREMCONV@4
mov dword ptr [ebp+8], eax
.Lt_0339:
.Lt_0338:
mov eax, dword ptr [_IR+276]
and eax, 131072
test eax, eax
jne .Lt_033B
cmp dword ptr [_ENV+120], 1
jne .Lt_033D
push dword ptr [ebp+8]
call _HOPTRECIPROCAL@4
mov dword ptr [ebp+8], eax
.Lt_033D:
.Lt_033C:
.Lt_033B:
.Lt_033A:
dec dword ptr [_AST+232]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0337:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
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
_HOPTCONSTREMNEG@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_005F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_0062
push dword ptr [ebp-4]
call _HOPTCONSTREMNEG@4
.Lt_0062:
.Lt_0061:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0064
push dword ptr [ebp-8]
call _HOPTCONSTREMNEG@4
.Lt_0064:
.Lt_0063:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0065
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .Lt_0340
.Lt_0065:
mov dword ptr [ebp-16], 0
.Lt_0340:
cmp dword ptr [ebp-16], 0
je .Lt_0068
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 4
jne .Lt_0069
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+24]
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .Lt_0341
.Lt_0069:
mov dword ptr [ebp-20], 0
.Lt_0341:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-20]
je .Lt_006C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 17
jne .Lt_006E
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+24], 29
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+68], ebx
push dword ptr [ebp-4]
call _ASTDELNODE@4
.Lt_006E:
.Lt_006D:
.Lt_006C:
.Lt_006B:
.Lt_0068:
.Lt_0067:
.Lt_0060:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCONSTACCUMADDSUB@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_006F:
cmp dword ptr [ebp+8], 0
jne .Lt_0072
mov dword ptr [ebp-4], 0
jmp .Lt_0070
.Lt_0072:
.Lt_0071:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
je .Lt_0074
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0070
.Lt_0074:
.Lt_0073:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
je .Lt_0077
.Lt_0078:
cmp dword ptr [ebp-20], 29
jne .Lt_0076
.Lt_0077:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-20], 29
jne .Lt_007A
mov ebx, dword ptr [ebp+16]
neg ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_0079
.Lt_007A:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-24], ebx
.Lt_0079:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .Lt_007C
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .Lt_007E
cmp dword ptr [ebp-24], 0
jge .Lt_0080
cmp dword ptr [ebp-20], 28
jne .Lt_0082
mov dword ptr [ebp-20], 29
jmp .Lt_0081
.Lt_0082:
mov dword ptr [ebp-20], 28
.Lt_0081:
.Lt_0080:
.Lt_007F:
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push dword ptr [ebp-20]
call _ASTNEWBOP@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .Lt_007D
.Lt_007E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
cmp dword ptr [ebp-24], 0
jge .Lt_0084
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 54
call _ASTNEWUOP@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_0084:
.Lt_0083:
.Lt_007D:
push dword ptr [ebp+8]
call _ASTDELNODE@4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTACCUMADDSUB@12
mov dword ptr [ebp+8], eax
jmp .Lt_007B
.Lt_007C:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTACCUMADDSUB@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
push dword ptr [ebp-24]
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _HCONSTACCUMADDSUB@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_007B:
.Lt_0076:
.Lt_0075:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0070:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCONSTACCUMMUL@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0085:
cmp dword ptr [ebp+8], 0
jne .Lt_0088
mov dword ptr [ebp-4], 0
jmp .Lt_0086
.Lt_0088:
.Lt_0087:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0089
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0345
.Lt_0089:
mov dword ptr [ebp-20], 0
.Lt_0345:
cmp dword ptr [ebp-20], 0
je .Lt_008C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .Lt_008E
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .Lt_0090
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 30
call _ASTNEWBOP@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .Lt_008F
.Lt_0090:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
.Lt_008F:
push dword ptr [ebp+8]
call _ASTDELNODE@4
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTACCUMMUL@8
mov dword ptr [ebp+8], eax
jmp .Lt_008D
.Lt_008E:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTACCUMMUL@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _HCONSTACCUMMUL@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_008D:
.Lt_008C:
.Lt_008B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0086:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HOPTCONSTACCUM1@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0091:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .Lt_0094
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HOPTCONSTACCUM1@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
.Lt_0094:
.Lt_0093:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .Lt_0096
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HOPTCONSTACCUM1@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_0096:
.Lt_0095:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0098
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .Lt_009A
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 28
je .Lt_009D
.Lt_009E:
cmp dword ptr [ebp-20], 29
jne .Lt_009C
.Lt_009D:
push 1
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HCONSTACCUMADDSUB@12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .Lt_00A0
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-20]
call _ASTNEWBOP@20
mov dword ptr [ebp+8], eax
.Lt_00A0:
.Lt_009F:
jmp .Lt_009B
.Lt_009C:
cmp dword ptr [ebp-20], 30
jne .Lt_00A1
.Lt_00A2:
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HCONSTACCUMMUL@8
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .Lt_00A4
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp+8], eax
.Lt_00A4:
.Lt_00A3:
.Lt_00A1:
.Lt_009B:
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0097:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0092:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HOPTCONSTACCUM2@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .Lt_00A8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HOPTCONSTACCUM2@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
.Lt_00A8:
.Lt_00A7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .Lt_00AA
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HOPTCONSTACCUM2@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_00AA:
.Lt_00A9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_00AC
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
jne .Lt_00AF
.Lt_00B0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-24], ebx
jmp .Lt_00B2
.Lt_00B4:
jmp .Lt_00B1
.Lt_00B5:
push 1
lea ebx, [ebp-16]
push ebx
push dword ptr [ebp+8]
call _HCONSTACCUMADDSUB@12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .Lt_00B7
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp+8], eax
.Lt_00B7:
.Lt_00B6:
jmp .Lt_00B1
.Lt_00B2:
mov eax, dword ptr [ebp-24]
add eax, 4294967289
cmp eax, 11
ja .Lt_00B5
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_00B8+eax*4-28]
_.LT_00B8:
.int .Lt_00B4
.int .Lt_00B5
.int .Lt_00B5
.int .Lt_00B5
.int .Lt_00B5
.int .Lt_00B5
.int .Lt_00B5
.int .Lt_00B5
.int .Lt_00B5
.int .Lt_00B5
.int .Lt_00B4
.int .Lt_00B4
.Lt_00B1:
jmp .Lt_00AD
.Lt_00AF:
cmp dword ptr [ebp-20], 30
jne .Lt_00B9
.Lt_00BA:
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HCONSTACCUMMUL@8
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp-16], 0
je .Lt_00BC
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp+8], eax
.Lt_00BC:
.Lt_00BB:
.Lt_00B9:
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCONSTDISTMUL@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BD:
cmp dword ptr [ebp+8], 0
jne .Lt_00C0
mov dword ptr [ebp-4], 0
jmp .Lt_00BE
.Lt_00C0:
.Lt_00BF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_00C1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
cmp ebx, 28
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0347
.Lt_00C1:
mov dword ptr [ebp-20], 0
.Lt_0347:
cmp dword ptr [ebp-20], 0
je .Lt_00C4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 16
jne .Lt_00C6
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
je .Lt_00C8
push 1
push 0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
push 28
call _ASTNEWBOP@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .Lt_00C7
.Lt_00C8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
.Lt_00C7:
push dword ptr [ebp+8]
call _ASTDELNODE@4
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTDISTMUL@8
mov dword ptr [ebp+8], eax
jmp .Lt_00C5
.Lt_00C6:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCONSTDISTMUL@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _HCONSTDISTMUL@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_00C5:
.Lt_00C4:
.Lt_00C3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00BE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HOPTCONSTDISTMUL@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C9:
cmp dword ptr [ebp+8], 0
jne .Lt_00CC
mov dword ptr [ebp-4], 0
jmp .Lt_00CA
.Lt_00CC:
.Lt_00CB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .Lt_00CE
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HOPTCONSTDISTMUL@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
.Lt_00CE:
.Lt_00CD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .Lt_00D0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HOPTCONSTDISTMUL@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_00D0:
.Lt_00CF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_00D2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
cmp dword ptr [ebx], 16
jne .Lt_00D4
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 30
jne .Lt_00D6
mov dword ptr [ebp-8], 0
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _HCONSTDISTMUL@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
cmp dword ptr [ebp-8], 0
je .Lt_00D8
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTCLONETREE@4
push eax
push dword ptr [ebp-8]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp+8], eax
.Lt_00D8:
.Lt_00D7:
.Lt_00D6:
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HOPTCONSTIDXMULT@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_00D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .Lt_00DB
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+24]
cmp eax, 30
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_0349
.Lt_00DB:
mov dword ptr [ebp-16], 0
.Lt_0349:
cmp dword ptr [ebp-16], 0
je .Lt_00DE
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], 16
jne .Lt_00E0
mov ebx, dword ptr [_IR+276]
and ebx, 65536
test ebx, ebx
je .Lt_00E2
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+24]
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
je .Lt_00E4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-32], ebx
jmp .Lt_00E6
.Lt_00E8:
mov dword ptr [ebp-4], -1
jmp .Lt_00E5
.Lt_00E9:
mov dword ptr [ebp-4], -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 114688
test eax, eax
je .Lt_00EB
mov dword ptr [ebp-4], 0
jmp .Lt_00EA
.Lt_00EB:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .Lt_00EC
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
jne .Lt_00EE
mov dword ptr [ebp-4], 0
.Lt_00EE:
.Lt_00ED:
.Lt_00EC:
.Lt_00EA:
jmp .Lt_00E5
.Lt_00EF:
mov dword ptr [ebp-4], 0
jmp .Lt_00E5
.Lt_00E6:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 8
ja .Lt_00EF
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_00F0+eax*4-4]
_.LT_00F0:
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E9
.int .Lt_00E8
.int .Lt_00E9
.int .Lt_00EF
.int .Lt_00EF
.int .Lt_00E8
.int .Lt_00E9
.Lt_00E5:
cmp dword ptr [ebp-4], 0
je .Lt_00F2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+64]
mov dword ptr [eax+64], ecx
push dword ptr [ebp-28]
call _ASTDELNODE@4
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+64]
mov dword ptr [ebp-12], eax
.Lt_00F2:
.Lt_00F1:
.Lt_00E4:
.Lt_00E3:
.Lt_00E2:
.Lt_00E1:
.Lt_00E0:
.Lt_00DF:
.Lt_00DE:
.Lt_00DD:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 480
je .Lt_00F3
mov dword ptr [ebp-20], 24
jmp .Lt_034A
.Lt_00F3:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_034A:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .Lt_00F5
mov dword ptr [ebp-24], 24
jmp .Lt_034B
.Lt_00F5:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_034B:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [_ENV+272]
cmp eax, dword ptr [_SYMB_DTYPETB+ecx+4]
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-28]
je .Lt_00F8
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call _ASTNEWCONV@20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+64], eax
.Lt_00F8:
.Lt_00F7:
.Lt_00DA:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HOPTDEREFADDR@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_010E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 23
jne .Lt_0112
.Lt_0113:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+64]
mov ebx, eax
call _ASTGETOFFSETCHILDOFS@4
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
sub esi, eax
sbb ecx, edx
mov dword ptr [ebp-16], esi
mov dword ptr [ebp-12], ecx
jmp .Lt_0110
.Lt_0112:
cmp dword ptr [ebp-28], 6
jne .Lt_0114
.Lt_0115:
jmp .Lt_0110
.Lt_0114:
mov esi, dword ptr [ebp+8]
mov dword ptr [ebp-4], esi
jmp .Lt_010F
.Lt_0116:
.Lt_0110:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+24]
mov ecx, dword ptr [esi+28]
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], ecx
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _ASTINCOFFSET@12
test eax, eax
jne .Lt_0118
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_010F
.Lt_0118:
.Lt_0117:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebp+8], ecx
push dword ptr [ebp-8]
call _ASTDELNODE@4
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _ASTSETTYPE@12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.Lt_010F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HOPTCONSTIDX@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0119:
cmp dword ptr [ebp+8], 0
jne .Lt_011C
mov dword ptr [ebp-4], 0
jmp .Lt_011A
.Lt_011C:
.Lt_011B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_011E
push dword ptr [ebp-8]
call _HOPTCONSTIDX@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
.Lt_011E:
.Lt_011D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0120
push dword ptr [ebp-12]
call _HOPTCONSTIDX@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_0120:
.Lt_011F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 18
je .Lt_0124
.Lt_0125:
cmp dword ptr [ebp-28], 20
jne .Lt_0123
.Lt_0124:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .Lt_0127
mov dword ptr [ebp-16], 0
push 1
lea ebx, [ebp-16]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _HCONSTACCUMADDSUB@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
cmp dword ptr [ebp-16], 0
je .Lt_0129
push 8
push dword ptr [ebp-16]
call _ASTCONSTFLUSHTOINT@8
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .Lt_012B
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [edx+32]
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
add dword ptr [eax+24], ecx
adc dword ptr [eax+28], ebx
jmp .Lt_012A
.Lt_012B:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [ecx+24], eax
adc dword ptr [ecx+28], ebx
.Lt_012A:
.Lt_0129:
.Lt_0128:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 16
jne .Lt_012D
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTCONSTFLUSHTOINT@8
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .Lt_012F
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [edx+32]
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
add dword ptr [eax+24], ecx
adc dword ptr [eax+28], ebx
jmp .Lt_012E
.Lt_012F:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [ecx+24], eax
adc dword ptr [ecx+28], ebx
.Lt_012E:
jmp .Lt_012C
.Lt_012D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 18
jne .Lt_0131
push dword ptr [ebp+8]
call _HOPTCONSTIDXMULT@4
jmp .Lt_0130
.Lt_0131:
push dword ptr [ebp+8]
call _HOPTDEREFADDR@4
mov dword ptr [ebp+8], eax
.Lt_0130:
.Lt_012C:
.Lt_0127:
.Lt_0126:
.Lt_0123:
.Lt_0121:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_011A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HOPTASSOCADD@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0132:
cmp dword ptr [ebp+8], 0
jne .Lt_0135
mov dword ptr [ebp-4], 0
jmp .Lt_0133
.Lt_0135:
.Lt_0134:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0137
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 28
je .Lt_013A
.Lt_013B:
cmp dword ptr [ebp-20], 29
jne .Lt_0139
.Lt_013A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 17
je .Lt_013F
.Lt_0140:
cmp dword ptr [ebp-28], 18
je .Lt_013F
.Lt_0141:
cmp dword ptr [ebp-28], 7
jne .Lt_013E
.Lt_013F:
jmp .Lt_013C
.Lt_013E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .Lt_0144
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 28
je .Lt_0147
.Lt_0148:
cmp dword ptr [ebp-24], 29
jne .Lt_0146
.Lt_0147:
cmp dword ptr [ebp-20], 29
jne .Lt_014A
cmp dword ptr [ebp-24], 29
jne .Lt_014C
mov dword ptr [ebp-20], 28
jmp .Lt_014B
.Lt_014C:
mov dword ptr [ebp-24], 29
.Lt_014B:
jmp .Lt_0149
.Lt_014A:
cmp dword ptr [ebp-24], 29
jne .Lt_014E
mov dword ptr [ebp-20], 29
mov dword ptr [ebp-24], 28
.Lt_014E:
.Lt_014D:
.Lt_0149:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
push 1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+68]
push 1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
push dword ptr [ebp-24]
call _ASTNEWBOP@20
push eax
push dword ptr [ebp-20]
call _ASTNEWBOP@20
mov dword ptr [ebp+8], eax
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp-16]
call _ASTDELNODE@4
.Lt_0146:
.Lt_0145:
.Lt_0144:
.Lt_0143:
.Lt_0142:
.Lt_013C:
.Lt_0139:
.Lt_0138:
.Lt_0137:
.Lt_0136:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0150
push dword ptr [ebp-8]
call _HOPTASSOCADD@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
.Lt_0150:
.Lt_014F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0152
push dword ptr [ebp-12]
call _HOPTASSOCADD@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_0152:
.Lt_0151:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0133:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HOPTASSOCMUL@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0153:
cmp dword ptr [ebp+8], 0
jne .Lt_0156
mov dword ptr [ebp-4], 0
jmp .Lt_0154
.Lt_0156:
.Lt_0155:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0157
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0352
.Lt_0157:
mov dword ptr [ebp-20], 0
.Lt_0352:
cmp dword ptr [ebp-20], 0
je .Lt_015A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .Lt_015B
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+24]
cmp ebx, 30
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_0353
.Lt_015B:
mov dword ptr [ebp-24], 0
.Lt_0353:
cmp dword ptr [ebp-24], 0
je .Lt_015E
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ebx
push 1
push 0
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+68]
push 1
push 0
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+64]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
push 30
call _ASTNEWBOP@20
push eax
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp+8], eax
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp-16]
call _ASTDELNODE@4
.Lt_015E:
.Lt_015D:
.Lt_015A:
.Lt_0159:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0160
push dword ptr [ebp-8]
call _HOPTASSOCMUL@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
.Lt_0160:
.Lt_015F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0162
push dword ptr [ebp-12]
call _HOPTASSOCMUL@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_0162:
.Lt_0161:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0154:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HDIVTOSHIFT_SIGNED@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
.Lt_0163:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 17
je .Lt_0166
jmp .Lt_0164
.Lt_0166:
.Lt_0165:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_0167
mov dword ptr [ebp-20], 24
jmp .Lt_0356
.Lt_0167:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0356:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 7
jne .Lt_016A
mov ebx, dword ptr [_SYMB_DTYPETB+228]
sal ebx, 3
dec ebx
mov dword ptr [ebp-16], ebx
.Lt_016A:
.Lt_0169:
push dword ptr [ebp-4]
call _ASTCLONETREE@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+12], 1
jne .Lt_016C
push 0
push 1
push 1
push 0
push 1
push 0
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push 0
push 1
push dword ptr [ebp-4]
push 0
push dword ptr [ebp-12]
call _TYPETOUNSIGNED@4
push eax
call _ASTNEWCONV@20
push eax
push 42
call _ASTNEWBOP@20
push eax
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP@20
push eax
push 0
push dword ptr [ebp-12]
call _ASTNEWCONV@20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
jmp .Lt_016B
.Lt_016C:
push 0
push 1
push 1
push 0
push 1
push 0
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
call _ASTNEWCONSTI@16
push eax
push 1
push 0
push 0
push 8
mov ecx, dword ptr [ebp-16]
mov eax, ecx
sar eax, 31
push eax
push ecx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-4]
push 42
call _ASTNEWBOP@20
push eax
push 34
call _ASTNEWBOP@20
push eax
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP@20
push eax
push 0
push dword ptr [ebp-12]
call _ASTNEWCONV@20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+64], eax
.Lt_016B:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+24], 42
mov ecx, dword ptr [ebp+12]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+68]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
.Lt_0164:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HTOPOW2@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_016D:
mov dword ptr [ebp-8], 1
.Lt_0172:
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
jz .Lt_0357
mov edx, eax
xor eax, eax
.Lt_0357:
mov [esp+4], edx
mov [esp+0], eax
pop ebx
pop eax
cmp dword ptr [ebp+12], eax
jne .Lt_0174
cmp dword ptr [ebp+8], ebx
jne .Lt_0174
.Lt_0358:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_016E
.Lt_0174:
.Lt_0173:
.Lt_0170:
inc dword ptr [ebp-8]
.Lt_016F:
cmp dword ptr [ebp-8], 63
jle .Lt_0172
.Lt_0171:
mov dword ptr [ebp-4], 0
.Lt_016E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HOPTTOSHIFT@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_0175:
cmp dword ptr [ebp+8], 0
jne .Lt_0178
jmp .Lt_0176
.Lt_0178:
.Lt_0177:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_017A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 30
je .Lt_017D
.Lt_017E:
cmp dword ptr [ebp-12], 32
je .Lt_017D
.Lt_017F:
cmp dword ptr [ebp-12], 33
jne .Lt_017C
.Lt_017D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0180
mov dword ptr [ebp-28], 24
jmp .Lt_0359
.Lt_0180:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0359:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .Lt_0183
jmp .Lt_017B
.Lt_0183:
.Lt_0182:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .Lt_0185
jmp .Lt_017B
.Lt_0185:
.Lt_0184:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
mov ecx, -1
jne .Lt_0362
cmp dword ptr [ebp-24], 0
je .Lt_0361
.Lt_0362:
xor ecx, ecx
.Lt_0361:
cmp dword ptr [ebp-20], 0
mov ebx, -1
jl .Lt_0363
jg .Lt_0364
cmp dword ptr [ebp-24], 0
jb .Lt_0363
.Lt_0364:
xor ebx, ebx
.Lt_0363:
mov dword ptr [ebp-36], ecx
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .Lt_0186
mov dword ptr [ebp-32], 24
jmp .Lt_035A
.Lt_0186:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_035A:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
and ecx, dword ptr [ebp-40]
or ecx, dword ptr [ebp-36]
je .Lt_0189
jmp .Lt_017B
.Lt_0189:
.Lt_0188:
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _HTOPOW2@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jg .Lt_018B
jmp .Lt_017B
.Lt_018B:
.Lt_018A:
cmp dword ptr [ebp-12], 30
jne .Lt_018D
.Lt_018E:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ecx+4]
and eax, 480
je .Lt_018F
mov dword ptr [ebp-36], 24
jmp .Lt_035D
.Lt_018F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_035D:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ecx, 3
cmp dword ptr [ebp-16], ecx
jle .Lt_0192
jmp .Lt_017B
.Lt_0192:
.Lt_0191:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+24], 41
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], ecx
jmp .Lt_018C
.Lt_018D:
cmp dword ptr [ebp-12], 32
jne .Lt_0193
.Lt_0194:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ecx+4]
and eax, 480
je .Lt_0195
mov dword ptr [ebp-36], 24
jmp .Lt_035E
.Lt_0195:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_035E:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ecx, 3
cmp dword ptr [ebp-16], ecx
jle .Lt_0198
jmp .Lt_017B
.Lt_0198:
.Lt_0197:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+64]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_0199
mov dword ptr [ebp-40], 24
jmp .Lt_035F
.Lt_0199:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+64]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-40], ecx
.Lt_035F:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
jne .Lt_019C
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+24], 42
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], ecx
jmp .Lt_019B
.Lt_019C:
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HDIVTOSHIFT_SIGNED@8
.Lt_019B:
jmp .Lt_018C
.Lt_0193:
cmp dword ptr [ebp-12], 33
jne .Lt_019D
.Lt_019E:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .Lt_019F
mov dword ptr [ebp-36], 24
jmp .Lt_0360
.Lt_019F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_0360:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_01A2
jmp .Lt_017B
.Lt_01A2:
.Lt_01A1:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+24], 34
mov eax, dword ptr [ebp-8]
add dword ptr [eax+24], 4294967295
adc dword ptr [eax+28], 4294967295
.Lt_019D:
.Lt_018C:
.Lt_017C:
.Lt_017B:
.Lt_017A:
.Lt_0179:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebp-4], ecx
cmp dword ptr [ebp-4], 0
je .Lt_01A4
push dword ptr [ebp-4]
call _HOPTTOSHIFT@4
.Lt_01A4:
.Lt_01A3:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+68]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_01A6
push dword ptr [ebp-8]
call _HOPTTOSHIFT@4
.Lt_01A6:
.Lt_01A5:
.Lt_0176:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HOPTCONSTCONV@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A7:
cmp dword ptr [ebp+8], 0
jne .Lt_01AA
mov dword ptr [ebp-4], 0
jmp .Lt_01A8
.Lt_01AA:
.Lt_01A9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 5
jne .Lt_01AC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 16
jne .Lt_01AE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_01AF
mov dword ptr [ebp-24], 24
jmp .Lt_0365
.Lt_01AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_0365:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .Lt_01B2
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_01B3
mov dword ptr [ebp-28], 24
jmp .Lt_0366
.Lt_01B3:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_0366:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .Lt_01B6
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 16
jne .Lt_01B8
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01BA
cmp dword ptr [ebp-20], 0
jne .Lt_01BA
.Lt_0367:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+4]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
push dword ptr [ebp-8]
call _ASTDELNODE@4
push dword ptr [ebp-12]
call _ASTDELNODE@4
.Lt_01BA:
.Lt_01B9:
.Lt_01B8:
.Lt_01B7:
.Lt_01B6:
.Lt_01B5:
.Lt_01B2:
.Lt_01B1:
.Lt_01AE:
.Lt_01AD:
.Lt_01AC:
.Lt_01AB:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_01A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HOPTNULLOP@4:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BB:
cmp dword ptr [ebp+8], 0
jne .Lt_01BE
mov dword ptr [ebp-4], 0
jmp .Lt_01BC
.Lt_01BE:
.Lt_01BD:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HOPTNULLOP@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HOPTNULLOP@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_01C0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
push dword ptr [ebp-8]
call _ASTHASSIDEFX@4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-12]
call _ASTHASSIDEFX@4
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_01C1
mov dword ptr [ebp-36], 24
jmp .Lt_0368
.Lt_01C1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_0368:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .Lt_01C4
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .Lt_01C6
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-40], ecx
jmp .Lt_01C8
.Lt_01CA:
cmp dword ptr [ebp-20], 0
jne .Lt_01CC
cmp dword ptr [ebp-24], 0
jne .Lt_01CC
.Lt_036C:
cmp dword ptr [ebp-28], 0
jne .Lt_01CE
push dword ptr [ebp-8]
call _ASTDELTREE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BC
jmp .Lt_01CD
.Lt_01CE:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+24], 34
.Lt_01CD:
jmp .Lt_01CB
.Lt_01CC:
cmp dword ptr [ebp-20], 0
jne .Lt_01CF
cmp dword ptr [ebp-24], 1
jne .Lt_01CF
.Lt_036D:
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BC
.Lt_01CF:
.Lt_01CB:
jmp .Lt_01C7
.Lt_01D0:
cmp dword ptr [ebp-20], 0
mov ecx, -1
jne .Lt_036F
cmp dword ptr [ebp-24], 1
je .Lt_036E
.Lt_036F:
xor ecx, ecx
.Lt_036E:
cmp dword ptr [ebp-20], 4294967295
mov ebx, -1
jne .Lt_0371
cmp dword ptr [ebp-24], 4294967295
je .Lt_0370
.Lt_0371:
xor ebx, ebx
.Lt_0370:
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+4]
and ecx, 511
and ecx, 480
je .Lt_01D1
mov dword ptr [ebp-44], 24
jmp .Lt_0369
.Lt_01D1:
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_0369:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-52]
or ecx, dword ptr [ebp-48]
je .Lt_01D4
cmp dword ptr [ebp-28], 0
jne .Lt_01D6
mov ecx, dword ptr [ebp-12]
mov dword ptr [ecx+24], 0
mov dword ptr [ecx+28], 0
push dword ptr [ebp-8]
call _ASTDELTREE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BC
.Lt_01D6:
.Lt_01D5:
.Lt_01D4:
.Lt_01D3:
jmp .Lt_01C7
.Lt_01D7:
cmp dword ptr [ebp-20], 0
jne .Lt_01D9
cmp dword ptr [ebp-24], 1
jne .Lt_01D9
.Lt_0373:
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BC
.Lt_01D9:
.Lt_01D8:
jmp .Lt_01C7
.Lt_01DA:
cmp dword ptr [ebp-20], 0
jne .Lt_01DC
cmp dword ptr [ebp-24], 0
jne .Lt_01DC
.Lt_0374:
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BC
.Lt_01DC:
.Lt_01DB:
jmp .Lt_01C7
.Lt_01DD:
cmp dword ptr [ebp-20], 4294967295
jne .Lt_01DF
cmp dword ptr [ebp-24], 4294967295
jne .Lt_01DF
.Lt_0375:
cmp dword ptr [ebp-28], 0
jne .Lt_01E1
push dword ptr [ebp-8]
call _ASTDELTREE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BC
.Lt_01E1:
.Lt_01E0:
.Lt_01DF:
.Lt_01DE:
jmp .Lt_01C7
.Lt_01E2:
cmp dword ptr [ebp-20], 0
jne .Lt_01E4
cmp dword ptr [ebp-24], 0
jne .Lt_01E4
.Lt_0376:
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BC
jmp .Lt_01E3
.Lt_01E4:
cmp dword ptr [ebp-20], 4294967295
jne .Lt_01E5
cmp dword ptr [ebp-24], 4294967295
jne .Lt_01E5
.Lt_0377:
cmp dword ptr [ebp-28], 0
jne .Lt_01E7
push dword ptr [ebp-8]
call _ASTDELTREE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BC
.Lt_01E7:
.Lt_01E6:
.Lt_01E5:
.Lt_01E3:
jmp .Lt_01C7
.Lt_01E8:
cmp dword ptr [ebp-20], 4294967295
jne .Lt_01EA
cmp dword ptr [ebp-24], 4294967295
jne .Lt_01EA
.Lt_0378:
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BC
jmp .Lt_01E9
.Lt_01EA:
cmp dword ptr [ebp-20], 0
jne .Lt_01EB
cmp dword ptr [ebp-24], 0
jne .Lt_01EB
.Lt_0379:
cmp dword ptr [ebp-28], 0
jne .Lt_01ED
push dword ptr [ebp-8]
call _ASTDELTREE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01BC
.Lt_01ED:
.Lt_01EC:
.Lt_01EB:
.Lt_01E9:
jmp .Lt_01C7
.Lt_01C8:
mov ecx, dword ptr [ebp-40]
add ecx, 4294967268
cmp ecx, 14
ja .Lt_01C7
mov ecx, dword ptr [ebp-40]
jmp dword ptr [_.LT_01EE+ecx*4-112]
_.LT_01EE:
.int .Lt_01DA
.int .Lt_01DA
.int .Lt_01CA
.int .Lt_01C7
.int .Lt_01D7
.int .Lt_01D0
.int .Lt_01E8
.int .Lt_01E2
.int .Lt_01C7
.int .Lt_01C7
.int .Lt_01DA
.int .Lt_01C7
.int .Lt_01DD
.int .Lt_01DA
.int .Lt_01DA
.Lt_01C7:
jmp .Lt_01C5
.Lt_01C6:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ecx], 16
jne .Lt_01EF
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+24]
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], ebx
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
jmp .Lt_01F1
.Lt_01F3:
cmp dword ptr [ebp-20], 0
jne .Lt_01F5
cmp dword ptr [ebp-24], 0
jne .Lt_01F5
.Lt_037A:
cmp dword ptr [ebp-32], 0
jne .Lt_01F7
push dword ptr [ebp-12]
call _ASTDELTREE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01BC
.Lt_01F7:
.Lt_01F6:
.Lt_01F5:
.Lt_01F4:
jmp .Lt_01F0
.Lt_01F1:
mov eax, dword ptr [ebp-40]
add eax, 4294967266
cmp eax, 12
ja .Lt_01F0
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.LT_01F8+eax*4-120]
_.LT_01F8:
.int .Lt_01F3
.int .Lt_01F0
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F0
.int .Lt_01F0
.int .Lt_01F0
.int .Lt_01F0
.int .Lt_01F0
.int .Lt_01F0
.int .Lt_01F0
.int .Lt_01F3
.int .Lt_01F3
.Lt_01F0:
.Lt_01EF:
.Lt_01C5:
.Lt_01C4:
.Lt_01C3:
.Lt_01C0:
.Lt_01BF:
push dword ptr [ebp+8]
call _HOPTCONSTCONV@4
mov dword ptr [ebp-4], eax
.Lt_01BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HOPTLOGIC@4:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_01F9:
cmp dword ptr [ebp+8], 0
jne .Lt_01FC
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01FA
.Lt_01FC:
.Lt_01FB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_01FE
push dword ptr [ebp-12]
call _HOPTLOGIC@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
.Lt_01FE:
.Lt_01FD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_0200
push dword ptr [ebp-16]
call _HOPTLOGIC@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-16], ebx
.Lt_0200:
.Lt_01FF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_0201
mov dword ptr [ebp-32], 24
jmp .Lt_037B
.Lt_0201:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_037B:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .Lt_0204
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .Lt_0205
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .Lt_037C
.Lt_0205:
mov dword ptr [ebp-36], 0
.Lt_037C:
cmp dword ptr [ebp-36], 0
je .Lt_0208
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 4
jne .Lt_0209
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+24]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-40], ebx
jmp .Lt_037D
.Lt_0209:
mov dword ptr [ebp-40], 0
.Lt_037D:
cmp dword ptr [ebp-40], 0
je .Lt_020C
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
push dword ptr [ebp-8]
call _HOPTLOGIC@4
mov dword ptr [ebp+8], eax
jmp .Lt_020B
.Lt_020C:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .Lt_020E
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+24]
cmp ebx, 38
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-44], ebx
jmp .Lt_037E
.Lt_020E:
mov dword ptr [ebp-44], 0
.Lt_037E:
cmp dword ptr [ebp-44], 0
je .Lt_020D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_0210
mov dword ptr [ebp-48], 24
jmp .Lt_037F
.Lt_0210:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_037F:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .Lt_0213
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+64]
cmp dword ptr [eax], 16
jne .Lt_0215
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+64]
not dword ptr [ebx+24]
not dword ptr [ebx+28]
push dword ptr [ebp+8]
call _ASTDELNODE@4
push dword ptr [ebp-12]
call _HOPTLOGIC@4
mov dword ptr [ebp+8], eax
jmp .Lt_0214
.Lt_0215:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+68]
cmp dword ptr [ebx], 16
jne .Lt_0216
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+68]
not dword ptr [eax+24]
not dword ptr [eax+28]
push dword ptr [ebp+8]
call _ASTDELNODE@4
push dword ptr [ebp-12]
call _HOPTLOGIC@4
mov dword ptr [ebp+8], eax
.Lt_0216:
.Lt_0214:
.Lt_0213:
.Lt_0212:
.Lt_020D:
.Lt_020B:
jmp .Lt_0207
.Lt_0208:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0217
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0218
mov dword ptr [ebp-40], 24
jmp .Lt_0380
.Lt_0218:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_0380:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .Lt_021B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 35
je .Lt_021E
.Lt_021F:
cmp dword ptr [ebp-20], 34
je .Lt_021E
.Lt_0220:
cmp dword ptr [ebp-20], 38
jne .Lt_021D
.Lt_021E:
cmp dword ptr [ebp-20], 34
jne .Lt_0222
mov dword ptr [ebp-20], 35
jmp .Lt_0221
.Lt_0222:
cmp dword ptr [ebp-20], 35
jne .Lt_0223
mov dword ptr [ebp-20], 34
.Lt_0223:
.Lt_0221:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 4
jne .Lt_0224
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+24]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .Lt_0381
.Lt_0224:
mov dword ptr [ebp-44], 0
.Lt_0381:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 4
jne .Lt_0226
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+24]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
jmp .Lt_0382
.Lt_0226:
mov dword ptr [ebp-48], 0
.Lt_0382:
mov ebx, dword ptr [ebp-48]
and ebx, dword ptr [ebp-44]
je .Lt_0229
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+64]
call _HOPTLOGIC@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax+64]
call _HOPTLOGIC@4
mov dword ptr [ebp-16], eax
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-20], 38
je .Lt_022B
push dword ptr [ebp-8]
push 52
call _ASTNEWUOP@8
mov dword ptr [ebp-8], eax
.Lt_022B:
.Lt_022A:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .Lt_0228
.Lt_0229:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 4
jne .Lt_022D
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+24]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
jmp .Lt_0383
.Lt_022D:
mov dword ptr [ebp-52], 0
.Lt_0383:
mov eax, dword ptr [ebp-52]
and eax, dword ptr [ebp-68]
je .Lt_022C
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-28], ecx
mov dword ptr [ebp-24], ebx
push 1
push 0
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+64]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
not ecx
not eax
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
cmp dword ptr [ebp-20], 38
je .Lt_0230
push dword ptr [ebp-8]
push 52
call _ASTNEWUOP@8
mov dword ptr [ebp-8], eax
.Lt_0230:
.Lt_022F:
push dword ptr [ebp-16]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .Lt_0228
.Lt_022C:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx], 4
jne .Lt_0232
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+24]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .Lt_0385
.Lt_0232:
mov dword ptr [ebp-56], 0
.Lt_0385:
mov eax, dword ptr [ebp-56]
and eax, dword ptr [ebp-68]
je .Lt_0231
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], ecx
push 1
push 0
push dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+64]
push dword ptr [ebp-20]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
not ebx
not eax
mov ecx, dword ptr [ebp-16]
mov dword ptr [ecx+24], ebx
mov dword ptr [ecx+28], eax
cmp dword ptr [ebp-20], 38
je .Lt_0235
push dword ptr [ebp-8]
push 52
call _ASTNEWUOP@8
mov dword ptr [ebp-8], eax
.Lt_0235:
.Lt_0234:
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
jmp .Lt_0228
.Lt_0231:
mov eax, dword ptr [ebp-20]
cmp eax, 38
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-68], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 4
jne .Lt_0237
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+24]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-60], ebx
jmp .Lt_0387
.Lt_0237:
mov dword ptr [ebp-60], 0
.Lt_0387:
mov ebx, dword ptr [ebp-60]
and ebx, dword ptr [ebp-68]
je .Lt_0236
push dword ptr [ebp+8]
push 52
call _ASTNEWUOP@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+64], ecx
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ecx
jmp .Lt_0228
.Lt_0236:
mov ecx, dword ptr [ebp-20]
cmp ecx, 38
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx], 4
jne .Lt_023A
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+24]
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-64], ebx
jmp .Lt_0389
.Lt_023A:
mov dword ptr [ebp-64], 0
.Lt_0389:
mov ebx, dword ptr [ebp-64]
and ebx, dword ptr [ebp-68]
je .Lt_0239
push dword ptr [ebp+8]
push 52
call _ASTNEWUOP@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+68], ecx
push dword ptr [ebp-16]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp+8], ecx
.Lt_0239:
.Lt_0228:
.Lt_021D:
.Lt_021C:
.Lt_021B:
.Lt_021A:
.Lt_0217:
.Lt_0207:
.Lt_0204:
.Lt_0203:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.Lt_01FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HDOOPTREMCONV@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_023C:
cmp dword ptr [ebp+8], 0
jne .Lt_023F
mov dword ptr [ebp-4], 0
jmp .Lt_023D
.Lt_023F:
.Lt_023E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_0241
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 15
je .Lt_0245
.Lt_0246:
cmp dword ptr [ebp-20], 16
jne .Lt_0244
.Lt_0245:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 5
jne .Lt_0248
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 5
je .Lt_024A
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 15
je .Lt_024E
.Lt_024F:
cmp dword ptr [ebp-24], 16
jne .Lt_024D
.Lt_024E:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_0250
mov dword ptr [ebp-28], 24
jmp .Lt_0398
.Lt_0250:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_0398:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 2
je .Lt_0255
.Lt_0256:
cmp dword ptr [ebp-32], 4
jne .Lt_0254
.Lt_0255:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 17
je .Lt_025A
.Lt_025B:
cmp dword ptr [ebp-36], 18
je .Lt_025A
.Lt_025C:
cmp dword ptr [ebp-36], 19
je .Lt_025A
.Lt_025D:
cmp dword ptr [ebp-36], 20
jne .Lt_0259
.Lt_025A:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
je .Lt_025E
mov dword ptr [ebp-40], 24
jmp .Lt_0399
.Lt_025E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-40], ebx
.Lt_0399:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .Lt_0261
mov dword ptr [ebp-16], -1
.Lt_0261:
.Lt_0260:
.Lt_0259:
.Lt_0257:
cmp dword ptr [ebp-16], 0
je .Lt_0263
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
.Lt_0263:
.Lt_0262:
.Lt_0254:
.Lt_0252:
.Lt_024D:
.Lt_024B:
.Lt_024A:
.Lt_0249:
.Lt_0248:
.Lt_0247:
.Lt_0244:
.Lt_0242:
.Lt_0241:
.Lt_0240:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HDOOPTREMCONV@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HDOOPTREMCONV@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_023D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HOPTSTRMULTCONCAT@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0264:
cmp dword ptr [ebp+16], 0
jne .Lt_0267
mov dword ptr [ebp-4], 0
jmp .Lt_0265
.Lt_0267:
.Lt_0266:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+64], 0
je .Lt_0269
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 3
jne .Lt_026B
push dword ptr [ebp+20]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+64]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HOPTSTRMULTCONCAT@16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [eax+64], 0
.Lt_026B:
.Lt_026A:
.Lt_0269:
.Lt_0268:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 3
jne .Lt_026D
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+64], 0
je .Lt_026F
cmp dword ptr [ebp+8], 0
jne .Lt_0271
cmp dword ptr [ebp+20], 0
jne .Lt_0273
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLSTRASSIGN@12
mov dword ptr [ebp+8], eax
jmp .Lt_0272
.Lt_0273:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLWSTRASSIGN@12
mov dword ptr [ebp+8], eax
.Lt_0272:
jmp .Lt_0270
.Lt_0271:
cmp dword ptr [ebp+20], 0
jne .Lt_0275
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLSTRCONCATASSIGN@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
jmp .Lt_0274
.Lt_0275:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLWSTRCONCATASSIGN@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
.Lt_0274:
.Lt_0270:
.Lt_026F:
.Lt_026E:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+68], 0
je .Lt_0277
cmp dword ptr [ebp+20], 0
jne .Lt_0279
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+68]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLSTRCONCATASSIGN@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
jmp .Lt_0278
.Lt_0279:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+68]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLWSTRCONCATASSIGN@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
.Lt_0278:
.Lt_0277:
.Lt_0276:
push dword ptr [ebp+16]
call _ASTDELNODE@4
jmp .Lt_026C
.Lt_026D:
cmp dword ptr [ebp+8], 0
jne .Lt_027B
cmp dword ptr [ebp+20], 0
jne .Lt_027D
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLSTRASSIGN@12
mov dword ptr [ebp+8], eax
jmp .Lt_027C
.Lt_027D:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLWSTRASSIGN@12
mov dword ptr [ebp+8], eax
.Lt_027C:
jmp .Lt_027A
.Lt_027B:
cmp dword ptr [ebp+20], 0
jne .Lt_027F
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLSTRCONCATASSIGN@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
jmp .Lt_027E
.Lt_027F:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLWSTRCONCATASSIGN@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
.Lt_027E:
.Lt_027A:
.Lt_026C:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0265:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HISMULTSTRCONCAT@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0280:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .Lt_0283
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .Lt_0287
.Lt_0288:
cmp dword ptr [ebp-12], 18
jne .Lt_0286
.Lt_0287:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_028A
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 81920
test ebx, ebx
jne .Lt_028C
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTISSYMBOLONTREE@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_028C:
.Lt_028B:
.Lt_028A:
.Lt_0289:
jmp .Lt_0284
.Lt_0286:
cmp dword ptr [ebp-12], 19
je .Lt_028E
.Lt_028F:
cmp dword ptr [ebp-12], 26
jne .Lt_028D
.Lt_028E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 17
je .Lt_0293
.Lt_0294:
cmp dword ptr [ebp-16], 18
jne .Lt_0292
.Lt_0293:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0296
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTISSYMBOLONTREE@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0296:
.Lt_0295:
.Lt_0292:
.Lt_0290:
.Lt_028D:
.Lt_0284:
.Lt_0283:
.Lt_0282:
.Lt_0281:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HOPTSTRASSIGNMENT@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0297:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 3
jne .Lt_029A
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .Lt_029C
.Lt_029E:
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+64]
push dword ptr [ebp+12]
call _ASTISTREEEQUAL@8
test eax, eax
je .Lt_02A0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_02A2
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 81920
test eax, eax
jne .Lt_02A4
mov eax, dword ptr [ebp+16]
push dword ptr [eax+68]
push dword ptr [ebp-16]
call _ASTISSYMBOLONTREE@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.Lt_02A4:
.Lt_02A3:
.Lt_02A2:
.Lt_02A1:
.Lt_02A0:
.Lt_029F:
jmp .Lt_029B
.Lt_02A5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-24], eax
jmp .Lt_02A7
.Lt_02A9:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
push dword ptr [ebp+12]
call _ASTISTREEEQUAL@8
test eax, eax
je .Lt_02AB
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_02AD
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+68]
push dword ptr [ebp-16]
call _ASTISSYMBOLONTREE@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.Lt_02AD:
.Lt_02AC:
.Lt_02AB:
.Lt_02AA:
jmp .Lt_02A6
.Lt_02A7:
mov eax, dword ptr [ebp-24]
add eax, 4294967279
cmp eax, 1
ja .Lt_02A6
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_02AE+eax*4-68]
_.LT_02AE:
.int .Lt_02A9
.int .Lt_02A9
.Lt_02A6:
jmp .Lt_029B
.Lt_029C:
mov eax, dword ptr [ebp-20]
add eax, 4294967279
cmp eax, 9
ja .Lt_029B
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_02AF+eax*4-68]
_.LT_02AF:
.int .Lt_029E
.int .Lt_029E
.int .Lt_02A5
.int .Lt_029B
.int .Lt_029B
.int .Lt_029B
.int .Lt_029B
.int .Lt_029B
.int .Lt_029B
.int .Lt_02A5
.Lt_029B:
.Lt_029A:
.Lt_0299:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-8], 0
je .Lt_02B1
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp+8], ebx
push dword ptr [ebp+12]
call _ASTDELTREE@4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp+16], ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HISMULTSTRCONCAT@8
test eax, eax
je .Lt_02B3
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call _HOPTSTRMULTCONCAT@16
mov dword ptr [ebp-4], eax
jmp .Lt_02B2
.Lt_02B3:
cmp dword ptr [ebp-12], 0
jne .Lt_02B5
push dword ptr [ebp+16]
call _ASTUPDSTRCONCAT@4
push eax
push dword ptr [ebp+12]
call _RTLSTRCONCATASSIGN@8
mov dword ptr [ebp-4], eax
jmp .Lt_02B4
.Lt_02B5:
push dword ptr [ebp+16]
call _ASTUPDSTRCONCAT@4
push eax
push dword ptr [ebp+12]
call _RTLWSTRCONCATASSIGN@8
mov dword ptr [ebp-4], eax
.Lt_02B4:
.Lt_02B2:
jmp .Lt_02B0
.Lt_02B1:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HISMULTSTRCONCAT@8
test eax, eax
je .Lt_02B7
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call _HOPTSTRMULTCONCAT@16
mov dword ptr [ebp-4], eax
jmp .Lt_02B6
.Lt_02B7:
cmp dword ptr [ebp-12], 0
jne .Lt_02B9
push 0
push dword ptr [ebp+16]
call _ASTUPDSTRCONCAT@4
push eax
push dword ptr [ebp+12]
call _RTLSTRASSIGN@12
mov dword ptr [ebp-4], eax
jmp .Lt_02B8
.Lt_02B9:
push 0
push dword ptr [ebp+16]
call _ASTUPDSTRCONCAT@4
push eax
push dword ptr [ebp+12]
call _RTLWSTRASSIGN@12
mov dword ptr [ebp-4], eax
.Lt_02B8:
.Lt_02B6:
.Lt_02B0:
push dword ptr [ebp+8]
call _ASTDELNODE@4
.Lt_0298:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HOPTRECIPROCAL@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0318:
cmp dword ptr [ebp+8], 0
jne .Lt_031B
mov dword ptr [ebp-4], 0
jmp .Lt_0319
.Lt_031B:
.Lt_031A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_031C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
cmp ebx, 31
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_039F
.Lt_031C:
mov dword ptr [ebp-20], 0
.Lt_039F:
cmp dword ptr [ebp-20], 0
je .Lt_031F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
jne .Lt_0321
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 15
jne .Lt_0322
mov ebx, dword ptr [ebp-8]
fld qword ptr [ebx+24]
fcomp qword ptr [_Lt_03A1]
push eax
fnstsw ax
test ah, 0b01000000
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_03A0
.Lt_0322:
mov dword ptr [ebp-24], 0
.Lt_03A0:
cmp dword ptr [ebp-24], 0
je .Lt_0325
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0326
mov dword ptr [ebp-28], 24
jmp .Lt_03A2
.Lt_0326:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_03A2:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
jmp .Lt_0329
.Lt_032B:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 4
jne .Lt_032C
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+24]
cmp eax, 65
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .Lt_03A3
.Lt_032C:
mov dword ptr [ebp-36], 0
.Lt_03A3:
cmp dword ptr [ebp-36], 0
je .Lt_032F
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-12]
mov ecx, 20
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+24], 66
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp-8]
call _ASTDELNODE@4
jmp .Lt_032E
.Lt_032F:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 15
jne .Lt_0330
push dword ptr [ebp+8]
call _ASTDELNODE@4
push dword ptr [ebp-12]
push 67
call _ASTNEWUOP@8
mov dword ptr [ebp+8], eax
push dword ptr [ebp-8]
call _ASTDELNODE@4
.Lt_0330:
.Lt_032E:
jmp .Lt_0328
.Lt_0329:
cmp dword ptr [ebp-32], 1
ja .Lt_0328
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_0331+eax*4]
_.LT_0331:
.int .Lt_032B
.int .Lt_032B
.Lt_0328:
.Lt_0325:
.Lt_0324:
.Lt_0321:
.Lt_0320:
.Lt_031F:
.Lt_031E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0333
push dword ptr [ebp-8]
call _HOPTRECIPROCAL@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
.Lt_0333:
.Lt_0332:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0335
push dword ptr [ebp-12]
call _HOPTRECIPROCAL@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
.Lt_0335:
.Lt_0334:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0319:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 8
_Lt_03A1:	.quad	0x3FF0000000000000
