	.intel_syntax noprefix

.section .text
.balign 16

.globl CCONSTDECL
CCONSTDECL:
.type CCONSTDECL, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00B4:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
call HGETTYPE
add esp, 16
.Lt_00B6:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call CCONSTASSIGN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_00BA
jmp .Lt_00B7
.Lt_00BA:
.Lt_00B9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00B8:
jmp .Lt_00B6
.Lt_00B7:
.Lt_00B5:
mov esp, ebp
pop ebp
ret
.size CCONSTDECL, .-CCONSTDECL
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
HGETTYPE:
.type HGETTYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0067:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .Lt_006A
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
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
call CSYMBOLTYPE
add esp, 32
test eax, eax
jne .Lt_006E
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_0072
.Lt_0073:
cmp dword ptr [ebp-16], 18
je .Lt_0072
.Lt_0074:
cmp dword ptr [ebp-16], 4
je .Lt_0072
.Lt_0075:
cmp dword ptr [ebp-16], 7
je .Lt_0072
.Lt_0076:
cmp dword ptr [ebp-16], 20
je .Lt_0072
.Lt_0077:
cmp dword ptr [ebp-16], 23
jne .Lt_0071
.Lt_0072:
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], -2147483648
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.Lt_0071:
.Lt_006F:
jmp .Lt_0069
.Lt_006A:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], -2147483648
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.Lt_0069:
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETTYPE, .-HGETTYPE
.balign 16
CCONSTASSIGN:
.type CCONSTASSIGN, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_0078:
call CCURRENTPARENTID
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-32], eax
jmp .Lt_007B
.Lt_007D:
mov eax, dword ptr [ENV+888]
and eax, 524288
test eax, eax
je .Lt_007F
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_0081
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .Lt_0083
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.Lt_0083:
.Lt_0082:
.Lt_0081:
.Lt_0080:
.Lt_007F:
.Lt_007E:
jmp .Lt_007A
.Lt_0084:
cmp dword ptr [ENV+136], 3
je .Lt_0086
lea ebx, [SYMB+98352]
cmp dword ptr [SYMB+98528], ebx
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [PARSER+96], 0
seta bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0088
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .Lt_0079
.Lt_0088:
.Lt_0087:
.Lt_0086:
.Lt_0085:
jmp .Lt_007A
.Lt_0089:
cmp dword ptr [ENV+136], 3
je .Lt_008B
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .Lt_0079
.Lt_008B:
.Lt_008A:
jmp .Lt_007A
.Lt_008C:
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
jmp .Lt_0079
jmp .Lt_007A
.Lt_007B:
cmp dword ptr [ebp-32], 5
ja .Lt_008C
mov ebx, dword ptr [ebp-32]
jmp dword ptr [.LT_008D+ebx*4]
.LT_008D:
.int .Lt_007D
.int .Lt_0089
.int .Lt_0084
.int .Lt_008C
.int .Lt_008C
.int .Lt_0089
.Lt_007A:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_00BD
call fb_StrAssign
add esp, 32
sub esp, 12
push 4096
call LEXCHECKTOKEN
add esp, 16
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], -2147483648
jne .Lt_008F
sub esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HGETTYPE
add esp, 16
.Lt_008F:
.Lt_008E:
cmp dword ptr [ebp-8], -2147483648
je .Lt_0091
cmp dword ptr [ebp+8], -2147483648
je .Lt_0093
sub esp, 12
push 0
push 1
push 0
push offset Lt_00BD
push 17
call ERRREPORTEX
add esp, 32
.Lt_0093:
.Lt_0092:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+8], eax
mov dword ptr [ebp+12], 0
or dword ptr [ebp+16], 1048576
.Lt_0091:
.Lt_0090:
mov dword ptr [ebp-4], 0
call CASSIGNTOKEN
test eax, eax
jne .Lt_0095
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0095:
.Lt_0094:
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0097
sub esp, 12
push 0
push 1
push 0
push offset Lt_00BD
push 11
call ERRREPORTEX
add esp, 32
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+8], -2147483648
jne .Lt_0099
mov dword ptr [ebp+8], 8
.Lt_0099:
.Lt_0098:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0097:
.Lt_0096:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp-28], 4
je .Lt_009C
.Lt_009D:
cmp dword ptr [ebp-28], 7
jne .Lt_009B
.Lt_009C:
sub esp, 12
push dword ptr [ebp-12]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_009B:
.Lt_009A:
cmp dword ptr [ebp-16], 0
je .Lt_009F
cmp dword ptr [ebp+8], -2147483648
je .Lt_00A1
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 17
je .Lt_00A3
sub esp, 12
push 0
push 1
push 0
push offset Lt_00BD
push 24
call ERRREPORTEX
add esp, 32
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp+16]
lea eax, [ebp-24]
push eax
push 0
push dword ptr [ebp-28]
push offset Lt_00BD
call SYMBREUSEORADDCONST
add esp, 32
test eax, eax
jne .Lt_00A5
sub esp, 12
push 0
push 1
push 0
push offset Lt_00BD
push 4
call ERRREPORTEX
add esp, 32
.Lt_00A5:
.Lt_00A4:
jmp .Lt_009E
.Lt_009F:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
je .Lt_00A7
sub esp, 12
push 0
push 1
push 0
push offset Lt_00BD
push 11
call ERRREPORTEX
add esp, 32
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-28], 8
.Lt_00A7:
.Lt_00A6:
cmp dword ptr [ebp+8], -2147483648
je .Lt_00A9
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTCHECKASSIGNTOTYPE
add esp, 16
test eax, eax
jne .Lt_00AB
sub esp, 12
push 0
push 1
push 0
push offset Lt_00BD
push 20
call ERRREPORTEX
add esp, 32
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp+12], 0
sub esp, 12
push 0
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00AB:
.Lt_00AA:
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
je .Lt_00AD
sub esp, 12
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00AF
sub esp, 12
push 0
push 1
push 0
push offset Lt_00BD
push 24
call ERRREPORTEX
add esp, 32
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
jmp .Lt_00A8
.Lt_00A9:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp-12]
mov esi, dword ptr [eax+8]
mov dword ptr [ebp+12], esi
.Lt_00A8:
sub esp, 12
push dword ptr [ebp+16]
mov esi, dword ptr [ebp-12]
lea eax, [esi+20]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push offset Lt_00BD
call SYMBREUSEORADDCONST
add esp, 32
test eax, eax
jne .Lt_00B1
sub esp, 12
push 0
push 1
push 0
push offset Lt_00BD
push 4
call ERRREPORTEX
add esp, 32
.Lt_00B1:
.Lt_00B0:
.Lt_009E:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
cmp dword ptr [ebp-4], 0
je .Lt_00B3
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.Lt_00B3:
.Lt_00B2:
.Lt_0079:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size CCONSTASSIGN, .-CCONSTASSIGN

.section .bss
.balign 4
	.lcomm	Lt_00BD,129
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
