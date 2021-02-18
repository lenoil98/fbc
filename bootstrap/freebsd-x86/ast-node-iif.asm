	.intel_syntax noprefix

.section .text
.balign 16

.globl HCHECKTYPES
HCHECKTYPES:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_005E:
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
je .Lt_0061
mov eax, dword ptr [ebp-12]
and eax, dword ptr [ebp-8]
je .Lt_0063
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
je .Lt_0065
jmp .Lt_005F
.Lt_0065:
.Lt_0064:
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .Lt_0062
.Lt_0063:
cmp dword ptr [ebp-8], 0
je .Lt_0067
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-16], ecx
jmp .Lt_0066
.Lt_0067:
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+16]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+20]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
.Lt_0066:
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .Lt_0068
mov dword ptr [ebp-20], 24
jmp .Lt_0087
.Lt_0068:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-20], ecx
.Lt_0087:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 0
je .Lt_006B
jmp .Lt_005F
.Lt_006B:
.Lt_006A:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-24], ecx
cmp dword ptr [ebp-24], 4
je .Lt_006F
.Lt_0070:
cmp dword ptr [ebp-24], 7
jne .Lt_006E
.Lt_006F:
jmp .Lt_005F
.Lt_006E:
.Lt_006C:
.Lt_0062:
mov dword ptr [ebp-4], -1
jmp .Lt_005F
.Lt_0061:
.Lt_0060:
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
je .Lt_0072
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .Lt_0074
jmp .Lt_005F
.Lt_0074:
.Lt_0073:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 17
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
mov dword ptr [ebp-4], -1
jmp .Lt_005F
.Lt_0072:
.Lt_0071:
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
je .Lt_0076
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .Lt_0078
jmp .Lt_005F
.Lt_0078:
.Lt_0077:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 7
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
mov dword ptr [ebp-4], -1
jmp .Lt_005F
.Lt_0076:
.Lt_0075:
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
je .Lt_007A
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .Lt_007C
jmp .Lt_005F
.Lt_007C:
.Lt_007B:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ebp+12], ecx
je .Lt_007E
jmp .Lt_005F
.Lt_007E:
.Lt_007D:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 20
mov ecx, dword ptr [ebp+28]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx], eax
mov dword ptr [ebp-4], -1
jmp .Lt_005F
.Lt_007A:
.Lt_0079:
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
je .Lt_0080
mov eax, dword ptr [ebp-12]
and eax, dword ptr [ebp-8]
je .Lt_0082
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp+12], eax
jne .Lt_0084
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 10
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .Lt_0083
.Lt_0084:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 8
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.Lt_0083:
mov dword ptr [ebp-4], -1
jmp .Lt_005F
.Lt_0082:
.Lt_0081:
cmp dword ptr [ebp-8], 0
je .Lt_0086
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
jmp .Lt_0085
.Lt_0086:
mov dword ptr [ebp+16], 8
mov dword ptr [ebp+20], 0
.Lt_0085:
.Lt_0080:
.Lt_007F:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call TYPEMAX
add esp, 24
mov dword ptr [ebp-4], -1
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWIIF
ASTNEWIIF:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_0098:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_009B
jmp .Lt_0099
.Lt_009B:
.Lt_009A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .Lt_009D
push dword ptr [ebp+8]
call ASTCONSTEQZERO
add esp, 4
test eax, eax
je .Lt_009F
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
push dword ptr [ebp+24]
call ASTDTORLISTUNSCOPE
add esp, 4
jmp .Lt_009E
.Lt_009F:
push dword ptr [ebp+20]
call ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call ASTDTORLISTUNSCOPE
add esp, 4
.Lt_009E:
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
jmp .Lt_0099
.Lt_009D:
.Lt_009C:
mov dword ptr [ebp-16], -2147483648
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
cmp dword ptr [eax+4], ecx
je .Lt_00A1
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 20
jne .Lt_00A3
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 131072
test ecx, ecx
je .Lt_00A5
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 4
jne .Lt_00A7
lea ecx, [ebp+12]
push ecx
call ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp+12]
and dword ptr [ecx+4], 511
.Lt_00A7:
.Lt_00A6:
jmp .Lt_00A4
.Lt_00A5:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
je .Lt_00A8
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 7
jne .Lt_00AA
lea ecx, [ebp+12]
push ecx
call ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp+12]
and dword ptr [ecx+4], 511
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
.Lt_00A4:
jmp .Lt_00A2
.Lt_00A3:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 20
jne .Lt_00AB
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 131072
test ecx, ecx
je .Lt_00AD
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 4
jne .Lt_00AF
lea ecx, [ebp+20]
push ecx
call ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp+20]
and dword ptr [ecx+4], 511
.Lt_00AF:
.Lt_00AE:
jmp .Lt_00AC
.Lt_00AD:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
je .Lt_00B0
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 7
jne .Lt_00B2
lea ecx, [ebp+20]
push ecx
call ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp+20]
and dword ptr [ecx+4], 511
.Lt_00B2:
.Lt_00B1:
.Lt_00B0:
.Lt_00AC:
.Lt_00AB:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
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
call HCHECKTYPES
add esp, 24
test eax, eax
jne .Lt_00B4
jmp .Lt_0099
.Lt_00B4:
.Lt_00B3:
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
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-36], eax
push -1
push 0
push dword ptr [ebp-36]
push dword ptr [ebp+8]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00B6
jmp .Lt_0099
.Lt_00B6:
.Lt_00B5:
mov eax, dword ptr [ebp-16]
and eax, 511
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 18
je .Lt_00BA
.Lt_00BB:
cmp dword ptr [ebp-48], 4
jne .Lt_00B9
.Lt_00BA:
mov dword ptr [ebp-16], 17
.Lt_00B9:
.Lt_00B7:
mov eax, dword ptr [ebp-16]
and eax, 511
cmp eax, 7
jne .Lt_00BD
push 0
push 39
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-44]
or dword ptr [eax+12], 16777216
push dword ptr [ebp-44]
call ASTDTORLISTADD
add esp, 4
push dword ptr [ebp-44]
call ASTBUILDFAKEWSTRINGACCESS
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEBEGIN
add esp, 4
push 64
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call ASTBUILDFAKEWSTRINGASSIGN
add esp, 12
mov dword ptr [ebp+12], eax
call ASTDTORLISTSCOPEEND
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEBEGIN
add esp, 4
push 64
push dword ptr [ebp+20]
push dword ptr [ebp-44]
call ASTBUILDFAKEWSTRINGASSIGN
add esp, 12
mov dword ptr [ebp+20], eax
call ASTDTORLISTSCOPEEND
jmp .Lt_00BC
.Lt_00BD:
push dword ptr [ebp-40]
push dword ptr [ebp-16]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-44], eax
push dword ptr [ebp-44]
call ASTDTORLISTADD
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
push dword ptr [ebp-44]
call SYMBHASCTOR
add esp, 4
test eax, eax
je .Lt_00BF
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEBEGIN
add esp, 4
lea eax, [ebp-20]
push eax
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp+12], eax
call ASTDTORLISTSCOPEEND
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEBEGIN
add esp, 4
lea eax, [ebp-24]
push eax
push -1
push dword ptr [ebp+20]
push dword ptr [ebp-44]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp+20], eax
call ASTDTORLISTSCOPEEND
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .Lt_00C1
cmp dword ptr [ebp-20], 0
je .Lt_00C3
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEBEGIN
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp+12]
call ASTPATCHCTORCALL
add esp, 8
mov dword ptr [ebp+12], eax
call ASTDTORLISTSCOPEEND
jmp .Lt_00C2
.Lt_00C3:
mov dword ptr [ebp-28], -1
.Lt_00C2:
cmp dword ptr [ebp-24], 0
je .Lt_00C5
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEBEGIN
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp+20]
call ASTPATCHCTORCALL
add esp, 8
mov dword ptr [ebp+20], eax
call ASTDTORLISTSCOPEEND
jmp .Lt_00C4
.Lt_00C5:
mov dword ptr [ebp-32], -1
.Lt_00C4:
jmp .Lt_00C0
.Lt_00C1:
push 0
push dword ptr [ebp+8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-40]
call ASTBUILDCTORCALL
add esp, 8
push eax
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.Lt_00C0:
push dword ptr [ebp-44]
call SYMBHASDEFCTOR
add esp, 4
test eax, eax
jne .Lt_00C7
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
je .Lt_00C9
jmp .Lt_0099
.Lt_00C9:
.Lt_00C8:
.Lt_00C7:
.Lt_00C6:
.Lt_00BF:
.Lt_00BE:
cmp dword ptr [ebp-20], 0
jne .Lt_00CB
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEBEGIN
add esp, 4
push 64
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-28], 0
je .Lt_00CD
push 0
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-40]
call ASTBUILDCTORCALL
add esp, 8
push eax
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+12], eax
.Lt_00CD:
.Lt_00CC:
call ASTDTORLISTSCOPEEND
.Lt_00CB:
.Lt_00CA:
cmp dword ptr [ebp-24], 0
jne .Lt_00CF
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEBEGIN
add esp, 4
push 64
push dword ptr [ebp+20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp+20], eax
cmp dword ptr [ebp-32], 0
je .Lt_00D1
push 0
push dword ptr [ebp+20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-40]
call ASTBUILDCTORCALL
add esp, 8
push eax
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+20], eax
.Lt_00D1:
.Lt_00D0:
call ASTDTORLISTSCOPEEND
.Lt_00CF:
.Lt_00CE:
.Lt_00BC:
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEBEGIN
add esp, 4
push dword ptr [ebp+12]
call ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp+12], eax
call ASTDTORLISTSCOPEEND
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEBEGIN
add esp, 4
push dword ptr [ebp+20]
call ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp+20], eax
call ASTDTORLISTSCOPEEND
cmp dword ptr [ebp+16], 0
je .Lt_00D3
push 0
push dword ptr [ebp+16]
call ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp+12]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+12], eax
.Lt_00D3:
.Lt_00D2:
cmp dword ptr [ebp+24], 0
je .Lt_00D5
push 0
push dword ptr [ebp+24]
call ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp+20]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+20], eax
.Lt_00D5:
.Lt_00D4:
push dword ptr [ebp-40]
push dword ptr [ebp-16]
push 26
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-44]
mov dword ptr [eax+12], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ecx+56], eax
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call ASTNEWLINK
add esp, 12
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-36]
mov dword ptr [eax+20], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADIIF
ASTLOADIIF:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-16], eax
cmp dword ptr [AST+136], 0
je .Lt_00DB
call dword ptr [IR+108]
.Lt_00DB:
.Lt_00DA:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
call ASTLOAD
add esp, 4
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
cmp dword ptr [AST+136], 0
je .Lt_00DD
push dword ptr [ebp-20]
push 98
call dword ptr [IR+144]
add esp, 8
.Lt_00DD:
.Lt_00DC:
cmp dword ptr [AST+136], 0
je .Lt_00DF
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [IR+68]
add esp, 4
.Lt_00DF:
.Lt_00DE:
cmp dword ptr [AST+136], 0
je .Lt_00E1
call dword ptr [IR+108]
.Lt_00E1:
.Lt_00E0:
push dword ptr [ebp-16]
call ASTLOAD
add esp, 4
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
cmp dword ptr [AST+136], 0
je .Lt_00E3
push dword ptr [ebp-20]
call dword ptr [IR+68]
add esp, 4
.Lt_00E3:
.Lt_00E2:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
push dword ptr [ebx+60]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call ASTDELNODE
add esp, 4
.Lt_00D9:
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

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
