	.intel_syntax noprefix

.section .text
.balign 16

.globl _CLABEL@0
_CLABEL@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-16], eax
jmp .Lt_006B
.Lt_006D:
mov eax, dword ptr [_ENV+888]
and eax, 1048576
test eax, eax
jne .Lt_006F
push 0
push 146
push 1048576
call _ERRREPORTNOTALLOWED@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_006E
.Lt_006F:
push 68
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0071
push 0
push 0
push 4
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0070
.Lt_0071:
push 0
call _LEXSKIPTOKEN@4
.Lt_0070:
inc dword ptr [_PARSER+28]
.Lt_006E:
jmp .Lt_006A
.Lt_0072:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 258
jne .Lt_0074
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+2068]
mov dword ptr [ebp-12], eax
push 3
push dword ptr [ebp-12]
call _SYMBFINDBYCLASS@8
test eax, eax
je .Lt_0076
jmp .Lt_0069
.Lt_0076:
.Lt_0075:
push 68
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0078
push 0
push 0
push 4
call _ERRREPORT@12
.Lt_0078:
.Lt_0077:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
.Lt_0074:
.Lt_0073:
jmp .Lt_006A
.Lt_006B:
cmp dword ptr [ebp-16], 3
ja .Lt_006A
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_0079+eax*4]
_.LT_0079:
.int .Lt_0072
.int .Lt_006A
.int .Lt_006A
.int .Lt_006D
.Lt_006A:
cmp dword ptr [ebp-8], 0
je .Lt_007B
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
mov dword ptr [_SYMB+99044], eax
mov dword ptr [ebp-4], -1
.Lt_007B:
.Lt_007A:
.Lt_0069:
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
