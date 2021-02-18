	.intel_syntax noprefix

.section .text
.balign 16

.globl CTHREADCALLFUNC
CTHREADCALLFUNC:
.type CTHREADCALLFUNC, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 50
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_006C
jmp .Lt_0069
.Lt_006C:
.Lt_006B:
sub esp, 8
push 3
push dword ptr [ebp-12]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006E
sub esp, 4
push 0
push 0
push 289
call ERRREPORT
add esp, 16
jmp .Lt_0069
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0070
sub esp, 4
push 0
push 0
push 289
call ERRREPORT
add esp, 16
jmp .Lt_0069
.Lt_0070:
.Lt_006F:
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
jne .Lt_0072
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp-8]
movsx ebx, word ptr [eax+68]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 0
jle .Lt_0074
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0069
.Lt_0074:
.Lt_0073:
jmp .Lt_0071
.Lt_0072:
mov dword ptr [ebp-16], -1
.Lt_0071:
sub esp, 12
push 0
lea ebx, [ebp-28]
push ebx
push 0
push dword ptr [ebp-8]
push 0
call CPROCARGLIST
add esp, 32
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-16], -1
jne .Lt_0076
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0078
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
jmp .Lt_0069
.Lt_0078:
.Lt_0077:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0076:
.Lt_0075:
sub esp, 12
push dword ptr [ebp-32]
call RTLTHREADCALL
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CTHREADCALLFUNC, .-CTHREADCALLFUNC
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
