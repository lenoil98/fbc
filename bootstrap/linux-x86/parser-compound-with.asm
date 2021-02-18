	.intel_syntax noprefix

.section .text
.balign 16

.globl CWITHSTMTBEGIN
CWITHSTMTBEGIN:
.type CWITHSTMTBEGIN, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_006D:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call ASTSCOPEBEGIN
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0071
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
.Lt_0071:
.Lt_0070:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0073
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 8
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
jmp .Lt_0072
.Lt_0073:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .Lt_0075
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
push 0
push 8
call SYMBADDTEMPVAR
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
jmp .Lt_0074
.Lt_0075:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
jne .Lt_0077
sub esp, 12
push dword ptr [ebp-8]
call ASTBUILDCALLRESULTUDT
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0077:
.Lt_0076:
.Lt_0074:
.Lt_0072:
sub esp, 12
mov eax, dword ptr [ebp-24]
push dword ptr [eax+12]
call HEXTENDTEMPLIFETIME
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTGETEFFECTIVENODE
add esp, 16
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 17
jne .Lt_0079
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
mov dword ptr [ebp-12], 0
sub esp, 4
push 2
sub esp, 4
push dword ptr [ebp-8]
call ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
jmp .Lt_0078
.Lt_0079:
sub esp, 12
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
jne .Lt_007B
or dword ptr [ebp-16], 2
.Lt_007B:
.Lt_007A:
sub esp, 4
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBADDIMPLICITVAR
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-16]
and eax, 2
je .Lt_007D
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-4]
call ASTNEWDECL
add esp, 20
push eax
call ASTADDUNSCOPED
add esp, 16
sub esp, 4
push 2
sub esp, 12
push 0
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
jmp .Lt_007C
.Lt_007D:
sub esp, 4
push 2
push 0
push dword ptr [ebp-4]
call ASTNEWDECL
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 4
push 2
sub esp, 12
push 64
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
.Lt_007C:
mov dword ptr [ebp-12], -1
.Lt_0078:
sub esp, 12
push dword ptr [ebp-28]
call ASTADD
add esp, 16
sub esp, 8
push 1
push 280
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov dword ptr [eax+8], ebx
.Lt_006E:
pop ebx
mov esp, ebp
pop ebp
ret
.size CWITHSTMTBEGIN, .-CWITHSTMTBEGIN

.section .bss
.balign 4
	.lcomm	Lt_007E,16

.section .text
.balign 16

.globl CWITHSTMTEND
CWITHSTMTEND:
.type CWITHSTMTEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_007F:
sub esp, 8
push -1
push 280
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0082
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0080
.Lt_0082:
.Lt_0081:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_0084
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.Lt_0084:
.Lt_0083:
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
.Lt_0080:
mov esp, ebp
pop ebp
ret
.size CWITHSTMTEND, .-CWITHSTMTEND
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
HEXTENDTEMPLIFETIME:
.type HEXTENDTEMPLIFETIME, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
.Lt_0069:
cmp dword ptr [ebp-12], 0
je .Lt_006A
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 1
jne .Lt_006C
sub esp, 12
push dword ptr [ebp-12]
call ASTDTORLISTDEL
add esp, 16
mov ebx, dword ptr [ebp-12]
and dword ptr [ebx+4], -4097
sub esp, 4
push 2
push 0
push dword ptr [ebp-12]
call ASTNEWDECL
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_006C:
.Lt_006B:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .Lt_0069
.Lt_006A:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HEXTENDTEMPLIFETIME, .-HEXTENDTEMPLIFETIME

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
