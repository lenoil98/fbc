	.intel_syntax noprefix

.section .text
.balign 16

.globl _FLISTINIT
_FLISTINIT:
push ebp
mov ebp, esp
push ebx
.Lt_0004:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
push 0
mov eax, dword ptr [ebp+16]
add eax, 4
push eax
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+20]
push ebx
call _LISTINIT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
mov dword ptr [eax+52], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+12], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+52]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ecx+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], 0
.Lt_0005:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FLISTEND
_FLISTEND:
push ebp
mov ebp, esp
push ebx
.Lt_0006:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+20]
push ebx
call _LISTEND
add esp, 4
.Lt_0007:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FLISTNEWITEM
_FLISTNEWITEM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0008:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
jg .Lt_000B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+52], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+52], 0
jne .Lt_000D
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
shr eax, 1
mov ecx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
add dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+20]
push ecx
call _LISTALLOCTB
add esp, 8
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+52], eax
jmp .Lt_000C
.Lt_000D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax+4], ecx
.Lt_000C:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+52]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ecx+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], 0
.Lt_000B:
.Lt_000A:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+32]
imul esi, dword ptr [ecx+12]
mov ecx, dword ptr [ebx+8]
add ecx, esi
mov dword ptr [_Lt_0010], ecx
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx+12]
mov ecx, dword ptr [ebp+8]
dec dword ptr [ecx+4]
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
je .Lt_000F
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+16]
mov ecx, dword ptr [_Lt_0010]
mov dword ptr [esi], ecx
.Lt_000F:
.Lt_000E:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [_Lt_0010]
mov dword ptr [ecx+16], esi
mov esi, dword ptr [_Lt_0010]
mov dword ptr [esi], 0
mov esi, dword ptr [_Lt_0010]
add esi, 4
mov dword ptr [ebp-4], esi
.Lt_0009:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0010,4

.section .text
.balign 16

.globl _FLISTRESET
_FLISTRESET:
push ebp
mov ebp, esp
push ebx
.Lt_0011:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+20]
mov dword ptr [ebx+52], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+52]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+52]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], 0
.Lt_0012:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FLISTGETHEAD
_FLISTGETHEAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0013:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov eax, dword ptr [ebx+4]
mov dword ptr [_Lt_0017], eax
cmp dword ptr [_Lt_0017], 0
jne .Lt_0016
mov dword ptr [ebp-4], 0
jmp .Lt_0015
.Lt_0016:
mov eax, dword ptr [_Lt_0017]
add eax, 4
mov dword ptr [ebp-4], eax
.Lt_0015:
.Lt_0014:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0017,4

.section .text
.balign 16

.globl _FLISTGETNEXT
_FLISTGETNEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0018:
mov eax, dword ptr [ebp+8]
add eax, -4
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_001C], ebx
cmp dword ptr [_Lt_001C], 0
jne .Lt_001B
mov dword ptr [ebp-4], 0
jmp .Lt_001A
.Lt_001B:
mov ebx, dword ptr [_Lt_001C]
add ebx, 4
mov dword ptr [ebp-4], ebx
.Lt_001A:
.Lt_0019:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_001C,4
