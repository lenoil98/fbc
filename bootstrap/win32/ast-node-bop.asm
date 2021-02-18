	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWBOP@20
_ASTNEWBOP@20:
push ebp
mov ebp, esp
sub esp, 148
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_01A4:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _SYMB
add ebx, eax
cmp dword ptr [ebx+99128], 0
je .Lt_01A7
lea ebx, [ebp-128]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDBOPOVLPROC@16
mov dword ptr [ebp-124], eax
cmp dword ptr [ebp-124], 0
je .Lt_01A9
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-124]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
jmp .Lt_01A8
.Lt_01A9:
cmp dword ptr [ebp-128], 0
je .Lt_01AB
mov dword ptr [ebp-4], 0
jmp .Lt_01A5
.Lt_01AB:
.Lt_01AA:
.Lt_01A8:
.Lt_01A7:
.Lt_01A6:
mov dword ptr [ebp-56], 0
cmp dword ptr [ebp+8], 44
jne .Lt_01AD
.Lt_01AE:
lea eax, [ebp+16]
push eax
lea eax, [ebp+12]
push eax
call _HTOSTR@8
mov dword ptr [ebp+8], 28
jmp .Lt_01AC
.Lt_01AD:
cmp dword ptr [ebp+8], 51
jne .Lt_01AF
.Lt_01B0:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _RTLOOPISTYPEOF@8
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_01AF:
.Lt_01AC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01B1
mov dword ptr [ebp-72], 24
jmp .Lt_0348
.Lt_01B1:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-72], eax
.Lt_0348:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_01B3
mov dword ptr [ebp-76], 24
jmp .Lt_0349
.Lt_01B3:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-76], ebx
.Lt_0349:
mov ebx, dword ptr [ebp-76]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-68], -1
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01B5
mov dword ptr [ebp-80], 24
jmp .Lt_034A
.Lt_01B5:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-80], eax
.Lt_034A:
mov eax, dword ptr [ebp-80]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_01B7
mov dword ptr [ebp-84], 24
jmp .Lt_034B
.Lt_01B7:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-84], eax
.Lt_034B:
mov eax, dword ptr [ebp-84]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .Lt_01BA
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
je .Lt_01BC
jmp .Lt_01A5
.Lt_01BC:
.Lt_01BB:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01BD
mov dword ptr [ebp-128], 24
jmp .Lt_034D
.Lt_01BD:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_034D:
cmp dword ptr [ebp-128], 20
jne .Lt_01C0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCONVERTUDT_L@20
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
jmp .Lt_01BF
.Lt_01C0:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCONVERTUDT_R@20
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_01BF:
.Lt_01BA:
.Lt_01B9:
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .Lt_01C2
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
je .Lt_01C4
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HDOPOINTERARITH@16
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
jmp .Lt_01C3
.Lt_01C4:
push dword ptr [ebp-36]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HCHECKPOINTER@12
test eax, eax
jne .Lt_01C6
jmp .Lt_01A5
.Lt_01C6:
.Lt_01C5:
.Lt_01C3:
jmp .Lt_01C1
.Lt_01C2:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .Lt_01C7
mov eax, dword ptr [ebp+24]
and eax, 4
test eax, eax
je .Lt_01C9
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HDOPOINTERARITH@16
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
jmp .Lt_01C8
.Lt_01C9:
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _HCHECKPOINTER@12
test eax, eax
jne .Lt_01CB
jmp .Lt_01A5
.Lt_01CB:
.Lt_01CA:
.Lt_01C8:
.Lt_01C7:
.Lt_01C1:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01CC
mov dword ptr [ebp-88], 24
jmp .Lt_034E
.Lt_01CC:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-88], eax
.Lt_034E:
cmp dword ptr [ebp-88], 10
jne .Lt_01CF
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 8
call _HCONVOPERAND@16
.Lt_01CF:
.Lt_01CE:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_01D0
mov dword ptr [ebp-92], 24
jmp .Lt_034F
.Lt_01D0:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-92], eax
.Lt_034F:
cmp dword ptr [ebp-92], 10
jne .Lt_01D3
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 8
call _HCONVOPERAND@16
.Lt_01D3:
.Lt_01D2:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01D4
mov dword ptr [ebp-96], 24
jmp .Lt_0350
.Lt_01D4:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-96], eax
.Lt_0350:
mov eax, dword ptr [ebp-96]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_01D6
mov dword ptr [ebp-100], 24
jmp .Lt_0351
.Lt_01D6:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-100], eax
.Lt_0351:
mov eax, dword ptr [ebp-100]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-124]
je .Lt_01D9
mov dword ptr [ebp-32], 2
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
.Lt_01D9:
.Lt_01D8:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01DA
mov dword ptr [ebp-104], 24
jmp .Lt_0353
.Lt_01DA:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-104], eax
.Lt_0353:
mov eax, dword ptr [ebp-104]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_01DC
mov dword ptr [ebp-108], 24
jmp .Lt_0354
.Lt_01DC:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-108], eax
.Lt_0354:
mov eax, dword ptr [ebp-108]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .Lt_01DF
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
je .Lt_01E1
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_01E2
mov dword ptr [ebp-128], 24
jmp .Lt_0356
.Lt_01E2:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_0356:
cmp dword ptr [ebp-128], 7
jne .Lt_01E5
mov ebx, dword ptr [ebp-36]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-136], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_01E6
mov dword ptr [ebp-132], 24
jmp .Lt_0357
.Lt_01E6:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-132], ebx
.Lt_0357:
mov ebx, dword ptr [ebp-132]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-136]
mov dword ptr [ebp-56], ebx
jmp .Lt_01E4
.Lt_01E5:
mov ebx, dword ptr [ebp-32]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-136], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_01E8
mov dword ptr [ebp-132], 24
jmp .Lt_0359
.Lt_01E8:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-132], ebx
.Lt_0359:
mov ebx, dword ptr [ebp-132]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-136]
mov dword ptr [ebp-56], ebx
.Lt_01E4:
jmp .Lt_01E0
.Lt_01E1:
mov dword ptr [ebp-56], -1
.Lt_01E0:
cmp dword ptr [ebp-56], 0
je .Lt_01EB
mov dword ptr [ebp-60], 0
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_01EC
mov dword ptr [ebp-128], 24
jmp .Lt_035B
.Lt_01EC:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_035B:
mov ebx, dword ptr [ebp-128]
mov dword ptr [ebp-132], ebx
cmp dword ptr [ebp-132], 4
je .Lt_01F1
.Lt_01F2:
cmp dword ptr [ebp-132], 7
jne .Lt_01F0
.Lt_01F1:
push dword ptr [ebp+12]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .Lt_01F4
cmp dword ptr [ebp-24], 4
je .Lt_01F7
.Lt_01F8:
cmp dword ptr [ebp-24], 7
jne .Lt_01F6
.Lt_01F7:
push dword ptr [ebp+16]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-60], eax
jmp .Lt_01F5
.Lt_01F6:
mov dword ptr [ebp-60], 0
.Lt_01F9:
.Lt_01F5:
.Lt_01F4:
.Lt_01F3:
.Lt_01F0:
.Lt_01EE:
cmp dword ptr [ebp+8], 28
jne .Lt_01FB
cmp dword ptr [ebp-60], 0
je .Lt_01FD
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [_ENV+264]
je .Lt_01FF
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HWSTRLITERALCONCAT@8
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_01FF:
.Lt_01FE:
.Lt_01FD:
.Lt_01FC:
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
je .Lt_0201
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _RTLWSTRCONCAT@16
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_0201:
.Lt_0200:
mov eax, dword ptr [ebp-20]
and eax, -512
or eax, 7
and eax, -513
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp-24]
and eax, -512
mov ebx, dword ptr [ebp-20]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-56], -1
jmp .Lt_01FA
.Lt_01FB:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .Lt_0202
cmp dword ptr [ebp-60], 0
je .Lt_0204
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HWSTRLITERALCOMPARE@12
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_0204:
.Lt_0203:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _RTLWSTRCOMPARE@8
mov dword ptr [ebp+12], eax
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp-20]
and eax, -512
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 511
or eax, ecx
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-24]
and eax, -512
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+4]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
jmp .Lt_01FA
.Lt_0202:
jmp .Lt_01A5
.Lt_01FA:
jmp .Lt_01EA
.Lt_01EB:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0205
mov dword ptr [ebp-128], 24
jmp .Lt_035C
.Lt_0205:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_035C:
cmp dword ptr [ebp-128], 7
jne .Lt_0208
push dword ptr [ebp-24]
push dword ptr [ebp+16]
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
call _HCHECKDEREFWCHARPTR@16
test eax, eax
jne .Lt_020A
jmp .Lt_01A5
.Lt_020A:
.Lt_0209:
jmp .Lt_0207
.Lt_0208:
push dword ptr [ebp-20]
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _HCHECKDEREFWCHARPTR@16
test eax, eax
jne .Lt_020C
jmp .Lt_01A5
.Lt_020C:
.Lt_020B:
.Lt_0207:
.Lt_01EA:
jmp .Lt_01DE
.Lt_01DF:
mov eax, dword ptr [ebp-32]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-36]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_020D
mov ebx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ebx
je .Lt_020F
cmp dword ptr [ebp-32], 2
jne .Lt_0211
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_0212
mov dword ptr [ebp-128], 24
jmp .Lt_035D
.Lt_0212:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_035D:
cmp dword ptr [ebp-128], 4
je .Lt_0215
jmp .Lt_01A5
.Lt_0215:
.Lt_0214:
jmp .Lt_0210
.Lt_0211:
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0216
mov dword ptr [ebp-128], 24
jmp .Lt_035E
.Lt_0216:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_035E:
cmp dword ptr [ebp-128], 4
je .Lt_0219
jmp .Lt_01A5
.Lt_0219:
.Lt_0218:
.Lt_0210:
.Lt_020F:
.Lt_020E:
mov dword ptr [ebp-60], 0
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_021A
mov dword ptr [ebp-124], 24
jmp .Lt_035F
.Lt_021A:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-124], ebx
.Lt_035F:
cmp dword ptr [ebp-124], 4
jne .Lt_021D
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_021E
mov dword ptr [ebp-128], 24
jmp .Lt_0360
.Lt_021E:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_0360:
cmp dword ptr [ebp-128], 4
jne .Lt_0221
push dword ptr [ebp+12]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .Lt_0223
push dword ptr [ebp+16]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-60], eax
.Lt_0223:
.Lt_0222:
.Lt_0221:
.Lt_0220:
.Lt_021D:
.Lt_021C:
cmp dword ptr [ebp+8], 28
jne .Lt_0225
cmp dword ptr [ebp-60], 0
je .Lt_0227
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HSTRLITERALCONCAT@8
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_0227:
.Lt_0226:
mov eax, dword ptr [ebp-20]
and eax, -512
or eax, 17
and eax, -513
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-32], 2
mov eax, dword ptr [ebp-24]
and eax, -512
mov ebx, dword ptr [ebp-20]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-56], -1
jmp .Lt_0224
.Lt_0225:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .Lt_0228
cmp dword ptr [ebp-60], 0
je .Lt_022A
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HSTRLITERALCOMPARE@12
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_022A:
.Lt_0229:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _RTLSTRCOMPARE@16
mov dword ptr [ebp+12], eax
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp-20]
and eax, -512
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 511
or eax, ecx
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp-24]
and eax, -512
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+4]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-36], 0
jmp .Lt_0224
.Lt_0228:
jmp .Lt_01A5
.Lt_0224:
jmp .Lt_01DE
.Lt_020D:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_022C
mov dword ptr [ebp-112], 24
jmp .Lt_0361
.Lt_022C:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-112], eax
.Lt_0361:
mov eax, dword ptr [ebp-112]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_022E
mov dword ptr [ebp-116], 24
jmp .Lt_0362
.Lt_022E:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-116], eax
.Lt_0362:
mov eax, dword ptr [ebp-116]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .Lt_022B
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0230
mov dword ptr [ebp-128], 24
jmp .Lt_0364
.Lt_0230:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_0364:
cmp dword ptr [ebp-128], 4
jne .Lt_0233
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 20
je .Lt_0235
jmp .Lt_01A5
.Lt_0235:
.Lt_0234:
mov eax, dword ptr [ebp-20]
and eax, -512
or eax, 3
mov dword ptr [ebp-20], eax
jmp .Lt_0232
.Lt_0233:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .Lt_0237
jmp .Lt_01A5
.Lt_0237:
.Lt_0236:
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 3
mov dword ptr [ebp-24], eax
.Lt_0232:
.Lt_022B:
.Lt_01DE:
mov dword ptr [ebp-120], 0
mov eax, dword ptr [ebp-20]
and eax, 511
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0239
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-124], ebx
jmp .Lt_023B
.Lt_023D:
mov ebx, dword ptr [ebp-20]
and ebx, 511
mov eax, dword ptr [ebp-24]
and eax, 511
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-120], ebx
jmp .Lt_023A
.Lt_023E:
jmp .Lt_01A5
jmp .Lt_023A
.Lt_023B:
mov ebx, dword ptr [ebp-124]
add ebx, 4294967262
cmp ebx, 14
ja .Lt_023E
mov ebx, dword ptr [ebp-124]
jmp dword ptr [_.LT_023F+ebx*4-136]
_.LT_023F:
.int .Lt_023D
.int .Lt_023D
.int .Lt_023D
.int .Lt_023D
.int .Lt_023D
.int .Lt_023D
.int .Lt_023D
.int .Lt_023E
.int .Lt_023E
.int .Lt_023E
.int .Lt_023E
.int .Lt_023D
.int .Lt_023E
.int .Lt_023E
.int .Lt_023D
.Lt_023A:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HSHOULDWARNABOUTMIXEDBOOL@8
test eax, eax
je .Lt_0241
push 0
push 1
push 0
push 38
call _ERRREPORTWARN@16
.Lt_0241:
.Lt_0240:
.Lt_0239:
.Lt_0238:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [_ENV+136]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-56]
not ebx
and eax, ebx
mov ebx, dword ptr [ebp-120]
not ebx
and eax, ebx
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
je .Lt_0243
mov eax, dword ptr [_SYMB_DTYPETB+236]
mov dword ptr [ebp-48], eax
mov eax, dword ptr [_SYMB_DTYPETB+264]
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0245
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0246
mov dword ptr [ebp-124], 24
jmp .Lt_0365
.Lt_0246:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-124], eax
.Lt_0365:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
and ebx, 480
je .Lt_024A
mov dword ptr [ebp-132], 24
jmp .Lt_0366
.Lt_024A:
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0248
mov dword ptr [ebp-128], 24
jmp .Lt_0367
.Lt_0248:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_0367:
mov ebx, dword ptr [ebp-128]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-132], eax
.Lt_0366:
mov eax, dword ptr [ebp-132]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp-40], ebx
jge .Lt_024D
lea ebx, [ebp+12]
push ebx
lea ebx, [ebp-32]
push ebx
lea ebx, [ebp-20]
push ebx
push 8
call _HCONVOPERAND@16
jmp .Lt_024C
.Lt_024D:
mov ebx, dword ptr [ebp-48]
cmp ebx, dword ptr [ebp-40]
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-40]
cmp eax, dword ptr [ebp-52]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_024F
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 9
call _HCONVOPERAND@16
.Lt_024F:
.Lt_024E:
.Lt_024C:
.Lt_0245:
.Lt_0244:
cmp dword ptr [ebp-36], 0
jne .Lt_0251
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0252
mov dword ptr [ebp-124], 24
jmp .Lt_0368
.Lt_0252:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-124], eax
.Lt_0368:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
and ebx, 480
je .Lt_0256
mov dword ptr [ebp-132], 24
jmp .Lt_0369
.Lt_0256:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_0254
mov dword ptr [ebp-128], 24
jmp .Lt_036A
.Lt_0254:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_036A:
mov ebx, dword ptr [ebp-128]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-132], eax
.Lt_0369:
mov eax, dword ptr [ebp-132]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp-44], ebx
jge .Lt_0259
lea ebx, [ebp+16]
push ebx
lea ebx, [ebp-36]
push ebx
lea ebx, [ebp-24]
push ebx
push 8
call _HCONVOPERAND@16
jmp .Lt_0258
.Lt_0259:
mov ebx, dword ptr [ebp-48]
cmp ebx, dword ptr [ebp-44]
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-44]
cmp eax, dword ptr [ebp-52]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_025B
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 9
call _HCONVOPERAND@16
.Lt_025B:
.Lt_025A:
.Lt_0258:
.Lt_0251:
.Lt_0250:
.Lt_0243:
.Lt_0242:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .Lt_025D
.Lt_025F:
cmp dword ptr [ebp-32], 1
je .Lt_0261
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 16
call _HCONVOPERAND@16
.Lt_0261:
.Lt_0260:
cmp dword ptr [ebp-36], 1
je .Lt_0263
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [_IR+276]
and eax, 1
test eax, eax
je .Lt_0265
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
jmp .Lt_0264
.Lt_0265:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp ebx, 17
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-24]
cmp eax, 8
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0267
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
.Lt_0267:
.Lt_0266:
.Lt_0264:
mov dword ptr [ebp-36], 1
.Lt_0263:
.Lt_0262:
jmp .Lt_025C
.Lt_0268:
cmp dword ptr [ebp-32], 0
je .Lt_026A
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp-24]
call _HGETINTEGERORBIGGER@4
push eax
call _HCONVOPERAND@16
.Lt_026A:
.Lt_0269:
cmp dword ptr [ebp-36], 0
je .Lt_026C
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp-20]
call _HGETINTEGERORBIGGER@4
push eax
call _HCONVOPERAND@16
.Lt_026C:
.Lt_026B:
jmp .Lt_025C
.Lt_026D:
cmp dword ptr [ebp-32], 1
je .Lt_026F
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 16
call _HCONVOPERAND@16
.Lt_026F:
.Lt_026E:
cmp dword ptr [ebp-36], 1
je .Lt_0271
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 16
call _HCONVOPERAND@16
.Lt_0271:
.Lt_0270:
jmp .Lt_025C
.Lt_025D:
mov eax, dword ptr [ebp-124]
add eax, 4294967265
cmp eax, 33
ja .Lt_025C
mov eax, dword ptr [ebp-124]
jmp dword ptr [_.LT_0272+eax*4-124]
_.LT_0272:
.int .Lt_025F
.int .Lt_0268
.int .Lt_0268
.int .Lt_0268
.int .Lt_0268
.int .Lt_025C
.int .Lt_025C
.int .Lt_0268
.int .Lt_0268
.int .Lt_0268
.int .Lt_0268
.int .Lt_0268
.int .Lt_026D
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_025C
.int .Lt_026D
.Lt_025C:
mov eax, dword ptr [ebp-24]
cmp eax, dword ptr [ebp-20]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+8]
cmp esi, dword ptr [ecx+8]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0274
mov ebx, dword ptr [ebp-20]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [ebp+8]
cmp eax, 28
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
cmp ecx, 29
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
and ebx, eax
je .Lt_0276
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .Lt_0278
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-64], ebx
jmp .Lt_0277
.Lt_0278:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-64], eax
.Lt_0277:
jmp .Lt_0275
.Lt_0276:
lea eax, [ebp-64]
push eax
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
push dword ptr [ebp-20]
call _TYPEMAX@24
mov eax, dword ptr [ebp-28]
and eax, 511
mov ebx, dword ptr [ebp-20]
and ebx, 511
cmp eax, ebx
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-64]
cmp ecx, dword ptr [ebx+8]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
je .Lt_027A
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_027C
jmp .Lt_01A5
.Lt_027C:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_027D
mov dword ptr [ebp-124], 24
jmp .Lt_036B
.Lt_027D:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-124], eax
.Lt_036B:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov esi, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], esi
.Lt_027A:
.Lt_0279:
mov esi, dword ptr [ebp-28]
and esi, 511
mov eax, dword ptr [ebp-24]
and eax, 511
cmp esi, eax
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-64]
cmp ebx, dword ptr [eax+8]
setne cl
shr ecx, 1
sbb ecx, ecx
or esi, ecx
je .Lt_0280
cmp dword ptr [ebp+8], 41
je .Lt_0283
.Lt_0284:
cmp dword ptr [ebp+8], 42
jne .Lt_0282
.Lt_0283:
jmp .Lt_0281
.Lt_0282:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0287
jmp .Lt_01A5
.Lt_0287:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_0288
mov dword ptr [ebp-124], 24
jmp .Lt_036C
.Lt_0288:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-124], eax
.Lt_036C:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-36], ecx
.Lt_0285:
.Lt_0281:
.Lt_0280:
.Lt_027F:
.Lt_0275:
jmp .Lt_0273
.Lt_0274:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-64], eax
.Lt_0273:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .Lt_028B
.Lt_028D:
mov dword ptr [ebp-128], 0
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_028E
mov dword ptr [ebp-132], 24
jmp .Lt_036D
.Lt_028E:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-132], eax
.Lt_036D:
mov eax, dword ptr [ebp-132]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0291
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0292
mov dword ptr [ebp-148], 24
jmp .Lt_036E
.Lt_0292:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-148], eax
.Lt_036E:
mov eax, dword ptr [ebp-148]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
jne .Lt_0295
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .Lt_0297
push dword ptr [ebp+12]
call _ASTCONSTGETASINT64@4
cmp edx, 0
jg .Lt_0299
jl .Lt_039E
cmp eax, 0
jae .Lt_0299
.Lt_039E:
mov dword ptr [ebp-128], 35
.Lt_0299:
.Lt_0298:
jmp .Lt_0296
.Lt_0297:
mov eax, dword ptr [_ENV+196]
and eax, 32
test eax, eax
je .Lt_029B
mov dword ptr [ebp-128], 35
.Lt_029B:
.Lt_029A:
.Lt_0296:
.Lt_0295:
.Lt_0294:
.Lt_0291:
.Lt_0290:
cmp dword ptr [ebp-128], 0
jne .Lt_029C
mov eax, dword ptr [ebp+8]
cmp eax, 42
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-136], eax
jmp .Lt_036F
.Lt_029C:
mov dword ptr [ebp-136], 0
.Lt_036F:
cmp dword ptr [ebp-136], 0
je .Lt_02A0
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_029E
mov dword ptr [ebp-140], 24
jmp .Lt_0371
.Lt_029E:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-140], eax
.Lt_0371:
mov eax, dword ptr [ebp-140]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+8]
test edx, edx
setne dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-144], edx
jmp .Lt_0370
.Lt_02A0:
mov dword ptr [ebp-144], 0
.Lt_0370:
cmp dword ptr [ebp-144], 0
je .Lt_02A3
mov edx, dword ptr [ebp-24]
and edx, 480
je .Lt_02A4
mov dword ptr [ebp-148], 24
jmp .Lt_0372
.Lt_02A4:
mov edx, dword ptr [ebp-24]
and edx, 31
mov dword ptr [ebp-148], edx
.Lt_0372:
mov edx, dword ptr [ebp-148]
imul edx, 28
cmp dword ptr [_SYMB_DTYPETB+edx+8], 0
jne .Lt_02A7
mov edx, dword ptr [ebp+16]
cmp dword ptr [edx], 16
jne .Lt_02A9
push dword ptr [ebp+16]
call _ASTCONSTGETASINT64@4
cmp edx, 0
jg .Lt_02AB
jl .Lt_03A1
cmp eax, 0
jae .Lt_02AB
.Lt_03A1:
mov dword ptr [ebp-128], 35
.Lt_02AB:
.Lt_02AA:
jmp .Lt_02A8
.Lt_02A9:
mov eax, dword ptr [_ENV+196]
and eax, 32
test eax, eax
je .Lt_02AD
mov dword ptr [ebp-128], 35
.Lt_02AD:
.Lt_02AC:
.Lt_02A8:
.Lt_02A7:
.Lt_02A6:
.Lt_02A3:
.Lt_02A2:
cmp dword ptr [ebp-128], 0
je .Lt_02AF
push 0
push 1
push 0
push dword ptr [ebp-128]
call _ERRREPORTWARN@16
.Lt_02AF:
.Lt_02AE:
jmp .Lt_028A
.Lt_028B:
mov eax, dword ptr [ebp-124]
add eax, 4294967264
cmp eax, 18
ja .Lt_028A
mov eax, dword ptr [ebp-124]
jmp dword ptr [_.LT_02B0+eax*4-128]
_.LT_02B0:
.int .Lt_028D
.int .Lt_028D
.int .Lt_028A
.int .Lt_028A
.int .Lt_028A
.int .Lt_028A
.int .Lt_028A
.int .Lt_028A
.int .Lt_028A
.int .Lt_028A
.int .Lt_028D
.int .Lt_028A
.int .Lt_028A
.int .Lt_028D
.int .Lt_028D
.int .Lt_028D
.int .Lt_028D
.int .Lt_028D
.int .Lt_028D
.Lt_028A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .Lt_02B2
.Lt_02B4:
mov eax, dword ptr [ebp-28]
and eax, 511
cmp eax, 1
je .Lt_02B6
mov dword ptr [ebp-28], 8
.Lt_02B6:
.Lt_02B5:
mov dword ptr [ebp-64], 0
jmp .Lt_02B1
.Lt_02B7:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .Lt_02B9
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-132], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_02BA
mov dword ptr [ebp-128], 24
jmp .Lt_0373
.Lt_02BA:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_0373:
mov eax, dword ptr [ebp-128]
imul eax, 28
mov edx, dword ptr [_SYMB_DTYPETB+eax+4]
sal edx, 3
mov ecx, edx
mov eax, ecx
sar eax, 31
mov edx, dword ptr [ebp-132]
cmp dword ptr [edx+28], eax
jb .Lt_02BD
ja .Lt_03A2
cmp dword ptr [edx+24], ecx
jb .Lt_02BD
.Lt_03A2:
push 0
push 1
push 0
push 33
call _ERRREPORTWARN@16
push 1
push 0
push 0
push 8
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .Lt_02BE
mov dword ptr [ebp-136], 24
jmp .Lt_0375
.Lt_02BE:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-136], ecx
.Lt_0375:
mov ecx, dword ptr [ebp-136]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
sal eax, 3
dec eax
mov edx, eax
mov ecx, edx
sar ecx, 31
push ecx
push edx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+16]
push 34
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
.Lt_02BD:
.Lt_02BC:
.Lt_02B9:
.Lt_02B8:
mov eax, dword ptr [ebp-24]
and eax, 511
cmp eax, 8
je .Lt_02C1
mov eax, dword ptr [ebp-24]
and eax, 511
cmp eax, 9
je .Lt_02C3
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 8
mov dword ptr [ebp-24], eax
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-36], 0
.Lt_02C3:
.Lt_02C2:
.Lt_02C1:
.Lt_02C0:
jmp .Lt_02B1
.Lt_02B2:
mov eax, dword ptr [ebp-124]
add eax, 4294967260
cmp eax, 14
ja .Lt_02B1
mov eax, dword ptr [ebp-124]
jmp dword ptr [_.LT_02C4+eax*4-144]
_.LT_02C4:
.int .Lt_02B4
.int .Lt_02B4
.int .Lt_02B1
.int .Lt_02B1
.int .Lt_02B1
.int .Lt_02B7
.int .Lt_02B7
.int .Lt_02B1
.int .Lt_02B1
.int .Lt_02B4
.int .Lt_02B4
.int .Lt_02B4
.int .Lt_02B4
.int .Lt_02B4
.int .Lt_02B4
.Lt_02B1:
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax]
cmp edx, 16
sete dl
shr edx, 1
sbb edx, edx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
and edx, ecx
je .Lt_02C6
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call _HCONSTBOP@20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-28]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-64]
mov dword ptr [ecx+8], eax
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_02C6:
.Lt_02C5:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .Lt_02C8
mov dword ptr [ebp-124], 0
cmp dword ptr [ebp+8], 28
je .Lt_02CB
.Lt_02CC:
cmp dword ptr [ebp+8], 30
je .Lt_02CB
.Lt_02CD:
cmp dword ptr [ebp+8], 34
je .Lt_02CB
.Lt_02CE:
cmp dword ptr [ebp+8], 35
je .Lt_02CB
.Lt_02CF:
cmp dword ptr [ebp+8], 38
je .Lt_02CB
.Lt_02D0:
cmp dword ptr [ebp+8], 39
je .Lt_02CB
.Lt_02D1:
cmp dword ptr [ebp+8], 45
je .Lt_02CB
.Lt_02D2:
cmp dword ptr [ebp+8], 48
jne .Lt_02CA
.Lt_02CB:
mov dword ptr [ebp-124], -1
jmp .Lt_02C9
.Lt_02CA:
cmp dword ptr [ebp+8], 49
jne .Lt_02D3
.Lt_02D4:
mov dword ptr [ebp+8], 50
mov dword ptr [ebp-124], -1
jmp .Lt_02C9
.Lt_02D3:
cmp dword ptr [ebp+8], 46
jne .Lt_02D5
.Lt_02D6:
mov dword ptr [ebp+8], 47
mov dword ptr [ebp-124], -1
jmp .Lt_02C9
.Lt_02D5:
cmp dword ptr [ebp+8], 50
jne .Lt_02D7
.Lt_02D8:
mov dword ptr [ebp+8], 49
mov dword ptr [ebp-124], -1
jmp .Lt_02C9
.Lt_02D7:
cmp dword ptr [ebp+8], 47
jne .Lt_02D9
.Lt_02DA:
mov dword ptr [ebp+8], 46
mov dword ptr [ebp-124], -1
jmp .Lt_02C9
.Lt_02D9:
cmp dword ptr [ebp+8], 29
jne .Lt_02DB
.Lt_02DC:
inc dword ptr [_AST+232]
push dword ptr [ebp+16]
push 54
call _ASTNEWUOP@8
mov dword ptr [ebp+16], eax
dec dword ptr [_AST+232]
cmp dword ptr [ebp+16], 0
jne .Lt_02DE
mov dword ptr [ebp-4], 0
jmp .Lt_01A5
.Lt_02DE:
.Lt_02DD:
mov dword ptr [ebp+8], 28
mov dword ptr [ebp-124], -1
.Lt_02DB:
.Lt_02C9:
cmp dword ptr [ebp-124], 0
je .Lt_02E0
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-20], eax
pop dword ptr [ebp-24]
push dword ptr [ebp-32]
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-32], eax
pop dword ptr [ebp-36]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp+12], eax
pop dword ptr [ebp+16]
.Lt_02E0:
.Lt_02DF:
.Lt_02C8:
.Lt_02C7:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .Lt_02E2
cmp dword ptr [ebp+8], 48
jne .Lt_02E4
.Lt_02E5:
mov eax, dword ptr [ebp-32]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-36]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_02E7
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+28], 0
jne .Lt_02E9
cmp dword ptr [ecx+24], 0
jne .Lt_02E9
.Lt_03A7:
push dword ptr [ebp+12]
call _ASTISRELATIONALBOP@4
test eax, eax
je .Lt_02EB
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_02EB:
.Lt_02EA:
.Lt_02E9:
.Lt_02E8:
.Lt_02E7:
.Lt_02E6:
jmp .Lt_02E3
.Lt_02E4:
cmp dword ptr [ebp+8], 45
jne .Lt_02EC
.Lt_02ED:
mov eax, dword ptr [ebp-32]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-36]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_02EF
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+28], 0
jne .Lt_02F1
cmp dword ptr [ecx+24], 0
jne .Lt_02F1
.Lt_03AA:
push dword ptr [ebp+12]
call _ASTISRELATIONALBOP@4
test eax, eax
je .Lt_02F3
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
call _ASTGETINVERSELOGOP@4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+24], eax
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_02F3:
.Lt_02F2:
.Lt_02F1:
.Lt_02F0:
.Lt_02EF:
.Lt_02EE:
jmp .Lt_02E3
.Lt_02EC:
cmp dword ptr [ebp+8], 28
jne .Lt_02F4
.Lt_02F5:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-124], ecx
cmp dword ptr [ebp-124], 23
jne .Lt_02F8
.Lt_02F9:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov esi, dword ptr [eax+24]
mov edx, dword ptr [eax+28]
add dword ptr [ecx+24], esi
adc dword ptr [ecx+28], edx
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov esi, dword ptr [ebp+12]
mov dword ptr [ebp-4], esi
jmp .Lt_01A5
jmp .Lt_02F6
.Lt_02F8:
cmp dword ptr [ebp-124], 6
jne .Lt_02FA
.Lt_02FB:
mov esi, dword ptr [ebp+16]
push dword ptr [esi+28]
push dword ptr [esi+24]
mov esi, dword ptr [ebp+12]
push dword ptr [esi+64]
call _ASTINCOFFSET@12
test eax, eax
je .Lt_02FD
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_02FD:
.Lt_02FC:
.Lt_02FA:
.Lt_02F6:
jmp .Lt_02E3
.Lt_02F4:
cmp dword ptr [ebp+8], 29
jne .Lt_02FE
.Lt_02FF:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax]
mov dword ptr [ebp-124], esi
cmp dword ptr [ebp-124], 23
jne .Lt_0302
.Lt_0303:
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+24]
mov edx, dword ptr [eax+28]
sub dword ptr [esi+24], ecx
sbb dword ptr [esi+28], edx
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01A5
jmp .Lt_0300
.Lt_0302:
cmp dword ptr [ebp-124], 6
jne .Lt_0304
.Lt_0305:
mov ecx, dword ptr [ebp+16]
mov esi, dword ptr [ecx+24]
mov edx, dword ptr [ecx+28]
neg esi
adc edx, 0
neg edx
push edx
push esi
mov esi, dword ptr [ebp+12]
push dword ptr [esi+64]
call _ASTINCOFFSET@12
test eax, eax
je .Lt_0307
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_0307:
.Lt_0306:
.Lt_0304:
.Lt_0300:
inc dword ptr [_AST+232]
push dword ptr [ebp+16]
push 54
call _ASTNEWUOP@8
mov dword ptr [ebp+16], eax
dec dword ptr [_AST+232]
mov dword ptr [ebp+8], 28
jmp .Lt_02E3
.Lt_02FE:
cmp dword ptr [ebp+8], 32
je .Lt_0309
.Lt_030A:
cmp dword ptr [ebp+8], 33
jne .Lt_0308
.Lt_0309:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jne .Lt_030C
cmp dword ptr [eax+24], 0
jne .Lt_030C
.Lt_03AB:
push 0
push 0
push 100
call _ERRREPORT@12
.Lt_030C:
.Lt_030B:
jmp .Lt_02E3
.Lt_0308:
cmp dword ptr [ebp+8], 43
jne .Lt_030D
.Lt_030E:
mov eax, dword ptr [ebp+16]
fld qword ptr [eax+24]
fcomp qword ptr [_Lt_0376]
fnstsw ax
test ah, 0b01000000
jz .Lt_0310
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .Lt_0312
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+64]
mov eax, dword ptr [esi]
mov dword ptr [ebp-124], eax
cmp dword ptr [ebp-124], 17
je .Lt_0316
.Lt_0317:
cmp dword ptr [ebp-124], 18
je .Lt_0316
.Lt_0318:
cmp dword ptr [ebp-124], 19
je .Lt_0316
.Lt_0319:
cmp dword ptr [ebp-124], 20
jne .Lt_0315
.Lt_0316:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp+12], esi
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov esi, dword ptr [ebp-20]
and esi, -512
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 511
or esi, edx
mov dword ptr [ebp-20], esi
.Lt_0315:
.Lt_0313:
.Lt_0312:
.Lt_0311:
mov esi, dword ptr [ebp+12]
mov edx, dword ptr [esi]
mov dword ptr [ebp-124], edx
cmp dword ptr [ebp-124], 17
je .Lt_031D
.Lt_031E:
cmp dword ptr [ebp-124], 18
je .Lt_031D
.Lt_031F:
cmp dword ptr [ebp-124], 19
je .Lt_031D
.Lt_0320:
cmp dword ptr [ebp-124], 20
jne .Lt_031C
.Lt_031D:
push dword ptr [ebp+12]
call _ASTHASSIDEFX@4
test eax, eax
jne .Lt_0322
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 511
and edx, 480
je .Lt_0323
mov dword ptr [ebp-128], 24
jmp .Lt_0377
.Lt_0323:
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_0377:
mov eax, dword ptr [ebp-128]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
je .Lt_0326
push 0
push 0
push dword ptr [ebp+12]
push 0
push 16
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
.Lt_0326:
.Lt_0325:
push dword ptr [ebp+16]
call _ASTDELNODE@4
push dword ptr [ebp+12]
call _ASTCLONETREE@4
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+8], 30
.Lt_0322:
.Lt_0321:
.Lt_031C:
.Lt_031A:
.Lt_0310:
.Lt_030F:
.Lt_030D:
.Lt_02E3:
.Lt_02E2:
.Lt_02E1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .Lt_0328
.Lt_032A:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _RTLMATHPOW@8
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
jmp .Lt_0327
.Lt_032B:
mov eax, dword ptr [_IR+276]
and eax, 131072
test eax, eax
je .Lt_032D
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLMATHBOP@12
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_032D:
.Lt_032C:
jmp .Lt_0327
.Lt_032E:
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_032F
mov dword ptr [ebp-128], 24
jmp .Lt_0378
.Lt_032F:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_0378:
mov eax, dword ptr [ebp-128]
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], 13
je .Lt_0334
.Lt_0335:
cmp dword ptr [ebp-132], 14
jne .Lt_0333
.Lt_0334:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call _RTLMATHLONGINTDIV@20
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_0333:
.Lt_0331:
jmp .Lt_0327
.Lt_0336:
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_0337
mov dword ptr [ebp-128], 24
jmp .Lt_0379
.Lt_0337:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_0379:
mov eax, dword ptr [ebp-128]
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], 13
je .Lt_033C
.Lt_033D:
cmp dword ptr [ebp-132], 14
jne .Lt_033B
.Lt_033C:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call _RTLMATHLONGINTMOD@20
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_033B:
.Lt_0339:
jmp .Lt_0327
.Lt_033E:
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-136], 0
cmp dword ptr [ebp-32], 1
jne .Lt_0340
push 15
push dword ptr [_Lt_037A+4]
push dword ptr [_Lt_037A]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-132], eax
push 15
push dword ptr [_Lt_037A+4]
push dword ptr [_Lt_037A]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-136], eax
jmp .Lt_033F
.Lt_0340:
push 0
push dword ptr [ebp-28]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-132], eax
push 0
push dword ptr [ebp-28]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-136], eax
.Lt_033F:
cmp dword ptr [ebp+8], 36
jne .Lt_0342
mov dword ptr [ebp-128], 48
jmp .Lt_0341
.Lt_0342:
mov dword ptr [ebp-128], 45
.Lt_0341:
push 1
push 0
push dword ptr [ebp-132]
push dword ptr [ebp+12]
push dword ptr [ebp-128]
call _ASTNEWBOP@20
mov dword ptr [ebp+12], eax
push 1
push 0
push dword ptr [ebp-136]
push dword ptr [ebp+16]
push 48
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+8], 36
jne .Lt_0344
push 0
push 0
push dword ptr [ebp-28]
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWIIF@20
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
jmp .Lt_0343
.Lt_0344:
push 0
push 0
push dword ptr [ebp-28]
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWIIF@20
mov dword ptr [ebp-4], eax
jmp .Lt_01A5
.Lt_0343:
jmp .Lt_0327
.Lt_0328:
mov eax, dword ptr [ebp-124]
add eax, 4294967264
cmp eax, 32
ja .Lt_0327
mov eax, dword ptr [ebp-124]
jmp dword ptr [_.LT_0345+eax*4-128]
_.LT_0345:
.int .Lt_032E
.int .Lt_0336
.int .Lt_0327
.int .Lt_0327
.int .Lt_033E
.int .Lt_033E
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_032A
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_0327
.int .Lt_032B
.Lt_0327:
push dword ptr [ebp-64]
push dword ptr [ebp-28]
push 3
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+12]
mov dword ptr [eax+64], edx
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [edx+68], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+20]
mov dword ptr [eax+32], edx
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [edx+24], eax
cmp dword ptr [_ENV+104], 1
jne .Lt_0347
or dword ptr [ebp+24], 1
.Lt_0347:
.Lt_0346:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+24]
mov dword ptr [eax+28], edx
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.Lt_01A5:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTNEWSELFBOP@20
_ASTNEWSELFBOP@20:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_03AC:
mov dword ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDSELFBOPOVLPROC@16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_03AF
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
jmp .Lt_03AD
.Lt_03AF:
.Lt_03AE:
cmp dword ptr [ebp-16], 0
je .Lt_03B1
mov dword ptr [ebp-4], 0
jmp .Lt_03AD
.Lt_03B1:
.Lt_03B0:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
call _ASTHASSIDEFX@4
test eax, eax
je .Lt_03B3
push 0
lea eax, [ebp+12]
push eax
call _ASTMAKEREF@4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
.Lt_03B3:
.Lt_03B2:
mov eax, dword ptr [ebp+24]
or eax, 1
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+12]
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_03B5
push dword ptr [ebp-8]
call _ASTDELTREE@4
jmp .Lt_03AD
.Lt_03B5:
.Lt_03B4:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWASSIGN@12
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_03B7
push dword ptr [ebp-8]
call _ASTDELTREE@4
jmp .Lt_03AD
.Lt_03B7:
.Lt_03B6:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_03AD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTLOADBOP@4
_ASTLOADBOP@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_03B8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-8], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-12], 0
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_03BB
mov dword ptr [ebp-4], 0
jmp .Lt_03B9
.Lt_03BB:
.Lt_03BA:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 5
jne .Lt_03BD
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-8]
call _ASTUPDATECONVFD2FS@12
.Lt_03BD:
.Lt_03BC:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 5
jne .Lt_03BF
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-12]
call _ASTUPDATECONVFD2FS@12
.Lt_03BF:
.Lt_03BE:
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
call _ASTLOAD@4
mov dword ptr [ebp-24], eax
cmp dword ptr [_AST+136], 0
je .Lt_03C1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .Lt_03C3
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call dword ptr [_IR+96]
jmp .Lt_03C2
.Lt_03C3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 1
test ebx, ebx
je .Lt_03C5
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
push eax
call dword ptr [_IR+228]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-28]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
jmp .Lt_03C4
.Lt_03C5:
mov dword ptr [ebp-28], 0
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+16]
mov dword ptr [ebx+20], eax
.Lt_03C4:
push 0
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call dword ptr [_IR+96]
cmp dword ptr [ebp-28], 0
jne .Lt_03C7
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
.Lt_03C7:
.Lt_03C6:
.Lt_03C2:
.Lt_03C1:
.Lt_03C0:
push dword ptr [ebp-8]
call _ASTDELNODE@4
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.Lt_03B9:
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
_HSTRLITERALCONCAT@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_005F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-16]
mov esi, dword ptr [ebx+40]
mov ecx, dword ptr [ebx+44]
add esi, dword ptr [eax+40]
adc ecx, dword ptr [eax+44]
add esi, 4294967294
adc ecx, 4294967295
mov eax, esi
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+56]
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-40]
call _SYMBALLOCSTRCONST@8
mov dword ptr [ebp-8], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
.Lt_0060:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HWSTRLITERALCONCAT@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0063:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .Lt_0066
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call ___divdi3
add esp, 16
add eax, dword ptr [ebx+40]
adc edx, dword ptr [ebx+44]
add eax, 4294967294
adc edx, 4294967295
mov ebx, eax
push ebx
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
call _fb_StrToWstr@4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call _fb_WstrConcat@8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _SYMBALLOCWSTRCONST@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
push dword ptr [ebp-20]
call _fb_WstrDelete@4
jmp .Lt_0065
.Lt_0066:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .Lt_0069
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ___divdi3
add esp, 16
mov ebx, dword ptr [ebp-16]
add eax, dword ptr [ebx+40]
adc edx, dword ptr [ebx+44]
add eax, 4294967294
adc edx, 4294967295
mov ebx, eax
push ebx
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+56]
call _fb_StrToWstr@4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call _fb_WstrConcat@8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _SYMBALLOCWSTRCONST@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
push dword ptr [ebp-20]
call _fb_WstrDelete@4
jmp .Lt_0065
.Lt_0069:
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ___divdi3
add esp, 16
mov ecx, dword ptr [_SYMB_DTYPETB+200]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
mov ebx, eax
mov esi, edx
call ___divdi3
add esp, 16
add ebx, eax
adc esi, edx
add ebx, 4294967294
adc esi, 4294967295
mov eax, ebx
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax+56]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call _fb_WstrConcat@8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call _SYMBALLOCWSTRCONST@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-20]
call _fb_WstrDelete@4
.Lt_0065:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
.Lt_0064:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HSTRLITERALCOMPARE@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_006D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+56]
call _HUNESCAPE@4
push eax
push offset _Lt_03CA
call _DZSTRASSIGN@8
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+56]
call _HUNESCAPE@4
push eax
push offset _Lt_03CB
call _DZSTRASSIGN@8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_0070
.Lt_0072:
push 0
push dword ptr [_Lt_03CB]
push 0
push dword ptr [_Lt_03CA]
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006F
.Lt_0073:
push 0
push dword ptr [_Lt_03CB]
push 0
push dword ptr [_Lt_03CA]
call _fb_StrCompare@16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006F
.Lt_0074:
push 0
push dword ptr [_Lt_03CB]
push 0
push dword ptr [_Lt_03CA]
call _fb_StrCompare@16
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006F
.Lt_0075:
push 0
push dword ptr [_Lt_03CB]
push 0
push dword ptr [_Lt_03CA]
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006F
.Lt_0076:
push 0
push dword ptr [_Lt_03CB]
push 0
push dword ptr [_Lt_03CA]
call _fb_StrCompare@16
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006F
.Lt_0077:
push 0
push dword ptr [_Lt_03CB]
push 0
push dword ptr [_Lt_03CA]
call _fb_StrCompare@16
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006F
.Lt_0070:
mov eax, dword ptr [ebp-12]
add eax, 4294967251
cmp eax, 5
ja .Lt_006F
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0078+eax*4-180]
_.LT_0078:
.int .Lt_0072
.int .Lt_0073
.int .Lt_0074
.int .Lt_0075
.int .Lt_0077
.int .Lt_0076
.Lt_006F:
push 0
push 8
mov ebx, dword ptr [ebp-8]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call _ASTDELNODE@4
push dword ptr [ebp+12]
call _ASTDELNODE@4
.Lt_006E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_03CA,12
.balign 4
	.lcomm	_Lt_03CB,12

