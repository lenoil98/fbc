	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWIDX
_ASTNEWIDX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_005E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 18
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+12], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+28], 1
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+20], 0
mov dword ptr [ecx+24], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADIDX
_ASTLOADIDX:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0060:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0063
mov dword ptr [ebp-4], 0
jmp .Lt_0061
.Lt_0063:
.Lt_0062:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0065
push dword ptr [ebp-12]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_0064
.Lt_0065:
mov dword ptr [ebp-16], 0
.Lt_0064:
cmp dword ptr [_AST+136], 0
je .Lt_0067
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-24]
or dword ptr [ebx+12], 2
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], eax
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ecx+4]
and eax, 16388
test eax, eax
jne .Lt_0069
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+68]
mov ecx, dword ptr [eax+72]
add ebx, dword ptr [ebp-32]
adc ecx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
add ebx, dword ptr [eax+48]
adc ecx, dword ptr [eax+52]
mov eax, dword ptr [ebp-8]
add ebx, dword ptr [eax+20]
adc ecx, dword ptr [eax+24]
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], ecx
jmp .Lt_0068
.Lt_0069:
mov dword ptr [ebp-24], 0
.Lt_0068:
cmp dword ptr [ebp-16], 0
je .Lt_006B
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 4
je .Lt_006D
push dword ptr [ebp-16]
call dword ptr [_IR+112]
add esp, 4
.Lt_006D:
.Lt_006C:
push dword ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-24]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [_IR+244]
add esp, 28
mov dword ptr [ebp-20], eax
jmp .Lt_006A
.Lt_006B:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [_IR+240]
add esp, 20
mov dword ptr [ebp-20], eax
.Lt_006A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_0067:
.Lt_0066:
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.Lt_0061:
mov eax, dword ptr [ebp-4]
pop ebx
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
call _fb_StrAssign
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
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
