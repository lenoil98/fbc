	.intel_syntax noprefix

.section .text
.balign 16

.globl _HCHECKTYPES@24
_HCHECKTYPES@24:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_005F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .Lt_0062
mov eax, dword ptr [ebp-12]
and eax, dword ptr [ebp-8]
je .Lt_0064
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, dword ptr [ebp+16]
and ebx, 511
cmp eax, ebx
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [ebp+20]
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0066
jmp .Lt_0060
.Lt_0066:
.Lt_0065:
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .Lt_0063
.Lt_0064:
cmp dword ptr [ebp-8], 0
je .Lt_0068
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-16], ecx
jmp .Lt_0067
.Lt_0068:
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+16]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+20]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
.Lt_0067:
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .Lt_0069
mov dword ptr [ebp-20], 24
jmp .Lt_0088
.Lt_0069:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-20], ecx
.Lt_0088:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 0
je .Lt_006C
jmp .Lt_0060
.Lt_006C:
.Lt_006B:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-24], ecx
cmp dword ptr [ebp-24], 4
je .Lt_0070
.Lt_0071:
cmp dword ptr [ebp-24], 7
jne .Lt_006F
.Lt_0070:
jmp .Lt_0060
.Lt_006F:
.Lt_006D:
.Lt_0063:
mov dword ptr [ebp-4], -1
jmp .Lt_0060
.Lt_0062:
.Lt_0061:
mov ecx, dword ptr [ebp+8]
and ecx, 31
cmp ecx, 17
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 31
cmp ecx, 17
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
or ecx, dword ptr [ebp-8]
je .Lt_0073
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .Lt_0075
jmp .Lt_0060
.Lt_0075:
.Lt_0074:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 17
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
mov dword ptr [ebp-4], -1
jmp .Lt_0060
.Lt_0073:
.Lt_0072:
mov ecx, dword ptr [ebp+8]
and ecx, 31
cmp ecx, 7
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 31
cmp ecx, 7
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
or ecx, dword ptr [ebp-8]
je .Lt_0077
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .Lt_0079
jmp .Lt_0060
.Lt_0079:
.Lt_0078:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 7
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
mov dword ptr [ebp-4], -1
jmp .Lt_0060
.Lt_0077:
.Lt_0076:
mov ecx, dword ptr [ebp+8]
and ecx, 31
cmp ecx, 20
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 31
cmp ecx, 20
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
or ecx, dword ptr [ebp-8]
je .Lt_007B
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .Lt_007D
jmp .Lt_0060
.Lt_007D:
.Lt_007C:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ebp+12], ecx
je .Lt_007F
jmp .Lt_0060
.Lt_007F:
.Lt_007E:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 20
mov ecx, dword ptr [ebp+28]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx], eax
mov dword ptr [ebp-4], -1
jmp .Lt_0060
.Lt_007B:
.Lt_007A:
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .Lt_0081
mov eax, dword ptr [ebp-12]
and eax, dword ptr [ebp-8]
je .Lt_0083
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp+12], eax
jne .Lt_0085
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 10
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .Lt_0084
.Lt_0085:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 8
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.Lt_0084:
mov dword ptr [ebp-4], -1
jmp .Lt_0060
.Lt_0083:
.Lt_0082:
cmp dword ptr [ebp-8], 0
je .Lt_0087
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
jmp .Lt_0086
.Lt_0087:
mov dword ptr [ebp+16], 8
mov dword ptr [ebp+20], 0
.Lt_0086:
.Lt_0081:
.Lt_0080:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _TYPEMAX@24
mov dword ptr [ebp-4], -1
.Lt_0060:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _ASTNEWIIF@20
_ASTNEWIIF@20:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_0099:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_009C
jmp .Lt_009A
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .Lt_009E
push dword ptr [ebp+8]
call _ASTCONSTEQZERO@4
test eax, eax
je .Lt_00A0
push dword ptr [ebp+12]
call _ASTDELTREE@4
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
push dword ptr [ebp+24]
call _ASTDTORLISTUNSCOPE@4
jmp .Lt_009F
.Lt_00A0:
push dword ptr [ebp+20]
call _ASTDELTREE@4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call _ASTDTORLISTUNSCOPE@4
.Lt_009F:
push dword ptr [ebp+8]
call _ASTDELTREE@4
jmp .Lt_009A
.Lt_009E:
.Lt_009D:
mov dword ptr [ebp-16], -2147483648
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
cmp dword ptr [eax+4], ecx
je .Lt_00A2
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 20
jne .Lt_00A4
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+120]
and ecx, 131072
test ecx, ecx
je .Lt_00A6
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 4
jne .Lt_00A8
lea ecx, [ebp+12]
push ecx
call _ASTTRYOVLSTRINGCONV@4
mov ecx, dword ptr [ebp+12]
and dword ptr [ecx+4], 511
.Lt_00A8:
.Lt_00A7:
jmp .Lt_00A5
.Lt_00A6:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+120]
and ecx, 65536
test ecx, ecx
je .Lt_00A9
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 7
jne .Lt_00AB
lea ecx, [ebp+12]
push ecx
call _ASTTRYOVLSTRINGCONV@4
mov ecx, dword ptr [ebp+12]
and dword ptr [ecx+4], 511
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
.Lt_00A5:
jmp .Lt_00A3
.Lt_00A4:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 20
jne .Lt_00AC
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+120]
and ecx, 131072
test ecx, ecx
je .Lt_00AE
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 4
jne .Lt_00B0
lea ecx, [ebp+20]
push ecx
call _ASTTRYOVLSTRINGCONV@4
mov ecx, dword ptr [ebp+20]
and dword ptr [ecx+4], 511
.Lt_00B0:
.Lt_00AF:
jmp .Lt_00AD
.Lt_00AE:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+120]
and ecx, 65536
test ecx, ecx
je .Lt_00B1
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 7
jne .Lt_00B3
lea ecx, [ebp+20]
push ecx
call _ASTTRYOVLSTRINGCONV@4
mov ecx, dword ptr [ebp+20]
and dword ptr [ecx+4], 511
.Lt_00B3:
.Lt_00B2:
.Lt_00B1:
.Lt_00AD:
.Lt_00AC:
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
lea ecx, [ebp-40]
push ecx
lea ecx, [ebp-16]
push ecx
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx+4]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+4]
call _HCHECKTYPES@24
test eax, eax
jne .Lt_00B5
jmp .Lt_009A
.Lt_00B5:
.Lt_00B4:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 261632
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 261632
or ecx, ebx
or dword ptr [ebp-16], ecx
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-36], eax
push -1
push 0
push dword ptr [ebp-36]
push dword ptr [ebp+8]
call _ASTBUILDBRANCH@16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00B7
jmp .Lt_009A
.Lt_00B7:
.Lt_00B6:
mov eax, dword ptr [ebp-16]
and eax, 511
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 18
je .Lt_00BB
.Lt_00BC:
cmp dword ptr [ebp-48], 4
jne .Lt_00BA
.Lt_00BB:
mov dword ptr [ebp-16], 17
.Lt_00BA:
.Lt_00B8:
mov eax, dword ptr [ebp-16]
and eax, 511
cmp eax, 7
jne .Lt_00BE
push 0
push 39
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-44]
or dword ptr [eax+12], 16777216
push dword ptr [ebp-44]
call _ASTDTORLISTADD@4
push dword ptr [ebp-44]
call _ASTBUILDFAKEWSTRINGACCESS@4
mov dword ptr [ebp-12], eax
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEBEGIN@4
push 64
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call _ASTBUILDFAKEWSTRINGASSIGN@12
mov dword ptr [ebp+12], eax
call _ASTDTORLISTSCOPEEND@0
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEBEGIN@4
push 64
push dword ptr [ebp+20]
push dword ptr [ebp-44]
call _ASTBUILDFAKEWSTRINGASSIGN@12
mov dword ptr [ebp+20], eax
call _ASTDTORLISTSCOPEEND@0
jmp .Lt_00BD
.Lt_00BE:
push dword ptr [ebp-40]
push dword ptr [ebp-16]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-44], eax
push dword ptr [ebp-44]
call _ASTDTORLISTADD@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR@20
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
push dword ptr [ebp-44]
call _SYMBHASCTOR@4
test eax, eax
je .Lt_00C0
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEBEGIN@4
lea eax, [ebp-20]
push eax
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call _ASTBUILDIMPLICITCTORCALLEX@16
mov dword ptr [ebp+12], eax
call _ASTDTORLISTSCOPEEND@0
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEBEGIN@4
lea eax, [ebp-24]
push eax
push -1
push dword ptr [ebp+20]
push dword ptr [ebp-44]
call _ASTBUILDIMPLICITCTORCALLEX@16
mov dword ptr [ebp+20], eax
call _ASTDTORLISTSCOPEEND@0
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .Lt_00C2
cmp dword ptr [ebp-20], 0
je .Lt_00C4
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEBEGIN@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp+12]
call _ASTPATCHCTORCALL@8
mov dword ptr [ebp+12], eax
call _ASTDTORLISTSCOPEEND@0
jmp .Lt_00C3
.Lt_00C4:
mov dword ptr [ebp-28], -1
.Lt_00C3:
cmp dword ptr [ebp-24], 0
je .Lt_00C6
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEBEGIN@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp+20]
call _ASTPATCHCTORCALL@8
mov dword ptr [ebp+20], eax
call _ASTDTORLISTSCOPEEND@0
jmp .Lt_00C5
.Lt_00C6:
mov dword ptr [ebp-32], -1
.Lt_00C5:
jmp .Lt_00C1
.Lt_00C2:
push 0
push dword ptr [ebp+8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp-40]
call _ASTBUILDCTORCALL@8
push eax
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
.Lt_00C1:
push dword ptr [ebp-44]
call _SYMBHASDEFCTOR@4
test eax, eax
jne .Lt_00C8
mov eax, dword ptr [ebp-20]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-24]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_00CA
jmp .Lt_009A
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
.Lt_00C7:
.Lt_00C0:
.Lt_00BF:
cmp dword ptr [ebp-20], 0
jne .Lt_00CC
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEBEGIN@4
push 64
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-28], 0
je .Lt_00CE
push 0
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp-40]
call _ASTBUILDCTORCALL@8
push eax
call _ASTNEWLINK@12
mov dword ptr [ebp+12], eax
.Lt_00CE:
.Lt_00CD:
call _ASTDTORLISTSCOPEEND@0
.Lt_00CC:
.Lt_00CB:
cmp dword ptr [ebp-24], 0
jne .Lt_00D0
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEBEGIN@4
push 64
push dword ptr [ebp+20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp+20], eax
cmp dword ptr [ebp-32], 0
je .Lt_00D2
push 0
push dword ptr [ebp+20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp-40]
call _ASTBUILDCTORCALL@8
push eax
call _ASTNEWLINK@12
mov dword ptr [ebp+20], eax
.Lt_00D2:
.Lt_00D1:
call _ASTDTORLISTSCOPEEND@0
.Lt_00D0:
.Lt_00CF:
.Lt_00BD:
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEBEGIN@4
push dword ptr [ebp+12]
call _ASTTYPEINIUPDATE@4
mov dword ptr [ebp+12], eax
call _ASTDTORLISTSCOPEEND@0
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEBEGIN@4
push dword ptr [ebp+20]
call _ASTTYPEINIUPDATE@4
mov dword ptr [ebp+20], eax
call _ASTDTORLISTSCOPEEND@0
cmp dword ptr [ebp+16], 0
je .Lt_00D4
push 0
push dword ptr [ebp+16]
call _ASTDTORLISTFLUSH@4
push eax
push dword ptr [ebp+12]
call _ASTNEWLINK@12
mov dword ptr [ebp+12], eax
.Lt_00D4:
.Lt_00D3:
cmp dword ptr [ebp+24], 0
je .Lt_00D6
push 0
push dword ptr [ebp+24]
call _ASTDTORLISTFLUSH@4
push eax
push dword ptr [ebp+20]
call _ASTNEWLINK@12
mov dword ptr [ebp+20], eax
.Lt_00D6:
.Lt_00D5:
push dword ptr [ebp-40]
push dword ptr [ebp-16]
push 26
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-44]
mov dword ptr [eax+12], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ecx+64], eax
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _ASTNEWLINK@12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+68], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-36]
mov dword ptr [eax+24], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTLOADIIF@4
_ASTLOADIIF@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov eax, dword ptr [ebx+68]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov ebx, dword ptr [eax+68]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-16], eax
cmp dword ptr [_AST+136], 0
je .Lt_00DC
call dword ptr [_IR+108]
.Lt_00DC:
.Lt_00DB:
push dword ptr [ebp-8]
call _ASTLOAD@4
push dword ptr [ebp-8]
call _ASTDELNODE@4
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
call _ASTLOAD@4
push dword ptr [ebp-12]
call _ASTDELNODE@4
cmp dword ptr [_AST+136], 0
je .Lt_00DE
push dword ptr [ebp-20]
push 98
call dword ptr [_IR+144]
.Lt_00DE:
.Lt_00DD:
cmp dword ptr [_AST+136], 0
je .Lt_00E0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call dword ptr [_IR+68]
.Lt_00E0:
.Lt_00DF:
cmp dword ptr [_AST+136], 0
je .Lt_00E2
call dword ptr [_IR+108]
.Lt_00E2:
.Lt_00E1:
push dword ptr [ebp-16]
call _ASTLOAD@4
push dword ptr [ebp-16]
call _ASTDELNODE@4
cmp dword ptr [_AST+136], 0
je .Lt_00E4
push dword ptr [ebp-20]
call dword ptr [_IR+68]
.Lt_00E4:
.Lt_00E3:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTLOAD@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
push dword ptr [ebx+68]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+68]
call _ASTDELNODE@4
.Lt_00DA:
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
