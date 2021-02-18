	.intel_syntax noprefix

.section .text
.balign 16

.globl _CIIFFUNCT
_CIIFFUNCT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_006B
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_006A
.Lt_006B:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_006A:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006D
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_006F
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_006E
.Lt_006F:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_006E:
push 0
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0071
jmp .Lt_0069
.Lt_0071:
.Lt_0070:
call _ASTDTORLISTSCOPEEND
mov dword ptr [ebp-20], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0073
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_0072
.Lt_0073:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0072:
push 0
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0075
jmp .Lt_0069
.Lt_0075:
.Lt_0074:
call _ASTDTORLISTSCOPEEND
mov dword ptr [ebp-24], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0077
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
jmp .Lt_0076
.Lt_0077:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0076:
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWIIF
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0079
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0079:
.Lt_0078:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
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
