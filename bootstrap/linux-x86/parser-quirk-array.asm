	.intel_syntax noprefix

.section .text
.balign 16

.globl CERASESTMT
CERASESTMT:
.type CERASESTMT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.Lt_006A:
sub esp, 12
push 1
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006E
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .Lt_006D
.Lt_006E:
sub esp, 12
push dword ptr [ebp-8]
call ASTREMOVENIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0070
sub esp, 12
push dword ptr [ebp-12]
call SYMBISARRAY
add esp, 16
test eax, eax
jne .Lt_0072
mov dword ptr [ebp-12], 0
.Lt_0072:
.Lt_0071:
.Lt_0070:
.Lt_006F:
cmp dword ptr [ebp-12], 0
jne .Lt_0074
sub esp, 4
push 0
push 0
push 63
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .Lt_0073
.Lt_0074:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_0076
sub esp, 4
push 0
push 0
push 119
call ERRREPORT
add esp, 16
.Lt_0076:
.Lt_0075:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 16388
test eax, eax
je .Lt_0078
sub esp, 12
sub esp, 8
push -1
push -1
push dword ptr [ebp-8]
call RTLARRAYERASE
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .Lt_0077
.Lt_0078:
sub esp, 12
push dword ptr [ebp-8]
call RTLARRAYCLEAR
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_0077:
.Lt_0073:
.Lt_006D:
.Lt_006C:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_006A
.Lt_006B:
mov dword ptr [ebp-4], -1
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CERASESTMT, .-CERASESTMT
.balign 16

.globl CSWAPSTMT
CSWAPSTMT:
.type CSWAPSTMT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00BD:
call ASTSCOPEBEGIN
mov dword ptr [ebp-8], eax
call HSCOPEDSWAP
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTSCOPEEND
add esp, 16
.Lt_00BE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CSWAPSTMT, .-CSWAPSTMT
.balign 16

