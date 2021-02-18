	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWBOP
ASTNEWBOP:
push ebp
mov ebp, esp
sub esp, 148
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_01A3:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset SYMB
add ebx, eax
cmp dword ptr [ebx+99120], 0
je .Lt_01A6
lea ebx, [ebp-128]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDBOPOVLPROC
add esp, 16
mov dword ptr [ebp-124], eax
cmp dword ptr [ebp-124], 0
je .Lt_01A8
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-124]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
jmp .Lt_01A7
.Lt_01A8:
cmp dword ptr [ebp-128], 0
je .Lt_01AA
mov dword ptr [ebp-4], 0
jmp .Lt_01A4
.Lt_01AA:
.Lt_01A9:
.Lt_01A7:
.Lt_01A6:
.Lt_01A5:
mov dword ptr [ebp-56], 0
cmp dword ptr [ebp+8], 44
jne .Lt_01AC
.Lt_01AD:
lea eax, [ebp+16]
push eax
lea eax, [ebp+12]
push eax
call HTOSTR
add esp, 8
mov dword ptr [ebp+8], 28
jmp .Lt_01AB
.Lt_01AC:
cmp dword ptr [ebp+8], 51
jne .Lt_01AE
.Lt_01AF:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call RTLOOPISTYPEOF
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_01AE:
.Lt_01AB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01B0
mov dword ptr [ebp-72], 24
jmp .Lt_0347
.Lt_01B0:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-72], eax
.Lt_0347:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_01B2
mov dword ptr [ebp-76], 24
jmp .Lt_0348
.Lt_01B2:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-76], ebx
.Lt_0348:
mov ebx, dword ptr [ebp-76]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-68], -1
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01B4
mov dword ptr [ebp-80], 24
jmp .Lt_0349
.Lt_01B4:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-80], eax
.Lt_0349:
mov eax, dword ptr [ebp-80]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_01B6
mov dword ptr [ebp-84], 24
jmp .Lt_034A
.Lt_01B6:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-84], eax
.Lt_034A:
mov eax, dword ptr [ebp-84]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .Lt_01B9
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
je .Lt_01BB
jmp .Lt_01A4
.Lt_01BB:
.Lt_01BA:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01BC
mov dword ptr [ebp-128], 24
jmp .Lt_034C
.Lt_01BC:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_034C:
cmp dword ptr [ebp-128], 20
jne .Lt_01BF
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCONVERTUDT_L
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
jmp .Lt_01BE
.Lt_01BF:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCONVERTUDT_R
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_01BE:
.Lt_01B9:
.Lt_01B8:
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .Lt_01C1
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
je .Lt_01C3
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HDOPOINTERARITH
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
jmp .Lt_01C2
.Lt_01C3:
push dword ptr [ebp-36]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HCHECKPOINTER
add esp, 12
test eax, eax
jne .Lt_01C5
jmp .Lt_01A4
.Lt_01C5:
.Lt_01C4:
.Lt_01C2:
jmp .Lt_01C0
.Lt_01C1:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .Lt_01C6
mov eax, dword ptr [ebp+24]
and eax, 4
test eax, eax
je .Lt_01C8
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HDOPOINTERARITH
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
jmp .Lt_01C7
.Lt_01C8:
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call HCHECKPOINTER
add esp, 12
test eax, eax
jne .Lt_01CA
jmp .Lt_01A4
.Lt_01CA:
.Lt_01C9:
.Lt_01C7:
.Lt_01C6:
.Lt_01C0:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01CB
mov dword ptr [ebp-88], 24
jmp .Lt_034D
.Lt_01CB:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-88], eax
.Lt_034D:
cmp dword ptr [ebp-88], 10
jne .Lt_01CE
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 8
call HCONVOPERAND
add esp, 16
.Lt_01CE:
.Lt_01CD:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_01CF
mov dword ptr [ebp-92], 24
jmp .Lt_034E
.Lt_01CF:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-92], eax
.Lt_034E:
cmp dword ptr [ebp-92], 10
jne .Lt_01D2
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 8
call HCONVOPERAND
add esp, 16
.Lt_01D2:
.Lt_01D1:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01D3
mov dword ptr [ebp-96], 24
jmp .Lt_034F
.Lt_01D3:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-96], eax
.Lt_034F:
mov eax, dword ptr [ebp-96]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_01D5
mov dword ptr [ebp-100], 24
jmp .Lt_0350
.Lt_01D5:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-100], eax
.Lt_0350:
mov eax, dword ptr [ebp-100]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-124]
je .Lt_01D8
mov dword ptr [ebp-32], 2
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
.Lt_01D8:
.Lt_01D7:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_01D9
mov dword ptr [ebp-104], 24
jmp .Lt_0352
.Lt_01D9:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-104], eax
.Lt_0352:
mov eax, dword ptr [ebp-104]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_01DB
mov dword ptr [ebp-108], 24
jmp .Lt_0353
.Lt_01DB:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-108], eax
.Lt_0353:
mov eax, dword ptr [ebp-108]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .Lt_01DE
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
je .Lt_01E0
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_01E1
mov dword ptr [ebp-128], 24
jmp .Lt_0355
.Lt_01E1:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_0355:
cmp dword ptr [ebp-128], 7
jne .Lt_01E4
mov ebx, dword ptr [ebp-36]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-136], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_01E5
mov dword ptr [ebp-132], 24
jmp .Lt_0356
.Lt_01E5:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-132], ebx
.Lt_0356:
mov ebx, dword ptr [ebp-132]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-136]
mov dword ptr [ebp-56], ebx
jmp .Lt_01E3
.Lt_01E4:
mov ebx, dword ptr [ebp-32]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-136], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_01E7
mov dword ptr [ebp-132], 24
jmp .Lt_0358
.Lt_01E7:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-132], ebx
.Lt_0358:
mov ebx, dword ptr [ebp-132]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-136]
mov dword ptr [ebp-56], ebx
.Lt_01E3:
jmp .Lt_01DF
.Lt_01E0:
mov dword ptr [ebp-56], -1
.Lt_01DF:
cmp dword ptr [ebp-56], 0
je .Lt_01EA
mov dword ptr [ebp-60], 0
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_01EB
mov dword ptr [ebp-128], 24
jmp .Lt_035A
.Lt_01EB:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_035A:
mov ebx, dword ptr [ebp-128]
mov dword ptr [ebp-132], ebx
cmp dword ptr [ebp-132], 4
je .Lt_01F0
.Lt_01F1:
cmp dword ptr [ebp-132], 7
jne .Lt_01EF
.Lt_01F0:
push dword ptr [ebp+12]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .Lt_01F3
cmp dword ptr [ebp-24], 4
je .Lt_01F6
.Lt_01F7:
cmp dword ptr [ebp-24], 7
jne .Lt_01F5
.Lt_01F6:
push dword ptr [ebp+16]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-60], eax
jmp .Lt_01F4
.Lt_01F5:
mov dword ptr [ebp-60], 0
.Lt_01F8:
.Lt_01F4:
.Lt_01F3:
.Lt_01F2:
.Lt_01EF:
.Lt_01ED:
cmp dword ptr [ebp+8], 28
jne .Lt_01FA
cmp dword ptr [ebp-60], 0
je .Lt_01FC
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ENV+264]
je .Lt_01FE
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HWSTRLITERALCONCAT
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_01FE:
.Lt_01FD:
.Lt_01FC:
.Lt_01FB:
mov eax, dword ptr [ebp-20]
and eax, 511
mov ebx, dword ptr [ebp-24]
and ebx, 511
cmp eax, ebx
je .Lt_0200
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call RTLWSTRCONCAT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_0200:
.Lt_01FF:
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
jmp .Lt_01F9
.Lt_01FA:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .Lt_0201
cmp dword ptr [ebp-60], 0
je .Lt_0203
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HWSTRLITERALCOMPARE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_0203:
.Lt_0202:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call RTLWSTRCOMPARE
add esp, 8
mov dword ptr [ebp+12], eax
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
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
jmp .Lt_01F9
.Lt_0201:
jmp .Lt_01A4
.Lt_01F9:
jmp .Lt_01E9
.Lt_01EA:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0204
mov dword ptr [ebp-128], 24
jmp .Lt_035B
.Lt_0204:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_035B:
cmp dword ptr [ebp-128], 7
jne .Lt_0207
push dword ptr [ebp-24]
push dword ptr [ebp+16]
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
call HCHECKDEREFWCHARPTR
add esp, 16
test eax, eax
jne .Lt_0209
jmp .Lt_01A4
.Lt_0209:
.Lt_0208:
jmp .Lt_0206
.Lt_0207:
push dword ptr [ebp-20]
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call HCHECKDEREFWCHARPTR
add esp, 16
test eax, eax
jne .Lt_020B
jmp .Lt_01A4
.Lt_020B:
.Lt_020A:
.Lt_0206:
.Lt_01E9:
jmp .Lt_01DD
.Lt_01DE:
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
je .Lt_020C
mov ebx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ebx
je .Lt_020E
cmp dword ptr [ebp-32], 2
jne .Lt_0210
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_0211
mov dword ptr [ebp-128], 24
jmp .Lt_035C
.Lt_0211:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_035C:
cmp dword ptr [ebp-128], 4
je .Lt_0214
jmp .Lt_01A4
.Lt_0214:
.Lt_0213:
jmp .Lt_020F
.Lt_0210:
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0215
mov dword ptr [ebp-128], 24
jmp .Lt_035D
.Lt_0215:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_035D:
cmp dword ptr [ebp-128], 4
je .Lt_0218
jmp .Lt_01A4
.Lt_0218:
.Lt_0217:
.Lt_020F:
.Lt_020E:
.Lt_020D:
mov dword ptr [ebp-60], 0
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0219
mov dword ptr [ebp-124], 24
jmp .Lt_035E
.Lt_0219:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-124], ebx
.Lt_035E:
cmp dword ptr [ebp-124], 4
jne .Lt_021C
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_021D
mov dword ptr [ebp-128], 24
jmp .Lt_035F
.Lt_021D:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_035F:
cmp dword ptr [ebp-128], 4
jne .Lt_0220
push dword ptr [ebp+12]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .Lt_0222
push dword ptr [ebp+16]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-60], eax
.Lt_0222:
.Lt_0221:
.Lt_0220:
.Lt_021F:
.Lt_021C:
.Lt_021B:
cmp dword ptr [ebp+8], 28
jne .Lt_0224
cmp dword ptr [ebp-60], 0
je .Lt_0226
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HSTRLITERALCONCAT
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_0226:
.Lt_0225:
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
jmp .Lt_0223
.Lt_0224:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .Lt_0227
cmp dword ptr [ebp-60], 0
je .Lt_0229
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HSTRLITERALCOMPARE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_0229:
.Lt_0228:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call RTLSTRCOMPARE
add esp, 16
mov dword ptr [ebp+12], eax
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
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
jmp .Lt_0223
.Lt_0227:
jmp .Lt_01A4
.Lt_0223:
jmp .Lt_01DD
.Lt_020C:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_022B
mov dword ptr [ebp-112], 24
jmp .Lt_0360
.Lt_022B:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-112], eax
.Lt_0360:
mov eax, dword ptr [ebp-112]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_022D
mov dword ptr [ebp-116], 24
jmp .Lt_0361
.Lt_022D:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-116], eax
.Lt_0361:
mov eax, dword ptr [ebp-116]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-124]
je .Lt_022A
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_022F
mov dword ptr [ebp-128], 24
jmp .Lt_0363
.Lt_022F:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_0363:
cmp dword ptr [ebp-128], 4
jne .Lt_0232
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 20
je .Lt_0234
jmp .Lt_01A4
.Lt_0234:
.Lt_0233:
mov eax, dword ptr [ebp-20]
and eax, -512
or eax, 3
mov dword ptr [ebp-20], eax
jmp .Lt_0231
.Lt_0232:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 20
je .Lt_0236
jmp .Lt_01A4
.Lt_0236:
.Lt_0235:
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 3
mov dword ptr [ebp-24], eax
.Lt_0231:
.Lt_022A:
.Lt_01DD:
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
je .Lt_0238
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-124], ebx
jmp .Lt_023A
.Lt_023C:
mov ebx, dword ptr [ebp-20]
and ebx, 511
mov eax, dword ptr [ebp-24]
and eax, 511
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-120], ebx
jmp .Lt_0239
.Lt_023D:
jmp .Lt_01A4
jmp .Lt_0239
.Lt_023A:
mov ebx, dword ptr [ebp-124]
add ebx, 4294967262
cmp ebx, 14
ja .Lt_023D
mov ebx, dword ptr [ebp-124]
jmp dword ptr [.LT_023E+ebx*4-136]
.LT_023E:
.int .Lt_023C
.int .Lt_023C
.int .Lt_023C
.int .Lt_023C
.int .Lt_023C
.int .Lt_023C
.int .Lt_023C
.int .Lt_023D
.int .Lt_023D
.int .Lt_023D
.int .Lt_023D
.int .Lt_023C
.int .Lt_023D
.int .Lt_023D
.int .Lt_023C
.Lt_0239:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HSHOULDWARNABOUTMIXEDBOOL
add esp, 8
test eax, eax
je .Lt_0240
push 0
push 1
push 0
push 38
call ERRREPORTWARN
add esp, 16
.Lt_0240:
.Lt_023F:
.Lt_0238:
.Lt_0237:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ENV+136]
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
je .Lt_0242
mov eax, dword ptr [SYMB_DTYPETB+236]
mov dword ptr [ebp-48], eax
mov eax, dword ptr [SYMB_DTYPETB+264]
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0244
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0245
mov dword ptr [ebp-124], 24
jmp .Lt_0364
.Lt_0245:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-124], eax
.Lt_0364:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
and ebx, 480
je .Lt_0249
mov dword ptr [ebp-132], 24
jmp .Lt_0365
.Lt_0249:
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0247
mov dword ptr [ebp-128], 24
jmp .Lt_0366
.Lt_0247:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_0366:
mov ebx, dword ptr [ebp-128]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-132], eax
.Lt_0365:
mov eax, dword ptr [ebp-132]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp-40], ebx
jge .Lt_024C
lea ebx, [ebp+12]
push ebx
lea ebx, [ebp-32]
push ebx
lea ebx, [ebp-20]
push ebx
push 8
call HCONVOPERAND
add esp, 16
jmp .Lt_024B
.Lt_024C:
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
je .Lt_024E
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 9
call HCONVOPERAND
add esp, 16
.Lt_024E:
.Lt_024D:
.Lt_024B:
.Lt_0244:
.Lt_0243:
cmp dword ptr [ebp-36], 0
jne .Lt_0250
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0251
mov dword ptr [ebp-124], 24
jmp .Lt_0367
.Lt_0251:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-124], eax
.Lt_0367:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
and ebx, 480
je .Lt_0255
mov dword ptr [ebp-132], 24
jmp .Lt_0368
.Lt_0255:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_0253
mov dword ptr [ebp-128], 24
jmp .Lt_0369
.Lt_0253:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-128], ebx
.Lt_0369:
mov ebx, dword ptr [ebp-128]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-132], eax
.Lt_0368:
mov eax, dword ptr [ebp-132]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp-44], ebx
jge .Lt_0258
lea ebx, [ebp+16]
push ebx
lea ebx, [ebp-36]
push ebx
lea ebx, [ebp-24]
push ebx
push 8
call HCONVOPERAND
add esp, 16
jmp .Lt_0257
.Lt_0258:
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
je .Lt_025A
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 9
call HCONVOPERAND
add esp, 16
.Lt_025A:
.Lt_0259:
.Lt_0257:
.Lt_0250:
.Lt_024F:
.Lt_0242:
.Lt_0241:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .Lt_025C
.Lt_025E:
cmp dword ptr [ebp-32], 1
je .Lt_0260
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 16
call HCONVOPERAND
add esp, 16
.Lt_0260:
.Lt_025F:
cmp dword ptr [ebp-36], 1
je .Lt_0262
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [IR+276]
and eax, 1
test eax, eax
je .Lt_0264
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
jmp .Lt_0263
.Lt_0264:
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
je .Lt_0266
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_0266:
.Lt_0265:
.Lt_0263:
mov dword ptr [ebp-36], 1
.Lt_0262:
.Lt_0261:
jmp .Lt_025B
.Lt_0267:
cmp dword ptr [ebp-32], 0
je .Lt_0269
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp-24]
call HGETINTEGERORBIGGER
add esp, 4
push eax
call HCONVOPERAND
add esp, 16
.Lt_0269:
.Lt_0268:
cmp dword ptr [ebp-36], 0
je .Lt_026B
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp-20]
call HGETINTEGERORBIGGER
add esp, 4
push eax
call HCONVOPERAND
add esp, 16
.Lt_026B:
.Lt_026A:
jmp .Lt_025B
.Lt_026C:
cmp dword ptr [ebp-32], 1
je .Lt_026E
lea eax, [ebp+12]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
push 16
call HCONVOPERAND
add esp, 16
.Lt_026E:
.Lt_026D:
cmp dword ptr [ebp-36], 1
je .Lt_0270
lea eax, [ebp+16]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
push 16
call HCONVOPERAND
add esp, 16
.Lt_0270:
.Lt_026F:
jmp .Lt_025B
.Lt_025C:
mov eax, dword ptr [ebp-124]
add eax, 4294967265
cmp eax, 33
ja .Lt_025B
mov eax, dword ptr [ebp-124]
jmp dword ptr [.LT_0271+eax*4-124]
.LT_0271:
.int .Lt_025E
.int .Lt_0267
.int .Lt_0267
.int .Lt_0267
.int .Lt_0267
.int .Lt_025B
.int .Lt_025B
.int .Lt_0267
.int .Lt_0267
.int .Lt_0267
.int .Lt_0267
.int .Lt_0267
.int .Lt_026C
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_025B
.int .Lt_026C
.Lt_025B:
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
je .Lt_0273
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
je .Lt_0275
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .Lt_0277
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-64], ebx
jmp .Lt_0276
.Lt_0277:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-64], eax
.Lt_0276:
jmp .Lt_0274
.Lt_0275:
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
call TYPEMAX
add esp, 24
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
je .Lt_0279
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_027B
jmp .Lt_01A4
.Lt_027B:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_027C
mov dword ptr [ebp-124], 24
jmp .Lt_036A
.Lt_027C:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-124], eax
.Lt_036A:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov esi, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-32], esi
.Lt_0279:
.Lt_0278:
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
je .Lt_027F
cmp dword ptr [ebp+8], 41
je .Lt_0282
.Lt_0283:
cmp dword ptr [ebp+8], 42
jne .Lt_0281
.Lt_0282:
jmp .Lt_0280
.Lt_0281:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0286
jmp .Lt_01A4
.Lt_0286:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_0287
mov dword ptr [ebp-124], 24
jmp .Lt_036B
.Lt_0287:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-124], eax
.Lt_036B:
mov eax, dword ptr [ebp-124]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-36], ecx
.Lt_0284:
.Lt_0280:
.Lt_027F:
.Lt_027E:
.Lt_0274:
jmp .Lt_0272
.Lt_0273:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-64], eax
.Lt_0272:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .Lt_028A
.Lt_028C:
mov dword ptr [ebp-128], 0
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_028D
mov dword ptr [ebp-132], 24
jmp .Lt_036C
.Lt_028D:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-132], eax
.Lt_036C:
mov eax, dword ptr [ebp-132]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_0290
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0291
mov dword ptr [ebp-148], 24
jmp .Lt_036D
.Lt_0291:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-148], eax
.Lt_036D:
mov eax, dword ptr [ebp-148]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
jne .Lt_0294
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .Lt_0296
push dword ptr [ebp+12]
call ASTCONSTGETASINT64
add esp, 4
cmp edx, 0
jg .Lt_0298
jl .Lt_039D
cmp eax, 0
jae .Lt_0298
.Lt_039D:
mov dword ptr [ebp-128], 35
.Lt_0298:
.Lt_0297:
jmp .Lt_0295
.Lt_0296:
mov eax, dword ptr [ENV+196]
and eax, 32
test eax, eax
je .Lt_029A
mov dword ptr [ebp-128], 35
.Lt_029A:
.Lt_0299:
.Lt_0295:
.Lt_0294:
.Lt_0293:
.Lt_0290:
.Lt_028F:
cmp dword ptr [ebp-128], 0
jne .Lt_029B
mov eax, dword ptr [ebp+8]
cmp eax, 42
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-136], eax
jmp .Lt_036E
.Lt_029B:
mov dword ptr [ebp-136], 0
.Lt_036E:
cmp dword ptr [ebp-136], 0
je .Lt_029F
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_029D
mov dword ptr [ebp-140], 24
jmp .Lt_0370
.Lt_029D:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-140], eax
.Lt_0370:
mov eax, dword ptr [ebp-140]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+8]
test edx, edx
setne dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-144], edx
jmp .Lt_036F
.Lt_029F:
mov dword ptr [ebp-144], 0
.Lt_036F:
cmp dword ptr [ebp-144], 0
je .Lt_02A2
mov edx, dword ptr [ebp-24]
and edx, 480
je .Lt_02A3
mov dword ptr [ebp-148], 24
jmp .Lt_0371
.Lt_02A3:
mov edx, dword ptr [ebp-24]
and edx, 31
mov dword ptr [ebp-148], edx
.Lt_0371:
mov edx, dword ptr [ebp-148]
imul edx, 28
cmp dword ptr [SYMB_DTYPETB+edx+8], 0
jne .Lt_02A6
mov edx, dword ptr [ebp+16]
cmp dword ptr [edx], 16
jne .Lt_02A8
push dword ptr [ebp+16]
call ASTCONSTGETASINT64
add esp, 4
cmp edx, 0
jg .Lt_02AA
jl .Lt_03A0
cmp eax, 0
jae .Lt_02AA
.Lt_03A0:
mov dword ptr [ebp-128], 35
.Lt_02AA:
.Lt_02A9:
jmp .Lt_02A7
.Lt_02A8:
mov eax, dword ptr [ENV+196]
and eax, 32
test eax, eax
je .Lt_02AC
mov dword ptr [ebp-128], 35
.Lt_02AC:
.Lt_02AB:
.Lt_02A7:
.Lt_02A6:
.Lt_02A5:
.Lt_02A2:
.Lt_02A1:
cmp dword ptr [ebp-128], 0
je .Lt_02AE
push 0
push 1
push 0
push dword ptr [ebp-128]
call ERRREPORTWARN
add esp, 16
.Lt_02AE:
.Lt_02AD:
jmp .Lt_0289
.Lt_028A:
mov eax, dword ptr [ebp-124]
add eax, 4294967264
cmp eax, 18
ja .Lt_0289
mov eax, dword ptr [ebp-124]
jmp dword ptr [.LT_02AF+eax*4-128]
.LT_02AF:
.int .Lt_028C
.int .Lt_028C
.int .Lt_0289
.int .Lt_0289
.int .Lt_0289
.int .Lt_0289
.int .Lt_0289
.int .Lt_0289
.int .Lt_0289
.int .Lt_0289
.int .Lt_028C
.int .Lt_0289
.int .Lt_0289
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.int .Lt_028C
.Lt_0289:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .Lt_02B1
.Lt_02B3:
mov eax, dword ptr [ebp-28]
and eax, 511
cmp eax, 1
je .Lt_02B5
mov dword ptr [ebp-28], 8
.Lt_02B5:
.Lt_02B4:
mov dword ptr [ebp-64], 0
jmp .Lt_02B0
.Lt_02B6:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .Lt_02B8
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-132], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_02B9
mov dword ptr [ebp-128], 24
jmp .Lt_0372
.Lt_02B9:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_0372:
mov eax, dword ptr [ebp-128]
imul eax, 28
mov edx, dword ptr [SYMB_DTYPETB+eax+4]
sal edx, 3
mov ecx, edx
mov eax, ecx
sar eax, 31
mov edx, dword ptr [ebp-132]
cmp dword ptr [edx+24], eax
jb .Lt_02BC
ja .Lt_03A1
cmp dword ptr [edx+20], ecx
jb .Lt_02BC
.Lt_03A1:
push 0
push 1
push 0
push 33
call ERRREPORTWARN
add esp, 16
push 1
push 0
push 0
push 8
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .Lt_02BD
mov dword ptr [ebp-136], 24
jmp .Lt_0374
.Lt_02BD:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-136], ecx
.Lt_0374:
mov ecx, dword ptr [ebp-136]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
sal eax, 3
dec eax
mov edx, eax
mov ecx, edx
sar ecx, 31
push ecx
push edx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 34
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_02BC:
.Lt_02BB:
.Lt_02B8:
.Lt_02B7:
mov eax, dword ptr [ebp-24]
and eax, 511
cmp eax, 8
je .Lt_02C0
mov eax, dword ptr [ebp-24]
and eax, 511
cmp eax, 9
je .Lt_02C2
mov eax, dword ptr [ebp-24]
and eax, -512
or eax, 8
mov dword ptr [ebp-24], eax
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-24]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
mov dword ptr [ebp-36], 0
.Lt_02C2:
.Lt_02C1:
.Lt_02C0:
.Lt_02BF:
jmp .Lt_02B0
.Lt_02B1:
mov eax, dword ptr [ebp-124]
add eax, 4294967260
cmp eax, 14
ja .Lt_02B0
mov eax, dword ptr [ebp-124]
jmp dword ptr [.LT_02C3+eax*4-144]
.LT_02C3:
.int .Lt_02B3
.int .Lt_02B3
.int .Lt_02B0
.int .Lt_02B0
.int .Lt_02B0
.int .Lt_02B6
.int .Lt_02B6
.int .Lt_02B0
.int .Lt_02B0
.int .Lt_02B3
.int .Lt_02B3
.int .Lt_02B3
.int .Lt_02B3
.int .Lt_02B3
.int .Lt_02B3
.Lt_02B0:
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
je .Lt_02C5
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-64]
push dword ptr [ebp-28]
push dword ptr [ebp+8]
call HCONSTBOP
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-28]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-64]
mov dword ptr [ecx+8], eax
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_02C5:
.Lt_02C4:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .Lt_02C7
mov dword ptr [ebp-124], 0
cmp dword ptr [ebp+8], 28
je .Lt_02CA
.Lt_02CB:
cmp dword ptr [ebp+8], 30
je .Lt_02CA
.Lt_02CC:
cmp dword ptr [ebp+8], 34
je .Lt_02CA
.Lt_02CD:
cmp dword ptr [ebp+8], 35
je .Lt_02CA
.Lt_02CE:
cmp dword ptr [ebp+8], 38
je .Lt_02CA
.Lt_02CF:
cmp dword ptr [ebp+8], 39
je .Lt_02CA
.Lt_02D0:
cmp dword ptr [ebp+8], 45
je .Lt_02CA
.Lt_02D1:
cmp dword ptr [ebp+8], 48
jne .Lt_02C9
.Lt_02CA:
mov dword ptr [ebp-124], -1
jmp .Lt_02C8
.Lt_02C9:
cmp dword ptr [ebp+8], 49
jne .Lt_02D2
.Lt_02D3:
mov dword ptr [ebp+8], 50
mov dword ptr [ebp-124], -1
jmp .Lt_02C8
.Lt_02D2:
cmp dword ptr [ebp+8], 46
jne .Lt_02D4
.Lt_02D5:
mov dword ptr [ebp+8], 47
mov dword ptr [ebp-124], -1
jmp .Lt_02C8
.Lt_02D4:
cmp dword ptr [ebp+8], 50
jne .Lt_02D6
.Lt_02D7:
mov dword ptr [ebp+8], 49
mov dword ptr [ebp-124], -1
jmp .Lt_02C8
.Lt_02D6:
cmp dword ptr [ebp+8], 47
jne .Lt_02D8
.Lt_02D9:
mov dword ptr [ebp+8], 46
mov dword ptr [ebp-124], -1
jmp .Lt_02C8
.Lt_02D8:
cmp dword ptr [ebp+8], 29
jne .Lt_02DA
.Lt_02DB:
inc dword ptr [AST+232]
push dword ptr [ebp+16]
push 54
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp+16], eax
dec dword ptr [AST+232]
cmp dword ptr [ebp+16], 0
jne .Lt_02DD
mov dword ptr [ebp-4], 0
jmp .Lt_01A4
.Lt_02DD:
.Lt_02DC:
mov dword ptr [ebp+8], 28
mov dword ptr [ebp-124], -1
.Lt_02DA:
.Lt_02C8:
cmp dword ptr [ebp-124], 0
je .Lt_02DF
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
.Lt_02DF:
.Lt_02DE:
.Lt_02C7:
.Lt_02C6:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 16
jne .Lt_02E1
cmp dword ptr [ebp+8], 48
jne .Lt_02E3
.Lt_02E4:
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
je .Lt_02E6
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+24], 0
jne .Lt_02E8
cmp dword ptr [ecx+20], 0
jne .Lt_02E8
.Lt_03A6:
push dword ptr [ebp+12]
call ASTISRELATIONALBOP
add esp, 4
test eax, eax
je .Lt_02EA
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_02EA:
.Lt_02E9:
.Lt_02E8:
.Lt_02E7:
.Lt_02E6:
.Lt_02E5:
jmp .Lt_02E2
.Lt_02E3:
cmp dword ptr [ebp+8], 45
jne .Lt_02EB
.Lt_02EC:
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
je .Lt_02EE
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+24], 0
jne .Lt_02F0
cmp dword ptr [ecx+20], 0
jne .Lt_02F0
.Lt_03A9:
push dword ptr [ebp+12]
call ASTISRELATIONALBOP
add esp, 4
test eax, eax
je .Lt_02F2
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call ASTGETINVERSELOGOP
add esp, 4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], eax
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_02F2:
.Lt_02F1:
.Lt_02F0:
.Lt_02EF:
.Lt_02EE:
.Lt_02ED:
jmp .Lt_02E2
.Lt_02EB:
cmp dword ptr [ebp+8], 28
jne .Lt_02F3
.Lt_02F4:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-124], ecx
cmp dword ptr [ebp-124], 23
jne .Lt_02F7
.Lt_02F8:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov esi, dword ptr [eax+20]
mov edx, dword ptr [eax+24]
add dword ptr [ecx+20], esi
adc dword ptr [ecx+24], edx
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov esi, dword ptr [ebp+12]
mov dword ptr [ebp-4], esi
jmp .Lt_01A4
jmp .Lt_02F5
.Lt_02F7:
cmp dword ptr [ebp-124], 6
jne .Lt_02F9
.Lt_02FA:
mov esi, dword ptr [ebp+16]
push dword ptr [esi+24]
push dword ptr [esi+20]
mov esi, dword ptr [ebp+12]
push dword ptr [esi+56]
call ASTINCOFFSET
add esp, 12
test eax, eax
je .Lt_02FC
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_02FC:
.Lt_02FB:
.Lt_02F9:
.Lt_02F5:
jmp .Lt_02E2
.Lt_02F3:
cmp dword ptr [ebp+8], 29
jne .Lt_02FD
.Lt_02FE:
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax]
mov dword ptr [ebp-124], esi
cmp dword ptr [ebp-124], 23
jne .Lt_0301
.Lt_0302:
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+20]
mov edx, dword ptr [eax+24]
sub dword ptr [esi+20], ecx
sbb dword ptr [esi+24], edx
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .Lt_01A4
jmp .Lt_02FF
.Lt_0301:
cmp dword ptr [ebp-124], 6
jne .Lt_0303
.Lt_0304:
mov ecx, dword ptr [ebp+16]
mov esi, dword ptr [ecx+20]
mov edx, dword ptr [ecx+24]
neg esi
adc edx, 0
neg edx
push edx
push esi
mov esi, dword ptr [ebp+12]
push dword ptr [esi+56]
call ASTINCOFFSET
add esp, 12
test eax, eax
je .Lt_0306
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_0306:
.Lt_0305:
.Lt_0303:
.Lt_02FF:
inc dword ptr [AST+232]
push dword ptr [ebp+16]
push 54
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp+16], eax
dec dword ptr [AST+232]
mov dword ptr [ebp+8], 28
jmp .Lt_02E2
.Lt_02FD:
cmp dword ptr [ebp+8], 32
je .Lt_0308
.Lt_0309:
cmp dword ptr [ebp+8], 33
jne .Lt_0307
.Lt_0308:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+24], 0
jne .Lt_030B
cmp dword ptr [eax+20], 0
jne .Lt_030B
.Lt_03AA:
push 0
push 0
push 100
call ERRREPORT
add esp, 12
.Lt_030B:
.Lt_030A:
jmp .Lt_02E2
.Lt_0307:
cmp dword ptr [ebp+8], 43
jne .Lt_030C
.Lt_030D:
mov eax, dword ptr [ebp+16]
fld qword ptr [eax+20]
fcomp qword ptr [Lt_0375]
fnstsw ax
test ah, 0b01000000
jz .Lt_030F
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 5
jne .Lt_0311
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+56]
mov eax, dword ptr [esi]
mov dword ptr [ebp-124], eax
cmp dword ptr [ebp-124], 17
je .Lt_0315
.Lt_0316:
cmp dword ptr [ebp-124], 18
je .Lt_0315
.Lt_0317:
cmp dword ptr [ebp-124], 19
je .Lt_0315
.Lt_0318:
cmp dword ptr [ebp-124], 20
jne .Lt_0314
.Lt_0315:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+56]
mov dword ptr [ebp+12], esi
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov esi, dword ptr [ebp-20]
and esi, -512
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 511
or esi, edx
mov dword ptr [ebp-20], esi
.Lt_0314:
.Lt_0312:
.Lt_0311:
.Lt_0310:
mov esi, dword ptr [ebp+12]
mov edx, dword ptr [esi]
mov dword ptr [ebp-124], edx
cmp dword ptr [ebp-124], 17
je .Lt_031C
.Lt_031D:
cmp dword ptr [ebp-124], 18
je .Lt_031C
.Lt_031E:
cmp dword ptr [ebp-124], 19
je .Lt_031C
.Lt_031F:
cmp dword ptr [ebp-124], 20
jne .Lt_031B
.Lt_031C:
push dword ptr [ebp+12]
call ASTHASSIDEFX
add esp, 4
test eax, eax
jne .Lt_0321
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+4]
and edx, 511
and edx, 480
je .Lt_0322
mov dword ptr [ebp-128], 24
jmp .Lt_0376
.Lt_0322:
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_0376:
mov eax, dword ptr [ebp-128]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
je .Lt_0325
push 0
push 0
push dword ptr [ebp+12]
push 0
push 16
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
.Lt_0325:
.Lt_0324:
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+8], 30
.Lt_0321:
.Lt_0320:
.Lt_031B:
.Lt_0319:
.Lt_030F:
.Lt_030E:
.Lt_030C:
.Lt_02E2:
.Lt_02E1:
.Lt_02E0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-124], eax
jmp .Lt_0327
.Lt_0329:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call RTLMATHPOW
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
jmp .Lt_0326
.Lt_032A:
mov eax, dword ptr [IR+276]
and eax, 131072
test eax, eax
je .Lt_032C
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLMATHBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_032C:
.Lt_032B:
jmp .Lt_0326
.Lt_032D:
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_032E
mov dword ptr [ebp-128], 24
jmp .Lt_0377
.Lt_032E:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_0377:
mov eax, dword ptr [ebp-128]
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], 13
je .Lt_0333
.Lt_0334:
cmp dword ptr [ebp-132], 14
jne .Lt_0332
.Lt_0333:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call RTLMATHLONGINTDIV
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_0332:
.Lt_0330:
jmp .Lt_0326
.Lt_0335:
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_0336
mov dword ptr [ebp-128], 24
jmp .Lt_0378
.Lt_0336:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-128], eax
.Lt_0378:
mov eax, dword ptr [ebp-128]
mov dword ptr [ebp-132], eax
cmp dword ptr [ebp-132], 13
je .Lt_033B
.Lt_033C:
cmp dword ptr [ebp-132], 14
jne .Lt_033A
.Lt_033B:
push dword ptr [ebp-24]
push dword ptr [ebp+16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call RTLMATHLONGINTMOD
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_033A:
.Lt_0338:
jmp .Lt_0326
.Lt_033D:
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-136], 0
cmp dword ptr [ebp-32], 1
jne .Lt_033F
push 15
push dword ptr [Lt_0379+4]
push dword ptr [Lt_0379]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-132], eax
push 15
push dword ptr [Lt_0379+4]
push dword ptr [Lt_0379]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-136], eax
jmp .Lt_033E
.Lt_033F:
push 0
push dword ptr [ebp-28]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-132], eax
push 0
push dword ptr [ebp-28]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-136], eax
.Lt_033E:
cmp dword ptr [ebp+8], 36
jne .Lt_0341
mov dword ptr [ebp-128], 48
jmp .Lt_0340
.Lt_0341:
mov dword ptr [ebp-128], 45
.Lt_0340:
push 1
push 0
push dword ptr [ebp-132]
push dword ptr [ebp+12]
push dword ptr [ebp-128]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
push 1
push 0
push dword ptr [ebp-136]
push dword ptr [ebp+16]
push 48
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+8], 36
jne .Lt_0343
push 0
push 0
push dword ptr [ebp-28]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWIIF
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
jmp .Lt_0342
.Lt_0343:
push 0
push 0
push dword ptr [ebp-28]
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWIIF
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_0342:
jmp .Lt_0326
.Lt_0327:
mov eax, dword ptr [ebp-124]
add eax, 4294967264
cmp eax, 32
ja .Lt_0326
mov eax, dword ptr [ebp-124]
jmp dword ptr [.LT_0344+eax*4-128]
.LT_0344:
.int .Lt_032D
.int .Lt_0335
.int .Lt_0326
.int .Lt_0326
.int .Lt_033D
.int .Lt_033D
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0329
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_0326
.int .Lt_032A
.Lt_0326:
push dword ptr [ebp-64]
push dword ptr [ebp-28]
push 3
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+12]
mov dword ptr [eax+56], edx
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [edx+60], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+20]
mov dword ptr [eax+28], edx
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [edx+20], eax
cmp dword ptr [ENV+104], 1
jne .Lt_0346
or dword ptr [ebp+24], 1
.Lt_0346:
.Lt_0345:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+24]
mov dword ptr [eax+24], edx
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.Lt_01A4:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWSELFBOP
ASTNEWSELFBOP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_03AB:
mov dword ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDSELFBOPOVLPROC
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_03AE
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_03AC
.Lt_03AE:
.Lt_03AD:
cmp dword ptr [ebp-16], 0
je .Lt_03B0
mov dword ptr [ebp-4], 0
jmp .Lt_03AC
.Lt_03B0:
.Lt_03AF:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
call ASTHASSIDEFX
add esp, 4
test eax, eax
je .Lt_03B2
push 0
lea eax, [ebp+12]
push eax
call ASTMAKEREF
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_03B2:
.Lt_03B1:
mov eax, dword ptr [ebp+24]
or eax, 1
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+12]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .Lt_03B4
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
jmp .Lt_03AC
.Lt_03B4:
.Lt_03B3:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_03B6
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
jmp .Lt_03AC
.Lt_03B6:
.Lt_03B5:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_03AC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADBOP
ASTLOADBOP:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_03B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
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
je .Lt_03BA
mov dword ptr [ebp-4], 0
jmp .Lt_03B8
.Lt_03BA:
.Lt_03B9:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 5
jne .Lt_03BC
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-8]
call ASTUPDATECONVFD2FS
add esp, 12
.Lt_03BC:
.Lt_03BB:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 5
jne .Lt_03BE
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-12]
call ASTUPDATECONVFD2FS
add esp, 12
.Lt_03BE:
.Lt_03BD:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [AST+136], 0
je .Lt_03C0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
je .Lt_03C2
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call dword ptr [IR+96]
add esp, 20
jmp .Lt_03C1
.Lt_03C2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
and ebx, 1
test ebx, ebx
je .Lt_03C4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
push eax
call dword ptr [IR+228]
add esp, 8
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-28]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
jmp .Lt_03C3
.Lt_03C4:
mov dword ptr [ebp-28], 0
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+16]
mov dword ptr [ebx+20], eax
.Lt_03C3:
push 0
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call dword ptr [IR+96]
add esp, 20
cmp dword ptr [ebp-28], 0
jne .Lt_03C6
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
.Lt_03C6:
.Lt_03C5:
.Lt_03C1:
.Lt_03C0:
.Lt_03BF:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.Lt_03B8:
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
HSTRLITERALCONCAT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_005E:
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
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call SYMBALLOCSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HWSTRLITERALCONCAT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0062:
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
je .Lt_0065
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call __divdi3
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
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call SYMBALLOCWSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
push dword ptr [ebp-20]
call fb_WstrDelete
add esp, 4
jmp .Lt_0064
.Lt_0065:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .Lt_0068
mov eax, dword ptr [SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+44]
push dword ptr [eax+40]
call __divdi3
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
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call SYMBALLOCWSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
push dword ptr [ebp-20]
call fb_WstrDelete
add esp, 4
jmp .Lt_0064
.Lt_0068:
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call __divdi3
add esp, 16
mov ecx, dword ptr [SYMB_DTYPETB+200]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
mov ebx, eax
mov esi, edx
call __divdi3
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
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call SYMBALLOCWSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-20]
call fb_WstrDelete
add esp, 4
.Lt_0064:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.Lt_0063:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSTRLITERALCOMPARE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_006C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+56]
call HUNESCAPE
add esp, 4
push eax
push offset Lt_03C9
call DZSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+56]
call HUNESCAPE
add esp, 4
push eax
push offset Lt_03CA
call DZSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_006F
.Lt_0071:
push 0
push dword ptr [Lt_03CA]
push 0
push dword ptr [Lt_03C9]
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006E
.Lt_0072:
push 0
push dword ptr [Lt_03CA]
push 0
push dword ptr [Lt_03C9]
call fb_StrCompare
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006E
.Lt_0073:
push 0
push dword ptr [Lt_03CA]
push 0
push dword ptr [Lt_03C9]
call fb_StrCompare
add esp, 16
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006E
.Lt_0074:
push 0
push dword ptr [Lt_03CA]
push 0
push dword ptr [Lt_03C9]
call fb_StrCompare
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006E
.Lt_0075:
push 0
push dword ptr [Lt_03CA]
push 0
push dword ptr [Lt_03C9]
call fb_StrCompare
add esp, 16
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006E
.Lt_0076:
push 0
push dword ptr [Lt_03CA]
push 0
push dword ptr [Lt_03C9]
call fb_StrCompare
add esp, 16
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_006E
.Lt_006F:
mov eax, dword ptr [ebp-12]
add eax, 4294967251
cmp eax, 5
ja .Lt_006E
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0077+eax*4-180]
.LT_0077:
.int .Lt_0071
.int .Lt_0072
.int .Lt_0073
.int .Lt_0074
.int .Lt_0076
.int .Lt_0075
.Lt_006E:
push 0
push 8
mov ebx, dword ptr [ebp-8]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
.Lt_006D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_03C9,12
.balign 4
	.lcomm	Lt_03CA,12

