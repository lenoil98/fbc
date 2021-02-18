	.intel_syntax noprefix

.section .text
.balign 16

.globl CPROCDECL
CPROCDECL:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0067:
push 8
call CCOMPSTMTISALLOWED
add esp, 4
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
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
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
push 2048
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-4]
push 1
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push 0
push 0
call CPROCHEADER
add esp, 20
jmp .Lt_006B
.Lt_006C:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
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
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
