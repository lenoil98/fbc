	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTGOSUBADDINIT
ASTGOSUBADDINIT:
.type ASTGOSUBADDINIT, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_0067:
lea eax, [ebp-16]
mov dword ptr [ebp-52], eax
lea eax, [ebp-16]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-44], 16
mov dword ptr [ebp-40], 16
mov dword ptr [ebp-36], 1
mov dword ptr [ebp-32], 49
mov dword ptr [ebp-28], 1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 4
test eax, eax
je .Lt_006B
jmp .Lt_0068
.Lt_006B:
.Lt_006A:
mov eax, dword ptr [ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ENV+200]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_006D
mov dword ptr [ebp-64], 8
jmp .Lt_006C
.Lt_006D:
mov dword ptr [ebp-64], 32
.Lt_006C:
sub esp, 4
push 2
push 0
push dword ptr [ebp-64]
call SYMBADDIMPLICITVAR
add esp, 16
mov dword ptr [ebp-56], eax
sub esp, 8
push -1
push dword ptr [ebp-56]
call ASTNEWDECL
add esp, 16
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp-56]
or dword ptr [eax+12], 8
sub esp, 12
push dword ptr [ebp-60]
call ASTADDUNSCOPED
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-56]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
or dword ptr [ebx+48], 4
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTGOSUBADDINIT, .-ASTGOSUBADDINIT
.balign 16

.globl ASTGOSUBADDJMP
ASTGOSUBADDJMP:
.type ASTGOSUBADDJMP, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0071:
sub esp, 12
push dword ptr [ebp+8]
call ASTGOSUBADDINIT
add esp, 16
mov eax, dword ptr [ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ENV+200]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0074
sub esp, 12
sub esp, 12
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+60]
call ASTBUILDVARINC
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp+12]
push 99
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp+12]
mov byte ptr [eax+68], 1
jmp .Lt_0073
.Lt_0074:
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
sub esp, 4
push 0
push 0
push dword ptr [ebp-4]
push 1
push 0
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
call RTLGOSUBPUSH
add esp, 4
push eax
call RTLSETJMP
add esp, 8
push eax
push 45
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp+12]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-4]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0073:
.Lt_0072:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTGOSUBADDJMP, .-ASTGOSUBADDJMP
.balign 16

.globl ASTGOSUBADDJUMPPTR
ASTGOSUBADDJUMPPTR:
.type ASTGOSUBADDJUMPPTR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0078:
sub esp, 12
push dword ptr [ebp+8]
call ASTGOSUBADDINIT
add esp, 16
mov eax, dword ptr [ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ENV+200]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_007B
sub esp, 12
sub esp, 12
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+60]
call ASTBUILDVARINC
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 8
push eax
push 88
call ASTNEWSTACK
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTADD
add esp, 16
jmp .Lt_007A
.Lt_007B:
sub esp, 12
push dword ptr [ebp+8]
call ASTGOSUBADDINIT
add esp, 16
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
sub esp, 4
push 0
push 0
push dword ptr [ebp-4]
push 1
push 0
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
call RTLGOSUBPUSH
add esp, 4
push eax
call RTLSETJMP
add esp, 8
push eax
push 45
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-4]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp+16]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_007A:
.Lt_0079:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTGOSUBADDJUMPPTR, .-ASTGOSUBADDJUMPPTR
.balign 16

.globl ASTGOSUBADDRETURN
ASTGOSUBADDRETURN:
.type ASTGOSUBADDRETURN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_007F:
sub esp, 12
push dword ptr [ebp+8]
call ASTGOSUBADDINIT
add esp, 16
mov eax, dword ptr [ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ENV+200]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0082
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
sub esp, 4
push 0
push 0
push dword ptr [ebp-8]
push 1
push 0
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call ASTNEWVAR
add esp, 24
push eax
push 48
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call ASTBUILDVARINC
add esp, 20
push eax
call ASTADD
add esp, 16
cmp dword ptr [ebp+12], 0
jne .Lt_0084
sub esp, 12
sub esp, 8
push 0
push 0
push 101
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .Lt_0083
.Lt_0084:
sub esp, 12
sub esp, 12
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ENV+272]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push 89
call ASTNEWSTACK
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp+12]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0083:
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 4
push 0
push 8
push 0
push 16
call ASTNEWCONSTI
add esp, 20
push eax
call RTLERRORSETNUM
add esp, 16
cmp dword ptr [ENV+156], 0
je .Lt_0086
sub esp, 4
lea eax, [ENV+280]
push eax
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16564]
sub esp, 4
push 0
push 8
push 0
push 16
call ASTNEWCONSTI
add esp, 20
push eax
call RTLERRORTHROW
add esp, 16
.Lt_0086:
.Lt_0085:
mov dword ptr [ebp-4], -1
jmp .Lt_0081
.Lt_0082:
cmp dword ptr [ebp+12], 0
jne .Lt_0088
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
call RTLGOSUBRETURN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0087
.Lt_0088:
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
sub esp, 4
push 0
push 0
push dword ptr [ebp-8]
push 1
push 0
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
call RTLGOSUBPOP
add esp, 8
push eax
push 45
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp+12]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 4
push 0
push 8
push 0
push 16
call ASTNEWCONSTI
add esp, 20
push eax
call RTLERRORSETNUM
add esp, 16
cmp dword ptr [ENV+156], 0
je .Lt_008A
sub esp, 4
lea eax, [ENV+280]
push eax
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16564]
sub esp, 4
push 0
push 8
push 0
push 16
call ASTNEWCONSTI
add esp, 20
push eax
call RTLERRORTHROW
add esp, 16
.Lt_008A:
.Lt_0089:
mov dword ptr [ebp-4], -1
.Lt_0087:
.Lt_0081:
.Lt_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTGOSUBADDRETURN, .-ASTGOSUBADDRETURN
.balign 16

.globl ASTGOSUBADDEXIT
ASTGOSUBADDEXIT:
.type ASTGOSUBADDEXIT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_008E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 4
test eax, eax
je .Lt_0091
mov eax, dword ptr [ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ENV+200]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
jne .Lt_0093
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
call RTLGOSUBEXIT
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_0093:
.Lt_0092:
.Lt_0091:
.Lt_0090:
.Lt_008F:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTGOSUBADDEXIT, .-ASTGOSUBADDEXIT
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
