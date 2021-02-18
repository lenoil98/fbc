	.intel_syntax noprefix

.section .text
.balign 16

.globl CWHILESTMTBEGIN
CWHILESTMTBEGIN:
.type CWHILESTMTBEGIN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0067:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_006A
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_006A:
.Lt_0069:
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_006C
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .Lt_006B
.Lt_006C:
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.Lt_006B:
sub esp, 8
push 1
push 273
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-16], eax
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+16], eax
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.size CWHILESTMTBEGIN, .-CWHILESTMTBEGIN
.balign 16

.globl CWHILESTMTEND
CWHILESTMTEND:
.type CWHILESTMTEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_006D:
sub esp, 8
push -1
push 273
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0070
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_006E
.Lt_0070:
.Lt_006F:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_0072
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.Lt_0072:
.Lt_0071:
sub esp, 12
sub esp, 8
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
.Lt_006E:
mov esp, ebp
pop ebp
ret
.size CWHILESTMTEND, .-CWHILESTMTEND
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

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
