	.intel_syntax noprefix

.section .text
.balign 16

.globl CIIFFUNCT
CIIFFUNCT:
.type CIIFFUNCT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_006A
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0069
.Lt_006A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0069:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006C
jmp .Lt_0068
.Lt_006C:
.Lt_006B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_006E
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_006D
.Lt_006E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_006D:
sub esp, 12
push 0
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0070
jmp .Lt_0068
.Lt_0070:
.Lt_006F:
call ASTDTORLISTSCOPEEND
mov dword ptr [ebp-20], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0072
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0071
.Lt_0072:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0071:
sub esp, 12
push 0
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0074
jmp .Lt_0068
.Lt_0074:
.Lt_0073:
call ASTDTORLISTSCOPEEND
mov dword ptr [ebp-24], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0076
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0075
.Lt_0076:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0075:
sub esp, 12
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWIIF
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0078
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0078:
.Lt_0077:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CIIFFUNCT, .-CIIFFUNCT
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
