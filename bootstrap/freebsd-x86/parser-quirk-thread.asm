	.intel_syntax noprefix

.section .text
.balign 16

.globl CTHREADCALLFUNC
CTHREADCALLFUNC:
push ebp
mov ebp, esp
sub esp, 40
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
push 2048
call LEXSKIPTOKEN
add esp, 4
push 50
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_006C
jmp .Lt_0069
.Lt_006C:
.Lt_006B:
push 3
push dword ptr [ebp-12]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006E
push 0
push 0
push 289
call ERRREPORT
add esp, 12
jmp .Lt_0069
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0070
push 0
push 0
push 289
call ERRREPORT
add esp, 12
jmp .Lt_0069
.Lt_0070:
.Lt_006F:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0072
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp-8]
movsx ebx, word ptr [eax+68]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 0
jle .Lt_0074
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_0069
.Lt_0074:
.Lt_0073:
jmp .Lt_0071
.Lt_0072:
mov dword ptr [ebp-16], -1
.Lt_0071:
push 0
lea ebx, [ebp-28]
push ebx
push 0
push dword ptr [ebp-8]
push 0
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-16], -1
jne .Lt_0076
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0078
push 0
push 0
push 7
call ERRREPORT
add esp, 12
jmp .Lt_0069
.Lt_0078:
.Lt_0077:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0076:
.Lt_0075:
push dword ptr [ebp-32]
call RTLTHREADCALL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
