	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWMACRO
_ASTNEWMACRO:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_005E:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 44
call _ASTNEWNODE
add esp, 12
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
jne .Lt_0061
mov ecx, dword ptr [ebp+20]
and ecx, 480
je .Lt_0062
mov dword ptr [ebp-12], 24
jmp .Lt_0072
.Lt_0062:
mov ecx, dword ptr [ebp+20]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_0072:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0066
.Lt_0067:
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_0068
mov dword ptr [ebp-20], 24
jmp .Lt_0073
.Lt_0068:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0073:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+228]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ecx
jge .Lt_006B
mov ecx, dword ptr [ebp+20]
and ecx, -512
or ecx, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], ecx
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+20]
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_006B:
.Lt_006A:
jmp .Lt_0064
.Lt_0066:
cmp dword ptr [ebp-16], 1
jne .Lt_006C
.Lt_006D:
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_006E
mov dword ptr [ebp-20], 24
jmp .Lt_0074
.Lt_006E:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0074:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+452]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ecx
jge .Lt_0071
mov ecx, dword ptr [ebp+20]
and ecx, -512
or ecx, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], ecx
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+20]
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0071:
.Lt_0070:
.Lt_006C:
.Lt_0064:
.Lt_0061:
.Lt_0060:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADMACRO
_ASTLOADMACRO:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0075:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 109
jne .Lt_0078
.Lt_0079:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
jmp .Lt_0077
.Lt_0078:
cmp dword ptr [ebp-8], 110
jne .Lt_007A
.Lt_007B:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
jmp .Lt_0077
.Lt_007A:
cmp dword ptr [ebp-8], 112
jne .Lt_007C
.Lt_007D:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [_IR+228]
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_0077
.Lt_007C:
cmp dword ptr [ebp-8], 111
jne .Lt_007E
.Lt_007F:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
.Lt_007E:
.Lt_0077:
cmp dword ptr [_AST+136], 0
je .Lt_0081
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [_IR+156]
add esp, 16
.Lt_0081:
.Lt_0080:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0083
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTDELNODE
add esp, 4
.Lt_0083:
.Lt_0082:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0076:
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
