	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWVAR
ASTNEWVAR:
.type ASTNEWVAR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_005D:
cmp dword ptr [ebp+20], -2147483648
jne .Lt_0060
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
jne .Lt_0063
.Lt_0064:
mov dword ptr [ebp+20], 0
mov dword ptr [ebp+24], 0
jmp .Lt_0061
.Lt_0063:
cmp dword ptr [ebp-12], 3
jne .Lt_0065
.Lt_0066:
mov dword ptr [ebp+20], 22
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 16384
test eax, eax
je .Lt_0068
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+24], eax
jmp .Lt_0067
.Lt_0068:
sub esp, 12
push dword ptr [ebp+8]
call SYMBADDPROCPTRFROMFUNCTION
add esp, 16
mov dword ptr [ebp+24], eax
.Lt_0067:
jmp .Lt_0061
.Lt_0065:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp+20], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp+24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 65536
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_006B
mov eax, dword ptr [ebp+20]
and eax, 31
mov ebx, dword ptr [ebp+20]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+20]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+20]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp+20], eax
.Lt_006B:
.Lt_006A:
.Lt_0069:
.Lt_0061:
.Lt_0060:
.Lt_005F:
sub esp, 4
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 17
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .Lt_006D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_006F
sub esp, 12
push dword ptr [ebp+8]
call ASTDTORLISTADDREF
add esp, 16
.Lt_006F:
.Lt_006E:
.Lt_006D:
.Lt_006C:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
mov eax, dword ptr [ebp+20]
and eax, 511
cmp eax, 1
jne .Lt_0071
sub esp, 12
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+20]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-8], eax
.Lt_0071:
.Lt_0070:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWVAR, .-ASTNEWVAR
.balign 16

.globl ASTLOADVAR
ASTLOADVAR:
.type ASTLOADVAR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0077:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
je .Lt_007A
mov ecx, dword ptr [ebp-8]
or dword ptr [ecx+12], 2
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+48]
mov eax, dword ptr [ecx+52]
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], eax
.Lt_007A:
.Lt_0079:
cmp dword ptr [AST+136], 0
je .Lt_007C
sub esp, 12
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [IR+240]
add esp, 32
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_007C:
.Lt_007B:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.Lt_0078:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADVAR, .-ASTLOADVAR
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
