	.intel_syntax noprefix

.section .text
.balign 16

.globl _CONSTMT@0
_CONSTMT@0:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.Lt_008C:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 2048
push 498
call _HMATCH@8
test eax, eax
je .Lt_008F
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
jne .Lt_0091
push 0
push -1
push 17
call _ERRREPORT@12
jmp .Lt_008D
.Lt_0091:
.Lt_0090:
mov dword ptr [ebp-16], -1
jmp .Lt_008E
.Lt_008F:
mov dword ptr [ebp-16], 0
.Lt_008E:
mov dword ptr [ebp-8], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 497
jne .Lt_0093
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_0092
.Lt_0093:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0095
jmp .Lt_008D
.Lt_0095:
.Lt_0094:
.Lt_0092:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 391
jne .Lt_0098
.Lt_0099:
mov dword ptr [ebp-12], -1
jmp .Lt_0096
.Lt_0098:
cmp dword ptr [ebp-36], 392
jne .Lt_009A
.Lt_009B:
cmp dword ptr [ebp-8], 0
jne .Lt_009D
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_009D:
.Lt_009C:
mov eax, dword ptr [_ENV+888]
and eax, 65536
test eax, eax
jne .Lt_009F
push 0
push 146
push 65536
call _ERRREPORTNOTALLOWED@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_008D
.Lt_009F:
.Lt_009E:
cmp dword ptr [_ENV+948], 0
jne .Lt_00A1
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_008D
.Lt_00A1:
.Lt_00A0:
mov dword ptr [ebp-12], 0
jmp .Lt_0096
.Lt_009A:
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_008D
.Lt_00A2:
.Lt_0096:
cmp dword ptr [ebp-8], 0
jne .Lt_00A4
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-20], 0
push 0
call _LEXGETCLASS@4
cmp eax, 3
jne .Lt_00A6
push 2
push offset _Lt_0006
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00A8
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-20], -1
.Lt_00A8:
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
cmp dword ptr [ebp-20], 0
jne .Lt_00AA
push 34
lea eax, [ebp-32]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-28], eax
push 7
push dword ptr [ebp-28]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_00AC
push 64
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov dword ptr [ebp-24], eax
.Lt_00AC:
.Lt_00AB:
push 2048
call _LEXSKIPTOKEN@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call _RTLERRORSETHANDLER@8
jmp .Lt_00A9
.Lt_00AA:
mov eax, dword ptr [ebp-16]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
push eax
call _RTLERRORSETHANDLER@8
.Lt_00A9:
mov dword ptr [ebp-4], -1
jmp .Lt_00A3
.Lt_00A4:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _CGOTBSTMT@8
mov dword ptr [ebp-4], eax
.Lt_00A3:
.Lt_008D:
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
_CGOTBSTMT@8:
push ebp
mov ebp, esp
sub esp, 876
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
lea eax, [ebp-528]
mov dword ptr [ebp-564], eax
lea eax, [ebp-528]
mov dword ptr [ebp-560], eax
mov dword ptr [ebp-556], 512
mov dword ptr [ebp-552], 8
mov dword ptr [ebp-548], 1
mov dword ptr [ebp-544], 49
mov dword ptr [ebp-540], 64
mov dword ptr [ebp-536], 0
mov dword ptr [ebp-532], 63
lea eax, [ebp-820]
mov dword ptr [ebp-856], eax
lea eax, [ebp-820]
mov dword ptr [ebp-852], eax
mov dword ptr [ebp-848], 256
mov dword ptr [ebp-844], 4
mov dword ptr [ebp-840], 1
mov dword ptr [ebp-836], 49
mov dword ptr [ebp-832], 64
mov dword ptr [ebp-828], 0
mov dword ptr [ebp-824], 63
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 9
je .Lt_006E
push 0
push 0
push dword ptr [ebp+8]
push 0
push 9
call _ASTNEWCONV@20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0070
push 0
push -1
push 20
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_006A
.Lt_0070:
.Lt_006F:
.Lt_006E:
.Lt_006D:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 9
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-12], eax
push 64
push dword ptr [ebp+8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
mov dword ptr [ebp-8], 0
.Lt_0071:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-872], eax
cmp dword ptr [ebp-872], 3
je .Lt_0077
.Lt_0078:
cmp dword ptr [ebp-872], 0
jne .Lt_0076
.Lt_0077:
push 34
lea eax, [ebp-864]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-860], eax
cmp dword ptr [ebp-8], 64
jge .Lt_007A
push 7
push dword ptr [ebp-860]
call _SYMBFINDBYCLASS@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+eax*4-820], 0
jne .Lt_007C
push 64
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
.Lt_007C:
.Lt_007B:
jmp .Lt_0079
.Lt_007A:
cmp dword ptr [ebp-8], 64
jne .Lt_007D
push 0
push 0
push 287
call _ERRREPORT@12
.Lt_007D:
.Lt_0079:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_0074
.Lt_0076:
push 0
push 0
push 14
call _ERRREPORT@12
cmp dword ptr [ebp-8], 64
jge .Lt_0080
push 0
call _SYMBUNIQUELABEL@0
push eax
call _SYMBADDLABEL@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
.Lt_0080:
.Lt_007F:
.Lt_007E:
.Lt_0074:
inc dword ptr [ebp-8]
.Lt_0073:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .Lt_0071
.Lt_0072:
cmp dword ptr [ebp-8], 64
jl .Lt_0082
mov dword ptr [ebp-8], 63
.Lt_0082:
.Lt_0081:
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-872], 0
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-876], eax
jmp .Lt_0084
.Lt_0087:
mov ebx, dword ptr [ebp-872]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-872]
mov dword ptr [ebp+ecx*8-528], ebx
mov dword ptr [ebp+ecx*8-524], eax
.Lt_0085:
inc dword ptr [ebp-872]
.Lt_0084:
mov ebx, dword ptr [ebp-876]
cmp dword ptr [ebp-872], ebx
jle .Lt_0087
.Lt_0086:
cmp dword ptr [ebp-8], 0
je .Lt_0088
mov ebx, dword ptr [ebp-8]
dec ebx
mov dword ptr [ebp-868], ebx
jmp .Lt_00AF
.Lt_0088:
mov dword ptr [ebp-868], 0
.Lt_00AF:
mov eax, dword ptr [ebp-868]
mov ebx, eax
sar ebx, 31
push ebx
push eax
push 0
push 1
push dword ptr [ebp-16]
push dword ptr [ebp-8]
lea eax, [ebp-820]
push eax
lea eax, [ebp-528]
push eax
push dword ptr [ebp-12]
call _ASTBUILDJMPTB@36
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+12], 0
je .Lt_008B
push dword ptr [ebp+8]
call _ASTADD@4
jmp .Lt_008A
.Lt_008B:
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [_PARSER+104]
call _ASTGOSUBADDJUMPPTR@12
.Lt_008A:
push -1
push dword ptr [ebp-16]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_006A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .data
.balign 4
_Lt_0006:	.ascii	"0\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