.section .text
.balign 16
_HWSTRLITERALCOMPARE@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0079:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .Lt_007C
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
call _HUNESCAPE@4
push eax
push offset _Lt_03D2
call _DZSTRASSIGN@8
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call _HUNESCAPEW@4
push eax
push offset _Lt_03D3
call _DWSTRASSIGN@8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .Lt_007E
.Lt_0080:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _fb_WstrCompare@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_007D
.Lt_0082:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _fb_WstrCompare@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_007D
.Lt_0084:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _fb_WstrCompare@8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_007D
.Lt_0086:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _fb_WstrCompare@8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_007D
.Lt_0088:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _fb_WstrCompare@8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_007D
.Lt_008A:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _fb_WstrCompare@8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_007D
.Lt_007E:
mov eax, dword ptr [ebp-20]
add eax, 4294967251
cmp eax, 5
ja .Lt_007D
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_008C+eax*4-180]
_.LT_008C:
.int .Lt_0080
.int .Lt_0082
.int .Lt_0084
.int .Lt_0086
.int .Lt_008A
.int .Lt_0088
.Lt_007D:
jmp .Lt_007B
.Lt_007C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .Lt_008D
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
call _HUNESCAPEW@4
push eax
push offset _Lt_03DA
call _DWSTRASSIGN@8
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call _HUNESCAPE@4
push eax
push offset _Lt_03D2
call _DZSTRASSIGN@8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .Lt_008F
.Lt_0091:
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_008E
.Lt_0093:
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_008E
.Lt_0095:
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_008E
.Lt_0097:
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_008E
.Lt_0099:
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_008E
.Lt_009B:
push dword ptr [_Lt_03D2]
call _fb_StrToWstr@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _fb_WstrDelete@4
jmp .Lt_008E
.Lt_008F:
mov eax, dword ptr [ebp-20]
add eax, 4294967251
cmp eax, 5
ja .Lt_008E
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_009D+eax*4-180]
_.LT_009D:
.int .Lt_0091
.int .Lt_0093
.int .Lt_0095
.int .Lt_0097
.int .Lt_009B
.int .Lt_0099
.Lt_008E:
jmp .Lt_007B
.Lt_008D:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _HUNESCAPEW@4
push eax
push offset _Lt_03DA
call _DWSTRASSIGN@8
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call _HUNESCAPEW@4
push eax
push offset _Lt_03D3
call _DWSTRASSIGN@8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .Lt_009F
.Lt_00A1:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009E
.Lt_00A2:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009E
.Lt_00A3:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009E
.Lt_00A4:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009E
.Lt_00A5:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009E
.Lt_00A6:
push dword ptr [_Lt_03D3]
push dword ptr [_Lt_03DA]
call _fb_WstrCompare@8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009E
.Lt_009F:
mov eax, dword ptr [ebp-20]
add eax, 4294967251
cmp eax, 5
ja .Lt_009E
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00A7+eax*4-180]
_.LT_00A7:
.int .Lt_00A1
.int .Lt_00A2
.int .Lt_00A3
.int .Lt_00A4
.int .Lt_00A6
.int .Lt_00A5
.Lt_009E:
.Lt_007B:
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call _ASTDELNODE@4
push dword ptr [ebp+12]
call _ASTDELNODE@4
.Lt_007A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_03D2,12
.balign 4
	.lcomm	_Lt_03DA,12
