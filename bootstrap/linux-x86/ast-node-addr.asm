	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTGETOFFSETCHILDOFS
ASTGETOFFSETCHILDOFS:
.type ASTGETOFFSETCHILDOFS, @function
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_005D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .Lt_0060
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .Lt_005F
.Lt_0060:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov esi, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
add esi, dword ptr [ecx+20]
adc ebx, dword ptr [ecx+24]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
add esi, dword ptr [eax+68]
adc ebx, dword ptr [eax+72]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
add esi, dword ptr [ecx+48]
adc ebx, dword ptr [ecx+52]
mov dword ptr [ebp-8], esi
mov dword ptr [ebp-4], ebx
.Lt_005F:
.Lt_005E:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTGETOFFSETCHILDOFS, .-ASTGETOFFSETCHILDOFS
.balign 16

.globl ASTLOADOFFSET
ASTLOADOFFSET:
.type ASTLOADOFFSET, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_006A
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+12], 2
.Lt_006A:
.Lt_0069:
cmp dword ptr [AST+136], 0
je .Lt_006C
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [IR+252]
add esp, 32
mov dword ptr [ebp-8], eax
.Lt_006C:
.Lt_006B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 18
jne .Lt_006E
sub esp, 12
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+56]
call ASTDELNODE
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+60]
call ASTDELNODE
add esp, 16
.Lt_006E:
.Lt_006D:
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADOFFSET, .-ASTLOADOFFSET
.balign 16

.globl ASTNEWADDROF
ASTNEWADDROF:
.type ASTNEWADDROF, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0083:
cmp dword ptr [ebp+8], 0
jne .Lt_0086
mov dword ptr [ebp-4], 0
jmp .Lt_0084
.Lt_0086:
.Lt_0085:
sub esp, 12
push dword ptr [ebp+8]
call ASTSKIPNOCONVCAST
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 20
jne .Lt_0089
.Lt_008A:
cmp dword ptr [ENV+176], 0
je .Lt_008C
sub esp, 12
push dword ptr [ebp-20]
call HREMOVENULLPTRCHECK
add esp, 16
.Lt_008C:
.Lt_008B:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebx+56], 0
je .Lt_008E
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebx+24], 0
jne .Lt_0090
cmp dword ptr [ebx+20], 0
jne .Lt_0090
.Lt_00AD:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-20]
call ASTDELNODE
add esp, 16
.Lt_0090:
.Lt_008F:
jmp .Lt_008D
.Lt_008E:
push 0
push 8
mov eax, dword ptr [ebp-20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-20]
call ASTDELNODE
add esp, 16
.Lt_008D:
jmp .Lt_0087
.Lt_0089:
cmp dword ptr [ebp-24], 19
jne .Lt_0091
.Lt_0092:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 20
jne .Lt_0094
cmp dword ptr [ENV+176], 0
je .Lt_0096
sub esp, 12
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+56]
call HREMOVENULLPTRCHECK
add esp, 16
.Lt_0096:
.Lt_0095:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax+56], 0
jne .Lt_0098
push 0
push 8
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp-20]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-20]
call ASTDELNODE
add esp, 16
.Lt_0098:
.Lt_0097:
.Lt_0094:
.Lt_0093:
jmp .Lt_0087
.Lt_0091:
cmp dword ptr [ebp-24], 17
jne .Lt_0099
.Lt_009A:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 0
je .Lt_009C
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
je .Lt_009E
sub esp, 12
push dword ptr [ebp-20]
call ASTNEWOFFSET
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_009E:
.Lt_009D:
.Lt_009C:
.Lt_009B:
jmp .Lt_0087
.Lt_0099:
cmp dword ptr [ebp-24], 18
jne .Lt_009F
.Lt_00A0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-20], eax
je .Lt_00A2
sub esp, 12
push dword ptr [ebp-20]
call ASTOPTIMIZETREE
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-20]
mov dword ptr [eax+56], ecx
jmp .Lt_00A1
.Lt_00A2:
sub esp, 12
push dword ptr [ebp-20]
call ASTOPTIMIZETREE
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+8], eax
.Lt_00A1:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+56], 0
jne .Lt_00A4
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
je .Lt_00A6
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+4]
and eax, 16388
test eax, eax
jne .Lt_00A8
sub esp, 12
push dword ptr [ebp-20]
call ASTNEWOFFSET
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00A8:
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
.Lt_00A3:
.Lt_009F:
.Lt_0087:
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
je .Lt_00AA
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ebp-20], ecx
je .Lt_00AC
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
.Lt_00AC:
.Lt_00AB:
sub esp, 12
push 0
push 24
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_0084
.Lt_00AA:
.Lt_00A9:
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 6
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 22
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0084:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWADDROF, .-ASTNEWADDROF
.balign 16

.globl ASTLOADADDROF
ASTLOADADDROF:
.type ASTLOADADDROF, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_00B5
mov dword ptr [ebp-4], 0
jmp .Lt_00B3
.Lt_00B5:
.Lt_00B4:
sub esp, 12
push dword ptr [ebp-8]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [AST+136], 0
je .Lt_00B7
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
je .Lt_00B8
mov dword ptr [ebp-20], 24
jmp .Lt_00BE
.Lt_00B8:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_00BE:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00BA
mov dword ptr [ebp-24], 24
jmp .Lt_00BF
.Lt_00BA:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_00BF:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [ENV+272]
cmp ebx, dword ptr [SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-32]
je .Lt_00BD
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [IR+228]
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 22
call dword ptr [IR+124]
add esp, 16
jmp .Lt_00BC
.Lt_00BD:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_00BC:
.Lt_00B7:
.Lt_00B6:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADADDROF, .-ASTLOADADDROF
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
.balign 16
ASTNEWOFFSET:
.type ASTNEWOFFSET, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0061:
cmp dword ptr [ebp+8], 0
jne .Lt_0064
mov dword ptr [ebp-4], 0
jmp .Lt_0062
.Lt_0064:
.Lt_0063:
sub esp, 4
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
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax+12], ecx
sub esp, 12
push dword ptr [ebp+8]
call ASTGETOFFSETCHILDOFS
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], edx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0066
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+12]
or dword ptr [edx+12], 2
.Lt_0066:
.Lt_0065:
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.Lt_0062:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWOFFSET, .-ASTNEWOFFSET
.balign 16
HREMOVENULLPTRCHECK:
.type HREMOVENULLPTRCHECK, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_006F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_0072
jmp .Lt_0070
.Lt_0072:
.Lt_0071:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 32
jne .Lt_0075
.Lt_0076:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+56], ecx
sub esp, 12
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+60]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 16
jmp .Lt_0073
.Lt_0075:
cmp dword ptr [ebp-12], 3
jne .Lt_0077
.Lt_0078:
.Lt_0079:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 32
jne .Lt_007E
.Lt_007F:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebx+56], eax
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+60]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
jmp .Lt_007A
jmp .Lt_007C
.Lt_007E:
cmp dword ptr [ebp-16], 3
jne .Lt_0080
.Lt_0081:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_007C
.Lt_0080:
jmp .Lt_007A
.Lt_0082:
.Lt_007C:
.Lt_007B:
jmp .Lt_0079
.Lt_007A:
.Lt_0077:
.Lt_0073:
.Lt_0070:
pop ebx
mov esp, ebp
pop ebp
ret
.size HREMOVENULLPTRCHECK, .-HREMOVENULLPTRCHECK

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
