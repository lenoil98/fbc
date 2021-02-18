	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWMACRO
ASTNEWMACRO:
.type ASTNEWMACRO, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_005D:
sub esp, 4
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 44
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax+12], ecx
cmp dword ptr [ebp+8], 112
jne .Lt_0060
mov ecx, dword ptr [ebp+20]
and ecx, 480
je .Lt_0061
mov dword ptr [ebp-12], 24
jmp .Lt_0071
.Lt_0061:
mov ecx, dword ptr [ebp+20]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_0071:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0065
.Lt_0066:
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_0067
mov dword ptr [ebp-20], 24
jmp .Lt_0072
.Lt_0067:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0072:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+228]
cmp dword ptr [SYMB_DTYPETB+eax+4], ecx
jge .Lt_006A
mov ecx, dword ptr [ebp+20]
and ecx, -512
or ecx, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], ecx
sub esp, 12
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+20]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-8], eax
.Lt_006A:
.Lt_0069:
jmp .Lt_0063
.Lt_0065:
cmp dword ptr [ebp-16], 1
jne .Lt_006B
.Lt_006C:
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_006D
mov dword ptr [ebp-20], 24
jmp .Lt_0073
.Lt_006D:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0073:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+452]
cmp dword ptr [SYMB_DTYPETB+eax+4], ecx
jge .Lt_0070
mov ecx, dword ptr [ebp+20]
and ecx, -512
or ecx, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], ecx
sub esp, 12
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+20]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-8], eax
.Lt_0070:
.Lt_006F:
.Lt_006B:
.Lt_0063:
.Lt_0060:
.Lt_005F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWMACRO, .-ASTNEWMACRO
.balign 16

.globl ASTLOADMACRO
ASTLOADMACRO:
.type ASTLOADMACRO, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0074:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 109
jne .Lt_0077
.Lt_0078:
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
jmp .Lt_0076
.Lt_0077:
cmp dword ptr [ebp-8], 110
jne .Lt_0079
.Lt_007A:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
jmp .Lt_0076
.Lt_0079:
cmp dword ptr [ebp-8], 112
jne .Lt_007B
.Lt_007C:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [IR+228]
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_0076
.Lt_007B:
cmp dword ptr [ebp-8], 111
jne .Lt_007D
.Lt_007E:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
.Lt_007D:
.Lt_0076:
cmp dword ptr [AST+136], 0
je .Lt_0080
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [IR+156]
add esp, 16
.Lt_0080:
.Lt_007F:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0082
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDELNODE
add esp, 16
.Lt_0082:
.Lt_0081:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0075:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADMACRO, .-ASTLOADMACRO
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
