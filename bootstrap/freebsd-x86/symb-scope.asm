	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBADDSCOPE
SYMBADDSCOPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-8], 0
push 0
push 0
push 0
push -2147483648
push 0
push 0
push 15
push 0
push dword ptr [SYMB+98536]
push 0
push 0
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELSCOPE
SYMBDELSCOPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006A:
cmp dword ptr [ebp+8], 0
jne .Lt_006D
jmp .Lt_006B
.Lt_006D:
.Lt_006C:
.Lt_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_0072
jmp .Lt_006F
.Lt_0072:
.Lt_0071:
push -1
push dword ptr [ebp-4]
call SYMBDELSYMBOL
add esp, 8
.Lt_0070:
jmp .Lt_006E
.Lt_006F:
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.Lt_006B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELSCOPETB
SYMBDELSCOPETB:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0073:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
.Lt_0075:
cmp dword ptr [ebp-4], 0
je .Lt_0076
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 16
je .Lt_0078
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 4
jmp .Lt_0077
.Lt_0078:
push -1
push dword ptr [ebp-4]
call SYMBNAMESPACEREMOVE
add esp, 8
.Lt_0077:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp-4], eax
jmp .Lt_0075
.Lt_0076:
.Lt_0074:
pop ebx
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
