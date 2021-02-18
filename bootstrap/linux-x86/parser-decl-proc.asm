	.intel_syntax noprefix

.section .text
.balign 16

.globl CPROCDECL
CPROCDECL:
.type CPROCDECL, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0067:
sub esp, 12
push 8
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_006A
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_006A:
.Lt_0069:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 345
je .Lt_006D
.Lt_006E:
cmp dword ptr [ebp-4], 346
je .Lt_006D
.Lt_006F:
cmp dword ptr [ebp-4], 349
jne .Lt_006C
.Lt_006D:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
push 1
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push 0
push 0
call CPROCHEADER
add esp, 32
jmp .Lt_006B
.Lt_006C:
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
.Lt_0071:
.Lt_006B:
.Lt_0068:
mov esp, ebp
pop ebp
ret
.size CPROCDECL, .-CPROCDECL
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
