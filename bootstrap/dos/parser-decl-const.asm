	.intel_syntax noprefix

.section .text
.balign 16

.globl _CCONSTDECL
_CCONSTDECL:
push ebp
mov ebp, esp
sub esp, 8
.Lt_00B5:
push 2048
call _LEXSKIPTOKEN
add esp, 4
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
call _HGETTYPE
add esp, 8
.Lt_00B7:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _CCONSTASSIGN
add esp, 12
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_00BB
jmp .Lt_00B8
.Lt_00BB:
.Lt_00BA:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00B9:
jmp .Lt_00B7
.Lt_00B8:
.Lt_00B6:
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
_HGETTYPE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0068:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_006B
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 1
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .Lt_006F
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.Lt_006F:
.Lt_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_0073
.Lt_0074:
cmp dword ptr [ebp-16], 18
je .Lt_0073
.Lt_0075:
cmp dword ptr [ebp-16], 4
je .Lt_0073
.Lt_0076:
cmp dword ptr [ebp-16], 7
je .Lt_0073
.Lt_0077:
cmp dword ptr [ebp-16], 20
je .Lt_0073
.Lt_0078:
cmp dword ptr [ebp-16], 23
jne .Lt_0072
.Lt_0073:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], -2147483648
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.Lt_0072:
.Lt_0070:
jmp .Lt_006A
.Lt_006B:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], -2147483648
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.Lt_006A:
.Lt_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CCONSTASSIGN:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_0079:
call _CCURRENTPARENTID
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-32], eax
jmp .Lt_007C
.Lt_007E:
mov eax, dword ptr [_ENV+888]
and eax, 524288
test eax, eax
je .Lt_0080
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .Lt_0082
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
jle .Lt_0084
push 0
push 0
push 90
call _ERRREPORT
add esp, 12
.Lt_0084:
.Lt_0083:
.Lt_0082:
.Lt_0081:
.Lt_0080:
.Lt_007F:
jmp .Lt_007B
.Lt_0085:
cmp dword ptr [_ENV+136], 3
je .Lt_0087
lea ebx, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], ebx
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [_PARSER+96], 0
seta bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0089
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
jmp .Lt_007A
.Lt_0089:
.Lt_0088:
.Lt_0087:
.Lt_0086:
jmp .Lt_007B
.Lt_008A:
cmp dword ptr [_ENV+136], 3
je .Lt_008C
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
jmp .Lt_007A
.Lt_008C:
.Lt_008B:
jmp .Lt_007B
.Lt_008D:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
jmp .Lt_007A
jmp .Lt_007B
.Lt_007C:
cmp dword ptr [ebp-32], 5
ja .Lt_008D
mov ebx, dword ptr [ebp-32]
jmp dword ptr [_.LT_008E+ebx*4]
_.LT_008E:
.int .Lt_007E
.int .Lt_008A
.int .Lt_0085
.int .Lt_008D
.int .Lt_008D
.int .Lt_008A
.Lt_007B:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_00BE
call _fb_StrAssign
add esp, 20
push 4096
call _LEXCHECKTOKEN
add esp, 4
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
push 0
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], -2147483648
jne .Lt_0090
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HGETTYPE
add esp, 8
.Lt_0090:
.Lt_008F:
cmp dword ptr [ebp-8], -2147483648
je .Lt_0092
cmp dword ptr [ebp+8], -2147483648
je .Lt_0094
push 0
push 1
push 0
push offset _Lt_00BE
push 17
call _ERRREPORTEX
add esp, 20
.Lt_0094:
.Lt_0093:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
mov dword ptr [ebp+12], 0
or dword ptr [ebp+16], 1048576
.Lt_0092:
.Lt_0091:
mov dword ptr [ebp-4], 0
call _CASSIGNTOKEN
test eax, eax
jne .Lt_0096
push 0
push 0
push 10
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], -1
.Lt_0096:
.Lt_0095:
call _CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0098
push 0
push 1
push 0
push offset _Lt_00BE
push 11
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+8], -2147483648
jne .Lt_009A
mov dword ptr [ebp+8], 8
.Lt_009A:
.Lt_0099:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-12], eax
.Lt_0098:
.Lt_0097:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp-28], 4
je .Lt_009D
.Lt_009E:
cmp dword ptr [ebp-28], 7
jne .Lt_009C
.Lt_009D:
push dword ptr [ebp-12]
call _ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_009C:
.Lt_009B:
cmp dword ptr [ebp-16], 0
je .Lt_00A0
cmp dword ptr [ebp+8], -2147483648
je .Lt_00A2
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 17
je .Lt_00A4
push 0
push 1
push 0
push offset _Lt_00BE
push 24
call _ERRREPORTEX
add esp, 20
.Lt_00A4:
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+16]
lea eax, [ebp-24]
push eax
push 0
push dword ptr [ebp-28]
push offset _Lt_00BE
call _SYMBREUSEORADDCONST
add esp, 20
test eax, eax
jne .Lt_00A6
push 0
push 1
push 0
push offset _Lt_00BE
push 4
call _ERRREPORTEX
add esp, 20
.Lt_00A6:
.Lt_00A5:
jmp .Lt_009F
.Lt_00A0:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
je .Lt_00A8
push 0
push 1
push 0
push offset _Lt_00BE
push 11
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-28], 8
.Lt_00A8:
.Lt_00A7:
cmp dword ptr [ebp+8], -2147483648
je .Lt_00AA
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTCHECKASSIGNTOTYPE
add esp, 12
test eax, eax
jne .Lt_00AC
push 0
push 1
push 0
push offset _Lt_00BE
push 20
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp+12], 0
push 0
call _ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_00AC:
.Lt_00AB:
mov eax, dword ptr [ebp-28]
cmp eax, dword ptr [ebp+8]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [ebx+8]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
je .Lt_00AE
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00B0
push 0
push 1
push 0
push offset _Lt_00BE
push 24
call _ERRREPORTEX
add esp, 20
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
jmp .Lt_00A9
.Lt_00AA:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp-12]
mov esi, dword ptr [eax+8]
mov dword ptr [ebp+12], esi
.Lt_00A9:
push dword ptr [ebp+16]
mov esi, dword ptr [ebp-12]
lea eax, [esi+20]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push offset _Lt_00BE
call _SYMBREUSEORADDCONST
add esp, 20
test eax, eax
jne .Lt_00B2
push 0
push 1
push 0
push offset _Lt_00BE
push 4
call _ERRREPORTEX
add esp, 20
.Lt_00B2:
.Lt_00B1:
.Lt_009F:
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
cmp dword ptr [ebp-4], 0
je .Lt_00B4
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
.Lt_00B4:
.Lt_00B3:
.Lt_007A:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00BE,129
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
