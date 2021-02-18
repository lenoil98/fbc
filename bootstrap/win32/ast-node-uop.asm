	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWUOP@8
_ASTNEWUOP@8:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.Lt_0094:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0097
jmp .Lt_0095
.Lt_0097:
.Lt_0096:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _SYMB
add ebx, eax
cmp dword ptr [ebx+99128], 0
je .Lt_0099
lea ebx, [ebp-48]
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDUOPOVLPROC@12
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .Lt_009B
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
jmp .Lt_0095
jmp .Lt_009A
.Lt_009B:
cmp dword ptr [ebp-48], 0
je .Lt_009D
jmp .Lt_0095
.Lt_009D:
.Lt_009C:
.Lt_009A:
.Lt_0099:
.Lt_0098:
cmp dword ptr [ebp+8], 75
jne .Lt_009F
.Lt_00A0:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 4
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+32], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0095
jmp .Lt_009E
.Lt_009F:
cmp dword ptr [ebp+8], 73
jne .Lt_00A1
.Lt_00A2:
jmp .Lt_0095
.Lt_00A1:
.Lt_009E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00A3
mov dword ptr [ebp-36], 24
jmp .Lt_00FE
.Lt_00A3:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_00FE:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 2
jne .Lt_00A6
jmp .Lt_0095
.Lt_00A6:
.Lt_00A5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00A7
mov dword ptr [ebp-44], 24
jmp .Lt_00FF
.Lt_00A7:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_00FF:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
jmp .Lt_00AA
.Lt_00AC:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 20
je .Lt_00AE
jmp .Lt_0095
.Lt_00AE:
.Lt_00AD:
jmp .Lt_00A9
.Lt_00AF:
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
push ebx
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_00B1
jmp .Lt_0095
.Lt_00B1:
.Lt_00B0:
jmp .Lt_00A9
.Lt_00B2:
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
or ebx, 8
push ebx
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
jmp .Lt_00A9
.Lt_00B3:
cmp dword ptr [ebp+8], 52
je .Lt_00B5
jmp .Lt_0095
.Lt_00B5:
.Lt_00B4:
jmp .Lt_00A9
.Lt_00AA:
mov eax, dword ptr [ebp-48]
add eax, 4294967292
cmp eax, 20
ja .Lt_00A9
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_00B6+eax*4-16]
_.LT_00B6:
.int .Lt_00AC
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00AC
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00B2
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00AF
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00B3
.Lt_00A9:
mov eax, dword ptr [_ENV+136]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00B7
mov dword ptr [ebp-40], 24
jmp .Lt_0100
.Lt_00B7:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_0100:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-44]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 1
jne .Lt_00BA
cmp dword ptr [ebp+8], 52
jne .Lt_00BC
mov dword ptr [ebp-32], 0
jmp .Lt_00BB
.Lt_00BC:
jmp .Lt_0095
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
cmp dword ptr [ebp-32], 0
je .Lt_00BE
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00BF
mov dword ptr [ebp-44], 24
jmp .Lt_0102
.Lt_00BF:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_0102:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
and ebx, 480
je .Lt_00C3
mov dword ptr [ebp-52], 24
jmp .Lt_0103
.Lt_00C3:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_00C1
mov dword ptr [ebp-48], 24
jmp .Lt_0104
.Lt_00C1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_0104:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_0103:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [_SYMB_DTYPETB+236]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [_SYMB_DTYPETB+264]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jge .Lt_00C6
push 0
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, -512
or eax, 8
push eax
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
jmp .Lt_00C5
.Lt_00C6:
mov eax, dword ptr [ebp-20]
cmp eax, dword ptr [ebp-16]
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-24]
setl bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00C8
push 0
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, -512
or eax, 9
push eax
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
.Lt_00C8:
.Lt_00C7:
.Lt_00C5:
.Lt_00BE:
.Lt_00BD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-44], eax
jmp .Lt_00CA
.Lt_00CC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00CD
mov dword ptr [ebp-48], 24
jmp .Lt_0105
.Lt_00CD:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_0105:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .Lt_00D0
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
or ebx, 8
push ebx
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-28], eax
.Lt_00D0:
.Lt_00CF:
jmp .Lt_00C9
.Lt_00D1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00D2
mov dword ptr [ebp-48], 24
jmp .Lt_0106
.Lt_00D2:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_0106:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .Lt_00D5
push dword ptr [ebp-12]
call _TYPETOSIGNED@4
mov dword ptr [ebp-12], eax
.Lt_00D5:
.Lt_00D4:
jmp .Lt_00C9
.Lt_00D6:
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_00D7
mov dword ptr [ebp-48], 24
jmp .Lt_0107
.Lt_00D7:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_0107:
mov eax, dword ptr [ebp-48]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+8]
not ebx
test ebx, ebx
je .Lt_00DA
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .Lt_00DC
cmp dword ptr [_AST+232], 0
jne .Lt_00DE
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .Lt_00DF
mov dword ptr [ebp-52], 24
jmp .Lt_0108
.Lt_00DF:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-52], ebx
.Lt_0108:
mov ebx, dword ptr [ebp-52]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
sal eax, 3
dec eax
mov ecx, 1
mov ebx, 0
push ebx
push ecx
mov ecx, eax
xchg eax, [esp+0]
mov edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .Lt_0111
mov edx, eax
xor eax, eax
.Lt_0111:
mov [esp+4], edx
xchg eax, [esp+0]
pop ecx
pop ebx
mov eax, dword ptr [ebp-56]
cmp dword ptr [eax+28], ebx
jb .Lt_00E2
ja .Lt_0112
cmp dword ptr [eax+24], ecx
jbe .Lt_00E2
.Lt_0112:
push 0
push 1
push 0
push 5
call _ERRREPORTWARN@16
.Lt_00E2:
.Lt_00E1:
.Lt_00DE:
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
push dword ptr [ebp-12]
call _TYPETOSIGNED@4
mov dword ptr [ebp-12], eax
.Lt_00DA:
.Lt_00D9:
jmp .Lt_00C9
.Lt_00E3:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_00E4
mov dword ptr [ebp-48], 24
jmp .Lt_010A
.Lt_00E4:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_010A:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
je .Lt_00E7
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, -512
or ecx, 16
push ecx
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-28], eax
.Lt_00E7:
.Lt_00E6:
jmp .Lt_00C9
.Lt_00E8:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_00E9
mov dword ptr [ebp-48], 24
jmp .Lt_010B
.Lt_00E9:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_010B:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .Lt_00EC
push 1
push 0
push 0
push dword ptr [ebp-12]
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+12]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
jmp .Lt_0095
.Lt_00EC:
.Lt_00EB:
jmp .Lt_00C9
.Lt_00ED:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_00EE
mov dword ptr [ebp-48], 24
jmp .Lt_010C
.Lt_00EE:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_010C:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .Lt_00F1
push 1
push 0
push 0
push dword ptr [ebp-12]
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+12]
push 34
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
jmp .Lt_0095
.Lt_00F1:
.Lt_00F0:
jmp .Lt_00C9
.Lt_00F2:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_0095
jmp .Lt_00C9
.Lt_00CA:
mov eax, dword ptr [ebp-44]
add eax, 4294967244
cmp eax, 20
ja .Lt_00C9
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.LT_00F3+eax*4-208]
_.LT_00F3:
.int .Lt_00CC
.int .Lt_00F2
.int .Lt_00D6
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00D1
.int .Lt_00E3
.int .Lt_00E3
.int .Lt_00E3
.int .Lt_00E3
.int .Lt_00E3
.int .Lt_00E3
.int .Lt_00C9
.int .Lt_00E3
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00E3
.int .Lt_00E3
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00ED
.Lt_00C9:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .Lt_00F5
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _HCONSTUOP@16
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .Lt_0095
.Lt_00F5:
.Lt_00F4:
cmp dword ptr [ebp+8], 52
jne .Lt_00F7
push dword ptr [ebp+12]
call _ASTISRELATIONALBOP@4
test eax, eax
je .Lt_00F9
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
call _ASTGETINVERSELOGOP@4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+24], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_0095
.Lt_00F9:
.Lt_00F8:
.Lt_00F7:
.Lt_00F6:
mov eax, dword ptr [_IR+276]
and eax, 131072
test eax, eax
je .Lt_00FB
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call dword ptr [_IR+24]
test eax, eax
jne .Lt_00FD
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLMATHUOP@8
mov dword ptr [ebp-4], eax
jmp .Lt_0095
.Lt_00FD:
.Lt_00FC:
.Lt_00FB:
.Lt_00FA:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push 4
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+64], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+68], 0
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+24], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+32], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0095:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTLOADUOP@4
_ASTLOADUOP@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0113:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0116
mov dword ptr [ebp-4], 0
jmp .Lt_0114
.Lt_0116:
.Lt_0115:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 5
jne .Lt_0118
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-8]
call _ASTUPDATECONVFD2FS@12
.Lt_0118:
.Lt_0117:
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-16], eax
cmp dword ptr [_AST+136], 0
je .Lt_011A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 1
test ebx, ebx
je .Lt_011C
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call dword ptr [_IR+228]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+16]
mov dword ptr [ebx+20], eax
jmp .Lt_011B
.Lt_011C:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_011B:
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call dword ptr [_IR+100]
cmp dword ptr [ebp-20], 0
jne .Lt_011E
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ecx
.Lt_011E:
.Lt_011D:
.Lt_011A:
.Lt_0119:
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.Lt_0114:
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
_HSGNLONGINT@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_005F:
cmp dword ptr [ebp+12], 0
jne .Lt_0062
cmp dword ptr [ebp+8], 0
jne .Lt_0062
.Lt_011F:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_0061
.Lt_0062:
cmp dword ptr [ebp+12], 0
jl .Lt_0063
jg .Lt_0120
cmp dword ptr [ebp+8], 0
jbe .Lt_0063
.Lt_0120:
mov dword ptr [ebp-8], 1
mov dword ptr [ebp-4], 0
jmp .Lt_0061
.Lt_0063:
mov dword ptr [ebp-8], 4294967295
mov dword ptr [ebp-4], 4294967295
.Lt_0061:
.Lt_0060:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCONSTUOP@16:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0064:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0066
mov dword ptr [ebp-24], 24
jmp .Lt_0121
.Lt_0066:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_0121:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_0069
mov eax, dword ptr [ebp+20]
push dword ptr [eax+24]
push dword ptr [eax+28]
pop dword ptr [ebp-8]
pop dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .Lt_006B
.Lt_006D:
fld qword ptr [ebp-12]
fchs
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_006E:
fld qword ptr [ebp-12]
fabs
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_006F:
fld qword ptr [ebp-12]
ftst
fnstsw ax
sahf
jz .Lt_0123
fstp st(0)
fld1
ja .Lt_0123
fchs
.Lt_0123:
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_0070:
fld qword ptr [ebp-12]
fsin
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_0071:
fld qword ptr [ebp-12]
fld st(0)
fmul st(0), st(0)
fld1
fsubrp
fsqrt
fpatan
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_0072:
fld qword ptr [ebp-12]
fcos
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_0073:
fld qword ptr [ebp-12]
fld st(0)
fmul st(0), st(0)
fld1
fsubrp
fsqrt
fxch
fpatan
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_0074:
fld qword ptr [ebp-12]
fptan
fstp st(0)
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_0075:
fld qword ptr [ebp-12]
fld1
fpatan
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_0076:
fld qword ptr [ebp-12]
fsqrt
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_0077:
fld qword ptr [ebp-12]
fldln2
fxch
fyl2x
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_0078:
fld qword ptr [ebp-12]
fldl2e
fmulp st(1), st
fld st
frndint
fsub st(1), st
fxch
f2xm1
push 0x3f800000
fadd dword ptr [esp]
add esp, 4
fscale
fstp st(1)
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_0079:
fld qword ptr [ebp-12]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_007A:
fld qword ptr [ebp-12]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_007B:
fld qword ptr [ebp-12]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
fld st(0)
frndint
fsubp
fldcw [esp]
add esp, 4
fstp qword ptr [ebp-12]
jmp .Lt_006A
.Lt_007C:
jmp .Lt_006A
.Lt_006B:
mov eax, dword ptr [ebp-28]
add eax, 4294967242
cmp eax, 18
ja .Lt_007C
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.LT_007D+eax*4-216]
_.LT_007D:
.int .Lt_006D
.int .Lt_007C
.int .Lt_006E
.int .Lt_006F
.int .Lt_0070
.int .Lt_0071
.int .Lt_0072
.int .Lt_0073
.int .Lt_0074
.int .Lt_0075
.int .Lt_007C
.int .Lt_0076
.int .Lt_007C
.int .Lt_007C
.int .Lt_0077
.int .Lt_0078
.int .Lt_0079
.int .Lt_007A
.int .Lt_007B
.Lt_006A:
mov eax, dword ptr [ebp+20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
jmp .Lt_0068
.Lt_0069:
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], ebx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_007E
mov dword ptr [ebp-28], 24
jmp .Lt_0122
.Lt_007E:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-28], ecx
.Lt_0122:
mov ecx, dword ptr [ebp-28]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 8
jne .Lt_0081
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-32], ecx
jmp .Lt_0083
.Lt_0085:
not dword ptr [ebp-20]
not dword ptr [ebp-16]
jmp .Lt_0082
.Lt_0086:
neg dword ptr [ebp-20]
adc dword ptr [ebp-16], 0
neg dword ptr [ebp-16]
jmp .Lt_0082
.Lt_0087:
mov eax, dword ptr [ebp-16]
sar eax, 31
xor dword ptr [ebp-20], eax
xor dword ptr [ebp-16], eax
sub dword ptr [ebp-20], eax
sbb dword ptr [ebp-16], eax
jmp .Lt_0082
.Lt_0088:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HSGNLONGINT@8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
jmp .Lt_0082
.Lt_0089:
jmp .Lt_0082
.Lt_0083:
mov eax, dword ptr [ebp-32]
add eax, 4294967244
cmp eax, 5
ja .Lt_0089
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_008A+eax*4-208]
_.LT_008A:
.int .Lt_0085
.int .Lt_0089
.int .Lt_0086
.int .Lt_0089
.int .Lt_0087
.int .Lt_0088
.Lt_0082:
jmp .Lt_0080
.Lt_0081:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .Lt_008C
.Lt_008E:
mov eax, dword ptr [ebp-20]
not eax
mov ecx, eax
mov edx, ecx
sar edx, 31
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], edx
jmp .Lt_008B
.Lt_008F:
mov ecx, dword ptr [ebp-20]
neg ecx
mov eax, ecx
mov edx, eax
sar edx, 31
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
jmp .Lt_008B
.Lt_0090:
mov eax, dword ptr [ebp-20]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
mov ecx, eax
mov edx, ecx
sar edx, 31
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], edx
jmp .Lt_008B
.Lt_0091:
mov ecx, dword ptr [ebp-20]
cmp ecx, 0
je .Lt_0124
mov ecx, 1
jg .Lt_0124
mov ecx, -1
.Lt_0124:
mov eax, ecx
mov edx, eax
sar edx, 31
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
jmp .Lt_008B
.Lt_0092:
jmp .Lt_008B
.Lt_008C:
mov eax, dword ptr [ebp-32]
add eax, 4294967244
cmp eax, 5
ja .Lt_0092
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_0093+eax*4-208]
_.LT_0093:
.int .Lt_008E
.int .Lt_0092
.int .Lt_008F
.int .Lt_0092
.int .Lt_0090
.int .Lt_0091
.Lt_008B:
.Lt_0080:
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp-20]
mov edx, dword ptr [ebp-16]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], edx
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCONVERTRAWCONSTI@12
mov dword ptr [ebp+20], eax
.Lt_0068:
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
.Lt_0065:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
