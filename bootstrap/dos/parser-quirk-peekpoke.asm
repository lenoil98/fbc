	.intel_syntax noprefix

.section .text
.balign 16

.globl _CPOKESTMT
_CPOKESTMT:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0077:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
call _HOPTIONALTYPEANDFIRSTEXPR
add esp, 8
mov dword ptr [ebp-8], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_007A
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_0079
.Lt_007A:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0079:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_007C
jmp .Lt_0078
.Lt_007C:
.Lt_007B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_007D
mov dword ptr [ebp-24], 24
jmp .Lt_008E
.Lt_007D:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_008E:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 2
jne .Lt_0081
.Lt_0082:
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
jmp .Lt_0078
jmp .Lt_007F
.Lt_0081:
cmp dword ptr [ebp-28], 1
jne .Lt_0083
.Lt_0084:
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_007F
.Lt_0083:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0086
mov dword ptr [ebp-32], 24
jmp .Lt_008F
.Lt_0086:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_008F:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [_ENV+272]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ebx
je .Lt_0089
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
jmp .Lt_0078
.Lt_0089:
.Lt_0088:
.Lt_0085:
.Lt_007F:
mov ebx, dword ptr [_ENV+196]
and ebx, 128
test ebx, ebx
je .Lt_008B
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov eax, dword ptr [ebp-16]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-16]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-16]
and eax, 32505856
or ebx, eax
push ebx
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_008B:
.Lt_008A:
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_008D
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .Lt_008C
.Lt_008D:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
.Lt_008C:
mov dword ptr [ebp-4], -1
.Lt_0078:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPEEKFUNCT
_CPEEKFUNCT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0090:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0093
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_0092
.Lt_0093:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0092:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call _HOPTIONALTYPEANDFIRSTEXPR
add esp, 8
mov dword ptr [ebp-8], eax
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
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0094:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0096
mov dword ptr [ebp-20], 24
jmp .Lt_00AB
.Lt_0096:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00AB:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 2
jne .Lt_009A
.Lt_009B:
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
jmp .Lt_0098
.Lt_009A:
cmp dword ptr [ebp-24], 1
jne .Lt_009C
.Lt_009D:
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_0098
.Lt_009C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_009F
mov dword ptr [ebp-28], 24
jmp .Lt_00AC
.Lt_009F:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_00AC:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_ENV+272]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ebx
je .Lt_00A2
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
.Lt_00A2:
.Lt_00A1:
.Lt_009E:
.Lt_0098:
cmp dword ptr [ebp-8], 0
jne .Lt_00A4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00A4:
.Lt_00A3:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_00A6
cmp dword ptr [ebp-12], 20
jne .Lt_00A8
.Lt_00A9:
jmp .Lt_00A7
.Lt_00A8:
push 0
push -1
push 265
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0091
.Lt_00AA:
.Lt_00A7:
push 64
call _LEXSKIPTOKEN
add esp, 4
push 0
push -1
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_00A5
.Lt_00A6:
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_00A5:
.Lt_0091:
mov eax, dword ptr [ebp-4]
pop ebx
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
.balign 16
_HOPTIONALTYPEANDFIRSTEXPR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-16], 0
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 464
call _CTYPEOREXPRESSION
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_006D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
je .Lt_0071
.Lt_0072:
cmp dword ptr [ebp-24], 18
jne .Lt_0070
.Lt_0071:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 3
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.Lt_0070:
.Lt_006E:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0074
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_0073
.Lt_0074:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0073:
call _CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0076
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
.Lt_0076:
.Lt_0075:
jmp .Lt_006C
.Lt_006D:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.Lt_006C:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0069:
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
