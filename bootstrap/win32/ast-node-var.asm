	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWVAR@20
_ASTNEWVAR@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_005E:
cmp dword ptr [ebp+20], -2147483648
jne .Lt_0061
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
jne .Lt_0064
.Lt_0065:
mov dword ptr [ebp+20], 0
mov dword ptr [ebp+24], 0
jmp .Lt_0062
.Lt_0064:
cmp dword ptr [ebp-12], 3
jne .Lt_0066
.Lt_0067:
mov dword ptr [ebp+20], 22
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 16384
test eax, eax
je .Lt_0069
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+24], eax
jmp .Lt_0068
.Lt_0069:
push dword ptr [ebp+8]
call _SYMBADDPROCPTRFROMFUNCTION@4
mov dword ptr [ebp+24], eax
.Lt_0068:
jmp .Lt_0062
.Lt_0066:
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
je .Lt_006C
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
.Lt_006C:
.Lt_006B:
.Lt_006A:
.Lt_0062:
.Lt_0061:
.Lt_0060:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 17
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .Lt_006E
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
je .Lt_0070
push dword ptr [ebp+8]
call _ASTDTORLISTADDREF@4
.Lt_0070:
.Lt_006F:
.Lt_006E:
.Lt_006D:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], ecx
mov eax, dword ptr [ebp+20]
and eax, 511
cmp eax, 1
jne .Lt_0072
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+20]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
.Lt_0072:
.Lt_0071:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTLOADVAR@4
_ASTLOADVAR@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0078:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
je .Lt_007B
mov ecx, dword ptr [ebp-8]
or dword ptr [ecx+12], 2
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+48]
mov eax, dword ptr [ecx+52]
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], eax
.Lt_007B:
.Lt_007A:
cmp dword ptr [_AST+136], 0
je .Lt_007D
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [_IR+240]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_007D:
.Lt_007C:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.Lt_0079:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
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
