	.intel_syntax noprefix

.section .text
.balign 16

.globl CSCOPESTMTBEGIN
CSCOPESTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0067:
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
jne .Lt_006A
push 0
push 146
push 2
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push -1
push 285
call HSKIPCOMPOUND
add esp, 12
jmp .Lt_0068
.Lt_006A:
.Lt_0069:
push 2048
call LEXSKIPTOKEN
add esp, 4
call ASTSCOPEBEGIN
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_006C
push 0
push 0
push 27
call ERRREPORT
add esp, 12
.Lt_006C:
.Lt_006B:
push 1
push 285
call CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [PARSER+148]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+12], ebx
or dword ptr [PARSER+148], 8
jmp .Lt_006D
.Lt_006E:
and dword ptr [PARSER+148], -9
.Lt_006D:
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSCOPESTMTEND
CSCOPESTMTEND:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0070:
push -1
push 285
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0073
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0071
.Lt_0073:
.Lt_0072:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .Lt_0075
or dword ptr [PARSER+148], 8
jmp .Lt_0074
.Lt_0075:
and dword ptr [PARSER+148], -9
.Lt_0074:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_0077
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
.Lt_0077:
.Lt_0076:
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 4
.Lt_0071:
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
