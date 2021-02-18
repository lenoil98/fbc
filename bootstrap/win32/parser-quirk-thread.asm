	.intel_syntax noprefix

.section .text
.balign 16

.globl _CTHREADCALLFUNC@0
_CTHREADCALLFUNC@0:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 50
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_006D
jmp .Lt_006A
.Lt_006D:
.Lt_006C:
push 3
push dword ptr [ebp-12]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006F
push 0
push 0
push 289
call _ERRREPORT@12
jmp .Lt_006A
.Lt_006F:
.Lt_006E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0071
push 0
push 0
push 289
call _ERRREPORT@12
jmp .Lt_006A
.Lt_0071:
.Lt_0070:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 40
call _HMATCH@8
test eax, eax
jne .Lt_0073
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp-8]
movsx ebx, word ptr [eax+68]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 0
jle .Lt_0075
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_006A
.Lt_0075:
.Lt_0074:
jmp .Lt_0072
.Lt_0073:
mov dword ptr [ebp-16], -1
.Lt_0072:
push 0
lea ebx, [ebp-28]
push ebx
push 0
push dword ptr [ebp-8]
push 0
call _CPROCARGLIST@20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-16], -1
jne .Lt_0077
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0079
push 0
push 0
push 7
call _ERRREPORT@12
jmp .Lt_006A
.Lt_0079:
.Lt_0078:
push 0
call _LEXSKIPTOKEN@4
.Lt_0077:
.Lt_0076:
push dword ptr [ebp-32]
call _RTLTHREADCALL@4
mov dword ptr [ebp-4], eax
.Lt_006A:
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
