	.intel_syntax noprefix

.section .text
.balign 16

.globl _CERASESTMT@0
_CERASESTMT@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
push 2048
call _LEXSKIPTOKEN@4
.Lt_006B:
push 1
call _CVARORDEREF@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006F
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .Lt_006E
.Lt_006F:
push dword ptr [ebp-8]
call _ASTREMOVENIDXARRAY@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0071
push dword ptr [ebp-12]
call _SYMBISARRAY@4
test eax, eax
jne .Lt_0073
mov dword ptr [ebp-12], 0
.Lt_0073:
.Lt_0072:
.Lt_0071:
.Lt_0070:
cmp dword ptr [ebp-12], 0
jne .Lt_0075
push 0
push 0
push 63
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .Lt_0074
.Lt_0075:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_0077
push 0
push 0
push 119
call _ERRREPORT@12
.Lt_0077:
.Lt_0076:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 16388
test eax, eax
je .Lt_0079
push -1
push -1
push dword ptr [ebp-8]
call _RTLARRAYERASE@12
push eax
call _ASTADD@4
jmp .Lt_0078
.Lt_0079:
push dword ptr [ebp-8]
call _RTLARRAYCLEAR@4
push eax
call _ASTADD@4
.Lt_0078:
.Lt_0074:
.Lt_006E:
.Lt_006D:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .Lt_006B
.Lt_006C:
mov dword ptr [ebp-4], -1
.Lt_006A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSWAPSTMT@0
_CSWAPSTMT@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00BE:
call _ASTSCOPEBEGIN@0
mov dword ptr [ebp-8], eax
call _HSCOPEDSWAP@0
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
call _ASTSCOPEEND@4
.Lt_00BF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CARRAYFUNCT@4
_CARRAYFUNCT@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C0:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 493
je .Lt_00C4
.Lt_00C5:
cmp dword ptr [ebp+8], 494
jne .Lt_00C3
.Lt_00C4:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_00C7
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_00C6
.Lt_00C7:
push 0
call _LEXSKIPTOKEN@4
.Lt_00C6:
push 1
call _CVARORDEREF@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00C9
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_00C1
.Lt_00C9:
.Lt_00C8:
push dword ptr [ebp-8]
call _ASTREMOVENIDXARRAY@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_00CB
push dword ptr [ebp-16]
call _SYMBISARRAY@4
test eax, eax
jne .Lt_00CD
mov dword ptr [ebp-16], 0
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
cmp dword ptr [ebp-16], 0
jne .Lt_00CF
push 0
push -1
push 63
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_00C1
.Lt_00CF:
.Lt_00CE:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_00D1
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00D3
jmp .Lt_00C1
.Lt_00D3:
.Lt_00D2:
jmp .Lt_00D0
.Lt_00D1:
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.Lt_00D0:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_00D5
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_00D4
.Lt_00D5:
push 0
call _LEXSKIPTOKEN@4
.Lt_00D4:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTBUILDARRAYBOUND@12
mov dword ptr [ebp-4], eax
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
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
_HSCOPEDSWAP@0:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.Lt_007A:
push 2048
call _LEXSKIPTOKEN@4
push 16
call _CVARORDEREF@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_007D
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_007B
.Lt_007D:
.Lt_007C:
push dword ptr [ebp-8]
call _ASTISCONSTANT@4
test eax, eax
je .Lt_007F
push 0
push -1
push 119
call _ERRREPORT@12
.Lt_007F:
.Lt_007E:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0081
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0080
.Lt_0081:
push 0
call _LEXSKIPTOKEN@4
.Lt_0080:
push 16
call _CVARORDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0083
push 0
push 0
push 14
call _ERRREPORT@12
push dword ptr [ebp-8]
call _ASTDELTREE@4
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_007B
.Lt_0083:
.Lt_0082:
push dword ptr [ebp-12]
call _ASTISCONSTANT@4
test eax, eax
je .Lt_0085
push 0
push -1
push 119
call _ERRREPORT@12
.Lt_0085:
.Lt_0084:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
je .Lt_0087
cmp dword ptr [ebp-16], 20
jne .Lt_0089
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx+120]
and eax, 131072
test eax, eax
je .Lt_008B
cmp dword ptr [ebp-20], 4
jne .Lt_008D
lea eax, [ebp-8]
push eax
call _ASTTRYOVLSTRINGCONV@4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.Lt_008D:
.Lt_008C:
jmp .Lt_008A
.Lt_008B:
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx+120]
and eax, 65536
test eax, eax
je .Lt_008E
cmp dword ptr [ebp-20], 7
jne .Lt_0090
lea eax, [ebp-8]
push eax
call _ASTTRYOVLSTRINGCONV@4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.Lt_0090:
.Lt_008F:
.Lt_008E:
.Lt_008A:
jmp .Lt_0088
.Lt_0089:
cmp dword ptr [ebp-20], 20
jne .Lt_0091
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+120]
and ebx, 131072
test ebx, ebx
je .Lt_0093
cmp dword ptr [ebp-16], 4
jne .Lt_0095
lea ebx, [ebp-12]
push ebx
call _ASTTRYOVLSTRINGCONV@4
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
.Lt_0095:
.Lt_0094:
jmp .Lt_0092
.Lt_0093:
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+120]
and ebx, 65536
test ebx, ebx
je .Lt_0096
cmp dword ptr [ebp-16], 7
jne .Lt_0098
lea ebx, [ebp-12]
push ebx
call _ASTTRYOVLSTRINGCONV@4
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
.Lt_0098:
.Lt_0097:
.Lt_0096:
.Lt_0092:
.Lt_0091:
.Lt_0088:
.Lt_0087:
.Lt_0086:
cmp dword ptr [ebp-16], 17
je .Lt_009B
.Lt_009C:
cmp dword ptr [ebp-16], 18
je .Lt_009B
.Lt_009D:
cmp dword ptr [ebp-16], 4
jne .Lt_009A
.Lt_009B:
cmp dword ptr [ebp-20], 17
je .Lt_00A0
.Lt_00A1:
cmp dword ptr [ebp-20], 18
je .Lt_00A0
.Lt_00A2:
cmp dword ptr [ebp-20], 4
jne .Lt_009F
.Lt_00A0:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRSWAP@8
mov dword ptr [ebp-4], eax
jmp .Lt_009E
.Lt_009F:
push 0
push 0
push 20
call _ERRREPORT@12
.Lt_00A3:
.Lt_009E:
jmp .Lt_007B
jmp .Lt_0099
.Lt_009A:
cmp dword ptr [ebp-16], 7
jne .Lt_00A4
.Lt_00A5:
cmp dword ptr [ebp-20], 7
jne .Lt_00A7
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLWSTRSWAP@8
mov dword ptr [ebp-4], eax
jmp .Lt_00A6
.Lt_00A7:
push 0
push 0
push 20
call _ERRREPORT@12
.Lt_00A6:
jmp .Lt_007B
.Lt_00A4:
.Lt_0099:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTCHECKASSIGN@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov ebx, eax
call _ASTCHECKASSIGN@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_00A9
push 0
push 0
push 20
call _ERRREPORT@12
jmp .Lt_007B
.Lt_00A9:
.Lt_00A8:
mov eax, dword ptr [ebp-16]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00AB
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLMEMSWAP@8
mov dword ptr [ebp-4], eax
jmp .Lt_007B
.Lt_00AB:
.Lt_00AA:
mov dword ptr [ebp-24], -1
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_00AC
mov dword ptr [ebp-28], 24
jmp .Lt_00D6
.Lt_00AC:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_00D6:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00AE
mov dword ptr [ebp-32], 24
jmp .Lt_00D7
.Lt_00AE:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_00D7:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [ebp-56]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
sete cl
shr ecx, 1
sbb ecx, ecx
and dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .Lt_00B0
mov dword ptr [ebp-36], 24
jmp .Lt_00D8
.Lt_00B0:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-36], ecx
.Lt_00D8:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov dword ptr [ebp-60], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .Lt_00B2
mov dword ptr [ebp-40], 24
jmp .Lt_00D9
.Lt_00B2:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-40], ecx
.Lt_00D9:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
cmp eax, dword ptr [_SYMB_DTYPETB+ebx]
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 19
jne .Lt_00B4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+116]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .Lt_00DA
.Lt_00B4:
mov dword ptr [ebp-44], 0
.Lt_00DA:
mov eax, dword ptr [ebp-44]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 19
jne .Lt_00B6
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+116]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .Lt_00DB
.Lt_00B6:
mov dword ptr [ebp-48], 0
.Lt_00DB:
mov eax, dword ptr [ebp-48]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov dword ptr [ebp-52], 0
push dword ptr [ebp-8]
call _ASTHASSIDEFX@4
test eax, eax
je .Lt_00B9
push 0
lea eax, [ebp-8]
push eax
call _ASTMAKEREF@4
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
.Lt_00B9:
.Lt_00B8:
push dword ptr [ebp-12]
call _ASTHASSIDEFX@4
test eax, eax
je .Lt_00BB
push 0
lea eax, [ebp-12]
push eax
call _ASTMAKEREF@4
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
.Lt_00BB:
.Lt_00BA:
cmp dword ptr [ebp-24], 0
je .Lt_00BD
push 0
push dword ptr [ebp-8]
call _ASTCLONETREE@4
push eax
push 88
call _ASTNEWSTACK@8
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
push 0
push 0
push dword ptr [ebp-12]
call _ASTCLONETREE@4
push eax
push dword ptr [ebp-8]
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
push 0
push dword ptr [ebp-12]
push 89
call _ASTNEWSTACK@8
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
jmp .Lt_00BC
.Lt_00BD:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-56], eax
push 0
push 0
push dword ptr [ebp-8]
call _ASTCLONETREE@4
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-56]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
push 0
push 0
push dword ptr [ebp-12]
call _ASTCLONETREE@4
push eax
push dword ptr [ebp-8]
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
push 0
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-56]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp-12]
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
.Lt_00BC:
push dword ptr [ebp-52]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_007B:
mov eax, dword ptr [ebp-4]
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