.balign 4
	.lcomm	_Lt_03D3,12

.section .text
.balign 16
_HTOSTR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00A8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-12], eax
jmp .Lt_00AB
.Lt_00AD:
jmp .Lt_00AA
.Lt_00AE:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _RTLTOSTR@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00B0
push 0
push 0
push 20
call _ERRREPORT@12
push 0
call _ASTNEWCONSTSTR@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_00B0:
.Lt_00AF:
jmp .Lt_00AA
.Lt_00AB:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .Lt_00AE
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00B1+eax*4-16]
_.LT_00B1:
.int .Lt_00AD
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AD
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AD
.int .Lt_00AD
.Lt_00AA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_00B3
.Lt_00B5:
jmp .Lt_00B2
.Lt_00B6:
cmp dword ptr [ebp-4], 7
je .Lt_00B8
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _RTLTOSTR@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .Lt_00B7
.Lt_00B8:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _RTLTOWSTR@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_00B7:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_00BA
push 0
push 0
push 20
call _ERRREPORT@12
push 0
call _ASTNEWCONSTSTR@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_00BA:
.Lt_00B9:
jmp .Lt_00B2
.Lt_00B3:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .Lt_00B6
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00BB+eax*4-16]
_.LT_00BB:
.int .Lt_00B5
.int .Lt_00B6
.int .Lt_00B6
.int .Lt_00B5
.int .Lt_00B6
.int .Lt_00B6
.int .Lt_00B6
.int .Lt_00B6
.int .Lt_00B6
.int .Lt_00B6
.int .Lt_00B6
.int .Lt_00B6
.int .Lt_00B6
.int .Lt_00B5
.int .Lt_00B5
.Lt_00B2:
.Lt_00A9:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCONSTBOP@20:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00BC:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00BE
mov dword ptr [ebp-8], 24
jmp .Lt_03E7
.Lt_00BE:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_03E7:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_00C1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_00C3
.Lt_00C5:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ebx+24]
fadd qword ptr [eax+24]
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+24]
jmp .Lt_00C2
.Lt_00C6:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+24]
fsub qword ptr [ebx+24]
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+24]
jmp .Lt_00C2
.Lt_00C7:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
fld qword ptr [eax+24]
fmul qword ptr [ebx+24]
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+24]
jmp .Lt_00C2
.Lt_00C8:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
fld qword ptr [ebx+24]
fdiv qword ptr [eax+24]
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+24]
jmp .Lt_00C2
.Lt_00C9:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _pow
add esp, 16
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+24]
jmp .Lt_00C2
.Lt_00CA:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+24]
fcomp qword ptr [ebx+24]
fnstsw ax
test ah, 0b01000000
setz al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_00C2
.Lt_00CB:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+24]
fcomp qword ptr [ebx+24]
push eax
fnstsw ax
test ah, 0b01000000
pop eax
setnz cl
shr ecx, 1
sbb ecx, ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
jmp .Lt_00C2
.Lt_00CC:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+24]
fcomp qword ptr [ebx+24]
fnstsw ax
test ah, 0b01000001
setz al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_00C2
.Lt_00CD:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+24]
fcomp qword ptr [ebx+24]
push eax
fnstsw ax
test ah, 0b00000001
pop eax
setnz cl
shr ecx, 1
sbb ecx, ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
jmp .Lt_00C2
.Lt_00CE:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+24]
fcomp qword ptr [ebx+24]
fnstsw ax
test ah, 0b01000001
setnz al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_00C2
.Lt_00CF:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+24]
fcomp qword ptr [ebx+24]
push eax
fnstsw ax
sahf
pop eax
setae cl
shr ecx, 1
sbb ecx, ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
jmp .Lt_00C2
.Lt_00D0:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+24]
fld qword ptr [ebx+24]
fpatan
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+24]
jmp .Lt_00C2
.Lt_00D1:
mov ebx, dword ptr [ebp+20]
fld qword ptr [ebx+24]
fcomp qword ptr [_Lt_037A]
fnstsw ax
test ah, 0b01000000
jnz .Lt_00D3
mov ebx, dword ptr [ebp+24]
fld qword ptr [ebx+24]
fcomp qword ptr [_Lt_037A]
push eax
fnstsw ax
test ah, 0b01000000
pop eax
setz bl
shr ebx, 1
sbb ebx, ebx
mov ecx, ebx
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .Lt_00D2
.Lt_00D3:
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], 0
mov dword ptr [ecx+28], 0
.Lt_00D2:
jmp .Lt_00C2
.Lt_00D4:
mov ecx, dword ptr [ebp+20]
fld qword ptr [ecx+24]
fcomp qword ptr [_Lt_037A]
fnstsw ax
test ah, 0b01000000
jnz .Lt_00D6
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], 4294967295
mov dword ptr [ecx+28], 4294967295
jmp .Lt_00D5
.Lt_00D6:
mov ecx, dword ptr [ebp+24]
fld qword ptr [ecx+24]
fcomp qword ptr [_Lt_037A]
push eax
fnstsw ax
test ah, 0b01000000
pop eax
setz cl
shr ecx, 1
sbb ecx, ecx
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], ebx
mov dword ptr [ecx+28], eax
.Lt_00D5:
jmp .Lt_00C2
.Lt_00D7:
jmp .Lt_00C2
.Lt_00C3:
mov ebx, dword ptr [ebp-16]
add ebx, 4294967268
cmp ebx, 36
ja .Lt_00D7
mov ebx, dword ptr [ebp-16]
jmp dword ptr [_.LT_00D8+ebx*4-112]
_.LT_00D8:
.int .Lt_00C5
.int .Lt_00C6
.int .Lt_00C7
.int .Lt_00C8
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D1
.int .Lt_00D4
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00C9
.int .Lt_00D7
.int .Lt_00CB
.int .Lt_00CC
.int .Lt_00CD
.int .Lt_00CA
.int .Lt_00CF
.int .Lt_00CE
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D7
.int .Lt_00D0
.Lt_00C2:
jmp .Lt_00C0
.Lt_00C1:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+4]
and ecx, 511
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_00D9
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
jmp .Lt_00DB
.Lt_00DD:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
and al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_00DA
.Lt_00DE:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
or bl, al
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .Lt_00DA
.Lt_00DF:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
xor al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_00DA
.Lt_00E0:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
xor bl, al
xor bl, 1
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .Lt_00DA
.Lt_00E1:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
xor al, 1
or al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_00DA
.Lt_00E2:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
cmp bl, al
setne bl
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], ecx
mov dword ptr [ebx+28], eax
jmp .Lt_00DA
.Lt_00E3:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+24]
or eax, dword ptr [ecx+28]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
cmp al, bl
sete al
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_00DA
.Lt_00E4:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
test bl, bl
je .Lt_00E5
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+24]
or ecx, dword ptr [ebx+28]
cmp ecx, 0
setne cl
test cl, cl
setne cl
mov byte ptr [ebp-20], cl
jmp .Lt_03E8
.Lt_00E5:
mov byte ptr [ebp-20], 0
.Lt_03E8:
movzx ebx, byte ptr [ebp-20]
neg ebx
mov ecx, ebx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ebx
mov dword ptr [eax+28], ecx
jmp .Lt_00DA
.Lt_00E7:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+24]
or ecx, dword ptr [ebx+28]
cmp ecx, 0
setne cl
test cl, cl
jne .Lt_00E8
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
or ebx, dword ptr [ecx+28]
cmp ebx, 0
setne bl
test bl, bl
setne bl
mov byte ptr [ebp-20], bl
jmp .Lt_03E9
.Lt_00E8:
mov byte ptr [ebp-20], 1
.Lt_03E9:
movzx ecx, byte ptr [ebp-20]
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
jmp .Lt_00DA
.Lt_00EA:
jmp .Lt_00DA
.Lt_00DB:
mov ecx, dword ptr [ebp-16]
add ecx, 4294967262
cmp ecx, 14
ja .Lt_00EA
mov ecx, dword ptr [ebp-16]
jmp dword ptr [_.LT_00EB+ecx*4-136]
_.LT_00EB:
.int .Lt_00DD
.int .Lt_00DE
.int .Lt_00E4
.int .Lt_00E7
.int .Lt_00DF
.int .Lt_00E0
.int .Lt_00E1
.int .Lt_00EA
.int .Lt_00EA
.int .Lt_00EA
.int .Lt_00EA
.int .Lt_00E3
.int .Lt_00EA
.int .Lt_00EA
.int .Lt_00E2
.Lt_00DA:
jmp .Lt_00C0
.Lt_00D9:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_00ED
mov dword ptr [ebp-12], 24
jmp .Lt_03EA
.Lt_00ED:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_03EA:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .Lt_00EC
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
jmp .Lt_00F0
.Lt_00F2:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
add dword ptr [ecx+24], esi
adc dword ptr [ecx+28], eax
jmp .Lt_00EF
.Lt_00F3:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
sub dword ptr [esi+24], ebx
sbb dword ptr [esi+28], ecx
jmp .Lt_00EF
.Lt_00F4:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
mov esi, dword ptr [ecx+28]
push esi
push eax
push dword ptr [ebx+28]
push dword ptr [ebx+24]
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
pop dword ptr [ebx+24]
pop dword ptr [ebx+28]
add esp, 8
jmp .Lt_00EF
.Lt_00F5:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ebx, dword ptr [esi+24]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov ecx, ebx
xchg eax, [esp+0]
mov edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .Lt_0401
mov edx, eax
xor eax, eax
.Lt_0401:
mov [esp+4], edx
xchg eax, [esp+0]
pop dword ptr [eax+24]
pop dword ptr [eax+28]
jmp .Lt_00EF
.Lt_00F6:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [eax+24]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
mov ecx, esi
mov eax, [esp+0]
mov edx, [esp+4]
shrd eax, edx, cl
sar  edx, cl
test cl, 32
jz .Lt_0402
mov eax, edx
sar edx, 31
.Lt_0402:
mov [esp+4], edx
mov [esp+0], eax
pop dword ptr [ebx+24]
pop dword ptr [ebx+28]
jmp .Lt_00EF
.Lt_00F7:
mov esi, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
and dword ptr [esi+24], ecx
and dword ptr [esi+28], eax
jmp .Lt_00EF
.Lt_00F8:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax+24]
mov esi, dword ptr [eax+28]
or dword ptr [ecx+24], ebx
or dword ptr [ecx+28], esi
jmp .Lt_00EF
.Lt_00F9:
mov ebx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [esi+24]
mov ecx, dword ptr [esi+28]
xor dword ptr [ebx+24], eax
xor dword ptr [ebx+28], ecx
jmp .Lt_00EF
.Lt_00FA:
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov esi, dword ptr [ecx+24]
mov ebx, dword ptr [ecx+28]
xor dword ptr [eax+24], esi
xor dword ptr [eax+28], ebx
not dword ptr [eax+24]
not dword ptr [eax+28]
jmp .Lt_00EF
.Lt_00FB:
mov esi, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
not dword ptr [esi+24]
not dword ptr [esi+28]
or dword ptr [esi+24], ecx
or dword ptr [esi+28], eax
jmp .Lt_00EF
.Lt_00FC:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
mov esi, dword ptr [ecx+28]
cmp esi, dword ptr [eax+28]
mov ecx, -1
jne .Lt_0403
cmp ebx, dword ptr [eax+24]
jne .Lt_0403
.Lt_0404:
xor ecx, ecx
.Lt_0403:
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], ebx
mov dword ptr [ecx+28], eax
jmp .Lt_00EF
.Lt_00FD:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
cmp ecx, dword ptr [eax+28]
mov ebx, -1
jne .Lt_0406
cmp esi, dword ptr [eax+24]
je .Lt_0405
.Lt_0406:
xor ebx, ebx
.Lt_0405:
mov esi, ebx
mov eax, esi
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], esi
mov dword ptr [ebx+28], eax
jmp .Lt_00EF
.Lt_00FE:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [esi+24]
mov ebx, dword ptr [esi+28]
cmp ebx, dword ptr [eax+28]
mov esi, -1
jg .Lt_0407
jl .Lt_0408
cmp ecx, dword ptr [eax+24]
ja .Lt_0407
.Lt_0408:
xor esi, esi
.Lt_0407:
mov ecx, esi
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
jmp .Lt_00EF
.Lt_00FF:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+24]
mov esi, dword ptr [ecx+28]
cmp esi, dword ptr [eax+28]
mov ecx, -1
jl .Lt_0409
jg .Lt_040A
cmp ebx, dword ptr [eax+24]
jb .Lt_0409
.Lt_040A:
xor ecx, ecx
.Lt_0409:
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], ebx
mov dword ptr [ecx+28], eax
jmp .Lt_00EF
.Lt_0100:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
cmp ecx, dword ptr [eax+28]
mov ebx, -1
jl .Lt_040B
jg .Lt_040C
cmp esi, dword ptr [eax+24]
jbe .Lt_040B
.Lt_040C:
xor ebx, ebx
.Lt_040B:
mov esi, ebx
mov eax, esi
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+24], esi
mov dword ptr [ebx+28], eax
jmp .Lt_00EF
.Lt_0101:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [esi+24]
mov ebx, dword ptr [esi+28]
cmp ebx, dword ptr [eax+28]
mov esi, -1
jg .Lt_040D
jl .Lt_040E
cmp ecx, dword ptr [eax+24]
jae .Lt_040D
.Lt_040E:
xor esi, esi
.Lt_040D:
mov ecx, esi
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
jmp .Lt_00EF
.Lt_0102:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+28], 0
jne .Lt_040F
cmp dword ptr [ecx+24], 0
je .Lt_0103
.Lt_040F:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 0
mov eax, -1
jne .Lt_0410
cmp dword ptr [ecx+24], 0
jne .Lt_0410
.Lt_0411:
xor eax, eax
.Lt_0410:
mov dword ptr [ebp-20], eax
jmp .Lt_03EB
.Lt_0103:
mov dword ptr [ebp-20], 0
.Lt_03EB:
mov ecx, dword ptr [ebp-20]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
jmp .Lt_00EF
.Lt_0105:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+28], 0
jne .Lt_0412
cmp dword ptr [ecx+24], 0
je .Lt_0106
.Lt_0412:
mov dword ptr [ebp-20], -1
jmp .Lt_03EC
.Lt_0106:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 0
mov eax, -1
jne .Lt_0413
cmp dword ptr [ecx+24], 0
jne .Lt_0413
.Lt_0414:
xor eax, eax
.Lt_0413:
mov dword ptr [ebp-20], eax
.Lt_03EC:
mov ecx, dword ptr [ebp-20]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
jmp .Lt_00EF
.Lt_0108:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 0
jne .Lt_010A
cmp dword ptr [ecx+24], 0
jne .Lt_010A
.Lt_0415:
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], 0
mov dword ptr [ecx+28], 0
push 0
push 0
push 100
call _ERRREPORT@12
jmp .Lt_0109
.Lt_010A:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 4294967295
mov eax, -1
jne .Lt_0417
cmp dword ptr [ecx+24], 4294967295
je .Lt_0416
.Lt_0417:
xor eax, eax
.Lt_0416:
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_010C
mov dword ptr [ebp-20], 24
jmp .Lt_03ED
.Lt_010C:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_03ED:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ecx, 8
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+28], 2147483648
mov esi, -1
jne .Lt_041A
cmp dword ptr [eax+24], 0
je .Lt_0419
.Lt_041A:
xor esi, esi
.Lt_0419:
and ecx, esi
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ecx+4]
and esi, 480
je .Lt_010E
mov dword ptr [ebp-24], 24
jmp .Lt_03EE
.Lt_010E:
mov esi, dword ptr [ebp+20]
mov ecx, dword ptr [esi+4]
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_03EE:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov esi, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp esi, 4
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+28], 4294967295
mov eax, -1
jne .Lt_041D
cmp dword ptr [ecx+24], 2147483648
je .Lt_041C
.Lt_041D:
xor eax, eax
.Lt_041C:
and esi, eax
or esi, dword ptr [ebp-32]
and esi, dword ptr [ebp-28]
je .Lt_010B
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], 0
mov dword ptr [esi+28], 0
cmp dword ptr [_AST+232], 0
jne .Lt_0111
push 0
push 1
push 0
push 25
call _ERRREPORTWARN@16
.Lt_0111:
.Lt_0110:
jmp .Lt_0109
.Lt_010B:
cmp dword ptr [ebp+8], 32
jne .Lt_0112
mov esi, dword ptr [ebp+24]
push dword ptr [esi+28]
push dword ptr [esi+24]
mov esi, dword ptr [ebp+20]
push dword ptr [esi+28]
push dword ptr [esi+24]
call ___divdi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], edx
jmp .Lt_0109
.Lt_0112:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
push dword ptr [eax+24]
call ___moddi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], edx
.Lt_0109:
jmp .Lt_00EF
.Lt_0113:
jmp .Lt_00EF
.Lt_00F0:
mov eax, dword ptr [ebp-16]
add eax, 4294967268
cmp eax, 22
ja .Lt_0113
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_0114+eax*4-112]
_.LT_0114:
.int .Lt_00F2
.int .Lt_00F3
.int .Lt_00F4
.int .Lt_0113
.int .Lt_0108
.int .Lt_0108
.int .Lt_00F7
.int .Lt_00F8
.int .Lt_0102
.int .Lt_0105
.int .Lt_00F9
.int .Lt_00FA
.int .Lt_00FB
.int .Lt_00F5
.int .Lt_00F6
.int .Lt_0113
.int .Lt_0113
.int .Lt_00FD
.int .Lt_00FE
.int .Lt_00FF
.int .Lt_00FC
.int .Lt_0101
.int .Lt_0100
.Lt_00EF:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCONVERTRAWCONSTI@12
mov dword ptr [ebp+20], eax
jmp .Lt_00C0
.Lt_00EC:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_0116
.Lt_0118:
mov eax, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov ecx, dword ptr [edx+24]
mov esi, dword ptr [edx+28]
add dword ptr [eax+24], ecx
adc dword ptr [eax+28], esi
jmp .Lt_0115
.Lt_0119:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [esi+24]
mov eax, dword ptr [esi+28]
sub dword ptr [ecx+24], edx
sbb dword ptr [ecx+28], eax
jmp .Lt_0115
.Lt_011A:
mov edx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
push ecx
push esi
push dword ptr [edx+28]
push dword ptr [edx+24]
push edx
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop edx
pop dword ptr [edx+24]
pop dword ptr [edx+28]
add esp, 8
jmp .Lt_0115
.Lt_011B:
mov esi, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov edx, dword ptr [ecx+24]
push dword ptr [esi+28]
push dword ptr [esi+24]
mov ecx, edx
mov eax, [esp+0]
xchg edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .Lt_041E
mov edx, eax
xor eax, eax
.Lt_041E:
xchg edx, [esp+4]
mov [esp+0], eax
pop dword ptr [esi+24]
pop dword ptr [esi+28]
jmp .Lt_0115
.Lt_011C:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [esi+24]
push dword ptr [edx+28]
push dword ptr [edx+24]
mov eax, [esp+0]
xchg edx, [esp+4]
shrd eax, edx, cl
shr  edx, cl
test cl, 32
jz .Lt_041F
mov eax, edx
xor edx, edx
.Lt_041F:
xchg edx, [esp+4]
mov [esp+0], eax
pop dword ptr [edx+24]
pop dword ptr [edx+28]
jmp .Lt_0115
.Lt_011D:
mov ecx, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov eax, dword ptr [edx+24]
mov esi, dword ptr [edx+28]
and dword ptr [ecx+24], eax
and dword ptr [ecx+28], esi
jmp .Lt_0115
.Lt_011E:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [esi+24]
mov ecx, dword ptr [esi+28]
or dword ptr [eax+24], edx
or dword ptr [eax+28], ecx
jmp .Lt_0115
.Lt_011F:
mov edx, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov esi, dword ptr [ecx+24]
mov eax, dword ptr [ecx+28]
xor dword ptr [edx+24], esi
xor dword ptr [edx+28], eax
jmp .Lt_0115
.Lt_0120:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [eax+24]
mov edx, dword ptr [eax+28]
xor dword ptr [esi+24], ecx
xor dword ptr [esi+28], edx
not dword ptr [esi+24]
not dword ptr [esi+28]
jmp .Lt_0115
.Lt_0121:
mov ecx, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov eax, dword ptr [edx+24]
mov esi, dword ptr [edx+28]
not dword ptr [ecx+24]
not dword ptr [ecx+28]
or dword ptr [ecx+24], eax
or dword ptr [ecx+28], esi
jmp .Lt_0115
.Lt_0122:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
cmp ecx, dword ptr [esi+28]
mov eax, -1
jne .Lt_0420
cmp edx, dword ptr [esi+24]
jne .Lt_0420
.Lt_0421:
xor eax, eax
.Lt_0420:
mov edx, eax
mov esi, edx
sar esi, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], edx
mov dword ptr [eax+28], esi
jmp .Lt_0115
.Lt_0123:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [edx+24]
mov eax, dword ptr [edx+28]
cmp eax, dword ptr [esi+28]
mov edx, -1
jne .Lt_0423
cmp ecx, dword ptr [esi+24]
je .Lt_0422
.Lt_0423:
xor edx, edx
.Lt_0422:
mov ecx, edx
mov esi, ecx
sar esi, 31
mov edx, dword ptr [ebp+20]
mov dword ptr [edx+24], ecx
mov dword ptr [edx+28], esi
jmp .Lt_0115
.Lt_0124:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
mov edx, dword ptr [ecx+28]
cmp edx, dword ptr [esi+28]
mov ecx, -1
ja .Lt_0424
jb .Lt_0425
cmp eax, dword ptr [esi+24]
ja .Lt_0424
.Lt_0425:
xor ecx, ecx
.Lt_0424:
mov eax, ecx
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], esi
jmp .Lt_0115
.Lt_0125:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
cmp ecx, dword ptr [esi+28]
mov eax, -1
jb .Lt_0426
ja .Lt_0427
cmp edx, dword ptr [esi+24]
jb .Lt_0426
.Lt_0427:
xor eax, eax
.Lt_0426:
mov edx, eax
mov esi, edx
sar esi, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], edx
mov dword ptr [eax+28], esi
jmp .Lt_0115
.Lt_0126:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [edx+24]
mov eax, dword ptr [edx+28]
cmp eax, dword ptr [esi+28]
mov edx, -1
jb .Lt_0428
ja .Lt_0429
cmp ecx, dword ptr [esi+24]
jbe .Lt_0428
.Lt_0429:
xor edx, edx
.Lt_0428:
mov ecx, edx
mov esi, ecx
sar esi, 31
mov edx, dword ptr [ebp+20]
mov dword ptr [edx+24], ecx
mov dword ptr [edx+28], esi
jmp .Lt_0115
.Lt_0127:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [ecx+24]
mov edx, dword ptr [ecx+28]
cmp edx, dword ptr [esi+28]
mov ecx, -1
ja .Lt_042A
jb .Lt_042B
cmp eax, dword ptr [esi+24]
jae .Lt_042A
.Lt_042B:
xor ecx, ecx
.Lt_042A:
mov eax, ecx
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], esi
jmp .Lt_0115
.Lt_0128:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+28], 0
jne .Lt_042C
cmp dword ptr [eax+24], 0
je .Lt_0129
.Lt_042C:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+28], 0
mov esi, -1
jne .Lt_042D
cmp dword ptr [eax+24], 0
jne .Lt_042D
.Lt_042E:
xor esi, esi
.Lt_042D:
mov dword ptr [ebp-20], esi
jmp .Lt_03F1
.Lt_0129:
mov dword ptr [ebp-20], 0
.Lt_03F1:
mov eax, dword ptr [ebp-20]
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], esi
jmp .Lt_0115
.Lt_012B:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+28], 0
jne .Lt_042F
cmp dword ptr [eax+24], 0
je .Lt_012C
.Lt_042F:
mov dword ptr [ebp-20], -1
jmp .Lt_03F2
.Lt_012C:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+28], 0
mov esi, -1
jne .Lt_0430
cmp dword ptr [eax+24], 0
jne .Lt_0430
.Lt_0431:
xor esi, esi
.Lt_0430:
mov dword ptr [ebp-20], esi
.Lt_03F2:
mov eax, dword ptr [ebp-20]
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], esi
jmp .Lt_0115
.Lt_012E:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+28], 0
jne .Lt_0130
cmp dword ptr [eax+24], 0
jne .Lt_0130
.Lt_0432:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+24], 0
mov dword ptr [eax+28], 0
push 0
push 0
push 100
call _ERRREPORT@12
jmp .Lt_012F
.Lt_0130:
cmp dword ptr [ebp+8], 32
jne .Lt_0131
mov eax, dword ptr [ebp+24]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
push dword ptr [eax+24]
call ___udivdi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], edx
jmp .Lt_012F
.Lt_0131:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
push dword ptr [eax+24]
call ___umoddi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], edx
.Lt_012F:
jmp .Lt_0115
.Lt_0132:
jmp .Lt_0115
.Lt_0116:
mov eax, dword ptr [ebp-16]
add eax, 4294967268
cmp eax, 22
ja .Lt_0132
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_0133+eax*4-112]
_.LT_0133:
.int .Lt_0118
.int .Lt_0119
.int .Lt_011A
.int .Lt_0132
.int .Lt_012E
.int .Lt_012E
.int .Lt_011D
.int .Lt_011E
.int .Lt_0128
.int .Lt_012B
.int .Lt_011F
.int .Lt_0120
.int .Lt_0121
.int .Lt_011B
.int .Lt_011C
.int .Lt_0132
.int .Lt_0132
.int .Lt_0123
.int .Lt_0124
.int .Lt_0125
.int .Lt_0122
.int .Lt_0127
.int .Lt_0126
.Lt_0115:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCONVERTRAWCONSTI@12
mov dword ptr [ebp+20], eax
.Lt_00C0:
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
.Lt_00BD:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCHECKPOINTER@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0134:
cmp dword ptr [ebp+16], 0
je .Lt_0137
mov dword ptr [ebp-4], 0
jmp .Lt_0135
jmp .Lt_0136
.Lt_0137:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_0138
mov dword ptr [ebp-8], 24
jmp .Lt_0433
.Lt_0138:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0433:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 4
je .Lt_013D
.Lt_013E:
cmp dword ptr [ebp-12], 7
jne .Lt_013C
.Lt_013D:
mov dword ptr [ebp-4], 0
jmp .Lt_0135
.Lt_013C:
.Lt_013A:
.Lt_0136:
cmp dword ptr [ebp+8], 28
je .Lt_0141
.Lt_0142:
cmp dword ptr [ebp+8], 29
jne .Lt_0140
.Lt_0141:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_013F
.Lt_0140:
cmp dword ptr [ebp+8], 36
je .Lt_0144
.Lt_0145:
cmp dword ptr [ebp+8], 37
jne .Lt_0143
.Lt_0144:
mov dword ptr [ebp-4], -1
jmp .Lt_013F
.Lt_0143:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_0146:
.Lt_013F:
.Lt_0135:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HDOPOINTERARITH@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0147:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_0149
mov dword ptr [ebp-20], 24
jmp .Lt_0436
.Lt_0149:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_0436:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
je .Lt_014C
jmp .Lt_0148
jmp .Lt_014B
.Lt_014C:
cmp dword ptr [ebp-8], 4
je .Lt_014F
.Lt_0150:
cmp dword ptr [ebp-8], 7
jne .Lt_014E
.Lt_014F:
jmp .Lt_0148
.Lt_014E:
.Lt_014D:
.Lt_014B:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
push eax
call _SYMBCALCDEREFLEN@8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jg .Lt_0152
jl .Lt_0438
cmp dword ptr [ebp-16], 0
ja .Lt_0152
.Lt_0438:
jmp .Lt_0148
.Lt_0152:
.Lt_0151:
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
je .Lt_0154
cmp dword ptr [ebp+8], 29
jne .Lt_0156
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 511
cmp edx, dword ptr [ebp-8]
setne dl
shr edx, 1
sbb edx, edx
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [ebx+8]
setne al
shr eax, 1
sbb eax, eax
or edx, eax
je .Lt_0158
jmp .Lt_0148
.Lt_0158:
.Lt_0157:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
push 0
push 0
push dword ptr [ebp+16]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 29
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+16]
push 32
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
.Lt_0156:
.Lt_0155:
jmp .Lt_0148
.Lt_0154:
.Lt_0153:
cmp dword ptr [ebp-8], 8
je .Lt_015A
push 0
push 0
push dword ptr [ebp+16]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
.Lt_015A:
.Lt_0159:
cmp dword ptr [ebp+8], 28
je .Lt_015D
.Lt_015E:
cmp dword ptr [ebp+8], 29
jne .Lt_015C
.Lt_015D:
cmp dword ptr [ebp+8], 29
jne .Lt_015F
mov eax, dword ptr [ebp+20]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .Lt_0437
.Lt_015F:
mov dword ptr [ebp-24], 0
.Lt_0437:
cmp dword ptr [ebp-24], 0
je .Lt_0162
jmp .Lt_0148
.Lt_0162:
.Lt_0161:
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+16]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
jmp .Lt_015B
.Lt_015C:
.Lt_0163:
.Lt_015B:
.Lt_0148:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCONVERTUDT_L@20:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0164:
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0167
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0169
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0165
.Lt_0169:
.Lt_0168:
.Lt_0167:
.Lt_0166:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_016B
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_016D
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0165
.Lt_016D:
.Lt_016C:
.Lt_016B:
.Lt_016A:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 0
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_016F
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
jmp .Lt_0165
.Lt_016F:
.Lt_016E:
mov dword ptr [ebp-4], 0
.Lt_0165:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCONVERTUDT_R@20:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0170:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0173
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0175
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0171
.Lt_0175:
.Lt_0174:
.Lt_0173:
.Lt_0172:
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0177
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0179
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0171
.Lt_0179:
.Lt_0178:
.Lt_0177:
.Lt_0176:
push 0
push 0
push dword ptr [ebp+16]
push 0
push 0
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_017B
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
jmp .Lt_0171
.Lt_017B:
.Lt_017A:
mov dword ptr [ebp-4], 0
.Lt_0171:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCHECKDEREFWCHARPTR@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_017C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .Lt_017F
jmp .Lt_017D
.Lt_017F:
.Lt_017E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0181
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 17
jne .Lt_0183
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_0185
jmp .Lt_017D
.Lt_0185:
.Lt_0184:
.Lt_0183:
.Lt_0182:
.Lt_0181:
.Lt_0180:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, -512
mov ebx, dword ptr [_ENV+248]
and ebx, 511
or eax, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
.Lt_017D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCONVOPERAND@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0186:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, -512
mov eax, dword ptr [ebp+8]
and eax, 511
or ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_0188
mov dword ptr [ebp-4], 24
jmp .Lt_043C
.Lt_0188:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_043C:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [eax], ecx
push 0
push 0
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx]
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
call _ASTNEWCONV@20
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.Lt_0187:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HGETINTEGERORBIGGER@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_018A:
cmp dword ptr [ebp+8], 9
je .Lt_018E
.Lt_018F:
cmp dword ptr [ebp+8], 14
jne .Lt_018D
.Lt_018E:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_018B
jmp .Lt_018C
.Lt_018D:
cmp dword ptr [ebp+8], 13
jne .Lt_0190
.Lt_0191:
call _FBIS64BIT@0
test eax, eax
jne .Lt_0193
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_018B
.Lt_0193:
.Lt_0192:
.Lt_0190:
.Lt_018C:
mov dword ptr [ebp-4], 8
.Lt_018B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HISCONSIDEREDBOOLEAN@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0194:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
je .Lt_0196
push dword ptr [ebp+8]
call _ASTISCONST0ORMINUS1@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_043D
.Lt_0196:
mov dword ptr [ebp-8], -1
.Lt_043D:
cmp dword ptr [ebp-8], 0
jne .Lt_0198
push dword ptr [ebp+8]
call _ASTISRELATIONALBOP@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .Lt_043E
.Lt_0198:
mov dword ptr [ebp-12], -1
.Lt_043E:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0195:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSHOULDWARNABOUTMIXEDBOOL@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_019A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ecx, 1
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_019D
push dword ptr [ebp+8]
call _ASTISCONST0ORMINUS1@4
not eax
test eax, eax
je .Lt_019E
push dword ptr [ebp+12]
call _HISCONSIDEREDBOOLEAN@4
not eax
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_0441
.Lt_019E:
mov dword ptr [ebp-8], 0
.Lt_0441:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_019B
.Lt_019D:
.Lt_019C:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ecx, 1
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .Lt_01A1
push dword ptr [ebp+8]
call _HISCONSIDEREDBOOLEAN@4
not eax
test eax, eax
je .Lt_01A2
push dword ptr [ebp+12]
call _ASTISCONST0ORMINUS1@4
not eax
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_0442
.Lt_01A2:
mov dword ptr [ebp-8], 0
.Lt_0442:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_019B
.Lt_01A1:
.Lt_01A0:
mov dword ptr [ebp-4], 0
.Lt_019B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 8
_Lt_0376:	.quad	0x4000000000000000
.balign 8
_Lt_037A:	.quad	0x0000000000000000
