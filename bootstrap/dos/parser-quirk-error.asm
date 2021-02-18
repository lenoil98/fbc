	.intel_syntax noprefix

.section .text
.balign 16

.globl _CERRORSTMT
_CERRORSTMT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0069:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006C
jmp .Lt_006A
.Lt_006C:
.Lt_006B:
lea eax, [_ENV+280]
push eax
mov eax, dword ptr [_LEX+213248]
push dword ptr [eax+4276]
push dword ptr [ebp-8]
call _RTLERRORTHROW
add esp, 12
mov dword ptr [ebp-4], -1
.Lt_006A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CERRSETSTMT
_CERRSETSTMT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006D:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CASSIGNTOKEN
test eax, eax
jne .Lt_0070
push 0
push 0
push 10
call _ERRREPORT
add esp, 12
.Lt_0070:
.Lt_006F:
mov dword ptr [ebp-8], 0
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0072
jmp .Lt_006E
.Lt_0072:
.Lt_0071:
push dword ptr [ebp-8]
call _RTLERRORSETNUM
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_006E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CERRORFUNCT
_CERRORFUNCT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0073:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0076
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0078
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0077
.Lt_0078:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0077:
.Lt_0076:
.Lt_0075:
call _RTLERRORGETNUM
mov dword ptr [ebp-4], eax
.Lt_0074:
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
