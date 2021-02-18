	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTGETOFFSETCHILDOFS@4
_ASTGETOFFSETCHILDOFS@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_005E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .Lt_0061
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .Lt_0060
.Lt_0061:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov esi, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
add esi, dword ptr [ecx+24]
adc ebx, dword ptr [ecx+28]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
add esi, dword ptr [eax+72]
adc ebx, dword ptr [eax+76]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
add esi, dword ptr [ecx+48]
adc ebx, dword ptr [ecx+52]
mov dword ptr [ebp-8], esi
mov dword ptr [ebp-4], ebx
.Lt_0060:
.Lt_005F:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTLOADOFFSET@4
_ASTLOADOFFSET@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_006B
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+12], 2
.Lt_006B:
.Lt_006A:
cmp dword ptr [_AST+136], 0
je .Lt_006D
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [_IR+252]
mov dword ptr [ebp-8], eax
.Lt_006D:
.Lt_006C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 18
jne .Lt_006F
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+64]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+68]
call _ASTDELNODE@4
.Lt_006F:
.Lt_006E:
push dword ptr [ebp-16]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWADDROF@4
_ASTNEWADDROF@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0084:
cmp dword ptr [ebp+8], 0
jne .Lt_0087
mov dword ptr [ebp-4], 0
jmp .Lt_0085
.Lt_0087:
.Lt_0086:
push dword ptr [ebp+8]
call _ASTSKIPNOCONVCAST@4
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 20
jne .Lt_008A
.Lt_008B:
cmp dword ptr [_ENV+176], 0
je .Lt_008D
push dword ptr [ebp-20]
call _HREMOVENULLPTRCHECK@4
.Lt_008D:
.Lt_008C:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebx+64], 0
je .Lt_008F
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebx+28], 0
jne .Lt_0091
cmp dword ptr [ebx+24], 0
jne .Lt_0091
.Lt_00AE:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-20]
call _ASTDELNODE@4
.Lt_0091:
.Lt_0090:
jmp .Lt_008E
.Lt_008F:
push 0
push 8
mov eax, dword ptr [ebp-20]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
push dword ptr [ebp-20]
call _ASTDELNODE@4
.Lt_008E:
jmp .Lt_0088
.Lt_008A:
cmp dword ptr [ebp-24], 19
jne .Lt_0092
.Lt_0093:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 20
jne .Lt_0095
cmp dword ptr [_ENV+176], 0
je .Lt_0097
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+64]
call _HREMOVENULLPTRCHECK@4
.Lt_0097:
.Lt_0096:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+64]
cmp dword ptr [eax+64], 0
jne .Lt_0099
push 0
push 8
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-20]
push dword ptr [eax+64]
call _ASTDELNODE@4
push dword ptr [ebp-20]
call _ASTDELNODE@4
.Lt_0099:
.Lt_0098:
.Lt_0095:
.Lt_0094:
jmp .Lt_0088
.Lt_0092:
cmp dword ptr [ebp-24], 17
jne .Lt_009A
.Lt_009B:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 0
je .Lt_009D
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-28]
mov ecx, dword ptr [ebx+4]
and ecx, 11
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_009F
push dword ptr [ebp-20]
call _ASTNEWOFFSET@4
mov dword ptr [ebp-8], eax
.Lt_009F:
.Lt_009E:
.Lt_009D:
.Lt_009C:
jmp .Lt_0088
.Lt_009A:
cmp dword ptr [ebp-24], 18
jne .Lt_00A0
.Lt_00A1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-20], eax
je .Lt_00A3
push dword ptr [ebp-20]
call _ASTOPTIMIZETREE@4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-20]
mov dword ptr [eax+64], ecx
jmp .Lt_00A2
.Lt_00A3:
push dword ptr [ebp-20]
call _ASTOPTIMIZETREE@4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+8], eax
.Lt_00A2:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+64], 0
jne .Lt_00A5
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ecx+4]
and eax, 128
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-28]
mov ebx, dword ptr [ecx+4]
and ebx, 11
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00A7
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+4]
and eax, 16388
test eax, eax
jne .Lt_00A9
push dword ptr [ebp-20]
call _ASTNEWOFFSET@4
mov dword ptr [ebp-8], eax
.Lt_00A9:
.Lt_00A8:
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
.Lt_00A0:
.Lt_0088:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+8]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-8], 0
je .Lt_00AB
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ebp-20], ecx
je .Lt_00AD
push dword ptr [ebp+8]
call _ASTDELNODE@4
.Lt_00AD:
.Lt_00AC:
push 0
push 24
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _ASTNEWCONV@20
mov dword ptr [ebp-4], eax
jmp .Lt_0085
.Lt_00AB:
.Lt_00AA:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 6
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 22
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+64], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTLOADADDROF@4
_ASTLOADADDROF@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_00B6
mov dword ptr [ebp-4], 0
jmp .Lt_00B4
.Lt_00B6:
.Lt_00B5:
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
cmp dword ptr [_AST+136], 0
je .Lt_00B8
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_00B9
mov dword ptr [ebp-20], 24
jmp .Lt_00BF
.Lt_00B9:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_00BF:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00BB
mov dword ptr [ebp-24], 24
jmp .Lt_00C0
.Lt_00BB:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_00C0:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_ENV+272]
cmp ebx, dword ptr [_SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-32]
je .Lt_00BE
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [_IR+228]
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 22
call dword ptr [_IR+124]
jmp .Lt_00BD
.Lt_00BE:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_00BD:
.Lt_00B8:
.Lt_00B7:
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_00B4:
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
.balign 16
_ASTNEWOFFSET@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0062:
cmp dword ptr [ebp+8], 0
jne .Lt_0065
mov dword ptr [ebp-4], 0
jmp .Lt_0063
.Lt_0065:
.Lt_0064:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
push 23
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax+12], ecx
push dword ptr [ebp+8]
call _ASTGETOFFSETCHILDOFS@4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], edx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0067
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+12]
or dword ptr [edx+12], 2
.Lt_0067:
.Lt_0066:
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.Lt_0063:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HREMOVENULLPTRCHECK@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0070:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_0073
jmp .Lt_0071
.Lt_0073:
.Lt_0072:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 32
jne .Lt_0076
.Lt_0077:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+64], ecx
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+68]
call _ASTDELTREE@4
push dword ptr [ebp-4]
call _ASTDELNODE@4
jmp .Lt_0074
.Lt_0076:
cmp dword ptr [ebp-12], 3
jne .Lt_0078
.Lt_0079:
.Lt_007A:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 32
jne .Lt_007F
.Lt_0080:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+64]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+68]
call _ASTDELTREE@4
push dword ptr [ebp-8]
call _ASTDELNODE@4
jmp .Lt_007B
jmp .Lt_007D
.Lt_007F:
cmp dword ptr [ebp-16], 3
jne .Lt_0081
.Lt_0082:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_007D
.Lt_0081:
jmp .Lt_007B
.Lt_0083:
.Lt_007D:
.Lt_007C:
jmp .Lt_007A
.Lt_007B:
.Lt_0078:
.Lt_0074:
.Lt_0071:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