.section .text
.balign 16
HWSTRLITERALCOMPARE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0078:
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
je .Lt_007B
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
call HUNESCAPE
add esp, 4
push eax
push offset Lt_03D1
call DZSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 4
push eax
push offset Lt_03D2
call DWSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .Lt_007D
.Lt_007F:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call fb_WstrCompare
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_007C
.Lt_0081:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call fb_WstrCompare
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_007C
.Lt_0083:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call fb_WstrCompare
add esp, 8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_007C
.Lt_0085:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call fb_WstrCompare
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_007C
.Lt_0087:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call fb_WstrCompare
add esp, 8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_007C
.Lt_0089:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call fb_WstrCompare
add esp, 8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_007C
.Lt_007D:
mov eax, dword ptr [ebp-20]
add eax, 4294967251
cmp eax, 5
ja .Lt_007C
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_008B+eax*4-180]
.LT_008B:
.int .Lt_007F
.int .Lt_0081
.int .Lt_0083
.int .Lt_0085
.int .Lt_0089
.int .Lt_0087
.Lt_007C:
jmp .Lt_007A
.Lt_007B:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .Lt_008C
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+56]
call HUNESCAPEW
add esp, 4
push eax
push offset Lt_03D9
call DWSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call HUNESCAPE
add esp, 4
push eax
push offset Lt_03D1
call DZSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .Lt_008E
.Lt_0090:
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_008D
.Lt_0092:
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_008D
.Lt_0094:
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_008D
.Lt_0096:
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_008D
.Lt_0098:
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_008D
.Lt_009A:
push dword ptr [Lt_03D1]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 4
jmp .Lt_008D
.Lt_008E:
mov eax, dword ptr [ebp-20]
add eax, 4294967251
cmp eax, 5
ja .Lt_008D
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_009C+eax*4-180]
.LT_009C:
.int .Lt_0090
.int .Lt_0092
.int .Lt_0094
.int .Lt_0096
.int .Lt_009A
.int .Lt_0098
.Lt_008D:
jmp .Lt_007A
.Lt_008C:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 4
push eax
push offset Lt_03D9
call DWSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 4
push eax
push offset Lt_03D2
call DWSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .Lt_009E
.Lt_00A0:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009D
.Lt_00A1:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009D
.Lt_00A2:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009D
.Lt_00A3:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009D
.Lt_00A4:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009D
.Lt_00A5:
push dword ptr [Lt_03D2]
push dword ptr [Lt_03D9]
call fb_WstrCompare
add esp, 8
test eax, eax
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_009D
.Lt_009E:
mov eax, dword ptr [ebp-20]
add eax, 4294967251
cmp eax, 5
ja .Lt_009D
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00A6+eax*4-180]
.LT_00A6:
.int .Lt_00A0
.int .Lt_00A1
.int .Lt_00A2
.int .Lt_00A3
.int .Lt_00A5
.int .Lt_00A4
.Lt_009D:
.Lt_007A:
push 0
push 8
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
.Lt_0079:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_03D1,12
.balign 4
	.lcomm	Lt_03D9,12
