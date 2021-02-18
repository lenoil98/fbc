	.intel_syntax noprefix

.section .text
.balign 16

.globl CERRORSTMT
CERRORSTMT:
.type CERRORSTMT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006B
jmp .Lt_0069
.Lt_006B:
.Lt_006A:
sub esp, 4
lea eax, [ENV+280]
push eax
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16564]
push dword ptr [ebp-8]
call RTLERRORTHROW
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CERRORSTMT, .-CERRORSTMT
.balign 16

.globl CERRSETSTMT
CERRSETSTMT:
.type CERRSETSTMT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006C:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CASSIGNTOKEN
test eax, eax
jne .Lt_006F
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
.Lt_006F:
.Lt_006E:
mov dword ptr [ebp-8], 0
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0071
jmp .Lt_006D
.Lt_0071:
.Lt_0070:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORSETNUM
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CERRSETSTMT, .-CERRSETSTMT
.balign 16

.globl CERRORFUNCT
CERRORFUNCT:
.type CERRORFUNCT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0072:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .Lt_0075
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0077
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
jmp .Lt_0076
.Lt_0077:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0076:
.Lt_0075:
.Lt_0074:
call RTLERRORGETNUM
mov dword ptr [ebp-4], eax
.Lt_0073:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CERRORFUNCT, .-CERRORFUNCT
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
