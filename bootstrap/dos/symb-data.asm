	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBDATAINIT
_SYMBDATAINIT:
push ebp
mov ebp, esp
sub esp, 112
push ebx
.Lt_0077:
call _FBIS64BIT
test eax, eax
je .Lt_007A
mov dword ptr [_ENV+272], 8
mov dword ptr [_SYMB_DTYPETB+228], 8
mov dword ptr [_SYMB_DTYPETB+256], 8
mov dword ptr [_SYMB_DTYPETB+284], 8
mov dword ptr [_SYMB_DTYPETB+480], 24
mov dword ptr [_SYMB_DTYPETB+676], 8
mov dword ptr [_SYMB_DTYPETB+244], 7
mov dword ptr [_SYMB_DTYPETB+272], 8
mov dword ptr [_SYMB_DTYPETB+300], 7
mov dword ptr [_SYMB_DTYPETB+692], 8
mov dword ptr [_SYMB_DTYPETB+236], 81
mov dword ptr [_SYMB_DTYPETB+264], 86
jmp .Lt_0079
.Lt_007A:
mov dword ptr [_ENV+272], 4
mov dword ptr [_SYMB_DTYPETB+228], 4
mov dword ptr [_SYMB_DTYPETB+256], 4
mov dword ptr [_SYMB_DTYPETB+284], 4
mov dword ptr [_SYMB_DTYPETB+480], 12
mov dword ptr [_SYMB_DTYPETB+676], 4
mov dword ptr [_SYMB_DTYPETB+244], 5
mov dword ptr [_SYMB_DTYPETB+272], 6
mov dword ptr [_SYMB_DTYPETB+300], 5
mov dword ptr [_SYMB_DTYPETB+692], 6
mov dword ptr [_SYMB_DTYPETB+236], 41
mov dword ptr [_SYMB_DTYPETB+264], 46
.Lt_0079:
mov eax, dword ptr [_ENV+248]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [_SYMB_DTYPETB+196], ebx
mov ebx, dword ptr [_ENV+248]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_SYMB_DTYPETB+200], eax
mov eax, dword ptr [_ENV+248]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+8]
mov dword ptr [_SYMB_DTYPETB+204], ebx
mov ebx, dword ptr [_ENV+248]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+16]
mov dword ptr [_SYMB_DTYPETB+212], eax
lea eax, [ebp-60]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 15
rep stosd
pop edi
pop eax
lea eax, [ebp-60]
mov dword ptr [ebp-96], eax
lea eax, [ebp-60]
mov dword ptr [ebp-92], eax
mov dword ptr [ebp-88], 60
mov dword ptr [ebp-84], 4
mov dword ptr [ebp-80], 1
mov dword ptr [ebp-76], 49
mov dword ptr [ebp-72], 15
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 14
mov dword ptr [ebp-100], 2
.Lt_007F:
mov dword ptr [ebp-104], 2
.Lt_0083:
mov eax, dword ptr [ebp-104]
mov ebx, dword ptr [ebp-104]
mov dword ptr [ebp+eax*4-68], ebx
.Lt_0081:
inc dword ptr [ebp-104]
.Lt_0080:
cmp dword ptr [ebp-104], 16
jle .Lt_0083
.Lt_0082:
mov dword ptr [ebp-108], 0
.Lt_0087:
mov ebx, dword ptr [ebp-108]
inc ebx
mov dword ptr [ebp-112], ebx
jmp .Lt_0088
.Lt_008B:
mov ebx, dword ptr [ebp-112]
push dword ptr [ebp+ebx*4-60]
mov ebx, dword ptr [ebp-108]
push dword ptr [ebp+ebx*4-60]
push dword ptr [ebp-100]
call _CLOSESTTYPE
add esp, 12
mov ebx, dword ptr [ebp-112]
mov ecx, dword ptr [ebp+ebx*4-60]
cmp eax, ecx
jne .Lt_008D
mov ecx, dword ptr [ebp-108]
push dword ptr [ebp+ecx*4-60]
mov ecx, dword ptr [ebp-112]
mov eax, dword ptr [ebp-108]
mov ebx, dword ptr [ebp+ecx*4-60]
mov dword ptr [ebp+eax*4-60], ebx
mov ebx, dword ptr [ebp-112]
pop dword ptr [ebp+ebx*4-60]
.Lt_008D:
.Lt_008C:
.Lt_0089:
inc dword ptr [ebp-112]
.Lt_0088:
cmp dword ptr [ebp-112], 14
jle .Lt_008B
.Lt_008A:
.Lt_0085:
inc dword ptr [ebp-108]
.Lt_0084:
cmp dword ptr [ebp-108], 13
jle .Lt_0087
.Lt_0086:
mov dword ptr [ebp-108], 0
.Lt_0091:
mov ebx, dword ptr [ebp-108]
mov eax, dword ptr [ebp+ebx*4-60]
mov dword ptr [ebp-104], eax
mov eax, dword ptr [ebp-100]
sal eax, 4
add eax, dword ptr [ebp-104]
mov ebx, dword ptr [ebp-108]
mov dword ptr [_SYMB_DTYPEMATCHTB+eax*4-68], ebx
.Lt_008F:
inc dword ptr [ebp-108]
.Lt_008E:
cmp dword ptr [ebp-108], 14
jle .Lt_0091
.Lt_0090:
.Lt_007D:
inc dword ptr [ebp-100]
.Lt_007C:
cmp dword ptr [ebp-100], 16
jle .Lt_007F
.Lt_007E:
.Lt_0078:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPEMAX
_TYPEMAX:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_0092:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, dword ptr [ebp+16]
and ebx, 511
cmp eax, ebx
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [ebp+20]
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_0095
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .Lt_0093
.Lt_0095:
.Lt_0094:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_0096
mov dword ptr [ebp-12], 24
jmp .Lt_00A8
.Lt_0096:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_00A8:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+16]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_0098
mov dword ptr [ebp-16], 24
jmp .Lt_00A9
.Lt_0098:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00A9:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+16]
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jne .Lt_009B
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp-4]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .Lt_009A
.Lt_009B:
mov eax, dword ptr [ebp-4]
and eax, 480
je .Lt_009D
mov dword ptr [ebp-20], 24
jmp .Lt_00AA
.Lt_009D:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00AA:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-8]
and ecx, 480
je .Lt_009F
mov dword ptr [ebp-24], 24
jmp .Lt_00AB
.Lt_009F:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_00AB:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-28]
je .Lt_009C
mov eax, dword ptr [ebp-4]
and eax, 480
je .Lt_00A1
mov dword ptr [ebp-32], 24
jmp .Lt_00AD
.Lt_00A1:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_00AD:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_00A3
mov dword ptr [ebp-36], 24
jmp .Lt_00AE
.Lt_00A3:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_00AE:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [ebp-40]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+12]
cmp dword ptr [_SYMB_DTYPETB+ecx+12], ebx
jle .Lt_00A6
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
jmp .Lt_00A5
.Lt_00A6:
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ecx], ebx
.Lt_00A5:
jmp .Lt_009A
.Lt_009C:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .Lt_00A7
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
jmp .Lt_009A
.Lt_00A7:
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ecx], ebx
.Lt_009A:
.Lt_0093:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPETOSIGNED
_TYPETOSIGNED:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B4:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00B6
mov dword ptr [ebp-12], 24
jmp .Lt_00C8
.Lt_00B6:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00C8:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .Lt_00B9
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00B5
.Lt_00B9:
.Lt_00B8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
jmp .Lt_00BB
.Lt_00BD:
mov dword ptr [ebp-16], 2
jmp .Lt_00BA
.Lt_00BE:
mov dword ptr [ebp-16], 5
jmp .Lt_00BA
.Lt_00BF:
mov dword ptr [ebp-16], 8
jmp .Lt_00BA
.Lt_00C0:
push dword ptr [_ENV+248]
call _TYPETOSIGNED
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00B5
jmp .Lt_00BA
.Lt_00C1:
mov dword ptr [ebp-16], 11
jmp .Lt_00BA
.Lt_00C2:
cmp dword ptr [_ENV+272], 8
jne .Lt_00C4
mov dword ptr [ebp-16], 13
jmp .Lt_00C3
.Lt_00C4:
mov dword ptr [ebp-16], 11
.Lt_00C3:
jmp .Lt_00BA
.Lt_00C5:
mov dword ptr [ebp-16], 13
jmp .Lt_00BA
.Lt_00C6:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_00BA
.Lt_00BB:
mov eax, dword ptr [ebp-20]
add eax, 4294967293
cmp eax, 21
ja .Lt_00C6
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00C7+eax*4-12]
_.LT_00C7:
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00C6
.int .Lt_00BE
.int .Lt_00C0
.int .Lt_00C6
.int .Lt_00BF
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C1
.int .Lt_00C6
.int .Lt_00C5
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C2
.Lt_00BA:
mov eax, dword ptr [ebp+8]
and eax, -512
mov ebx, dword ptr [ebp-16]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-4], eax
.Lt_00B5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPETOUNSIGNED
_TYPETOUNSIGNED:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C9:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00CB
mov dword ptr [ebp-12], 24
jmp .Lt_00DC
.Lt_00CB:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00DC:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .Lt_00CE
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00CA
.Lt_00CE:
.Lt_00CD:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
jmp .Lt_00D0
.Lt_00D2:
mov dword ptr [ebp-16], 3
jmp .Lt_00CF
.Lt_00D3:
mov dword ptr [ebp-16], 6
jmp .Lt_00CF
.Lt_00D4:
mov dword ptr [ebp-16], 9
jmp .Lt_00CF
.Lt_00D5:
mov dword ptr [ebp-16], 12
jmp .Lt_00CF
.Lt_00D6:
cmp dword ptr [_ENV+272], 8
jne .Lt_00D8
mov dword ptr [ebp-16], 14
jmp .Lt_00D7
.Lt_00D8:
mov dword ptr [ebp-16], 12
.Lt_00D7:
jmp .Lt_00CF
.Lt_00D9:
mov dword ptr [ebp-16], 14
jmp .Lt_00CF
.Lt_00DA:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_00CF
.Lt_00D0:
mov eax, dword ptr [ebp-20]
add eax, 4294967294
cmp eax, 22
ja .Lt_00DA
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00DB+eax*4-8]
_.LT_00DB:
.int .Lt_00D2
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00D3
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00D4
.int .Lt_00DA
.int .Lt_00D4
.int .Lt_00D5
.int .Lt_00DA
.int .Lt_00D9
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00D6
.Lt_00CF:
mov eax, dword ptr [ebp+8]
and eax, -512
mov ebx, dword ptr [ebp-16]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-4], eax
.Lt_00CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPEHASCTOR
_TYPEHASCTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DD:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00DF
mov dword ptr [ebp-8], 24
jmp .Lt_00E5
.Lt_00DF:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00E5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 20
jne .Lt_00E3
.Lt_00E4:
push dword ptr [ebp+12]
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_00E3:
.Lt_00E1:
.Lt_00DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPEHASDEFCTOR
_TYPEHASDEFCTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E7:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00E9
mov dword ptr [ebp-8], 24
jmp .Lt_00EF
.Lt_00E9:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00EF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 20
jne .Lt_00ED
.Lt_00EE:
push dword ptr [ebp+12]
call _SYMBGETCOMPDEFCTOR
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_00ED:
.Lt_00EB:
.Lt_00E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPEHASDTOR
_TYPEHASDTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F1:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00F3
mov dword ptr [ebp-8], 24
jmp .Lt_00F9
.Lt_00F3:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00F9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 20
jne .Lt_00F7
.Lt_00F8:
push dword ptr [ebp+12]
call _SYMBGETCOMPDTOR
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_00F7:
.Lt_00F5:
.Lt_00F2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPENEEDSDTORCALL
_TYPENEEDSDTORCALL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FB:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _TYPEHASDTOR
add esp, 8
mov ebx, dword ptr [ebp+8]
and ebx, 511
cmp ebx, 17
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-4], eax
.Lt_00FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPEISTRIVIAL
_TYPEISTRIVIAL:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00FE:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .Lt_0102
.Lt_0103:
mov dword ptr [ebp-4], 0
jmp .Lt_0100
.Lt_0102:
cmp dword ptr [ebp-8], 20
jne .Lt_0104
.Lt_0105:
push dword ptr [ebp+12]
call _SYMBCOMPISTRIVIAL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0104:
.Lt_0100:
.Lt_00FF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPEHASFWDREFINSIGNATURE
_TYPEHASFWDREFINSIGNATURE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0106:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 23
jne .Lt_010A
.Lt_010B:
mov dword ptr [ebp-4], -1
jmp .Lt_0108
.Lt_010A:
cmp dword ptr [ebp-8], 22
jne .Lt_010C
.Lt_010D:
push dword ptr [ebp+12]
call _SYMBPROCHASFWDREFINSIGNATURE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0108
.Lt_010C:
mov dword ptr [ebp-4], 0
.Lt_010E:
.Lt_0108:
.Lt_0107:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPEMERGE
_TYPEMERGE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_010F:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
and eax, 480
sar eax, 5
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-8]
cmp eax, 8
jle .Lt_0112
push 0
push 0
push 274
call _ERRREPORT
add esp, 12
mov eax, 8
sub eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
.Lt_0112:
.Lt_0111:
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
mov ecx, dword ptr [ebp-8]
sal ecx, 5
add ebx, ecx
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
mov cl, byte ptr [ebp-8]
sal ebx, cl
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
or eax, ebx
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0110:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLOSESTTYPE
_CLOSESTTYPE:
push ebp
mov ebp, esp
sub esp, 124
push ebx
mov dword ptr [ebp-4], 0
.Lt_0113:
mov eax, dword ptr [ebp+12]
cmp eax, 10
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0116
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0114
.Lt_0116:
mov ebx, dword ptr [ebp+16]
cmp ebx, 10
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0118
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0118:
mov eax, dword ptr [ebp+12]
cmp eax, 4
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_011A
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0114
.Lt_011A:
mov ebx, dword ptr [ebp+16]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_011C
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_011C:
mov eax, dword ptr [ebp+12]
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_011E
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0114
.Lt_011E:
mov ebx, dword ptr [ebp+16]
cmp ebx, 7
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0120
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0120:
cmp dword ptr [ebp+8], 1
je .Lt_0122
mov eax, dword ptr [ebp+12]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-120], eax
mov eax, dword ptr [ebp+16]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-120]
not eax
and eax, dword ptr [ebp-124]
je .Lt_0124
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0124:
mov eax, dword ptr [ebp-124]
not eax
and eax, dword ptr [ebp-120]
je .Lt_0126
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0126:
.Lt_0122:
.Lt_0121:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_0127
mov dword ptr [ebp-12], 24
jmp .Lt_015F
.Lt_0127:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_015F:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov dword ptr [ebp-120], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0129
mov dword ptr [ebp-16], 24
jmp .Lt_0160
.Lt_0129:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0160:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [ebp-120]
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
cmp ecx, dword ptr [_SYMB_DTYPETB+ebx]
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .Lt_012B
mov dword ptr [ebp-24], 24
jmp .Lt_0161
.Lt_012B:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_0161:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov dword ptr [ebp-124], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_012D
mov dword ptr [ebp-28], 24
jmp .Lt_0162
.Lt_012D:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-28], ecx
.Lt_0162:
mov ecx, dword ptr [ebp-28]
imul ecx, 28
mov ebx, dword ptr [ebp-124]
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
cmp eax, dword ptr [_SYMB_DTYPETB+ebx]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
not eax
and eax, dword ptr [ebp-8]
je .Lt_0130
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0130:
mov eax, dword ptr [ebp-8]
not eax
and eax, dword ptr [ebp-20]
je .Lt_0132
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_0132:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_0133
mov dword ptr [ebp-36], 24
jmp .Lt_0165
.Lt_0133:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_0165:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov dword ptr [ebp-120], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0135
mov dword ptr [ebp-40], 24
jmp .Lt_0166
.Lt_0135:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_0166:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [ebp-120]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax+4]
setge cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .Lt_0137
mov dword ptr [ebp-48], 24
jmp .Lt_0167
.Lt_0137:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-48], ecx
.Lt_0167:
mov ecx, dword ptr [ebp-48]
imul ecx, 28
mov dword ptr [ebp-124], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_0139
mov dword ptr [ebp-52], 24
jmp .Lt_0168
.Lt_0139:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-52], ecx
.Lt_0168:
mov ecx, dword ptr [ebp-52]
imul ecx, 28
mov eax, dword ptr [ebp-124]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ebx, dword ptr [_SYMB_DTYPETB+ecx+4]
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-44]
not ebx
and ebx, dword ptr [ebp-32]
je .Lt_013C
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0114
.Lt_013C:
mov ebx, dword ptr [ebp-32]
not ebx
and ebx, dword ptr [ebp-44]
je .Lt_013E
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .Lt_0114
.Lt_013E:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_013F
mov dword ptr [ebp-60], 24
jmp .Lt_016B
.Lt_013F:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-60], ebx
.Lt_016B:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov dword ptr [ebp-120], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_0141
mov dword ptr [ebp-64], 24
jmp .Lt_016C
.Lt_0141:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-64], ebx
.Lt_016C:
mov ebx, dword ptr [ebp-64]
imul ebx, 28
mov ecx, dword ptr [ebp-120]
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
sub eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_0143
mov dword ptr [ebp-72], 24
jmp .Lt_016D
.Lt_0143:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-72], eax
.Lt_016D:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0145
mov dword ptr [ebp-76], 24
jmp .Lt_016E
.Lt_0145:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-76], eax
.Lt_016E:
mov eax, dword ptr [ebp-76]
imul eax, 28
mov ebx, dword ptr [ebp-124]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
sub ecx, dword ptr [_SYMB_DTYPETB+eax+4]
mov eax, ecx
sar eax, 31
xor ecx, eax
sub ecx, eax
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-68]
cmp dword ptr [ebp-56], ecx
jge .Lt_0148
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .Lt_0114
.Lt_0148:
mov ecx, dword ptr [ebp-56]
cmp dword ptr [ebp-68], ecx
jge .Lt_014A
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ecx
jmp .Lt_0114
.Lt_014A:
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .Lt_014B
mov dword ptr [ebp-84], 24
jmp .Lt_0171
.Lt_014B:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-84], ecx
.Lt_0171:
mov ecx, dword ptr [ebp-84]
imul ecx, 28
mov dword ptr [ebp-120], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_014D
mov dword ptr [ebp-88], 24
jmp .Lt_0172
.Lt_014D:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-88], ecx
.Lt_0172:
mov ecx, dword ptr [ebp-88]
imul ecx, 28
mov eax, dword ptr [ebp-120]
mov ebx, dword ptr [_SYMB_DTYPETB+ecx+8]
cmp ebx, dword ptr [_SYMB_DTYPETB+eax+8]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_014F
mov dword ptr [ebp-96], 24
jmp .Lt_0173
.Lt_014F:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-96], ebx
.Lt_0173:
mov ebx, dword ptr [ebp-96]
imul ebx, 28
mov dword ptr [ebp-124], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_0151
mov dword ptr [ebp-100], 24
jmp .Lt_0174
.Lt_0151:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-100], ebx
.Lt_0174:
mov ebx, dword ptr [ebp-100]
imul ebx, 28
mov eax, dword ptr [ebp-124]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax+8]
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-92], ecx
mov ecx, dword ptr [ebp-92]
not ecx
and ecx, dword ptr [ebp-80]
je .Lt_0154
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .Lt_0114
.Lt_0154:
mov ecx, dword ptr [ebp-80]
not ecx
and ecx, dword ptr [ebp-92]
je .Lt_0156
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ecx
jmp .Lt_0114
.Lt_0156:
push dword ptr [ebp+12]
call _TYPETOSIGNED
add esp, 4
push dword ptr [ebp+8]
mov ebx, eax
call _TYPETOSIGNED
add esp, 4
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-104], ebx
push dword ptr [ebp+16]
call _TYPETOSIGNED
add esp, 4
push dword ptr [ebp+8]
mov ebx, eax
call _TYPETOSIGNED
add esp, 4
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-108], ebx
mov ebx, dword ptr [ebp-108]
not ebx
and ebx, dword ptr [ebp-104]
je .Lt_0158
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0114
.Lt_0158:
mov ebx, dword ptr [ebp-104]
not ebx
and ebx, dword ptr [ebp-108]
je .Lt_015A
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .Lt_0114
.Lt_015A:
push dword ptr [ebp+12]
call _TYPETOSIGNED
add esp, 4
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-112], eax
push dword ptr [ebp+16]
call _TYPETOSIGNED
add esp, 4
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-116]
not eax
and eax, dword ptr [ebp-112]
je .Lt_015C
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_015C:
mov eax, dword ptr [ebp-112]
not eax
and eax, dword ptr [ebp-116]
je .Lt_015E
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0114
.Lt_015E:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_0114:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPECALCMATCH
_TYPECALCMATCH:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_018F:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+20]
cmp eax, dword ptr [ebp+8]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [ebp+24]
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_0192
mov dword ptr [ebp-4], 78
jmp .Lt_0190
.Lt_0192:
.Lt_0191:
mov ecx, dword ptr [ebp+8]
and ecx, 480
sar ecx, 5
mov eax, dword ptr [ebp+20]
and eax, 480
sar eax, 5
cmp ecx, eax
je .Lt_0194
mov dword ptr [ebp-4], 0
jmp .Lt_0190
.Lt_0194:
.Lt_0193:
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call _SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 24
test eax, eax
jne .Lt_0196
mov dword ptr [ebp-4], 0
jmp .Lt_0190
.Lt_0196:
.Lt_0195:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ecx, dword ptr [ebp+20]
and ecx, 511
cmp eax, ecx
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [ebp+24]
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0198
mov ebx, dword ptr [ebp-8]
add ebx, 52
mov dword ptr [ebp-4], ebx
jmp .Lt_0190
.Lt_0198:
.Lt_0197:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+20]
and ebx, 31
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
je .Lt_019A
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .Lt_019B
mov dword ptr [ebp-20], 24
jmp .Lt_01AF
.Lt_019B:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_01AF:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_019D
mov dword ptr [ebp-24], 24
jmp .Lt_01B0
.Lt_019D:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_01B0:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-36]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .Lt_019F
mov dword ptr [ebp-28], 24
jmp .Lt_01B1
.Lt_019F:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_01B1:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_01A1
mov dword ptr [ebp-32], 24
jmp .Lt_01B2
.Lt_01A1:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_01B2:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax+4]
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-40]
je .Lt_01A4
mov ecx, dword ptr [ebp-12]
sal ecx, 4
add ecx, dword ptr [ebp-16]
mov eax, dword ptr [_SYMB_DTYPEMATCHTB+ecx*4-68]
neg eax
add eax, 26
mov dword ptr [ebp-4], eax
jmp .Lt_0190
.Lt_01A4:
.Lt_01A3:
mov dword ptr [ebp-4], 0
jmp .Lt_0190
.Lt_019A:
.Lt_0199:
cmp dword ptr [ebp-12], 20
jne .Lt_01A6
.Lt_01A7:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+16]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_01A9
push dword ptr [ebp+12]
push dword ptr [ebp+24]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .Lt_01AB
mov dword ptr [ebp-4], 26
jmp .Lt_0190
.Lt_01AB:
.Lt_01AA:
.Lt_01A9:
.Lt_01A8:
jmp .Lt_01A5
.Lt_01A6:
cmp dword ptr [ebp-12], 22
jne .Lt_01AC
.Lt_01AD:
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _SYMBCALCPROCMATCH
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0190
.Lt_01AC:
.Lt_01A5:
mov dword ptr [ebp-4], 0
.Lt_0190:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__symbzdata:
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
call _fb_StrAssign
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36

