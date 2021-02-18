	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWBRANCH
ASTNEWBRANCH:
.type ASTNEWBRANCH, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_005D:
cmp dword ptr [ebp+16], 0
jne .Lt_0060
mov dword ptr [ebp-12], -2147483648
jmp .Lt_005F
.Lt_0060:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
.Lt_005F:
sub esp, 4
push 0
push dword ptr [ebp-12]
push 7
call ASTNEWNODE
add esp, 16
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
.Lt_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWBRANCH, .-ASTNEWBRANCH
.balign 16

.globl ASTLOADBRANCH
ASTLOADBRANCH:
.type ASTLOADBRANCH, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0061:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0064
sub esp, 12
push dword ptr [ebp-8]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
jmp .Lt_0063
.Lt_0064:
mov dword ptr [ebp-12], 0
.Lt_0063:
cmp dword ptr [AST+136], 0
je .Lt_0066
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .Lt_0068
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 104
jne .Lt_006B
.Lt_006C:
sub esp, 12
push dword ptr [ebp-12]
call dword ptr [IR+140]
add esp, 16
jmp .Lt_0069
.Lt_006B:
cmp dword ptr [ebp-16], 101
jne .Lt_006D
.Lt_006E:
sub esp, 12
push 0
call dword ptr [IR+72]
add esp, 16
.Lt_006D:
.Lt_006F:
.Lt_0069:
jmp .Lt_0067
.Lt_0068:
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
call dword ptr [IR+144]
add esp, 16
.Lt_0067:
.Lt_0066:
.Lt_0065:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_0062:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADBRANCH, .-ASTLOADBRANCH
.balign 16

.globl ASTLOADJMPTB
ASTLOADJMPTB:
.type ASTLOADJMPTB, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0079:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
cmp dword ptr [AST+136], 0
je .Lt_007C
sub esp, 8
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
call dword ptr [IR+148]
add esp, 48
.Lt_007C:
.Lt_007B:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call free
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call free
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_007A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTLOADJMPTB, .-ASTLOADJMPTB
.balign 16

.globl ASTBUILDJMPTB
ASTBUILDJMPTB:
.type ASTBUILDJMPTB, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_007F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ENV+104]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
je .Lt_0085
.Lt_0086:
cmp dword ptr [ebp-24], 2
jne .Lt_0084
.Lt_0085:
cmp dword ptr [ebp+20], 0
jg .Lt_0088
sub esp, 4
push 0
push dword ptr [ebp+24]
push 98
call ASTNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0080
.Lt_0088:
.Lt_0087:
.Lt_0084:
.Lt_0082:
cmp dword ptr [ENV+104], 0
jne .Lt_008A
sub esp, 8
push 0
push 1
push offset Lt_008B
push 0
push 0
push 0
push 0
push 32
push 0
sub esp, 4
call SYMBUNIQUELABEL
add esp, 4
push eax
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 32768
sub esp, 4
push 0
sub esp, 4
push 0
push dword ptr [ebp+24]
sub esp, 12
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 1
push 0
sub esp, 12
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 24
push eax
push 29
call ASTNEWBOP
add esp, 24
push eax
push 46
call ASTNEWBOP
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
sub esp, 12
sub esp, 4
sub esp, 4
push 1
push 0
sub esp, 12
push 0
push dword ptr [ebp-20]
mov ebx, dword ptr [ENV+272]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 24
push eax
push 30
call ASTNEWBOP
add esp, 24
push eax
push 0
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
call HPRECALCBIASOFFSET
add esp, 12
push edx
push eax
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWIDX
add esp, 12
push eax
push 0
push 104
call ASTNEWBRANCH
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0089
.Lt_008A:
mov dword ptr [ebp-16], 0
.Lt_0089:
sub esp, 4
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWJMPTB
add esp, 40
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDJMPTB, .-ASTBUILDJMPTB

.section .bss
.balign 4
	.lcomm	Lt_008C,16

.section .data
.balign 4
Lt_008B:
.int Lt_008C
.int Lt_008C
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl ASTNEWLOOP
ASTNEWLOOP:
.type ASTNEWLOOP, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_008D:
sub esp, 4
push 0
push -2147483648
push 13
call ASTNEWNODE
add esp, 16
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
.Lt_008E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWLOOP, .-ASTNEWLOOP
.balign 16

.globl ASTLOADLOOP
ASTLOADLOOP:
.type ASTLOADLOOP, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_008F:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_0090:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTLOADLOOP, .-ASTLOADLOOP
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
ASTNEWJMPTB:
.type ASTNEWJMPTB, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0070:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+24], 0
jle .Lt_0073
sub esp, 8
push 1
mov eax, dword ptr [ebp+24]
sal eax, 3
mov ebx, eax
push ebx
call calloc
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push 1
mov eax, dword ptr [ebp+24]
sal eax, 2
mov ebx, eax
push ebx
call calloc
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+24]
dec eax
mov dword ptr [ebp-28], eax
jmp .Lt_0075
.Lt_0078:
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
.Lt_0076:
inc dword ptr [ebp-24]
.Lt_0075:
mov esi, dword ptr [ebp-28]
cmp dword ptr [ebp-24], esi
jle .Lt_0078
.Lt_0077:
jmp .Lt_0072
.Lt_0073:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.Lt_0072:
sub esp, 4
push 0
push -2147483648
push 8
call ASTNEWNODE
add esp, 16
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
sub esp, 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0071:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWJMPTB, .-ASTNEWJMPTB
.balign 16
HPRECALCBIASOFFSET:
.type HPRECALCBIASOFFSET, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_007D:
inc dword ptr [AST+232]
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push dword ptr [ebp-12]
push 54
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [ENV+272]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-12]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 8
push 11
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOINT
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
dec dword ptr [AST+232]
.Lt_007E:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HPRECALCBIASOFFSET, .-HPRECALCBIASOFFSET

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
