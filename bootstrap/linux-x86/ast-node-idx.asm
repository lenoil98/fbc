	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWIDX
ASTNEWIDX:
.type ASTNEWIDX, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_005D:
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 18
call ASTNEWNODE
add esp, 16
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
.Lt_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWIDX, .-ASTNEWIDX
.balign 16

.globl ASTLOADIDX
ASTLOADIDX:
.type ASTLOADIDX, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_005F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0062
mov dword ptr [ebp-4], 0
jmp .Lt_0060
.Lt_0062:
.Lt_0061:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0064
sub esp, 12
push dword ptr [ebp-12]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_0063
.Lt_0064:
mov dword ptr [ebp-16], 0
.Lt_0063:
cmp dword ptr [AST+136], 0
je .Lt_0066
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
jne .Lt_0068
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
jmp .Lt_0067
.Lt_0068:
mov dword ptr [ebp-24], 0
.Lt_0067:
cmp dword ptr [ebp-16], 0
je .Lt_006A
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 4
je .Lt_006C
sub esp, 12
push dword ptr [ebp-16]
call dword ptr [IR+112]
add esp, 16
.Lt_006C:
.Lt_006B:
sub esp, 4
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
call dword ptr [IR+244]
add esp, 32
mov dword ptr [ebp-20], eax
jmp .Lt_0069
.Lt_006A:
sub esp, 12
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [IR+240]
add esp, 32
mov dword ptr [ebp-20], eax
.Lt_0069:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_0066:
.Lt_0065:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.Lt_0060:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADIDX, .-ASTLOADIDX
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
