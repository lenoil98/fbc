	.intel_syntax noprefix

.section .text
.balign 16

.globl CDOSTMTBEGIN
CDOSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_0067:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push -1
push dword ptr [ebp-16]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 273
jne .Lt_006B
.Lt_006C:
mov dword ptr [ebp-8], -1
jmp .Lt_0069
.Lt_006B:
cmp dword ptr [ebp-32], 274
jne .Lt_006D
.Lt_006E:
mov dword ptr [ebp-12], -1
.Lt_006D:
.Lt_0069:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .Lt_0070
push 2048
call LEXSKIPTOKEN
add esp, 4
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0072
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0072:
.Lt_0071:
push 0
mov eax, dword ptr [ebp-8]
not eax
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0074
push 0
push 0
push 24
call ERRREPORT
add esp, 12
call ASTNEWNOP
mov dword ptr [ebp-4], eax
.Lt_0074:
.Lt_0073:
push dword ptr [ebp-4]
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
jmp .Lt_006F
.Lt_0070:
mov dword ptr [ebp-4], 0
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-24], eax
.Lt_006F:
push 1
push 278
call CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-28], eax
call ASTSCOPEBEGIN
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
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CDOSTMTEND
CDOSTMTEND:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0076:
push -1
push 278
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0079
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0077
.Lt_0079:
.Lt_0078:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 273
jne .Lt_007C
.Lt_007D:
mov dword ptr [ebp-8], -1
jmp .Lt_007A
.Lt_007C:
cmp dword ptr [ebp-20], 274
jne .Lt_007E
.Lt_007F:
mov dword ptr [ebp-12], -1
.Lt_007E:
.Lt_007A:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
and eax, dword ptr [ebx+12]
je .Lt_0081
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_0081:
.Lt_0080:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+8], 0
je .Lt_0083
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+8]
call ASTSCOPEEND
add esp, 4
.Lt_0083:
.Lt_0082:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
cmp dword ptr [ebx+20], ecx
je .Lt_0085
push -1
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+20]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_0085:
.Lt_0084:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .Lt_0087
push 2048
call LEXSKIPTOKEN
add esp, 4
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0089
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0089:
.Lt_0088:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_008B
push 0
push 0
push 24
call ERRREPORT
add esp, 12
call ASTNEWNOP
mov dword ptr [ebp-4], eax
.Lt_008B:
.Lt_008A:
push dword ptr [ebp-4]
call ASTADD
add esp, 4
jmp .Lt_0086
.Lt_0087:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
.Lt_0086:
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push dword ptr [ebp-16]
call CCOMPSTMTPOP
add esp, 4
.Lt_0077:
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
