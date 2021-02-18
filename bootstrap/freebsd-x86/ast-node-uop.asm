	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWUOP
ASTNEWUOP:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.Lt_0093:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0096
jmp .Lt_0094
.Lt_0096:
.Lt_0095:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset SYMB
add ebx, eax
cmp dword ptr [ebx+99120], 0
je .Lt_0098
lea ebx, [ebp-48]
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDUOPOVLPROC
add esp, 12
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .Lt_009A
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0094
jmp .Lt_0099
.Lt_009A:
cmp dword ptr [ebp-48], 0
je .Lt_009C
jmp .Lt_0094
.Lt_009C:
.Lt_009B:
.Lt_0099:
.Lt_0098:
.Lt_0097:
cmp dword ptr [ebp+8], 75
jne .Lt_009E
.Lt_009F:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 4
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0094
jmp .Lt_009D
.Lt_009E:
cmp dword ptr [ebp+8], 73
jne .Lt_00A0
.Lt_00A1:
jmp .Lt_0094
.Lt_00A0:
.Lt_009D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00A2
mov dword ptr [ebp-36], 24
jmp .Lt_00FD
.Lt_00A2:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_00FD:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 2
jne .Lt_00A5
jmp .Lt_0094
.Lt_00A5:
.Lt_00A4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00A6
mov dword ptr [ebp-44], 24
jmp .Lt_00FE
.Lt_00A6:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_00FE:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
jmp .Lt_00A9
.Lt_00AB:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 20
je .Lt_00AD
jmp .Lt_0094
.Lt_00AD:
.Lt_00AC:
jmp .Lt_00A8
.Lt_00AE:
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
push ebx
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_00B0
jmp .Lt_0094
.Lt_00B0:
.Lt_00AF:
jmp .Lt_00A8
.Lt_00B1:
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
or ebx, 8
push ebx
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
jmp .Lt_00A8
.Lt_00B2:
cmp dword ptr [ebp+8], 52
je .Lt_00B4
jmp .Lt_0094
.Lt_00B4:
.Lt_00B3:
jmp .Lt_00A8
.Lt_00A9:
mov eax, dword ptr [ebp-48]
add eax, 4294967292
cmp eax, 20
ja .Lt_00A8
mov eax, dword ptr [ebp-48]
jmp dword ptr [.LT_00B5+eax*4-16]
.LT_00B5:
.int .Lt_00AB
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00AB
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00B1
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00AE
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00B2
.Lt_00A8:
mov eax, dword ptr [ENV+136]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00B6
mov dword ptr [ebp-40], 24
jmp .Lt_00FF
.Lt_00B6:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_00FF:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
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
jne .Lt_00B9
cmp dword ptr [ebp+8], 52
jne .Lt_00BB
mov dword ptr [ebp-32], 0
jmp .Lt_00BA
.Lt_00BB:
jmp .Lt_0094
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
cmp dword ptr [ebp-32], 0
je .Lt_00BD
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00BE
mov dword ptr [ebp-44], 24
jmp .Lt_0101
.Lt_00BE:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_0101:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
and ebx, 480
je .Lt_00C2
mov dword ptr [ebp-52], 24
jmp .Lt_0102
.Lt_00C2:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_00C0
mov dword ptr [ebp-48], 24
jmp .Lt_0103
.Lt_00C0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_0103:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_0102:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [SYMB_DTYPETB+236]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [SYMB_DTYPETB+264]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jge .Lt_00C5
push 0
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, -512
or eax, 8
push eax
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
jmp .Lt_00C4
.Lt_00C5:
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
je .Lt_00C7
push 0
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, -512
or eax, 9
push eax
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
.Lt_00C7:
.Lt_00C6:
.Lt_00C4:
.Lt_00BD:
.Lt_00BC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-44], eax
jmp .Lt_00C9
.Lt_00CB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00CC
mov dword ptr [ebp-48], 24
jmp .Lt_0104
.Lt_00CC:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_0104:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
je .Lt_00CF
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
or ebx, 8
push ebx
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-28], eax
.Lt_00CF:
.Lt_00CE:
jmp .Lt_00C8
.Lt_00D0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00D1
mov dword ptr [ebp-48], 24
jmp .Lt_0105
.Lt_00D1:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_0105:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .Lt_00D4
push dword ptr [ebp-12]
call TYPETOSIGNED
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_00D4:
.Lt_00D3:
jmp .Lt_00C8
.Lt_00D5:
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_00D6
mov dword ptr [ebp-48], 24
jmp .Lt_0106
.Lt_00D6:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_0106:
mov eax, dword ptr [ebp-48]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+8]
not ebx
test ebx, ebx
je .Lt_00D9
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .Lt_00DB
cmp dword ptr [AST+232], 0
jne .Lt_00DD
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .Lt_00DE
mov dword ptr [ebp-52], 24
jmp .Lt_0107
.Lt_00DE:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-52], ebx
.Lt_0107:
mov ebx, dword ptr [ebp-52]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
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
jz .Lt_0110
mov edx, eax
xor eax, eax
.Lt_0110:
mov [esp+4], edx
xchg eax, [esp+0]
pop ecx
pop ebx
mov eax, dword ptr [ebp-56]
cmp dword ptr [eax+24], ebx
jb .Lt_00E1
ja .Lt_0111
cmp dword ptr [eax+20], ecx
jbe .Lt_00E1
.Lt_0111:
push 0
push 1
push 0
push 5
call ERRREPORTWARN
add esp, 16
.Lt_00E1:
.Lt_00E0:
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
push dword ptr [ebp-12]
call TYPETOSIGNED
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_00D9:
.Lt_00D8:
jmp .Lt_00C8
.Lt_00E2:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_00E3
mov dword ptr [ebp-48], 24
jmp .Lt_0109
.Lt_00E3:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_0109:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
je .Lt_00E6
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, -512
or ecx, 16
push ecx
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-28], eax
.Lt_00E6:
.Lt_00E5:
jmp .Lt_00C8
.Lt_00E7:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_00E8
mov dword ptr [ebp-48], 24
jmp .Lt_010A
.Lt_00E8:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_010A:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .Lt_00EB
push 1
push 0
push 0
push dword ptr [ebp-12]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_0094
.Lt_00EB:
.Lt_00EA:
jmp .Lt_00C8
.Lt_00EC:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_00ED
mov dword ptr [ebp-48], 24
jmp .Lt_010B
.Lt_00ED:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_010B:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .Lt_00F0
push 1
push 0
push 0
push dword ptr [ebp-12]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
push 34
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_0094
.Lt_00F0:
.Lt_00EF:
jmp .Lt_00C8
.Lt_00F1:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_0094
jmp .Lt_00C8
.Lt_00C9:
mov eax, dword ptr [ebp-44]
add eax, 4294967244
cmp eax, 20
ja .Lt_00C8
mov eax, dword ptr [ebp-44]
jmp dword ptr [.LT_00F2+eax*4-208]
.LT_00F2:
.int .Lt_00CB
.int .Lt_00F1
.int .Lt_00D5
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00D0
.int .Lt_00E2
.int .Lt_00E2
.int .Lt_00E2
.int .Lt_00E2
.int .Lt_00E2
.int .Lt_00E2
.int .Lt_00C8
.int .Lt_00E2
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00E2
.int .Lt_00E2
.int .Lt_00E7
.int .Lt_00E7
.int .Lt_00EC
.Lt_00C8:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .Lt_00F4
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call HCONSTUOP
add esp, 16
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .Lt_0094
.Lt_00F4:
.Lt_00F3:
cmp dword ptr [ebp+8], 52
jne .Lt_00F6
push dword ptr [ebp+12]
call ASTISRELATIONALBOP
add esp, 4
test eax, eax
je .Lt_00F8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call ASTGETINVERSELOGOP
add esp, 4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_0094
.Lt_00F8:
.Lt_00F7:
.Lt_00F6:
.Lt_00F5:
mov eax, dword ptr [IR+276]
and eax, 131072
test eax, eax
je .Lt_00FA
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call dword ptr [IR+24]
add esp, 8
test eax, eax
jne .Lt_00FC
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLMATHUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_0094
.Lt_00FC:
.Lt_00FB:
.Lt_00FA:
.Lt_00F9:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push 4
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+60], 0
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0094:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADUOP
ASTLOADUOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0112:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0115
mov dword ptr [ebp-4], 0
jmp .Lt_0113
.Lt_0115:
.Lt_0114:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 5
jne .Lt_0117
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-8]
call ASTUPDATECONVFD2FS
add esp, 12
.Lt_0117:
.Lt_0116:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [AST+136], 0
je .Lt_0119
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
and ebx, 1
test ebx, ebx
je .Lt_011B
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call dword ptr [IR+228]
add esp, 8
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+16]
mov dword ptr [ebx+20], eax
jmp .Lt_011A
.Lt_011B:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_011A:
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call dword ptr [IR+100]
add esp, 12
cmp dword ptr [ebp-20], 0
jne .Lt_011D
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ecx
.Lt_011D:
.Lt_011C:
.Lt_0119:
.Lt_0118:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.Lt_0113:
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
HSGNLONGINT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_005E:
cmp dword ptr [ebp+12], 0
jne .Lt_0061
cmp dword ptr [ebp+8], 0
jne .Lt_0061
.Lt_011E:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_0060
.Lt_0061:
cmp dword ptr [ebp+12], 0
jl .Lt_0062
jg .Lt_011F
cmp dword ptr [ebp+8], 0
jbe .Lt_0062
.Lt_011F:
mov dword ptr [ebp-8], 1
mov dword ptr [ebp-4], 0
jmp .Lt_0060
.Lt_0062:
mov dword ptr [ebp-8], 4294967295
mov dword ptr [ebp-4], 4294967295
.Lt_0060:
.Lt_005F:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCONSTUOP:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0063:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0065
mov dword ptr [ebp-24], 24
jmp .Lt_0120
.Lt_0065:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_0120:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_0068
mov eax, dword ptr [ebp+20]
push dword ptr [eax+20]
push dword ptr [eax+24]
pop dword ptr [ebp-8]
pop dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .Lt_006A
.Lt_006C:
fld qword ptr [ebp-12]
fchs
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_006D:
fld qword ptr [ebp-12]
fabs
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_006E:
fld qword ptr [ebp-12]
ftst
fnstsw ax
sahf
jz .Lt_0122
fstp st(0)
fld1
ja .Lt_0122
fchs
.Lt_0122:
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_006F:
fld qword ptr [ebp-12]
fsin
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_0070:
fld qword ptr [ebp-12]
fld st(0)
fmul st(0), st(0)
fld1
fsubrp
fsqrt
fpatan
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_0071:
fld qword ptr [ebp-12]
fcos
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_0072:
fld qword ptr [ebp-12]
fld st(0)
fmul st(0), st(0)
fld1
fsubrp
fsqrt
fxch
fpatan
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_0073:
fld qword ptr [ebp-12]
fptan
fstp st(0)
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_0074:
fld qword ptr [ebp-12]
fld1
fpatan
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_0075:
fld qword ptr [ebp-12]
fsqrt
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_0076:
fld qword ptr [ebp-12]
fldln2
fxch
fyl2x
fstp qword ptr [ebp-12]
jmp .Lt_0069
.Lt_0077:
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
jmp .Lt_0069
.Lt_0078:
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
jmp .Lt_0069
.Lt_0079:
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
jmp .Lt_0069
.Lt_007A:
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
jmp .Lt_0069
.Lt_007B:
jmp .Lt_0069
.Lt_006A:
mov eax, dword ptr [ebp-28]
add eax, 4294967242
cmp eax, 18
ja .Lt_007B
mov eax, dword ptr [ebp-28]
jmp dword ptr [.LT_007C+eax*4-216]
.LT_007C:
.int .Lt_006C
.int .Lt_007B
.int .Lt_006D
.int .Lt_006E
.int .Lt_006F
.int .Lt_0070
.int .Lt_0071
.int .Lt_0072
.int .Lt_0073
.int .Lt_0074
.int .Lt_007B
.int .Lt_0075
.int .Lt_007B
.int .Lt_007B
.int .Lt_0076
.int .Lt_0077
.int .Lt_0078
.int .Lt_0079
.int .Lt_007A
.Lt_0069:
mov eax, dword ptr [ebp+20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
pop dword ptr [eax+24]
pop dword ptr [eax+20]
jmp .Lt_0067
.Lt_0068:
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], ebx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_007D
mov dword ptr [ebp-28], 24
jmp .Lt_0121
.Lt_007D:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-28], ecx
.Lt_0121:
mov ecx, dword ptr [ebp-28]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx+4], 8
jne .Lt_0080
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-32], ecx
jmp .Lt_0082
.Lt_0084:
not dword ptr [ebp-20]
not dword ptr [ebp-16]
jmp .Lt_0081
.Lt_0085:
neg dword ptr [ebp-20]
adc dword ptr [ebp-16], 0
neg dword ptr [ebp-16]
jmp .Lt_0081
.Lt_0086:
mov eax, dword ptr [ebp-16]
sar eax, 31
xor dword ptr [ebp-20], eax
xor dword ptr [ebp-16], eax
sub dword ptr [ebp-20], eax
sbb dword ptr [ebp-16], eax
jmp .Lt_0081
.Lt_0087:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HSGNLONGINT
add esp, 8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
jmp .Lt_0081
.Lt_0088:
jmp .Lt_0081
.Lt_0082:
mov eax, dword ptr [ebp-32]
add eax, 4294967244
cmp eax, 5
ja .Lt_0088
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_0089+eax*4-208]
.LT_0089:
.int .Lt_0084
.int .Lt_0088
.int .Lt_0085
.int .Lt_0088
.int .Lt_0086
.int .Lt_0087
.Lt_0081:
jmp .Lt_007F
.Lt_0080:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .Lt_008B
.Lt_008D:
mov eax, dword ptr [ebp-20]
not eax
mov ecx, eax
mov edx, ecx
sar edx, 31
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], edx
jmp .Lt_008A
.Lt_008E:
mov ecx, dword ptr [ebp-20]
neg ecx
mov eax, ecx
mov edx, eax
sar edx, 31
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
jmp .Lt_008A
.Lt_008F:
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
jmp .Lt_008A
.Lt_0090:
mov ecx, dword ptr [ebp-20]
cmp ecx, 0
je .Lt_0123
mov ecx, 1
jg .Lt_0123
mov ecx, -1
.Lt_0123:
mov eax, ecx
mov edx, eax
sar edx, 31
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
jmp .Lt_008A
.Lt_0091:
jmp .Lt_008A
.Lt_008B:
mov eax, dword ptr [ebp-32]
add eax, 4294967244
cmp eax, 5
ja .Lt_0091
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_0092+eax*4-208]
.LT_0092:
.int .Lt_008D
.int .Lt_0091
.int .Lt_008E
.int .Lt_0091
.int .Lt_008F
.int .Lt_0090
.Lt_008A:
.Lt_007F:
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp-20]
mov edx, dword ptr [ebp-16]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], edx
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTCONVERTRAWCONSTI
add esp, 12
mov dword ptr [ebp+20], eax
.Lt_0067:
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
.Lt_0064:
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
