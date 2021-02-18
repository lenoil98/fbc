	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWDEREF
_ASTNEWDEREF:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_005E:
cmp dword ptr [ebp+8], 0
je .Lt_0061
cmp dword ptr [ebp+12], -2147483648
jne .Lt_0063
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+8]
mov dword ptr [ebp+16], ecx
.Lt_0063:
.Lt_0062:
cmp dword ptr [ebp+24], 0
jne .Lt_0065
cmp dword ptr [ebp+20], 0
jne .Lt_0065
.Lt_0077:
push dword ptr [ebp+8]
call _ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 6
jne .Lt_0068
.Lt_0069:
mov dword ptr [ebp-16], -1
jmp .Lt_0066
.Lt_0068:
cmp dword ptr [ebp-20], 23
jne .Lt_006A
.Lt_006B:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx+24], 0
mov eax, -1
jne .Lt_0079
cmp dword ptr [ecx+20], 0
je .Lt_0078
.Lt_0079:
xor eax, eax
.Lt_0078:
mov dword ptr [ebp-16], eax
jmp .Lt_0066
.Lt_006A:
cmp dword ptr [ebp-20], 32
jne .Lt_006C
.Lt_006D:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx]
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+56]
mov ecx, dword ptr [ebx]
cmp ecx, 23
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-12]
mov esi, dword ptr [ebx+56]
cmp dword ptr [esi+24], 0
mov ebx, -1
jne .Lt_007D
cmp dword ptr [esi+20], 0
je .Lt_007C
.Lt_007D:
xor ebx, ebx
.Lt_007C:
and ecx, ebx
or eax, ecx
je .Lt_006F
mov ecx, dword ptr [ebp-12]
push dword ptr [ecx+60]
call _ASTDELTREE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], -1
jmp .Lt_006E
.Lt_006F:
mov dword ptr [ebp-16], 0
.Lt_006E:
jmp .Lt_0066
.Lt_006C:
mov dword ptr [ebp-16], 0
.Lt_0070:
.Lt_0066:
cmp dword ptr [ebp-16], 0
je .Lt_0072
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-8], ecx
.Lt_0073:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp+8], ecx
je .Lt_0074
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
jmp .Lt_0073
.Lt_0074:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTSETTYPE
add esp, 12
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_005F
.Lt_0072:
.Lt_0071:
.Lt_0065:
.Lt_0064:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .Lt_0076
push 8
push dword ptr [ebp+8]
call _ASTCONSTFLUSHTOINT
add esp, 8
add dword ptr [ebp+20], eax
adc dword ptr [ebp+24], edx
mov dword ptr [ebp+8], 0
.Lt_0076:
.Lt_0075:
.Lt_0061:
.Lt_0060:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 20
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+8]
mov dword ptr [eax+56], edx
mov edx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [edx+20], ecx
mov dword ptr [edx+24], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADDEREF
_ASTLOADDEREF:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_007E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0081
cmp dword ptr [_AST+136], 0
je .Lt_0083
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [_IR+248]
add esp, 20
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_0083:
.Lt_0082:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
jmp .Lt_007F
.Lt_0081:
.Lt_0080:
push dword ptr [ebp-8]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [_AST+136], 0
je .Lt_0085
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax]
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 480
je .Lt_0086
mov dword ptr [ebp-24], 24
jmp .Lt_008C
.Lt_0086:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_008C:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_0088
mov dword ptr [ebp-28], 24
jmp .Lt_008D
.Lt_0088:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_008D:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ecx, dword ptr [_ENV+272]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax+4]
setne cl
shr ecx, 1
sbb ecx, ecx
or ecx, dword ptr [ebp-36]
je .Lt_008B
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 31
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 261632
sal ecx, 1
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 32505856
or eax, ebx
push eax
call dword ptr [_IR+228]
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 76
call dword ptr [_IR+124]
add esp, 12
jmp .Lt_008A
.Lt_008B:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_008A:
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [_IR+248]
add esp, 20
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_0085:
.Lt_0084:
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.Lt_007F:
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
