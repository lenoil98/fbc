	.intel_syntax noprefix

.section .text
.balign 16

.globl _CPROCDECL@0
_CPROCDECL@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0068:
push 8
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_006B
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0069
.Lt_006B:
.Lt_006A:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 345
je .Lt_006E
.Lt_006F:
cmp dword ptr [ebp-4], 346
je .Lt_006E
.Lt_0070:
cmp dword ptr [ebp-4], 349
jne .Lt_006D
.Lt_006E:
push 2048
call _LEXSKIPTOKEN@4
push dword ptr [ebp-4]
push 1
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push 0
push 0
call _CPROCHEADER@20
jmp .Lt_006C
.Lt_006D:
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.Lt_0072:
.Lt_006C:
.Lt_0069:
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
