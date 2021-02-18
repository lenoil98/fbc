	.intel_syntax noprefix

.section .text
.balign 16

.globl _CSCOPESTMTBEGIN
_CSCOPESTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0068:
mov eax, dword ptr [_ENV+888]
and eax, 2
test eax, eax
jne .Lt_006B
push 0
push 146
push 2
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push -1
push 285
call _HSKIPCOMPOUND
add esp, 12
jmp .Lt_0069
.Lt_006B:
.Lt_006A:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _ASTSCOPEBEGIN
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_006D
push 0
push 0
push 27
call _ERRREPORT
add esp, 12
.Lt_006D:
.Lt_006C:
push 1
push 285
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [_PARSER+148]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+12], ebx
or dword ptr [_PARSER+148], 8
jmp .Lt_006E
.Lt_006F:
and dword ptr [_PARSER+148], -9
.Lt_006E:
.Lt_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSCOPESTMTEND
_CSCOPESTMTEND:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0071:
push -1
push 285
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0074
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0072
.Lt_0074:
.Lt_0073:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .Lt_0076
or dword ptr [_PARSER+148], 8
jmp .Lt_0075
.Lt_0076:
and dword ptr [_PARSER+148], -9
.Lt_0075:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_0078
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call _ASTSCOPEEND
add esp, 4
.Lt_0078:
.Lt_0077:
push dword ptr [ebp-4]
call _CCOMPSTMTPOP
add esp, 4
.Lt_0072:
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
