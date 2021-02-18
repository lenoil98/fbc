	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWBOUNDCHK
ASTNEWBOUNDCHK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0067:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .Lt_006A
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .Lt_006C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
cmp dword ptr [eax+24], ecx
jg .Lt_006E
jl .Lt_0073
cmp dword ptr [eax+20], esi
jae .Lt_006E
.Lt_0073:
mov dword ptr [ebp-4], 0
jmp .Lt_0068
.Lt_006E:
.Lt_006D:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
cmp dword ptr [esi+24], eax
jl .Lt_0070
jg .Lt_0074
cmp dword ptr [esi+20], ebx
jbe .Lt_0070
.Lt_0074:
mov dword ptr [ebp-4], 0
jmp .Lt_0068
.Lt_0070:
.Lt_006F:
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0068
.Lt_006C:
.Lt_006B:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+24], 0
jne .Lt_0072
cmp dword ptr [ebx+20], 0
jne .Lt_0072
.Lt_0075:
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
mov dword ptr [ebp+12], 0
.Lt_0072:
.Lt_0071:
.Lt_006A:
.Lt_0069:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push 31
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call SYMBADDTEMPVAR
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ASTNEWVAR
add esp, 20
push eax
call RTLARRAYBOUNDSCHECK
add esp, 20
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADBOUNDCHK
ASTLOADBOUNDCHK:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0076:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0079
mov dword ptr [ebp-4], 0
jmp .Lt_0077
.Lt_0079:
.Lt_0078:
push 64
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call ASTLOAD
add esp, 4
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
cmp dword ptr [AST+136], 0
je .Lt_007B
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push 0
push 0
push 0
push 0
push 8
call dword ptr [IR+232]
add esp, 16
push eax
push dword ptr [ebp-24]
push 45
call dword ptr [IR+96]
add esp, 20
push dword ptr [ebp-24]
call dword ptr [IR+140]
add esp, 4
push dword ptr [ebp-20]
call dword ptr [IR+68]
add esp, 4
.Lt_007B:
.Lt_007A:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
.Lt_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDBOUNDCHK
ASTBUILDBOUNDCHK:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_007E:
lea eax, [ENV+280]
push eax
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16564]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWBOUNDCHK
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_007F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWPTRCHK
ASTNEWPTRCHK:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0080:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .Lt_0083
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0081
.Lt_0083:
.Lt_0082:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 32
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call SYMBADDTEMPVAR
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ASTNEWVAR
add esp, 20
push eax
call RTLNULLPTRCHECK
add esp, 12
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADPTRCHK
ASTLOADPTRCHK:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0084:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0087
mov dword ptr [ebp-4], 0
jmp .Lt_0085
.Lt_0087:
.Lt_0086:
push 80
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call ASTLOAD
add esp, 4
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-12]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
cmp dword ptr [AST+136], 0
je .Lt_0089
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push 0
push 0
push 0
push 0
push 8
call dword ptr [IR+232]
add esp, 16
push eax
push dword ptr [ebp-24]
push 45
call dword ptr [IR+96]
add esp, 20
push dword ptr [ebp-24]
call dword ptr [IR+140]
add esp, 4
push dword ptr [ebp-20]
call dword ptr [IR+68]
add esp, 4
.Lt_0089:
.Lt_0088:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
.Lt_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDPTRCHK
ASTBUILDPTRCHK:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_008C:
lea eax, [ENV+280]
push eax
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16564]
push dword ptr [ebp+8]
call ASTNEWPTRCHK
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_008D:
mov eax, dword ptr [ebp-4]
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