.globl CARRAYFUNCT
CARRAYFUNCT:
.type CARRAYFUNCT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BF:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 493
je .Lt_00C3
.Lt_00C4:
cmp dword ptr [ebp+8], 494
jne .Lt_00C2
.Lt_00C3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_00C6
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_00C5
.Lt_00C6:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00C5:
sub esp, 12
push 1
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00C8
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
.Lt_00C8:
.Lt_00C7:
sub esp, 12
push dword ptr [ebp-8]
call ASTREMOVENIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_00CA
sub esp, 12
push dword ptr [ebp-16]
call SYMBISARRAY
add esp, 16
test eax, eax
jne .Lt_00CC
mov dword ptr [ebp-16], 0
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
cmp dword ptr [ebp-16], 0
jne .Lt_00CE
sub esp, 4
push 0
push -1
push 63
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
.Lt_00CE:
.Lt_00CD:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_00D0
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00D2
jmp .Lt_00C0
.Lt_00D2:
.Lt_00D1:
jmp .Lt_00CF
.Lt_00D0:
push 0
push 8
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00CF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00D4
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_00D3
.Lt_00D4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00D3:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTBUILDARRAYBOUND
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CARRAYFUNCT, .-CARRAYFUNCT
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
HSCOPEDSWAP:
.type HSCOPEDSWAP, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_0079:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 16
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_007C
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_007A
.Lt_007C:
.Lt_007B:
sub esp, 12
push dword ptr [ebp-8]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .Lt_007E
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.Lt_007E:
.Lt_007D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0080
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_007F
.Lt_0080:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_007F:
sub esp, 12
push 16
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0082
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_007A
.Lt_0082:
.Lt_0081:
sub esp, 12
push dword ptr [ebp-12]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .Lt_0084
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.Lt_0084:
.Lt_0083:
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
je .Lt_0086
cmp dword ptr [ebp-16], 20
jne .Lt_0088
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx+116]
and eax, 131072
test eax, eax
je .Lt_008A
cmp dword ptr [ebp-20], 4
jne .Lt_008C
sub esp, 12
lea eax, [ebp-8]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.Lt_008C:
.Lt_008B:
jmp .Lt_0089
.Lt_008A:
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx+116]
and eax, 65536
test eax, eax
je .Lt_008D
cmp dword ptr [ebp-20], 7
jne .Lt_008F
sub esp, 12
lea eax, [ebp-8]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.Lt_008F:
.Lt_008E:
.Lt_008D:
.Lt_0089:
jmp .Lt_0087
.Lt_0088:
cmp dword ptr [ebp-20], 20
jne .Lt_0090
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
je .Lt_0092
cmp dword ptr [ebp-16], 4
jne .Lt_0094
sub esp, 12
lea ebx, [ebp-12]
push ebx
call ASTTRYOVLSTRINGCONV
add esp, 16
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
.Lt_0094:
.Lt_0093:
jmp .Lt_0091
.Lt_0092:
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+116]
and ebx, 65536
test ebx, ebx
je .Lt_0095
cmp dword ptr [ebp-16], 7
jne .Lt_0097
sub esp, 12
lea ebx, [ebp-12]
push ebx
call ASTTRYOVLSTRINGCONV
add esp, 16
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
.Lt_0097:
.Lt_0096:
.Lt_0095:
.Lt_0091:
.Lt_0090:
.Lt_0087:
.Lt_0086:
.Lt_0085:
cmp dword ptr [ebp-16], 17
je .Lt_009A
.Lt_009B:
cmp dword ptr [ebp-16], 18
je .Lt_009A
.Lt_009C:
cmp dword ptr [ebp-16], 4
jne .Lt_0099
.Lt_009A:
cmp dword ptr [ebp-20], 17
je .Lt_009F
.Lt_00A0:
cmp dword ptr [ebp-20], 18
je .Lt_009F
.Lt_00A1:
cmp dword ptr [ebp-20], 4
jne .Lt_009E
.Lt_009F:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRSWAP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_009D
.Lt_009E:
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
.Lt_00A2:
.Lt_009D:
jmp .Lt_007A
jmp .Lt_0098
.Lt_0099:
cmp dword ptr [ebp-16], 7
jne .Lt_00A3
.Lt_00A4:
cmp dword ptr [ebp-20], 7
jne .Lt_00A6
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLWSTRSWAP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00A5
.Lt_00A6:
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
.Lt_00A5:
jmp .Lt_007A
.Lt_00A3:
.Lt_0098:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTCHECKASSIGN
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov ebx, eax
call ASTCHECKASSIGN
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_00A8
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
jmp .Lt_007A
.Lt_00A8:
.Lt_00A7:
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
je .Lt_00AA
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLMEMSWAP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_007A
.Lt_00AA:
.Lt_00A9:
mov dword ptr [ebp-24], -1
mov eax, dword ptr [ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_00AB
mov dword ptr [ebp-28], 24
jmp .Lt_00D5
.Lt_00AB:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_00D5:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_00AD
mov dword ptr [ebp-32], 24
jmp .Lt_00D6
.Lt_00AD:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_00D6:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [ebp-56]
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ecx, dword ptr [SYMB_DTYPETB+ebx+4]
sete cl
shr ecx, 1
sbb ecx, ecx
and dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .Lt_00AF
mov dword ptr [ebp-36], 24
jmp .Lt_00D7
.Lt_00AF:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-36], ecx
.Lt_00D7:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov dword ptr [ebp-60], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .Lt_00B1
mov dword ptr [ebp-40], 24
jmp .Lt_00D8
.Lt_00B1:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-40], ecx
.Lt_00D8:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [SYMB_DTYPETB+ecx]
cmp eax, dword ptr [SYMB_DTYPETB+ebx]
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 19
jne .Lt_00B3
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .Lt_00D9
.Lt_00B3:
mov dword ptr [ebp-44], 0
.Lt_00D9:
mov eax, dword ptr [ebp-44]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 19
jne .Lt_00B5
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .Lt_00DA
.Lt_00B5:
mov dword ptr [ebp-48], 0
.Lt_00DA:
mov eax, dword ptr [ebp-48]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov dword ptr [ebp-52], 0
sub esp, 12
push dword ptr [ebp-8]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .Lt_00B8
sub esp, 4
push 0
sub esp, 4
lea eax, [ebp-8]
push eax
call ASTMAKEREF
add esp, 8
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
.Lt_00B8:
.Lt_00B7:
sub esp, 12
push dword ptr [ebp-12]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .Lt_00BA
sub esp, 4
push 0
sub esp, 4
lea eax, [ebp-12]
push eax
call ASTMAKEREF
add esp, 8
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
.Lt_00BA:
.Lt_00B9:
cmp dword ptr [ebp-24], 0
je .Lt_00BC
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 8
push eax
push 88
call ASTNEWSTACK
add esp, 8
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 4
push 0
sub esp, 12
push 0
sub esp, 4
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 4
push 0
push dword ptr [ebp-12]
push 89
call ASTNEWSTACK
add esp, 8
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
jmp .Lt_00BB
.Lt_00BC:
sub esp, 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-56], eax
sub esp, 4
push 0
sub esp, 12
push 0
sub esp, 4
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 8
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-56]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 4
push 0
sub esp, 12
push 0
sub esp, 4
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 4
push 0
sub esp, 12
push 0
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-56]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp-12]
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
.Lt_00BB:
sub esp, 12
push dword ptr [ebp-52]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_007A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HSCOPEDSWAP, .-HSCOPEDSWAP

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