.section .data
.balign 4

.globl _SYMB_DTYPETB
_SYMB_DTYPETB:
.int 5
.int 0
.int 0
.int 0
.int 0
.int -1
.int _Lt_005E
.int 0
.int 1
.int -1
.int 1
.int 1
.int 0
.int _Lt_005F
.int 0
.int 1
.int -1
.int 10
.int 2
.int 1
.int _Lt_0060
.int 0
.int 1
.int 0
.int 15
.int 3
.int 2
.int _Lt_0061
.int 0
.int 1
.int 0
.int 0
.int 3
.int 2
.int _Lt_0062
.int 0
.int 2
.int -1
.int 20
.int 5
.int 3
.int _Lt_0063
.int 0
.int 2
.int 0
.int 25
.int 6
.int 4
.int _Lt_0064
.int 0
.int 2
.int 0
.int 0
.int -1
.int -1
.int _Lt_0065
.int 0
.int -1
.int -1
.int -1
.int 8
.int -1
.int _Lt_0066
.int 0
.int -1
.int 0
.int -1
.int 9
.int -1
.int _Lt_0067
.int 0
.int -1
.int -1
.int 0
.int 8
.int -1
.int _Lt_0068
.int 0
.int 4
.int -1
.int 40
.int 11
.int 5
.int _Lt_0069
.int 0
.int 4
.int 0
.int 45
.int 12
.int 6
.int _Lt_006A
.int 0
.int 8
.int -1
.int 80
.int 13
.int 7
.int _Lt_006B
.int 0
.int 8
.int 0
.int 85
.int 14
.int 8
.int _Lt_006C
.int 1
.int 4
.int -1
.int 0
.int 15
.int 9
.int _Lt_006D
.int 1
.int 8
.int -1
.int 0
.int 16
.int 10
.int _Lt_006E
.int 2
.int -1
.int 0
.int 0
.int 17
.int -1
.int _Lt_006F
.int 2
.int 1
.int 0
.int 0
.int 18
.int -1
.int _Lt_006F
.int 5
.int -1
.int 0
.int 0
.int 19
.int -1
.int _Lt_0070
.int 3
.int 0
.int 0
.int 0
.int 20
.int -1
.int _Lt_0071
.int 3
.int 0
.int 0
.int 0
.int 21
.int -1
.int _Lt_0072
.int 4
.int 0
.int 0
.int 0
.int 9
.int -1
.int _Lt_0073
.int 5
.int 0
.int 0
.int 0
.int 0
.int -1
.int _Lt_0074
.int 0
.int -1
.int 0
.int 0
.int 9
.int -1
.int _Lt_0075
.int 0
.int 16
.int 0
.int 0
.int 25
.int -1
.int _Lt_0076

