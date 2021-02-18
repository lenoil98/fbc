	.intel_syntax noprefix

.section .text
.balign 16

.globl CONSTMT
CONSTMT:
.type CONSTMT, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.Lt_008B:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 2048
push 498
call HMATCH
add esp, 16
test eax, eax
je .Lt_008E
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
jne .Lt_0090
sub esp, 4
push 0
push -1
push 17
call ERRREPORT
add esp, 16
jmp .Lt_008C
.Lt_0090:
.Lt_008F:
mov dword ptr [ebp-16], -1
jmp .Lt_008D
.Lt_008E:
mov dword ptr [ebp-16], 0
.Lt_008D:
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 497
jne .Lt_0092
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0091
.Lt_0092:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0094
jmp .Lt_008C
.Lt_0094:
.Lt_0093:
.Lt_0091:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 391
jne .Lt_0097
.Lt_0098:
mov dword ptr [ebp-12], -1
jmp .Lt_0095
.Lt_0097:
cmp dword ptr [ebp-36], 392
jne .Lt_0099
.Lt_009A:
cmp dword ptr [ebp-8], 0
jne .Lt_009C
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [ENV+888]
and eax, 65536
test eax, eax
jne .Lt_009E
sub esp, 4
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_008C
.Lt_009E:
.Lt_009D:
cmp dword ptr [ENV+948], 0
jne .Lt_00A0
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_008C
.Lt_00A0:
.Lt_009F:
mov dword ptr [ebp-12], 0
jmp .Lt_0095
.Lt_0099:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_008C
.Lt_00A1:
.Lt_0095:
cmp dword ptr [ebp-8], 0
jne .Lt_00A3
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 3
jne .Lt_00A5
push 2
push offset Lt_0006
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00A7
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-20], -1
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
cmp dword ptr [ebp-20], 0
jne .Lt_00A9
sub esp, 8
push 34
lea eax, [ebp-32]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 7
push dword ptr [ebp-28]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_00AB
sub esp, 8
push 64
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_00AB:
.Lt_00AA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
mov eax, dword ptr [ebp-16]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call RTLERRORSETHANDLER
add esp, 16
jmp .Lt_00A8
.Lt_00A9:
sub esp, 8
mov eax, dword ptr [ebp-16]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
sub esp, 4
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 20
push eax
call RTLERRORSETHANDLER
add esp, 16
.Lt_00A8:
mov dword ptr [ebp-4], -1
jmp .Lt_00A2
.Lt_00A3:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call CGOTBSTMT
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00A2:
.Lt_008C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CONSTMT, .-CONSTMT
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
CGOTBSTMT:
.type CGOTBSTMT, @function
push ebp
mov ebp, esp
sub esp, 884
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
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
je .Lt_006D
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push 0
push 9
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_006F
sub esp, 4
push 0
push -1
push 20
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_006F:
.Lt_006E:
.Lt_006D:
.Lt_006C:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 9
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
sub esp, 8
push 64
push dword ptr [ebp+8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-8], 0
.Lt_0070:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-872], eax
cmp dword ptr [ebp-872], 3
je .Lt_0076
.Lt_0077:
cmp dword ptr [ebp-872], 0
jne .Lt_0075
.Lt_0076:
sub esp, 8
push 34
lea eax, [ebp-864]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-860], eax
cmp dword ptr [ebp-8], 64
jge .Lt_0079
sub esp, 8
push 7
push dword ptr [ebp-860]
call SYMBFINDBYCLASS
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+eax*4-820], 0
jne .Lt_007B
sub esp, 8
push 64
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
.Lt_007B:
.Lt_007A:
jmp .Lt_0078
.Lt_0079:
cmp dword ptr [ebp-8], 64
jne .Lt_007C
sub esp, 4
push 0
push 0
push 287
call ERRREPORT
add esp, 16
.Lt_007C:
.Lt_0078:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0073
.Lt_0075:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
cmp dword ptr [ebp-8], 64
jge .Lt_007F
sub esp, 8
push 0
sub esp, 4
call SYMBUNIQUELABEL
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+ebx*4-820], eax
.Lt_007F:
.Lt_007E:
.Lt_007D:
.Lt_0073:
inc dword ptr [ebp-8]
.Lt_0072:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0070
.Lt_0071:
cmp dword ptr [ebp-8], 64
jl .Lt_0081
mov dword ptr [ebp-8], 63
.Lt_0081:
.Lt_0080:
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-872], 0
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-876], eax
jmp .Lt_0083
.Lt_0086:
mov ebx, dword ptr [ebp-872]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-872]
mov dword ptr [ebp+ecx*8-528], ebx
mov dword ptr [ebp+ecx*8-524], eax
.Lt_0084:
inc dword ptr [ebp-872]
.Lt_0083:
mov ebx, dword ptr [ebp-876]
cmp dword ptr [ebp-872], ebx
jle .Lt_0086
.Lt_0085:
sub esp, 12
cmp dword ptr [ebp-8], 0
je .Lt_0087
mov ebx, dword ptr [ebp-8]
dec ebx
mov dword ptr [ebp-868], ebx
jmp .Lt_00AE
.Lt_0087:
mov dword ptr [ebp-868], 0
.Lt_00AE:
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
call ASTBUILDJMPTB
add esp, 48
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+12], 0
je .Lt_008A
sub esp, 12
push dword ptr [ebp+8]
call ASTADD
add esp, 16
jmp .Lt_0089
.Lt_008A:
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [PARSER+104]
call ASTGOSUBADDJUMPPTR
add esp, 16
.Lt_0089:
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-16]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CGOTBSTMT, .-CGOTBSTMT

.section .rodata
.balign 4
Lt_0006:	.ascii	"0\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
