	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTGOSUBADDINIT@4
_ASTGOSUBADDINIT@4:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.Lt_0068:
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
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 4
test eax, eax
je .Lt_006C
jmp .Lt_0069
.Lt_006C:
.Lt_006B:
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [_ENV+200]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_006E
mov dword ptr [ebp-64], 8
jmp .Lt_006D
.Lt_006E:
mov dword ptr [ebp-64], 32
.Lt_006D:
push 2
push 0
push dword ptr [ebp-64]
call _SYMBADDIMPLICITVAR@12
mov dword ptr [ebp-56], eax
push -1
push dword ptr [ebp-56]
call _ASTNEWDECL@8
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp-56]
or dword ptr [eax+12], 8
push dword ptr [ebp-60]
call _ASTADDUNSCOPED@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-56]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
or dword ptr [ebx+48], 4
.Lt_0069:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTGOSUBADDJMP@8
_ASTGOSUBADDJMP@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0072:
push dword ptr [ebp+8]
call _ASTGOSUBADDINIT@4
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [_ENV+200]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0075
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+60]
call _ASTBUILDVARINC@8
push eax
call _ASTADD@4
push 0
push dword ptr [ebp+12]
push 99
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
mov eax, dword ptr [ebp+12]
mov byte ptr [eax+68], 1
jmp .Lt_0074
.Lt_0075:
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
push 0
push 0
push dword ptr [ebp-4]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _RTLGOSUBPUSH@4
push eax
call _RTLSETJMP@4
push eax
push 45
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
call _ASTADD@4
push 0
push dword ptr [ebp+12]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push -1
push dword ptr [ebp-4]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.Lt_0074:
.Lt_0073:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTGOSUBADDJUMPPTR@12
_ASTGOSUBADDJUMPPTR@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0079:
push dword ptr [ebp+8]
call _ASTGOSUBADDINIT@4
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [_ENV+200]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_007C
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+60]
call _ASTBUILDVARINC@8
push eax
call _ASTADD@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
push 88
call _ASTNEWSTACK@8
push eax
call _ASTADD@4
push dword ptr [ebp+12]
call _ASTADD@4
jmp .Lt_007B
.Lt_007C:
push dword ptr [ebp+8]
call _ASTGOSUBADDINIT@4
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
push 0
push 0
push dword ptr [ebp-4]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _RTLGOSUBPUSH@4
push eax
call _RTLSETJMP@4
push eax
push 45
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
call _ASTADD@4
push dword ptr [ebp+12]
call _ASTADD@4
push -1
push dword ptr [ebp-4]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 0
push dword ptr [ebp+16]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
.Lt_007B:
.Lt_007A:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTGOSUBADDRETURN@8
_ASTGOSUBADDRETURN@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0080:
push dword ptr [ebp+8]
call _ASTGOSUBADDINIT@4
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [_ENV+200]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0083
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
push 48
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
call _ASTADD@4
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTBUILDVARINC@8
push eax
call _ASTADD@4
cmp dword ptr [ebp+12], 0
jne .Lt_0085
push 0
push 0
push 101
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
jmp .Lt_0084
.Lt_0085:
push 0
push 8
mov ebx, dword ptr [_ENV+272]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push 89
call _ASTNEWSTACK@8
push eax
call _ASTADD@4
push 0
push dword ptr [ebp+12]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
.Lt_0084:
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 0
push 8
push 0
push 16
call _ASTNEWCONSTI@16
push eax
call _RTLERRORSETNUM@4
cmp dword ptr [_ENV+156], 0
je .Lt_0087
lea eax, [_ENV+280]
push eax
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8372]
push 0
push 8
push 0
push 16
call _ASTNEWCONSTI@16
push eax
call _RTLERRORTHROW@12
.Lt_0087:
.Lt_0086:
mov dword ptr [ebp-4], -1
jmp .Lt_0082
.Lt_0083:
cmp dword ptr [ebp+12], 0
jne .Lt_0089
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _RTLGOSUBRETURN@4
mov dword ptr [ebp-4], eax
jmp .Lt_0088
.Lt_0089:
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _RTLGOSUBPOP@4
push eax
push 45
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
call _ASTADD@4
push 0
push dword ptr [ebp+12]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 0
push 8
push 0
push 16
call _ASTNEWCONSTI@16
push eax
call _RTLERRORSETNUM@4
cmp dword ptr [_ENV+156], 0
je .Lt_008B
lea eax, [_ENV+280]
push eax
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8372]
push 0
push 8
push 0
push 16
call _ASTNEWCONSTI@16
push eax
call _RTLERRORTHROW@12
.Lt_008B:
.Lt_008A:
mov dword ptr [ebp-4], -1
.Lt_0088:
.Lt_0082:
.Lt_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTGOSUBADDEXIT@4
_ASTGOSUBADDEXIT@4:
push ebp
mov ebp, esp
push ebx
.Lt_008F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 4
test eax, eax
je .Lt_0092
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [_ENV+200]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
jne .Lt_0094
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _RTLGOSUBEXIT@4
push eax
call _ASTADD@4
.Lt_0094:
.Lt_0093:
.Lt_0092:
.Lt_0091:
.Lt_0090:
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
