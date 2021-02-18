	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWDEREF
ASTNEWDEREF:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_005D:
cmp dword ptr [ebp+8], 0
je .Lt_0060
cmp dword ptr [ebp+12], -2147483648
jne .Lt_0062
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
.Lt_0062:
.Lt_0061:
cmp dword ptr [ebp+24], 0
jne .Lt_0064
cmp dword ptr [ebp+20], 0
jne .Lt_0064
.Lt_0076:
push dword ptr [ebp+8]
call ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 6
jne .Lt_0067
.Lt_0068:
mov dword ptr [ebp-16], -1
jmp .Lt_0065
.Lt_0067:
cmp dword ptr [ebp-20], 23
jne .Lt_0069
.Lt_006A:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx+24], 0
mov eax, -1
jne .Lt_0078
cmp dword ptr [ecx+20], 0
je .Lt_0077
.Lt_0078:
xor eax, eax
.Lt_0077:
mov dword ptr [ebp-16], eax
jmp .Lt_0065
.Lt_0069:
cmp dword ptr [ebp-20], 32
jne .Lt_006B
.Lt_006C:
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
jne .Lt_007C
cmp dword ptr [esi+20], 0
je .Lt_007B
.Lt_007C:
xor ebx, ebx
.Lt_007B:
and ecx, ebx
or eax, ecx
je .Lt_006E
mov ecx, dword ptr [ebp-12]
push dword ptr [ecx+60]
call ASTDELTREE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], -1
jmp .Lt_006D
.Lt_006E:
mov dword ptr [ebp-16], 0
.Lt_006D:
jmp .Lt_0065
.Lt_006B:
mov dword ptr [ebp-16], 0
.Lt_006F:
.Lt_0065:
cmp dword ptr [ebp-16], 0
je .Lt_0071
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-8], ecx
.Lt_0072:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp+8], ecx
je .Lt_0073
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
jmp .Lt_0072
.Lt_0073:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTSETTYPE
add esp, 12
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_005E
.Lt_0071:
.Lt_0070:
.Lt_0064:
.Lt_0063:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .Lt_0075
push 8
push dword ptr [ebp+8]
call ASTCONSTFLUSHTOINT
add esp, 8
add dword ptr [ebp+20], eax
adc dword ptr [ebp+24], edx
mov dword ptr [ebp+8], 0
.Lt_0075:
.Lt_0074:
.Lt_0060:
.Lt_005F:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 20
call ASTNEWNODE
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
.Lt_005E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADDEREF
ASTLOADDEREF:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_007D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0080
cmp dword ptr [AST+136], 0
je .Lt_0082
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [IR+248]
add esp, 20
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_0082:
.Lt_0081:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
jmp .Lt_007E
.Lt_0080:
.Lt_007F:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [AST+136], 0
je .Lt_0084
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
je .Lt_0085
mov dword ptr [ebp-24], 24
jmp .Lt_008B
.Lt_0085:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_008B:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_0087
mov dword ptr [ebp-28], 24
jmp .Lt_008C
.Lt_0087:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_008C:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ecx, dword ptr [ENV+272]
cmp ecx, dword ptr [SYMB_DTYPETB+eax+4]
setne cl
shr ecx, 1
sbb ecx, ecx
or ecx, dword ptr [ebp-36]
je .Lt_008A
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
call dword ptr [IR+228]
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 76
call dword ptr [IR+124]
add esp, 12
jmp .Lt_0089
.Lt_008A:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_0089:
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [IR+248]
add esp, 20
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.Lt_0084:
.Lt_0083:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.Lt_007E:
mov eax, dword ptr [ebp-4]
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
