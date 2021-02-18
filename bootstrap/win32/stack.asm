	.intel_syntax noprefix

.section .text
.balign 16

.globl _STACKNEW@16
_STACKNEW@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0004:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+16]
add eax, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HALLOCTB@8
mov dword ptr [ebp-4], eax
.Lt_0005:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _STACKFREE@4
_STACKFREE@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0006:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_0008:
cmp dword ptr [ebp-8], 0
je .Lt_0009
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _free
add esp, 4
push dword ptr [ebp-8]
call _free
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_0008
.Lt_0009:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
mov dword ptr [ebp-4], -1
.Lt_0007:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _STACKPUSH@4
_STACKPUSH@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_001B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .Lt_001E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+16], ecx
jmp .Lt_001D
.Lt_001E:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+16]
cmp dword ptr [eax+4], 0
jne .Lt_0020
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
shr ecx, 2
mov eax, ecx
push eax
push dword ptr [ebp+8]
call _HALLOCTB@8
.Lt_0020:
.Lt_001F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+16], ebx
.Lt_001D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
add eax, 8
mov dword ptr [ebp-4], eax
.Lt_001C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _STACKPOP@4
_STACKPOP@4:
push ebp
mov ebp, esp
push ebx
.Lt_0021:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_0024
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
add ebx, -8
mov eax, ebx
push eax
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
add ebx, 8
push ebx
call _memset
add esp, 12
.Lt_0024:
.Lt_0023:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+16], ecx
.Lt_0022:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _STACKGETTOS@4
_STACKGETTOS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0025:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .Lt_0028
mov dword ptr [ebp-4], 0
jmp .Lt_0026
jmp .Lt_0027
.Lt_0028:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
add ebx, 8
mov dword ptr [ebp-4], ebx
.Lt_0027:
.Lt_0026:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HALLOCTB@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_000A:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 1
jg .Lt_000D
jmp .Lt_000B
.Lt_000D:
.Lt_000C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_000F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
imul ebx, dword ptr [ebp+12]
push ebx
call _XCALLOCATE@4
mov dword ptr [_Lt_0029], eax
jmp .Lt_000E
.Lt_000F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
imul ebx, dword ptr [ebp+12]
push ebx
call _XALLOCATE@4
mov dword ptr [_Lt_0029], eax
.Lt_000E:
push 12
call _XALLOCATE@4
mov dword ptr [_Lt_002A], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0011
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_002A]
mov dword ptr [eax], ebx
.Lt_0011:
.Lt_0010:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .Lt_0013
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [_Lt_002A]
mov dword ptr [eax], ebx
.Lt_0013:
.Lt_0012:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_002A]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [_Lt_002A]
mov dword ptr [eax], 0
mov eax, dword ptr [_Lt_002A]
mov ebx, dword ptr [_Lt_0029]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [_Lt_002A]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [_Lt_002B], eax
mov eax, dword ptr [_Lt_0029]
mov dword ptr [_Lt_002C], eax
cmp dword ptr [_Lt_002B], 0
je .Lt_0015
mov eax, dword ptr [_Lt_002B]
mov ebx, dword ptr [_Lt_002C]
mov dword ptr [eax+4], ebx
.Lt_0015:
.Lt_0014:
mov dword ptr [_Lt_002D], 1
mov ebx, dword ptr [ebp+12]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_0017
.Lt_001A:
mov ebx, dword ptr [_Lt_002C]
mov eax, dword ptr [_Lt_002B]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_002C]
add ebx, dword ptr [eax+12]
mov eax, dword ptr [_Lt_002C]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [_Lt_002C]
mov dword ptr [_Lt_002B], ebx
mov ebx, dword ptr [_Lt_002C]
mov eax, dword ptr [ebx+4]
mov dword ptr [_Lt_002C], eax
.Lt_0018:
inc dword ptr [_Lt_002D]
.Lt_0017:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_002D], eax
jle .Lt_001A
.Lt_0019:
mov eax, dword ptr [_Lt_002C]
mov ebx, dword ptr [_Lt_002B]
mov dword ptr [eax], ebx
mov ebx, dword ptr [_Lt_002C]
mov dword ptr [ebx+4], 0
mov dword ptr [ebp-4], -1
.Lt_000B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0029,4
.balign 4
	.lcomm	_Lt_002C,4
.balign 4
	.lcomm	_Lt_002B,4
.balign 4
	.lcomm	_Lt_002A,4
.balign 4
	.lcomm	_Lt_002D,4
