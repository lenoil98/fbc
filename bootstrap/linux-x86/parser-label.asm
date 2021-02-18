	.intel_syntax noprefix

.section .text
.balign 16

.globl CLABEL
CLABEL:
.type CLABEL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_006A
.Lt_006C:
mov eax, dword ptr [ENV+888]
and eax, 1048576
test eax, eax
jne .Lt_006E
sub esp, 4
push 0
push 146
push 1048576
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_006D
.Lt_006E:
sub esp, 8
push 68
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0070
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_006F
.Lt_0070:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_006F:
inc dword ptr [PARSER+28]
.Lt_006D:
jmp .Lt_0069
.Lt_0071:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 258
jne .Lt_0073
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-12], eax
sub esp, 8
push 3
push dword ptr [ebp-12]
call SYMBFINDBYCLASS
add esp, 16
test eax, eax
je .Lt_0075
jmp .Lt_0068
.Lt_0075:
.Lt_0074:
sub esp, 8
push 68
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0077
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
.Lt_0077:
.Lt_0076:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0073:
.Lt_0072:
jmp .Lt_0069
.Lt_006A:
cmp dword ptr [ebp-16], 3
ja .Lt_0069
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_0078+eax*4]
.LT_0078:
.int .Lt_0071
.int .Lt_0069
.int .Lt_0069
.int .Lt_006C
.Lt_0069:
cmp dword ptr [ebp-8], 0
je .Lt_007A
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [SYMB+99036], eax
mov dword ptr [ebp-4], -1
.Lt_007A:
.Lt_0079:
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CLABEL, .-CLABEL
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
