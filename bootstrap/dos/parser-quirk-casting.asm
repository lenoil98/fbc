	.intel_syntax noprefix

.section .text
.balign 16

.globl _CTYPECONVEXPR
_CTYPECONVEXPR:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .Lt_006B
.Lt_006D:
mov dword ptr [ebp-8], 1
jmp .Lt_006A
.Lt_006E:
mov dword ptr [ebp-8], 2
jmp .Lt_006A
.Lt_006F:
mov dword ptr [ebp-8], 3
jmp .Lt_006A
.Lt_0070:
mov dword ptr [ebp-8], 5
jmp .Lt_006A
.Lt_0071:
mov dword ptr [ebp-8], 6
jmp .Lt_006A
.Lt_0072:
mov eax, dword ptr [_ENV+892]
mov dword ptr [ebp-8], eax
jmp .Lt_006A
.Lt_0073:
mov dword ptr [ebp-8], 9
jmp .Lt_006A
.Lt_0074:
mov dword ptr [ebp-8], 11
jmp .Lt_006A
.Lt_0075:
mov dword ptr [ebp-8], 12
jmp .Lt_006A
.Lt_0076:
mov dword ptr [ebp-8], 13
jmp .Lt_006A
.Lt_0077:
mov dword ptr [ebp-8], 14
jmp .Lt_006A
.Lt_0078:
mov dword ptr [ebp-8], 15
jmp .Lt_006A
.Lt_0079:
mov dword ptr [ebp-8], 16
jmp .Lt_006A
.Lt_007A:
mov dword ptr [ebp-12], 119
jmp .Lt_006A
.Lt_007B:
mov dword ptr [ebp-12], 120
jmp .Lt_006A
.Lt_006B:
mov eax, dword ptr [ebp-24]
add eax, 4294966897
cmp eax, 14
ja .Lt_006A
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_007C+eax*4-1596]
_.LT_007C:
.int .Lt_006D
.int .Lt_006E
.int .Lt_006F
.int .Lt_0070
.int .Lt_0071
.int .Lt_0072
.int .Lt_0073
.int .Lt_0074
.int .Lt_0075
.int .Lt_0076
.int .Lt_0077
.int .Lt_0078
.int .Lt_0079
.int .Lt_007A
.int .Lt_007B
.Lt_006A:
cmp dword ptr [ebp-8], -2147483648
jne .Lt_007E
cmp dword ptr [ebp-12], -1
jne .Lt_0080
mov dword ptr [ebp-4], 0
jmp .Lt_0069
.Lt_0080:
.Lt_007F:
.Lt_007E:
.Lt_007D:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp eax, 404
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 405
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0082
push 0
push 301
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0084
push 8
call _CGTINPARENSONLYEXPR
push eax
call _CCONSTINTEXPR
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
mov eax, dword ptr [ebp+8]
cmp eax, 405
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _HINTEGERTYPEFROMBITSIZE
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 300
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0086
push 0
push 0
push 309
call _ERRREPORT
add esp, 12
.Lt_0086:
.Lt_0085:
.Lt_0084:
.Lt_0083:
.Lt_0082:
.Lt_0081:
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0088
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.Lt_0088:
.Lt_0087:
call _CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_008A
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_008A:
.Lt_0089:
cmp dword ptr [ebp-12], 119
jne .Lt_008C
.Lt_008D:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+4]
call _TYPETOSIGNED
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_008B
.Lt_008C:
cmp dword ptr [ebp-12], 120
jne .Lt_008E
.Lt_008F:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+4]
call _TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_008E:
.Lt_008B:
lea eax, [ebp-16]
push eax
push 2
push dword ptr [ebp-20]
push 0
push dword ptr [ebp-8]
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0091
cmp dword ptr [ebp-16], 0
jne .Lt_0093
mov dword ptr [ebp-16], 20
.Lt_0093:
.Lt_0092:
push 0
push -1
push dword ptr [ebp-16]
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_0091:
.Lt_0090:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0095
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0094
.Lt_0095:
cmp dword ptr [ebp+12], 0
jne .Lt_0097
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0097:
.Lt_0096:
.Lt_0094:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CANONTYPE
_CANONTYPE:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.Lt_009B:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 301
call _HMATCH
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_009E
push 1
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-32]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-20]
push eax
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .Lt_00A2
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.Lt_00A2:
.Lt_00A1:
jmp .Lt_009D
.Lt_009E:
mov eax, dword ptr [_PARSER+156]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [_PARSER+152]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], -2147483648
jne .Lt_00A4
push 0
push 0
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.Lt_00A4:
.Lt_00A3:
mov eax, dword ptr [ebp-20]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_00A8
.Lt_00A9:
cmp dword ptr [ebp-28], 23
jne .Lt_00A7
.Lt_00A8:
push 0
push 0
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.Lt_00A7:
.Lt_00A5:
.Lt_009D:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
cmp dword ptr [ebp-24], 0
je .Lt_00AB
push 0
push 300
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00AD
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 300
call _HSKIPUNTIL
add esp, 16
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
mov eax, dword ptr [ebp-20]
and eax, 511
cmp eax, 20
jne .Lt_00AF
push dword ptr [ebp-16]
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .Lt_00B1
push dword ptr [ebp-16]
call _CCTORCALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_009C
.Lt_00B1:
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push -2147483648
push 0
push dword ptr [ebp-12]
call _CINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTREPLACESYMBOLONTREE
add esp, 12
push 0
push dword ptr [ebp-12]
call _SYMBDELSYMBOL
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_009C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
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
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
