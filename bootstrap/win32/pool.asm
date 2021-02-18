	.intel_syntax noprefix

.section .text
.balign 16

.globl _POOLINIT@16
_POOLINIT@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0004:
mov eax, dword ptr [ebp+16]
add eax, 3
and eax, -4
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+20]
add eax, 3
and eax, -4
mov dword ptr [ebp+20], eax
mov eax, dword ptr [ebp+16]
add eax, dword ptr [ebp+20]
dec eax
cdq
idiv dword ptr [ebp+16]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
sal eax, 5
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
dec ebx
mov dword ptr [ebp-12], ebx
jmp .Lt_0007
.Lt_000A:
push 2
push dword ptr [ebp-4]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
sal eax, 5
mov ecx, dword ptr [ebx+8]
add ecx, eax
push ecx
call _LISTINIT@16
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
add dword ptr [ebp-4], eax
.Lt_0008:
inc dword ptr [ebp-8]
.Lt_0007:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .Lt_000A
.Lt_0009:
.Lt_0005:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _POOLEND@4
_POOLEND@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_000B:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_000E
.Lt_0011:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
sal eax, 5
mov ecx, dword ptr [ebx+8]
add ecx, eax
push ecx
call _LISTEND@4
.Lt_000F:
inc dword ptr [ebp-4]
.Lt_000E:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .Lt_0011
.Lt_0010:
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
call _free
add esp, 4
.Lt_000C:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _POOLNEWITEM@8
_POOLNEWITEM@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0012:
cmp dword ptr [ebp+12], 0
jg .Lt_0015
mov dword ptr [ebp-4], 0
jmp .Lt_0013
.Lt_0015:
.Lt_0014:
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, dword ptr [ebp+8]
cdq
idiv dword ptr [ebx+4]
mov dword ptr [_Lt_0018], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [_Lt_0018], ebx
jl .Lt_0017
mov ebx, dword ptr [ebp+12]
add ebx, 4
push ebx
call _XALLOCATE@4
mov dword ptr [_Lt_0019], eax
jmp .Lt_0016
.Lt_0017:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_0018]
sal ebx, 5
mov ecx, dword ptr [eax+8]
add ecx, ebx
push ecx
call _LISTNEWNODE@4
mov dword ptr [_Lt_0019], eax
.Lt_0016:
mov eax, dword ptr [_Lt_0019]
mov ecx, dword ptr [_Lt_0018]
mov dword ptr [eax], ecx
mov ecx, dword ptr [_Lt_0019]
add ecx, 4
mov dword ptr [ebp-4], ecx
.Lt_0013:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0019,4
.balign 4
	.lcomm	_Lt_0018,4

.section .text
.balign 16

.globl _POOLDELITEM@8
_POOLDELITEM@8:
push ebp
mov ebp, esp
push ebx
.Lt_001A:
cmp dword ptr [ebp+12], 0
jne .Lt_001D
jmp .Lt_001B
.Lt_001D:
.Lt_001C:
mov eax, dword ptr [ebp+12]
add eax, -4
mov dword ptr [_Lt_0020], eax
mov eax, dword ptr [_Lt_0020]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp dword ptr [eax], ecx
jl .Lt_001F
push dword ptr [_Lt_0020]
call _free
add esp, 4
jmp .Lt_001E
.Lt_001F:
push dword ptr [_Lt_0020]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0020]
mov ebx, dword ptr [eax]
sal ebx, 5
mov eax, dword ptr [ecx+8]
add eax, ebx
push eax
call _LISTDELNODE@8
.Lt_001E:
.Lt_001B:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0020,4
