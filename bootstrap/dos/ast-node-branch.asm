	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWBRANCH
_ASTNEWBRANCH:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_005E:
cmp dword ptr [ebp+16], 0
jne .Lt_0061
mov dword ptr [ebp-12], -2147483648
jmp .Lt_0060
.Lt_0061:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
.Lt_0060:
push 0
push dword ptr [ebp-12]
push 7
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], 1
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADBRANCH
_ASTLOADBRANCH:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0062:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0065
push dword ptr [ebp-8]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
jmp .Lt_0064
.Lt_0065:
mov dword ptr [ebp-12], 0
.Lt_0064:
cmp dword ptr [_AST+136], 0
je .Lt_0067
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .Lt_0069
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 104
jne .Lt_006C
.Lt_006D:
push dword ptr [ebp-12]
call dword ptr [_IR+140]
add esp, 4
jmp .Lt_006A
.Lt_006C:
cmp dword ptr [ebp-16], 101
jne .Lt_006E
.Lt_006F:
push 0
call dword ptr [_IR+72]
add esp, 4
.Lt_006E:
.Lt_0070:
.Lt_006A:
jmp .Lt_0068
.Lt_0069:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
call dword ptr [_IR+144]
add esp, 8
.Lt_0068:
.Lt_0067:
.Lt_0066:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_0063:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADJMPTB
_ASTLOADJMPTB:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_007A:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
cmp dword ptr [_AST+136], 0
je .Lt_007D
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
push dword ptr [eax+44]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
call dword ptr [_IR+148]
add esp, 40
.Lt_007D:
.Lt_007C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _free
add esp, 4
mov dword ptr [ebp-4], 0
.Lt_007B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDJMPTB
_ASTBUILDJMPTB:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0080:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [_ENV+104]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
je .Lt_0086
.Lt_0087:
cmp dword ptr [ebp-24], 2
jne .Lt_0085
.Lt_0086:
cmp dword ptr [ebp+20], 0
jg .Lt_0089
push 0
push dword ptr [ebp+24]
push 98
call _ASTNEWBRANCH
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0081
.Lt_0089:
.Lt_0088:
.Lt_0085:
.Lt_0083:
cmp dword ptr [_ENV+104], 0
jne .Lt_008B
push 0
push 1
push offset _Lt_008C
push 0
push 0
push 0
push 0
push 32
push 0
call _SYMBUNIQUELABEL
push eax
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 32768
push 0
push 0
push dword ptr [ebp+24]
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
call _ASTNEWCONSTI
add esp, 16
push eax
push 1
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
push 29
call _ASTNEWBOP
add esp, 20
push eax
push 46
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 1
push 0
push 0
push dword ptr [ebp-20]
mov ebx, dword ptr [_ENV+272]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
push 30
call _ASTNEWBOP
add esp, 20
push eax
push 0
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
call _HPRECALCBIASOFFSET
add esp, 12
push edx
push eax
push dword ptr [ebp-16]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWIDX
add esp, 8
push eax
push 0
push 104
call _ASTNEWBRANCH
add esp, 12
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_008A
.Lt_008B:
mov dword ptr [ebp-16], 0
.Lt_008A:
push 0
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWJMPTB
add esp, 40
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_008D,16

.section .data
.balign 4
_Lt_008C:
.int _Lt_008D
.int _Lt_008D
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _ASTNEWLOOP
_ASTNEWLOOP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_008E:
push 0
push -2147483648
push 13
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 24
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 0
.Lt_008F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADLOOP
_ASTLOADLOOP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0090:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOAD
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
mov dword ptr [ebp-4], 0
.Lt_0091:
mov eax, dword ptr [ebp-4]
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
.balign 16
_ASTNEWJMPTB:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0071:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+24], 0
jle .Lt_0074
push 1
mov eax, dword ptr [ebp+24]
sal eax, 3
mov ebx, eax
push ebx
call _calloc
add esp, 8
mov dword ptr [ebp-16], eax
push 1
mov eax, dword ptr [ebp+24]
sal eax, 2
mov ebx, eax
push ebx
call _calloc
add esp, 8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+24]
dec eax
mov dword ptr [ebp-28], eax
jmp .Lt_0076
.Lt_0079:
mov eax, dword ptr [ebp-24]
sal eax, 3
mov ebx, dword ptr [ebp+16]
add ebx, eax
mov eax, dword ptr [ebp-24]
sal eax, 3
mov ecx, dword ptr [ebp-16]
add ecx, eax
mov esi, dword ptr [ebx]
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx], esi
mov dword ptr [ecx+4], eax
mov esi, dword ptr [ebp-24]
sal esi, 2
mov eax, dword ptr [ebp+20]
add eax, esi
mov esi, dword ptr [ebp-24]
sal esi, 2
mov ecx, dword ptr [ebp-20]
add ecx, esi
mov esi, dword ptr [eax]
mov dword ptr [ecx], esi
.Lt_0077:
inc dword ptr [ebp-24]
.Lt_0076:
mov esi, dword ptr [ebp-28]
cmp dword ptr [ebp-24], esi
jle .Lt_0079
.Lt_0078:
jmp .Lt_0073
.Lt_0074:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.Lt_0073:
push 0
push -2147483648
push 8
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov dword ptr [eax+56], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [esi+12], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp-16]
mov dword ptr [eax+20], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
mov dword ptr [esi+24], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+24]
mov dword ptr [eax+28], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [esi+32], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+32]
mov esi, dword ptr [ebp+36]
mov dword ptr [eax+36], ecx
mov dword ptr [eax+40], esi
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+40]
mov esi, dword ptr [ebp+44]
mov dword ptr [ecx+44], eax
mov dword ptr [ecx+48], esi
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0072:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPRECALCBIASOFFSET:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_007E:
inc dword ptr [_AST+232]
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push 54
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-12], eax
push 1
push 0
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [_ENV+272]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
push 11
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
dec dword ptr [_AST+232]
.Lt_007F:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
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