.balign 4
	.lcomm	Lt_03D2,12

.section .text
.balign 16
HTOSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00A7:
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
jmp .Lt_00AA
.Lt_00AC:
jmp .Lt_00A9
.Lt_00AD:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call RTLTOSTR
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00AF
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
call ASTNEWCONSTSTR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_00AF:
.Lt_00AE:
jmp .Lt_00A9
.Lt_00AA:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .Lt_00AD
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00B0+eax*4-16]
.LT_00B0:
.int .Lt_00AC
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AC
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AC
.int .Lt_00AC
.Lt_00A9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_00B2
.Lt_00B4:
jmp .Lt_00B1
.Lt_00B5:
cmp dword ptr [ebp-4], 7
je .Lt_00B7
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call RTLTOSTR
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .Lt_00B6
.Lt_00B7:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call RTLTOWSTR
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_00B6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_00B9
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
call ASTNEWCONSTSTR
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_00B9:
.Lt_00B8:
jmp .Lt_00B1
.Lt_00B2:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .Lt_00B5
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00BA+eax*4-16]
.LT_00BA:
.int .Lt_00B4
.int .Lt_00B5
.int .Lt_00B5
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
.Lt_00A8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCONSTBOP:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00BB:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00BD
mov dword ptr [ebp-8], 24
jmp .Lt_03E6
.Lt_00BD:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_03E6:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_00C0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_00C2
.Lt_00C4:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ebx+20]
fadd qword ptr [eax+20]
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+20]
jmp .Lt_00C1
.Lt_00C5:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+20]
fsub qword ptr [ebx+20]
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+20]
jmp .Lt_00C1
.Lt_00C6:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
fld qword ptr [eax+20]
fmul qword ptr [ebx+20]
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+20]
jmp .Lt_00C1
.Lt_00C7:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
fld qword ptr [ebx+20]
fdiv qword ptr [eax+20]
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+20]
jmp .Lt_00C1
.Lt_00C8:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call pow
add esp, 16
mov eax, dword ptr [ebp+20]
fstp qword ptr [eax+20]
jmp .Lt_00C1
.Lt_00C9:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+20]
fcomp qword ptr [ebx+20]
fnstsw ax
test ah, 0b01000000
setz al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_00C1
.Lt_00CA:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+20]
fcomp qword ptr [ebx+20]
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
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .Lt_00C1
.Lt_00CB:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+20]
fcomp qword ptr [ebx+20]
fnstsw ax
test ah, 0b01000001
setz al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_00C1
.Lt_00CC:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+20]
fcomp qword ptr [ebx+20]
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
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .Lt_00C1
.Lt_00CD:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+20]
fcomp qword ptr [ebx+20]
fnstsw ax
test ah, 0b01000001
setnz al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_00C1
.Lt_00CE:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [ecx+20]
fcomp qword ptr [ebx+20]
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
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
jmp .Lt_00C1
.Lt_00CF:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
fld qword ptr [eax+20]
fld qword ptr [ebx+20]
fpatan
mov ebx, dword ptr [ebp+20]
fstp qword ptr [ebx+20]
jmp .Lt_00C1
.Lt_00D0:
mov ebx, dword ptr [ebp+20]
fld qword ptr [ebx+20]
fcomp qword ptr [Lt_0379]
fnstsw ax
test ah, 0b01000000
jnz .Lt_00D2
mov ebx, dword ptr [ebp+24]
fld qword ptr [ebx+20]
fcomp qword ptr [Lt_0379]
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
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .Lt_00D1
.Lt_00D2:
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], 0
mov dword ptr [ecx+24], 0
.Lt_00D1:
jmp .Lt_00C1
.Lt_00D3:
mov ecx, dword ptr [ebp+20]
fld qword ptr [ecx+20]
fcomp qword ptr [Lt_0379]
fnstsw ax
test ah, 0b01000000
jnz .Lt_00D5
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], 4294967295
mov dword ptr [ecx+24], 4294967295
jmp .Lt_00D4
.Lt_00D5:
mov ecx, dword ptr [ebp+24]
fld qword ptr [ecx+20]
fcomp qword ptr [Lt_0379]
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
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
.Lt_00D4:
jmp .Lt_00C1
.Lt_00D6:
jmp .Lt_00C1
.Lt_00C2:
mov ebx, dword ptr [ebp-16]
add ebx, 4294967268
cmp ebx, 36
ja .Lt_00D6
mov ebx, dword ptr [ebp-16]
jmp dword ptr [.LT_00D7+ebx*4-112]
.LT_00D7:
.int .Lt_00C4
.int .Lt_00C5
.int .Lt_00C6
.int .Lt_00C7
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D0
.int .Lt_00D3
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00C8
.int .Lt_00D6
.int .Lt_00CA
.int .Lt_00CB
.int .Lt_00CC
.int .Lt_00C9
.int .Lt_00CE
.int .Lt_00CD
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00CF
.Lt_00C1:
jmp .Lt_00BF
.Lt_00C0:
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
je .Lt_00D8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
jmp .Lt_00DA
.Lt_00DC:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
and al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_00D9
.Lt_00DD:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
or bl, al
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .Lt_00D9
.Lt_00DE:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
xor al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_00D9
.Lt_00DF:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
xor bl, al
xor bl, 1
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .Lt_00D9
.Lt_00E0:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
xor al, 1
or al, bl
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_00D9
.Lt_00E1:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
cmp bl, al
setne bl
movzx ecx, bl
neg ecx
mov eax, ecx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], ecx
mov dword ptr [ebx+24], eax
jmp .Lt_00D9
.Lt_00E2:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+20]
or eax, dword ptr [ecx+24]
cmp eax, 0
setne al
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
cmp al, bl
sete al
movzx ecx, al
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_00D9
.Lt_00E3:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
test bl, bl
je .Lt_00E4
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+20]
or ecx, dword ptr [ebx+24]
cmp ecx, 0
setne cl
test cl, cl
setne cl
mov byte ptr [ebp-20], cl
jmp .Lt_03E7
.Lt_00E4:
mov byte ptr [ebp-20], 0
.Lt_03E7:
movzx ebx, byte ptr [ebp-20]
neg ebx
mov ecx, ebx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
mov dword ptr [eax+24], ecx
jmp .Lt_00D9
.Lt_00E6:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+20]
or ecx, dword ptr [ebx+24]
cmp ecx, 0
setne cl
test cl, cl
jne .Lt_00E7
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
or ebx, dword ptr [ecx+24]
cmp ebx, 0
setne bl
test bl, bl
setne bl
mov byte ptr [ebp-20], bl
jmp .Lt_03E8
.Lt_00E7:
mov byte ptr [ebp-20], 1
.Lt_03E8:
movzx ecx, byte ptr [ebp-20]
neg ecx
mov ebx, ecx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
jmp .Lt_00D9
.Lt_00E9:
jmp .Lt_00D9
.Lt_00DA:
mov ecx, dword ptr [ebp-16]
add ecx, 4294967262
cmp ecx, 14
ja .Lt_00E9
mov ecx, dword ptr [ebp-16]
jmp dword ptr [.LT_00EA+ecx*4-136]
.LT_00EA:
.int .Lt_00DC
.int .Lt_00DD
.int .Lt_00E3
.int .Lt_00E6
.int .Lt_00DE
.int .Lt_00DF
.int .Lt_00E0
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E2
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E1
.Lt_00D9:
jmp .Lt_00BF
.Lt_00D8:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_00EC
mov dword ptr [ebp-12], 24
jmp .Lt_03E9
.Lt_00EC:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_03E9:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .Lt_00EB
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
jmp .Lt_00EF
.Lt_00F1:
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
add dword ptr [ecx+20], esi
adc dword ptr [ecx+24], eax
jmp .Lt_00EE
.Lt_00F2:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
sub dword ptr [esi+20], ebx
sbb dword ptr [esi+24], ecx
jmp .Lt_00EE
.Lt_00F3:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
mov esi, dword ptr [ecx+24]
push esi
push eax
push dword ptr [ebx+24]
push dword ptr [ebx+20]
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
pop dword ptr [ebx+20]
pop dword ptr [ebx+24]
add esp, 8
jmp .Lt_00EE
.Lt_00F4:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ebx, dword ptr [esi+20]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov ecx, ebx
xchg eax, [esp+0]
mov edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .Lt_0400
mov edx, eax
xor eax, eax
.Lt_0400:
mov [esp+4], edx
xchg eax, [esp+0]
pop dword ptr [eax+20]
pop dword ptr [eax+24]
jmp .Lt_00EE
.Lt_00F5:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [eax+20]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
mov ecx, esi
mov eax, [esp+0]
mov edx, [esp+4]
shrd eax, edx, cl
sar  edx, cl
test cl, 32
jz .Lt_0401
mov eax, edx
sar edx, 31
.Lt_0401:
mov [esp+4], edx
mov [esp+0], eax
pop dword ptr [ebx+20]
pop dword ptr [ebx+24]
jmp .Lt_00EE
.Lt_00F6:
mov esi, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
and dword ptr [esi+20], ecx
and dword ptr [esi+24], eax
jmp .Lt_00EE
.Lt_00F7:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax+20]
mov esi, dword ptr [eax+24]
or dword ptr [ecx+20], ebx
or dword ptr [ecx+24], esi
jmp .Lt_00EE
.Lt_00F8:
mov ebx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [esi+20]
mov ecx, dword ptr [esi+24]
xor dword ptr [ebx+20], eax
xor dword ptr [ebx+24], ecx
jmp .Lt_00EE
.Lt_00F9:
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov esi, dword ptr [ecx+20]
mov ebx, dword ptr [ecx+24]
xor dword ptr [eax+20], esi
xor dword ptr [eax+24], ebx
not dword ptr [eax+20]
not dword ptr [eax+24]
jmp .Lt_00EE
.Lt_00FA:
mov esi, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
not dword ptr [esi+20]
not dword ptr [esi+24]
or dword ptr [esi+20], ecx
or dword ptr [esi+24], eax
jmp .Lt_00EE
.Lt_00FB:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
mov esi, dword ptr [ecx+24]
cmp esi, dword ptr [eax+24]
mov ecx, -1
jne .Lt_0402
cmp ebx, dword ptr [eax+20]
jne .Lt_0402
.Lt_0403:
xor ecx, ecx
.Lt_0402:
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .Lt_00EE
.Lt_00FC:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
cmp ecx, dword ptr [eax+24]
mov ebx, -1
jne .Lt_0405
cmp esi, dword ptr [eax+20]
je .Lt_0404
.Lt_0405:
xor ebx, ebx
.Lt_0404:
mov esi, ebx
mov eax, esi
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
jmp .Lt_00EE
.Lt_00FD:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [esi+20]
mov ebx, dword ptr [esi+24]
cmp ebx, dword ptr [eax+24]
mov esi, -1
jg .Lt_0406
jl .Lt_0407
cmp ecx, dword ptr [eax+20]
ja .Lt_0406
.Lt_0407:
xor esi, esi
.Lt_0406:
mov ecx, esi
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
jmp .Lt_00EE
.Lt_00FE:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [ecx+20]
mov esi, dword ptr [ecx+24]
cmp esi, dword ptr [eax+24]
mov ecx, -1
jl .Lt_0408
jg .Lt_0409
cmp ebx, dword ptr [eax+20]
jb .Lt_0408
.Lt_0409:
xor ecx, ecx
.Lt_0408:
mov ebx, ecx
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
jmp .Lt_00EE
.Lt_00FF:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
cmp ecx, dword ptr [eax+24]
mov ebx, -1
jl .Lt_040A
jg .Lt_040B
cmp esi, dword ptr [eax+20]
jbe .Lt_040A
.Lt_040B:
xor ebx, ebx
.Lt_040A:
mov esi, ebx
mov eax, esi
sar eax, 31
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
jmp .Lt_00EE
.Lt_0100:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [esi+20]
mov ebx, dword ptr [esi+24]
cmp ebx, dword ptr [eax+24]
mov esi, -1
jg .Lt_040C
jl .Lt_040D
cmp ecx, dword ptr [eax+20]
jae .Lt_040C
.Lt_040D:
xor esi, esi
.Lt_040C:
mov ecx, esi
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
jmp .Lt_00EE
.Lt_0101:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+24], 0
jne .Lt_040E
cmp dword ptr [ecx+20], 0
je .Lt_0102
.Lt_040E:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+24], 0
mov eax, -1
jne .Lt_040F
cmp dword ptr [ecx+20], 0
jne .Lt_040F
.Lt_0410:
xor eax, eax
.Lt_040F:
mov dword ptr [ebp-20], eax
jmp .Lt_03EA
.Lt_0102:
mov dword ptr [ebp-20], 0
.Lt_03EA:
mov ecx, dword ptr [ebp-20]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
jmp .Lt_00EE
.Lt_0104:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+24], 0
jne .Lt_0411
cmp dword ptr [ecx+20], 0
je .Lt_0105
.Lt_0411:
mov dword ptr [ebp-20], -1
jmp .Lt_03EB
.Lt_0105:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+24], 0
mov eax, -1
jne .Lt_0412
cmp dword ptr [ecx+20], 0
jne .Lt_0412
.Lt_0413:
xor eax, eax
.Lt_0412:
mov dword ptr [ebp-20], eax
.Lt_03EB:
mov ecx, dword ptr [ebp-20]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], ecx
mov dword ptr [esi+24], eax
jmp .Lt_00EE
.Lt_0107:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+24], 0
jne .Lt_0109
cmp dword ptr [ecx+20], 0
jne .Lt_0109
.Lt_0414:
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], 0
mov dword ptr [ecx+24], 0
push 0
push 0
push 100
call ERRREPORT
add esp, 12
jmp .Lt_0108
.Lt_0109:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+24], 4294967295
mov eax, -1
jne .Lt_0416
cmp dword ptr [ecx+20], 4294967295
je .Lt_0415
.Lt_0416:
xor eax, eax
.Lt_0415:
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_010B
mov dword ptr [ebp-20], 24
jmp .Lt_03EC
.Lt_010B:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_03EC:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ecx, 8
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+24], 2147483648
mov esi, -1
jne .Lt_0419
cmp dword ptr [eax+20], 0
je .Lt_0418
.Lt_0419:
xor esi, esi
.Lt_0418:
and ecx, esi
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ecx+4]
and esi, 480
je .Lt_010D
mov dword ptr [ebp-24], 24
jmp .Lt_03ED
.Lt_010D:
mov esi, dword ptr [ebp+20]
mov ecx, dword ptr [esi+4]
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_03ED:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov esi, dword ptr [SYMB_DTYPETB+ecx+4]
cmp esi, 4
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+24], 4294967295
mov eax, -1
jne .Lt_041C
cmp dword ptr [ecx+20], 2147483648
je .Lt_041B
.Lt_041C:
xor eax, eax
.Lt_041B:
and esi, eax
or esi, dword ptr [ebp-32]
and esi, dword ptr [ebp-28]
je .Lt_010A
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], 0
mov dword ptr [esi+24], 0
cmp dword ptr [AST+232], 0
jne .Lt_0110
push 0
push 1
push 0
push 25
call ERRREPORTWARN
add esp, 16
.Lt_0110:
.Lt_010F:
jmp .Lt_0108
.Lt_010A:
cmp dword ptr [ebp+8], 32
jne .Lt_0111
mov esi, dword ptr [ebp+24]
push dword ptr [esi+24]
push dword ptr [esi+20]
mov esi, dword ptr [ebp+20]
push dword ptr [esi+24]
push dword ptr [esi+20]
call __divdi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], eax
mov dword ptr [esi+24], edx
jmp .Lt_0108
.Lt_0111:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call __moddi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], eax
mov dword ptr [esi+24], edx
.Lt_0108:
jmp .Lt_00EE
.Lt_0112:
jmp .Lt_00EE
.Lt_00EF:
mov eax, dword ptr [ebp-16]
add eax, 4294967268
cmp eax, 22
ja .Lt_0112
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_0113+eax*4-112]
.LT_0113:
.int .Lt_00F1
.int .Lt_00F2
.int .Lt_00F3
.int .Lt_0112
.int .Lt_0107
.int .Lt_0107
.int .Lt_00F6
.int .Lt_00F7
.int .Lt_0101
.int .Lt_0104
.int .Lt_00F8
.int .Lt_00F9
.int .Lt_00FA
.int .Lt_00F4
.int .Lt_00F5
.int .Lt_0112
.int .Lt_0112
.int .Lt_00FC
.int .Lt_00FD
.int .Lt_00FE
.int .Lt_00FB
.int .Lt_0100
.int .Lt_00FF
.Lt_00EE:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCONVERTRAWCONSTI
add esp, 12
mov dword ptr [ebp+20], eax
jmp .Lt_00BF
.Lt_00EB:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_0115
.Lt_0117:
mov eax, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov ecx, dword ptr [edx+20]
mov esi, dword ptr [edx+24]
add dword ptr [eax+20], ecx
adc dword ptr [eax+24], esi
jmp .Lt_0114
.Lt_0118:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [esi+20]
mov eax, dword ptr [esi+24]
sub dword ptr [ecx+20], edx
sbb dword ptr [ecx+24], eax
jmp .Lt_0114
.Lt_0119:
mov edx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov esi, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
push ecx
push esi
push dword ptr [edx+24]
push dword ptr [edx+20]
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
pop dword ptr [edx+20]
pop dword ptr [edx+24]
add esp, 8
jmp .Lt_0114
.Lt_011A:
mov esi, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov edx, dword ptr [ecx+20]
push dword ptr [esi+24]
push dword ptr [esi+20]
mov ecx, edx
mov eax, [esp+0]
xchg edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .Lt_041D
mov edx, eax
xor eax, eax
.Lt_041D:
xchg edx, [esp+4]
mov [esp+0], eax
pop dword ptr [esi+20]
pop dword ptr [esi+24]
jmp .Lt_0114
.Lt_011B:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [esi+20]
push dword ptr [edx+24]
push dword ptr [edx+20]
mov eax, [esp+0]
xchg edx, [esp+4]
shrd eax, edx, cl
shr  edx, cl
test cl, 32
jz .Lt_041E
mov eax, edx
xor edx, edx
.Lt_041E:
xchg edx, [esp+4]
mov [esp+0], eax
pop dword ptr [edx+20]
pop dword ptr [edx+24]
jmp .Lt_0114
.Lt_011C:
mov ecx, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov eax, dword ptr [edx+20]
mov esi, dword ptr [edx+24]
and dword ptr [ecx+20], eax
and dword ptr [ecx+24], esi
jmp .Lt_0114
.Lt_011D:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [esi+20]
mov ecx, dword ptr [esi+24]
or dword ptr [eax+20], edx
or dword ptr [eax+24], ecx
jmp .Lt_0114
.Lt_011E:
mov edx, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
mov esi, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
xor dword ptr [edx+20], esi
xor dword ptr [edx+24], eax
jmp .Lt_0114
.Lt_011F:
mov esi, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [eax+20]
mov edx, dword ptr [eax+24]
xor dword ptr [esi+20], ecx
xor dword ptr [esi+24], edx
not dword ptr [esi+20]
not dword ptr [esi+24]
jmp .Lt_0114
.Lt_0120:
mov ecx, dword ptr [ebp+20]
mov edx, dword ptr [ebp+24]
mov eax, dword ptr [edx+20]
mov esi, dword ptr [edx+24]
not dword ptr [ecx+20]
not dword ptr [ecx+24]
or dword ptr [ecx+20], eax
or dword ptr [ecx+24], esi
jmp .Lt_0114
.Lt_0121:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
cmp ecx, dword ptr [esi+24]
mov eax, -1
jne .Lt_041F
cmp edx, dword ptr [esi+20]
jne .Lt_041F
.Lt_0420:
xor eax, eax
.Lt_041F:
mov edx, eax
mov esi, edx
sar esi, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], edx
mov dword ptr [eax+24], esi
jmp .Lt_0114
.Lt_0122:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [edx+20]
mov eax, dword ptr [edx+24]
cmp eax, dword ptr [esi+24]
mov edx, -1
jne .Lt_0422
cmp ecx, dword ptr [esi+20]
je .Lt_0421
.Lt_0422:
xor edx, edx
.Lt_0421:
mov ecx, edx
mov esi, ecx
sar esi, 31
mov edx, dword ptr [ebp+20]
mov dword ptr [edx+20], ecx
mov dword ptr [edx+24], esi
jmp .Lt_0114
.Lt_0123:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
mov edx, dword ptr [ecx+24]
cmp edx, dword ptr [esi+24]
mov ecx, -1
ja .Lt_0423
jb .Lt_0424
cmp eax, dword ptr [esi+20]
ja .Lt_0423
.Lt_0424:
xor ecx, ecx
.Lt_0423:
mov eax, ecx
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], esi
jmp .Lt_0114
.Lt_0124:
mov eax, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov edx, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
cmp ecx, dword ptr [esi+24]
mov eax, -1
jb .Lt_0425
ja .Lt_0426
cmp edx, dword ptr [esi+20]
jb .Lt_0425
.Lt_0426:
xor eax, eax
.Lt_0425:
mov edx, eax
mov esi, edx
sar esi, 31
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], edx
mov dword ptr [eax+24], esi
jmp .Lt_0114
.Lt_0125:
mov edx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov ecx, dword ptr [edx+20]
mov eax, dword ptr [edx+24]
cmp eax, dword ptr [esi+24]
mov edx, -1
jb .Lt_0427
ja .Lt_0428
cmp ecx, dword ptr [esi+20]
jbe .Lt_0427
.Lt_0428:
xor edx, edx
.Lt_0427:
mov ecx, edx
mov esi, ecx
sar esi, 31
mov edx, dword ptr [ebp+20]
mov dword ptr [edx+20], ecx
mov dword ptr [edx+24], esi
jmp .Lt_0114
.Lt_0126:
mov ecx, dword ptr [ebp+20]
mov esi, dword ptr [ebp+24]
mov eax, dword ptr [ecx+20]
mov edx, dword ptr [ecx+24]
cmp edx, dword ptr [esi+24]
mov ecx, -1
ja .Lt_0429
jb .Lt_042A
cmp eax, dword ptr [esi+20]
jae .Lt_0429
.Lt_042A:
xor ecx, ecx
.Lt_0429:
mov eax, ecx
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], esi
jmp .Lt_0114
.Lt_0127:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+24], 0
jne .Lt_042B
cmp dword ptr [eax+20], 0
je .Lt_0128
.Lt_042B:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+24], 0
mov esi, -1
jne .Lt_042C
cmp dword ptr [eax+20], 0
jne .Lt_042C
.Lt_042D:
xor esi, esi
.Lt_042C:
mov dword ptr [ebp-20], esi
jmp .Lt_03F0
.Lt_0128:
mov dword ptr [ebp-20], 0
.Lt_03F0:
mov eax, dword ptr [ebp-20]
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], esi
jmp .Lt_0114
.Lt_012A:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+24], 0
jne .Lt_042E
cmp dword ptr [eax+20], 0
je .Lt_012B
.Lt_042E:
mov dword ptr [ebp-20], -1
jmp .Lt_03F1
.Lt_012B:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+24], 0
mov esi, -1
jne .Lt_042F
cmp dword ptr [eax+20], 0
jne .Lt_042F
.Lt_0430:
xor esi, esi
.Lt_042F:
mov dword ptr [ebp-20], esi
.Lt_03F1:
mov eax, dword ptr [ebp-20]
mov esi, eax
sar esi, 31
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], esi
jmp .Lt_0114
.Lt_012D:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax+24], 0
jne .Lt_012F
cmp dword ptr [eax+20], 0
jne .Lt_012F
.Lt_0431:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax+20], 0
mov dword ptr [eax+24], 0
push 0
push 0
push 100
call ERRREPORT
add esp, 12
jmp .Lt_012E
.Lt_012F:
cmp dword ptr [ebp+8], 32
jne .Lt_0130
mov eax, dword ptr [ebp+24]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call __udivdi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], eax
mov dword ptr [esi+24], edx
jmp .Lt_012E
.Lt_0130:
mov eax, dword ptr [ebp+24]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call __umoddi3
add esp, 16
mov esi, dword ptr [ebp+20]
mov dword ptr [esi+20], eax
mov dword ptr [esi+24], edx
.Lt_012E:
jmp .Lt_0114
.Lt_0131:
jmp .Lt_0114
.Lt_0115:
mov eax, dword ptr [ebp-16]
add eax, 4294967268
cmp eax, 22
ja .Lt_0131
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_0132+eax*4-112]
.LT_0132:
.int .Lt_0117
.int .Lt_0118
.int .Lt_0119
.int .Lt_0131
.int .Lt_012D
.int .Lt_012D
.int .Lt_011C
.int .Lt_011D
.int .Lt_0127
.int .Lt_012A
.int .Lt_011E
.int .Lt_011F
.int .Lt_0120
.int .Lt_011A
.int .Lt_011B
.int .Lt_0131
.int .Lt_0131
.int .Lt_0122
.int .Lt_0123
.int .Lt_0124
.int .Lt_0121
.int .Lt_0126
.int .Lt_0125
.Lt_0114:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCONVERTRAWCONSTI
add esp, 12
mov dword ptr [ebp+20], eax
.Lt_00BF:
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
.Lt_00BC:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKPOINTER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0133:
cmp dword ptr [ebp+16], 0
je .Lt_0136
mov dword ptr [ebp-4], 0
jmp .Lt_0134
jmp .Lt_0135
.Lt_0136:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_0137
mov dword ptr [ebp-8], 24
jmp .Lt_0432
.Lt_0137:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0432:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 4
je .Lt_013C
.Lt_013D:
cmp dword ptr [ebp-12], 7
jne .Lt_013B
.Lt_013C:
mov dword ptr [ebp-4], 0
jmp .Lt_0134
.Lt_013B:
.Lt_0139:
.Lt_0135:
cmp dword ptr [ebp+8], 28
je .Lt_0140
.Lt_0141:
cmp dword ptr [ebp+8], 29
jne .Lt_013F
.Lt_0140:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_013E
.Lt_013F:
cmp dword ptr [ebp+8], 36
je .Lt_0143
.Lt_0144:
cmp dword ptr [ebp+8], 37
jne .Lt_0142
.Lt_0143:
mov dword ptr [ebp-4], -1
jmp .Lt_013E
.Lt_0142:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_0145:
.Lt_013E:
.Lt_0134:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDOPOINTERARITH:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0146:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_0148
mov dword ptr [ebp-20], 24
jmp .Lt_0435
.Lt_0148:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_0435:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
je .Lt_014B
jmp .Lt_0147
jmp .Lt_014A
.Lt_014B:
cmp dword ptr [ebp-8], 4
je .Lt_014E
.Lt_014F:
cmp dword ptr [ebp-8], 7
jne .Lt_014D
.Lt_014E:
jmp .Lt_0147
.Lt_014D:
.Lt_014C:
.Lt_014A:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
push eax
call SYMBCALCDEREFLEN
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jg .Lt_0151
jl .Lt_0437
cmp dword ptr [ebp-16], 0
ja .Lt_0151
.Lt_0437:
jmp .Lt_0147
.Lt_0151:
.Lt_0150:
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
je .Lt_0153
cmp dword ptr [ebp+8], 29
jne .Lt_0155
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
je .Lt_0157
jmp .Lt_0147
.Lt_0157:
.Lt_0156:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
push 0
push 0
push dword ptr [ebp+16]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 29
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 32
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0155:
.Lt_0154:
jmp .Lt_0147
.Lt_0153:
.Lt_0152:
cmp dword ptr [ebp-8], 8
je .Lt_0159
push 0
push 0
push dword ptr [ebp+16]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
.Lt_0159:
.Lt_0158:
cmp dword ptr [ebp+8], 28
je .Lt_015C
.Lt_015D:
cmp dword ptr [ebp+8], 29
jne .Lt_015B
.Lt_015C:
cmp dword ptr [ebp+8], 29
jne .Lt_015E
mov eax, dword ptr [ebp+20]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .Lt_0436
.Lt_015E:
mov dword ptr [ebp-24], 0
.Lt_0436:
cmp dword ptr [ebp-24], 0
je .Lt_0161
jmp .Lt_0147
.Lt_0161:
.Lt_0160:
push 1
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+16]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+16], eax
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_015A
.Lt_015B:
.Lt_0162:
.Lt_015A:
.Lt_0147:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCONVERTUDT_L:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0163:
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0166
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0168
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0164
.Lt_0168:
.Lt_0167:
.Lt_0166:
.Lt_0165:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_016A
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_016C
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0164
.Lt_016C:
.Lt_016B:
.Lt_016A:
.Lt_0169:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 0
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_016E
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_0164
.Lt_016E:
.Lt_016D:
mov dword ptr [ebp-4], 0
.Lt_0164:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCONVERTUDT_R:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_016F:
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0172
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0174
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0170
.Lt_0174:
.Lt_0173:
.Lt_0172:
.Lt_0171:
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0176
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0178
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0170
.Lt_0178:
.Lt_0177:
.Lt_0176:
.Lt_0175:
push 0
push 0
push dword ptr [ebp+16]
push 0
push 0
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_017A
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_0170
.Lt_017A:
.Lt_0179:
mov dword ptr [ebp-4], 0
.Lt_0170:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKDEREFWCHARPTR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_017B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
je .Lt_017E
jmp .Lt_017C
.Lt_017E:
.Lt_017D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0180
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 17
jne .Lt_0182
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_0184
jmp .Lt_017C
.Lt_0184:
.Lt_0183:
.Lt_0182:
.Lt_0181:
.Lt_0180:
.Lt_017F:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, -512
mov ebx, dword ptr [ENV+248]
and ebx, 511
or eax, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
.Lt_017C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCONVOPERAND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0185:
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
je .Lt_0187
mov dword ptr [ebp-4], 24
jmp .Lt_043B
.Lt_0187:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_043B:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [eax], ecx
push 0
push 0
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx]
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
call ASTNEWCONV
add esp, 20
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.Lt_0186:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETINTEGERORBIGGER:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0189:
cmp dword ptr [ebp+8], 9
je .Lt_018D
.Lt_018E:
cmp dword ptr [ebp+8], 14
jne .Lt_018C
.Lt_018D:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_018A
jmp .Lt_018B
.Lt_018C:
cmp dword ptr [ebp+8], 13
jne .Lt_018F
.Lt_0190:
call FBIS64BIT
test eax, eax
jne .Lt_0192
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_018A
.Lt_0192:
.Lt_0191:
.Lt_018F:
.Lt_018B:
mov dword ptr [ebp-4], 8
.Lt_018A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HISCONSIDEREDBOOLEAN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0193:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
je .Lt_0195
push dword ptr [ebp+8]
call ASTISCONST0ORMINUS1
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_043C
.Lt_0195:
mov dword ptr [ebp-8], -1
.Lt_043C:
cmp dword ptr [ebp-8], 0
jne .Lt_0197
push dword ptr [ebp+8]
call ASTISRELATIONALBOP
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .Lt_043D
.Lt_0197:
mov dword ptr [ebp-12], -1
.Lt_043D:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0194:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSHOULDWARNABOUTMIXEDBOOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0199:
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
je .Lt_019C
push dword ptr [ebp+8]
call ASTISCONST0ORMINUS1
add esp, 4
not eax
test eax, eax
je .Lt_019D
push dword ptr [ebp+12]
call HISCONSIDEREDBOOLEAN
add esp, 4
not eax
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_0440
.Lt_019D:
mov dword ptr [ebp-8], 0
.Lt_0440:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_019A
.Lt_019C:
.Lt_019B:
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
je .Lt_01A0
push dword ptr [ebp+8]
call HISCONSIDEREDBOOLEAN
add esp, 4
not eax
test eax, eax
je .Lt_01A1
push dword ptr [ebp+12]
call ASTISCONST0ORMINUS1
add esp, 4
not eax
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_0441
.Lt_01A1:
mov dword ptr [ebp-8], 0
.Lt_0441:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_019A
.Lt_01A0:
.Lt_019F:
mov dword ptr [ebp-4], 0
.Lt_019A:
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
.balign 8
Lt_0375:	.quad	0x4000000000000000
.balign 8
Lt_0379:	.quad	0x0000000000000000
