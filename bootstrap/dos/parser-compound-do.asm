	.intel_syntax noprefix

.section .text
.balign 16

.globl _CDOSTMTBEGIN
_CDOSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_0068:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push -1
push dword ptr [ebp-16]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 273
jne .Lt_006C
.Lt_006D:
mov dword ptr [ebp-8], -1
jmp .Lt_006A
.Lt_006C:
cmp dword ptr [ebp-32], 274
jne .Lt_006E
.Lt_006F:
mov dword ptr [ebp-12], -1
.Lt_006E:
.Lt_006A:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .Lt_0071
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0073
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0073:
.Lt_0072:
push 0
mov eax, dword ptr [ebp-8]
not eax
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0075
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
call _ASTNEWNOP
mov dword ptr [ebp-4], eax
.Lt_0075:
.Lt_0074:
push dword ptr [ebp-4]
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
jmp .Lt_0070
.Lt_0071:
mov dword ptr [ebp-4], 0
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-24], eax
.Lt_0070:
push 1
push 278
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-28], eax
call _ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+8], eax
cmp dword ptr [ebp-4], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+24], ebx
.Lt_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CDOSTMTEND
_CDOSTMTEND:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0077:
push -1
push 278
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_007A
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0078
.Lt_007A:
.Lt_0079:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 273
jne .Lt_007D
.Lt_007E:
mov dword ptr [ebp-8], -1
jmp .Lt_007B
.Lt_007D:
cmp dword ptr [ebp-20], 274
jne .Lt_007F
.Lt_0080:
mov dword ptr [ebp-12], -1
.Lt_007F:
.Lt_007B:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
and eax, dword ptr [ebx+12]
je .Lt_0082
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.Lt_0082:
.Lt_0081:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+8], 0
je .Lt_0084
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+8]
call _ASTSCOPEEND
add esp, 4
.Lt_0084:
.Lt_0083:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
cmp dword ptr [ebx+20], ecx
je .Lt_0086
push -1
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+20]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
.Lt_0086:
.Lt_0085:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .Lt_0088
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_008A
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_008A:
.Lt_0089:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push dword ptr [ebp-4]
call _ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_008C
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
call _ASTNEWNOP
mov dword ptr [ebp-4], eax
.Lt_008C:
.Lt_008B:
push dword ptr [ebp-4]
call _ASTADD
add esp, 4
jmp .Lt_0087
.Lt_0088:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_0087:
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
push dword ptr [ebp-16]
call _CCOMPSTMTPOP
add esp, 4
.Lt_0078:
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