.section .bss

.globl _SYMB_DTYPEMATCHTB
.balign 4
	.lcomm	_SYMB_DTYPEMATCHTB,1024

.section .data
.balign 4
_Lt_005E:	.ascii	"any\0"
.balign 4
_Lt_005F:	.ascii	"boolean\0"
.balign 4
_Lt_0060:	.ascii	"byte\0"
.balign 4
_Lt_0061:	.ascii	"ubyte\0"
.balign 4
_Lt_0062:	.ascii	"zstring\0"
.balign 4
_Lt_0063:	.ascii	"short\0"
.balign 4
_Lt_0064:	.ascii	"ushort\0"
.balign 4
_Lt_0065:	.ascii	"wstring\0"
.balign 4
_Lt_0066:	.ascii	"integer\0"
.balign 4
_Lt_0067:	.ascii	"uinteger\0"
.balign 4
_Lt_0068:	.ascii	"enum\0"
.balign 4
_Lt_0069:	.ascii	"long\0"
.balign 4
_Lt_006A:	.ascii	"ulong\0"
.balign 4
_Lt_006B:	.ascii	"longint\0"
.balign 4
_Lt_006C:	.ascii	"ulongint\0"
.balign 4
_Lt_006D:	.ascii	"single\0"
.balign 4
_Lt_006E:	.ascii	"double\0"
.balign 4
_Lt_006F:	.ascii	"string\0"
.balign 4
_Lt_0070:	.ascii	"va_list\0"
.balign 4
_Lt_0071:	.ascii	"type\0"
.balign 4
_Lt_0072:	.ascii	"namepace\0"
.balign 4
_Lt_0073:	.ascii	"function\0"
.balign 4
_Lt_0074:	.ascii	"fwdref\0"
.balign 4
_Lt_0075:	.ascii	"pointer\0"
.balign 4
_Lt_0076:	.ascii	"xmmword\0"

.section .ctors
.int _fb_ctor__symbzdata
